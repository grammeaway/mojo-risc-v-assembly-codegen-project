# Build Mojo kernels to RISC-V assembly for multiple target CPUs.
#
# Each kernel in kernels/*.mojo is compiled once per CPU target, emitting
# assembly into asm/<kernel>.<variant>.s. Add a new CPU target by appending
# a "cpu:variant" pair to TARGETS below; add a new kernel by dropping a
# .mojo file into kernels/.

MOJO        := uv run mojo
TRIPLE      := riscv64-unknown-linux-gnu

# CPU targets as "<target-cpu>:<output-variant>" pairs.
TARGETS     := sifive-x280:x280 generic-rv64:generic

KERNEL_DIR  := kernels
ASM_DIR     := asm

KERNELS     := $(wildcard $(KERNEL_DIR)/*.mojo)

# Expand to every asm/<kernel>.<variant>.s output we expect to produce.
OUTPUTS     := $(foreach k,$(basename $(notdir $(KERNELS))), \
                 $(foreach t,$(TARGETS), \
                   $(ASM_DIR)/$(k).$(word 2,$(subst :, ,$(t))).s))

.PHONY: all clean list

all: $(OUTPUTS)

# Static pattern rules: one per CPU target, mapping a kernel source to its
# variant-suffixed assembly output.
define KERNEL_RULE
$(ASM_DIR)/%.$(word 2,$(subst :, ,$(1))).s: $(KERNEL_DIR)/%.mojo | $(ASM_DIR)
	$(MOJO) build $$< --emit=asm \
		--target-triple=$(TRIPLE) \
		--target-cpu=$(word 1,$(subst :, ,$(1))) \
		-o $$@
endef
$(foreach t,$(TARGETS),$(eval $(call KERNEL_RULE,$(t))))

$(ASM_DIR):
	mkdir -p $(ASM_DIR)

list:
	@echo "Kernels:"
	@$(foreach k,$(KERNELS),echo "  $(k)";)
	@echo "Targets (cpu:variant):"
	@$(foreach t,$(TARGETS),echo "  $(t)";)
	@echo "Outputs:"
	@$(foreach o,$(OUTPUTS),echo "  $(o)";)

clean:
	rm -f $(OUTPUTS)
