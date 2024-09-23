Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D9A97EE14
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 17:25:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E18E410E41B;
	Mon, 23 Sep 2024 15:25:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dH2Ucet9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BC1310E421;
 Mon, 23 Sep 2024 15:25:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727105115; x=1758641115;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qhTCaHLWOVHaKSW0ANE9vyjG9VvTgEnw2EnVKyPjURg=;
 b=dH2Ucet9+aRUoZfFCRMCG+IYgrIx7FX5QHTsggKQTATGCB0ZgwucbWJP
 pso4zw56JcPKOyo9pxZGvpphF+aZnPNpuICaFNIoKtKlitU4wBQGiXup2
 DOQmNrmC2STZ46uCwDaRSYq04nTLOmiAuouuw9iEp/7iVTdkFyr89TOZF
 iawojfoVKtOx+HnUdtIolmJA6KpdcUsI87aJpXXeyfWRWhDrDgVv111R6
 2M949GBspovElUlNYzVvX4E2Hs2Zj3eV50R52eUPYB+5zf5+W67mmqTn/
 SZG9GyT3dU2Y1Vx1iZDI6NeDKd+Uaeaswg1I38UvphgCSibshL6U/kkxs Q==;
X-CSE-ConnectionGUID: m5Gu0x6ySsq2XimDBjcKBA==
X-CSE-MsgGUID: qwYr9CpJTJqpVg2wI5BDtA==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="26013513"
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="26013513"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 08:25:15 -0700
X-CSE-ConnectionGUID: WqPubCsPRAq7aBOlMWMr9w==
X-CSE-MsgGUID: RsqX0LwxTgy2Yih+XP1fcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="71239981"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Sep 2024 08:25:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 23 Sep 2024 18:25:12 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 6/6] drm/i915/bios: Extract soc/intel_rom.c
Date: Mon, 23 Sep 2024 18:24:53 +0300
Message-ID: <20240923152453.11230-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240923152453.11230-1-ville.syrjala@linux.intel.com>
References: <20240923152453.11230-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Abstract away the nuts and bolts of the SPI vs. PCI ROM
stuff, and hide it all in soc/intel_rom.c so that the
VBT code doesn't have to care about this stuff.

This leaves intel_bios.c with a single codepath that
can focus on the details related to the VBT layout.

This should have no functional changes.

v2: Rebase due to vbt_signature changes
    Drop unnecessary cast (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   3 +-
 drivers/gpu/drm/i915/display/intel_bios.c     | 149 +++-------------
 drivers/gpu/drm/i915/soc/intel_rom.c          | 160 ++++++++++++++++++
 drivers/gpu/drm/i915/soc/intel_rom.h          |  25 +++
 drivers/gpu/drm/xe/Makefile                   |   3 +-
 .../xe/compat-i915-headers/soc/intel_rom.h    |   6 +
 6 files changed, 223 insertions(+), 123 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/soc/intel_rom.c
 create mode 100644 drivers/gpu/drm/i915/soc/intel_rom.h
 create mode 100644 drivers/gpu/drm/xe/compat-i915-headers/soc/intel_rom.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 70771e521b1c..e033bcaef4f3 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -51,7 +51,8 @@ i915-y += \
 i915-y += \
 	soc/intel_dram.o \
 	soc/intel_gmch.o \
-	soc/intel_pch.o
+	soc/intel_pch.o \
+	soc/intel_rom.o
 
 # core library code
 i915-y += \
diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index c57426940cf8..9967b65e3cf6 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -33,12 +33,12 @@
 #include <drm/drm_edid.h>
 #include <drm/drm_fixed.h>
 
+#include "soc/intel_rom.h"
+
 #include "i915_drv.h"
-#include "i915_reg.h"
 #include "intel_display.h"
 #include "intel_display_types.h"
 #include "intel_gmbus.h"
-#include "intel_uncore.h"
 
 #define _INTEL_BIOS_PRIVATE
 #include "intel_vbt_defs.h"
@@ -3056,152 +3056,59 @@ static struct vbt_header *firmware_get_vbt(struct intel_display *display,
 	return vbt;
 }
 
-static u32 intel_spi_read32(struct intel_uncore *uncore, u32 offset)
+static struct vbt_header *oprom_get_vbt(struct intel_display *display,
+					struct intel_rom *rom,
+					size_t *size, const char *type)
 {
-	intel_uncore_write(uncore, PRIMARY_SPI_ADDRESS, offset);
+	struct vbt_header *vbt;
+	size_t vbt_size;
+	loff_t offset;
 
-	return intel_uncore_read(uncore, PRIMARY_SPI_TRIGGER);
-}
-
-static u16 intel_spi_read16(struct intel_uncore *uncore, u32 offset)
-{
-	return intel_spi_read32(uncore, offset) & 0xffff;
-}
-
-static struct vbt_header *spi_oprom_get_vbt(struct intel_display *display,
-					    size_t *size)
-{
-	struct drm_i915_private *i915 = to_i915(display->drm);
-	u32 count, data, found, store = 0;
-	u32 static_region, oprom_offset;
-	u32 oprom_size = 0x200000;
-	u16 vbt_size;
-	u32 *vbt;
-
-	static_region = intel_uncore_read(&i915->uncore, SPI_STATIC_REGIONS);
-	static_region &= OPTIONROM_SPI_REGIONID_MASK;
-	intel_uncore_write(&i915->uncore, PRIMARY_SPI_REGIONID, static_region);
-
-	oprom_offset = intel_uncore_read(&i915->uncore, OROM_OFFSET);
-	oprom_offset &= OROM_OFFSET_MASK;
+	if (!rom)
+		return NULL;
 
 	BUILD_BUG_ON(vbt_signature_len != sizeof(vbt_signature) - 1);
 	BUILD_BUG_ON(vbt_signature_len != sizeof(u32));
 
-	for (count = 0; count < oprom_size; count += 4) {
-		data = intel_spi_read32(&i915->uncore, oprom_offset + count);
-		if (data == *((const u32 *)vbt_signature)) {
-			found = oprom_offset + count;
-			break;
-		}
-	}
+	offset = intel_rom_find(rom, *(const u32 *)vbt_signature);
+	if (offset < 0)
+		goto err_free_rom;
 
-	if (count >= oprom_size)
-		goto err_not_found;
-
-	if (sizeof(struct vbt_header) > oprom_size - count) {
+	if (sizeof(struct vbt_header) > intel_rom_size(rom) - offset) {
 		drm_dbg_kms(display->drm, "VBT header incomplete\n");
-		goto err_not_found;
+		goto err_free_rom;
 	}
 
-	/* Get VBT size and allocate space for the VBT */
-	vbt_size = intel_spi_read16(&i915->uncore,
-				    found + offsetof(struct vbt_header, vbt_size));
+	BUILD_BUG_ON(sizeof(vbt->vbt_size) != sizeof(u16));
 
-	if (vbt_size > oprom_size - count) {
-		drm_dbg_kms(display->drm,
-			    "VBT incomplete (vbt_size overflows)\n");
-		goto err_not_found;
+	vbt_size = intel_rom_read16(rom, offset + offsetof(struct vbt_header, vbt_size));
+	if (vbt_size > intel_rom_size(rom) - offset) {
+		drm_dbg_kms(display->drm, "VBT incomplete (vbt_size overflows)\n");
+		goto err_free_rom;
 	}
 
 	vbt = kzalloc(round_up(vbt_size, 4), GFP_KERNEL);
 	if (!vbt)
-		goto err_not_found;
+		goto err_free_rom;
 
-	for (count = 0; count < vbt_size; count += 4)
-		*(vbt + store++) = intel_spi_read32(&i915->uncore, found + count);
+	intel_rom_read_block(rom, vbt, offset, vbt_size);
 
 	if (!intel_bios_is_valid_vbt(display, vbt, vbt_size))
 		goto err_free_vbt;
 
-	drm_dbg_kms(display->drm, "Found valid VBT in SPI flash\n");
+	drm_dbg_kms(display->drm, "Found valid VBT in %s\n", type);
 
 	if (size)
 		*size = vbt_size;
 
-	return (struct vbt_header *)vbt;
-
-err_free_vbt:
-	kfree(vbt);
-err_not_found:
-	return NULL;
-}
-
-static struct vbt_header *oprom_get_vbt(struct intel_display *display,
-					size_t *sizep)
-{
-	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
-	void __iomem *p = NULL, *oprom;
-	struct vbt_header *vbt;
-	u16 vbt_size;
-	size_t i, size;
-
-	oprom = pci_map_rom(pdev, &size);
-	if (!oprom)
-		return NULL;
-
-	BUILD_BUG_ON(vbt_signature_len != sizeof(vbt_signature) - 1);
-	BUILD_BUG_ON(vbt_signature_len != sizeof(u32));
-
-	/* Scour memory looking for the VBT signature. */
-	for (i = 0; i + 4 < size; i += 4) {
-		if (ioread32(oprom + i) != *((const u32 *)vbt_signature))
-			continue;
-
-		p = oprom + i;
-		size -= i;
-		break;
-	}
-
-	if (!p)
-		goto err_unmap_oprom;
-
-	if (sizeof(struct vbt_header) > size) {
-		drm_dbg_kms(display->drm, "VBT header incomplete\n");
-		goto err_unmap_oprom;
-	}
-
-	vbt_size = ioread16(p + offsetof(struct vbt_header, vbt_size));
-	if (vbt_size > size) {
-		drm_dbg_kms(display->drm,
-			    "VBT incomplete (vbt_size overflows)\n");
-		goto err_unmap_oprom;
-	}
-
-	/* The rest will be validated by intel_bios_is_valid_vbt() */
-	vbt = kmalloc(round_up(vbt_size, 4), GFP_KERNEL);
-	if (!vbt)
-		goto err_unmap_oprom;
-
-	memcpy_fromio(vbt, p, vbt_size);
-
-	if (!intel_bios_is_valid_vbt(display, vbt, vbt_size))
-		goto err_free_vbt;
-
-	pci_unmap_rom(pdev, oprom);
-
-	if (sizep)
-		*sizep = vbt_size;
-
-	drm_dbg_kms(display->drm, "Found valid VBT in PCI ROM\n");
+	intel_rom_free(rom);
 
 	return vbt;
 
 err_free_vbt:
 	kfree(vbt);
-err_unmap_oprom:
-	pci_unmap_rom(pdev, oprom);
-
+err_free_rom:
+	intel_rom_free(rom);
 	return NULL;
 }
 
@@ -3223,11 +3130,11 @@ static const struct vbt_header *intel_bios_get_vbt(struct intel_display *display
 	 */
 	if (!vbt && IS_DGFX(i915))
 		with_intel_runtime_pm(&i915->runtime_pm, wakeref)
-			vbt = spi_oprom_get_vbt(display, sizep);
+			vbt = oprom_get_vbt(display, intel_rom_spi(i915), sizep, "SPI flash");
 
 	if (!vbt)
 		with_intel_runtime_pm(&i915->runtime_pm, wakeref)
-			vbt = oprom_get_vbt(display, sizep);
+			vbt = oprom_get_vbt(display, intel_rom_pci(i915), sizep, "PCI ROM");
 
 	return vbt;
 }
diff --git a/drivers/gpu/drm/i915/soc/intel_rom.c b/drivers/gpu/drm/i915/soc/intel_rom.c
new file mode 100644
index 000000000000..243d98cab8c3
--- /dev/null
+++ b/drivers/gpu/drm/i915/soc/intel_rom.c
@@ -0,0 +1,160 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#include "i915_drv.h"
+#include "i915_reg.h"
+
+#include "intel_rom.h"
+#include "intel_uncore.h"
+
+struct intel_rom {
+	/* for PCI ROM */
+	struct pci_dev *pdev;
+	void __iomem *oprom;
+
+	/* for SPI */
+	struct intel_uncore *uncore;
+	loff_t offset;
+
+	size_t size;
+
+	u32 (*read32)(struct intel_rom *rom, loff_t offset);
+	u16 (*read16)(struct intel_rom *rom, loff_t offset);
+	void (*read_block)(struct intel_rom *rom, void *data, loff_t offset, size_t size);
+	void (*free)(struct intel_rom *rom);
+};
+
+static u32 spi_read32(struct intel_rom *rom, loff_t offset)
+{
+	intel_uncore_write(rom->uncore, PRIMARY_SPI_ADDRESS,
+			   rom->offset + offset);
+
+	return intel_uncore_read(rom->uncore, PRIMARY_SPI_TRIGGER);
+}
+
+static u16 spi_read16(struct intel_rom *rom, loff_t offset)
+{
+	return spi_read32(rom, offset) & 0xffff;
+}
+
+struct intel_rom *intel_rom_spi(struct drm_i915_private *i915)
+{
+	struct intel_rom *rom;
+	u32 static_region;
+
+	rom = kzalloc(sizeof(*rom), GFP_KERNEL);
+	if (!rom)
+		return NULL;
+
+	rom->uncore = &i915->uncore;
+
+	static_region = intel_uncore_read(rom->uncore, SPI_STATIC_REGIONS);
+	static_region &= OPTIONROM_SPI_REGIONID_MASK;
+	intel_uncore_write(rom->uncore, PRIMARY_SPI_REGIONID, static_region);
+
+	rom->offset = intel_uncore_read(rom->uncore, OROM_OFFSET) & OROM_OFFSET_MASK;
+
+	rom->size = 0x200000;
+
+	rom->read32 = spi_read32;
+	rom->read16 = spi_read16;
+
+	return rom;
+}
+
+static u32 pci_read32(struct intel_rom *rom, loff_t offset)
+{
+	return ioread32(rom->oprom + offset);
+}
+
+static u16 pci_read16(struct intel_rom *rom, loff_t offset)
+{
+	return ioread16(rom->oprom + offset);
+}
+
+static void pci_read_block(struct intel_rom *rom, void *data,
+			   loff_t offset, size_t size)
+{
+	memcpy_fromio(data, rom->oprom + offset, size);
+}
+
+static void pci_free(struct intel_rom *rom)
+{
+	pci_unmap_rom(rom->pdev, rom->oprom);
+}
+
+struct intel_rom *intel_rom_pci(struct drm_i915_private *i915)
+{
+	struct intel_rom *rom;
+
+	rom = kzalloc(sizeof(*rom), GFP_KERNEL);
+	if (!rom)
+		return NULL;
+
+	rom->pdev = to_pci_dev(i915->drm.dev);
+
+	rom->oprom = pci_map_rom(rom->pdev, &rom->size);
+	if (!rom->oprom) {
+		kfree(rom);
+		return NULL;
+	}
+
+	rom->read32 = pci_read32;
+	rom->read16 = pci_read16;
+	rom->read_block = pci_read_block;
+	rom->free = pci_free;
+
+	return rom;
+}
+
+u32 intel_rom_read32(struct intel_rom *rom, loff_t offset)
+{
+	return rom->read32(rom, offset);
+}
+
+u16 intel_rom_read16(struct intel_rom *rom, loff_t offset)
+{
+	return rom->read16(rom, offset);
+}
+
+void intel_rom_read_block(struct intel_rom *rom, void *data,
+			  loff_t offset, size_t size)
+{
+	u32 *ptr = data;
+	loff_t index;
+
+	if (rom->read_block) {
+		rom->read_block(rom, data, offset, size);
+		return;
+	}
+
+	for (index = 0; index < size; index += 4)
+		*ptr++ = rom->read32(rom, offset + index);
+}
+
+loff_t intel_rom_find(struct intel_rom *rom, u32 needle)
+{
+	loff_t offset;
+
+	for (offset = 0; offset < rom->size; offset += 4) {
+		if (rom->read32(rom, offset) == needle)
+			return offset;
+	}
+
+	return -ENOENT;
+}
+
+size_t intel_rom_size(struct intel_rom *rom)
+{
+	return rom->size;
+}
+
+void intel_rom_free(struct intel_rom *rom)
+{
+	if (rom && rom->free)
+		rom->free(rom);
+
+	kfree(rom);
+}
diff --git a/drivers/gpu/drm/i915/soc/intel_rom.h b/drivers/gpu/drm/i915/soc/intel_rom.h
new file mode 100644
index 000000000000..fb2979c8ef7f
--- /dev/null
+++ b/drivers/gpu/drm/i915/soc/intel_rom.h
@@ -0,0 +1,25 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#ifndef __INTEL_ROM_H__
+#define __INTEL_ROM_H__
+
+#include <linux/types.h>
+
+struct drm_i915_private;
+struct intel_rom;
+
+struct intel_rom *intel_rom_spi(struct drm_i915_private *i915);
+struct intel_rom *intel_rom_pci(struct drm_i915_private *i915);
+
+u32 intel_rom_read32(struct intel_rom *rom, loff_t offset);
+u16 intel_rom_read16(struct intel_rom *rom, loff_t offset);
+void intel_rom_read_block(struct intel_rom *rom, void *data,
+			  loff_t offset, size_t size);
+loff_t intel_rom_find(struct intel_rom *rom, u32 needle);
+size_t intel_rom_size(struct intel_rom *rom);
+void intel_rom_free(struct intel_rom *rom);
+
+#endif /* __INTEL_ROM_H__ */
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 1122765c711d..26cd21bc7189 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -181,7 +181,8 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 # SOC code shared with i915
 xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-soc/intel_dram.o \
-	i915-soc/intel_pch.o
+	i915-soc/intel_pch.o \
+	i915-soc/intel_rom.o
 
 # Display code shared with i915
 xe-$(CONFIG_DRM_XE_DISPLAY) += \
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/soc/intel_rom.h b/drivers/gpu/drm/xe/compat-i915-headers/soc/intel_rom.h
new file mode 100644
index 000000000000..05cbfb697b2b
--- /dev/null
+++ b/drivers/gpu/drm/xe/compat-i915-headers/soc/intel_rom.h
@@ -0,0 +1,6 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#include "../../../i915/soc/intel_rom.h"
-- 
2.44.2

