Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B75BFFA20
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 09:35:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37A0910E89D;
	Thu, 23 Oct 2025 07:35:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lDQR35IO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42B8210E89D;
 Thu, 23 Oct 2025 07:35:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761204932; x=1792740932;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TvP4zdhfxG0kNlLup8D2C6l/UhebB7ASxxgeB1bXplg=;
 b=lDQR35IOQASAyJAOGS7PbZYrC0FMWjfC7wV80T9aCyAYcHLt0+nTejni
 rEwE/7DbEQihpf6KQMfIunCnJJqlzdtHa1z2TY3Oc5ARTJ60cG6eR2q5K
 C4Y4RsmTVh71cl51+rzaUzFYIoS4/mEhhI2PmyEMEYnB2Fg7FoGZOOhda
 iod42DmwupkdtnhVVw6ia5OMzweBnocQ2O3g6NpSM8ZScld9wezxombRk
 mEXwdVJ/LfPn1VpkcQjcvmpmLrTa4CqqVae8F0A/d4yKaTspt5NVr467M
 SkLNioxJu066PiAQKHc/CRY2M2f0nP3INFgThrmCWZHiHeBqC4TA9zjAa w==;
X-CSE-ConnectionGUID: AVt16BVvRpiTvr56zWnWUw==
X-CSE-MsgGUID: d+6z7vOYTBaektAEMh7qMA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74484588"
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="74484588"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 00:35:31 -0700
X-CSE-ConnectionGUID: XdybMkCsQnqU/c7ZTpMy7Q==
X-CSE-MsgGUID: 5pOgDB/ZRkOkgRmVf05PqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="188376106"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.158])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 00:35:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/rom: convert intel_rom interfaces to struct
 drm_device
Date: Thu, 23 Oct 2025 10:35:25 +0300
Message-ID: <20251023073525.842004-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Reduce the display dependency on struct drm_i915_private and i915_drv.h
by converting the rom interface to struct drm_device.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 7 +++----
 drivers/gpu/drm/i915/soc/intel_rom.c      | 7 ++++---
 drivers/gpu/drm/i915/soc/intel_rom.h      | 6 +++---
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 3596dce84c28..246c6fb0f09a 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -32,10 +32,10 @@
 #include <drm/display/drm_dsc_helper.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_fixed.h>
+#include <drm/drm_print.h>
 
 #include "soc/intel_rom.h"
 
-#include "i915_drv.h"
 #include "i915_utils.h"
 #include "intel_display.h"
 #include "intel_display_core.h"
@@ -3144,7 +3144,6 @@ static struct vbt_header *oprom_get_vbt(struct intel_display *display,
 static const struct vbt_header *intel_bios_get_vbt(struct intel_display *display,
 						   size_t *sizep)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct vbt_header *vbt = NULL;
 
 	vbt = firmware_get_vbt(display, sizep);
@@ -3158,11 +3157,11 @@ static const struct vbt_header *intel_bios_get_vbt(struct intel_display *display
 	 */
 	if (!vbt && display->platform.dgfx)
 		with_intel_display_rpm(display)
-			vbt = oprom_get_vbt(display, intel_rom_spi(i915), sizep, "SPI flash");
+			vbt = oprom_get_vbt(display, intel_rom_spi(display->drm), sizep, "SPI flash");
 
 	if (!vbt)
 		with_intel_display_rpm(display)
-			vbt = oprom_get_vbt(display, intel_rom_pci(i915), sizep, "PCI ROM");
+			vbt = oprom_get_vbt(display, intel_rom_pci(display->drm), sizep, "PCI ROM");
 
 	return vbt;
 }
diff --git a/drivers/gpu/drm/i915/soc/intel_rom.c b/drivers/gpu/drm/i915/soc/intel_rom.c
index 243d98cab8c3..2f17dc856e7f 100644
--- a/drivers/gpu/drm/i915/soc/intel_rom.c
+++ b/drivers/gpu/drm/i915/soc/intel_rom.c
@@ -39,8 +39,9 @@ static u16 spi_read16(struct intel_rom *rom, loff_t offset)
 	return spi_read32(rom, offset) & 0xffff;
 }
 
-struct intel_rom *intel_rom_spi(struct drm_i915_private *i915)
+struct intel_rom *intel_rom_spi(struct drm_device *drm)
 {
+	struct drm_i915_private *i915 = to_i915(drm);
 	struct intel_rom *rom;
 	u32 static_region;
 
@@ -85,7 +86,7 @@ static void pci_free(struct intel_rom *rom)
 	pci_unmap_rom(rom->pdev, rom->oprom);
 }
 
-struct intel_rom *intel_rom_pci(struct drm_i915_private *i915)
+struct intel_rom *intel_rom_pci(struct drm_device *drm)
 {
 	struct intel_rom *rom;
 
@@ -93,7 +94,7 @@ struct intel_rom *intel_rom_pci(struct drm_i915_private *i915)
 	if (!rom)
 		return NULL;
 
-	rom->pdev = to_pci_dev(i915->drm.dev);
+	rom->pdev = to_pci_dev(drm->dev);
 
 	rom->oprom = pci_map_rom(rom->pdev, &rom->size);
 	if (!rom->oprom) {
diff --git a/drivers/gpu/drm/i915/soc/intel_rom.h b/drivers/gpu/drm/i915/soc/intel_rom.h
index fb2979c8ef7f..4e59a375787e 100644
--- a/drivers/gpu/drm/i915/soc/intel_rom.h
+++ b/drivers/gpu/drm/i915/soc/intel_rom.h
@@ -8,11 +8,11 @@
 
 #include <linux/types.h>
 
-struct drm_i915_private;
+struct drm_device;
 struct intel_rom;
 
-struct intel_rom *intel_rom_spi(struct drm_i915_private *i915);
-struct intel_rom *intel_rom_pci(struct drm_i915_private *i915);
+struct intel_rom *intel_rom_spi(struct drm_device *drm);
+struct intel_rom *intel_rom_pci(struct drm_device *drm);
 
 u32 intel_rom_read32(struct intel_rom *rom, loff_t offset);
 u16 intel_rom_read16(struct intel_rom *rom, loff_t offset);
-- 
2.47.3

