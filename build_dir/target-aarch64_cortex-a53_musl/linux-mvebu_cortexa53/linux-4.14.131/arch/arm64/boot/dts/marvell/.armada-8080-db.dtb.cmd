cmd_arch/arm64/boot/dts/marvell/armada-8080-db.dtb := mkdir -p arch/arm64/boot/dts/marvell/ ; aarch64-openwrt-linux-musl-gcc -E -Wp,-MD,arch/arm64/boot/dts/marvell/.armada-8080-db.dtb.d.pre.tmp -nostdinc -I./scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm64/boot/dts/marvell/.armada-8080-db.dtb.dts.tmp arch/arm64/boot/dts/marvell/armada-8080-db.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm64/boot/dts/marvell/armada-8080-db.dtb -b 0 -iarch/arm64/boot/dts/marvell/ -i./scripts/dtc/include-prefixes -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg  -d arch/arm64/boot/dts/marvell/.armada-8080-db.dtb.d.dtc.tmp arch/arm64/boot/dts/marvell/.armada-8080-db.dtb.dts.tmp ; cat arch/arm64/boot/dts/marvell/.armada-8080-db.dtb.d.pre.tmp arch/arm64/boot/dts/marvell/.armada-8080-db.dtb.d.dtc.tmp > arch/arm64/boot/dts/marvell/.armada-8080-db.dtb.d

source_arch/arm64/boot/dts/marvell/armada-8080-db.dtb := arch/arm64/boot/dts/marvell/armada-8080-db.dts

deps_arch/arm64/boot/dts/marvell/armada-8080-db.dtb := \
  arch/arm64/boot/dts/marvell/armada-8080.dtsi \
  arch/arm64/boot/dts/marvell/armada-ap810-ap0-octa-core.dtsi \
  arch/arm64/boot/dts/marvell/armada-ap810-ap0.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/arm-gic.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/irq.h \

arch/arm64/boot/dts/marvell/armada-8080-db.dtb: $(deps_arch/arm64/boot/dts/marvell/armada-8080-db.dtb)

$(deps_arch/arm64/boot/dts/marvell/armada-8080-db.dtb):
