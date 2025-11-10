Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B770C46345
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 12:20:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F2EA10E2B6;
	Mon, 10 Nov 2025 11:20:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N0CrDJCu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A52110E0F4;
 Mon, 10 Nov 2025 11:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762773654; x=1794309654;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xLaQYkziljNuL8mvkMEJ2IM46bofrRLwnAySqqsuec4=;
 b=N0CrDJCu1IHm0yb749nqjCpuTwcQSAK1HaV4EYbLKBzcEpKm8+PBoiq1
 BIz6ttIAooTu8l81cEIULdMP7kE+i82BkGdcwflqxmVbUQ4wBPgg2G7wM
 kj+x/O9Vp2Ppmfy9mrX/bGyjTG1XuH/AXZWuXeg9H5oEvFMnI5S7iMBP6
 CJWbrziUiPqAc0wqaW1uMIXieUDIyPFbEwzY+HMm1SQoTi713SMZl+HlY
 YyLaYrzOJDxyMz/tQFXTOboraWzvwQv+VqIcLWB5pga4JeXkAdvNvtWCS
 qkVOVkWa4rKgLSzESOhJzoH+xFe7rl9bu6uDF2Lh9l8HUdI4tfamRMSaO Q==;
X-CSE-ConnectionGUID: BN6SwK0qT767N0Fqfr19iQ==
X-CSE-MsgGUID: +3OFpLY3QDCrUiGFu7WidA==
X-IronPort-AV: E=McAfee;i="6800,10657,11608"; a="76272857"
X-IronPort-AV: E=Sophos;i="6.19,293,1754982000"; d="scan'208";a="76272857"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 03:20:54 -0800
X-CSE-ConnectionGUID: /biIRNQfTDmwsj3iAwiy6Q==
X-CSE-MsgGUID: tECVqlt1RteAsdIhut99FQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,293,1754982000"; d="scan'208";a="225908686"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 03:20:53 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [CI] drm/i915/rom: convert intel_rom interfaces to struct drm_device
Date: Mon, 10 Nov 2025 13:20:48 +0200
Message-ID: <20251110112048.2366725-1-jani.nikula@intel.com>
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

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 6 ++----
 drivers/gpu/drm/i915/soc/intel_rom.c      | 7 ++++---
 drivers/gpu/drm/i915/soc/intel_rom.h      | 6 +++---
 3 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 852e4d6db8a3..4b41068e9e35 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -36,7 +36,6 @@
 
 #include "soc/intel_rom.h"
 
-#include "i915_drv.h"
 #include "intel_display.h"
 #include "intel_display_core.h"
 #include "intel_display_rpm.h"
@@ -3145,7 +3144,6 @@ static struct vbt_header *oprom_get_vbt(struct intel_display *display,
 static const struct vbt_header *intel_bios_get_vbt(struct intel_display *display,
 						   size_t *sizep)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct vbt_header *vbt = NULL;
 
 	vbt = firmware_get_vbt(display, sizep);
@@ -3159,11 +3157,11 @@ static const struct vbt_header *intel_bios_get_vbt(struct intel_display *display
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

