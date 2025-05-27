Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C612AC4C92
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 12:59:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1C4B10E485;
	Tue, 27 May 2025 10:59:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z+gHFBql";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4059310E490;
 Tue, 27 May 2025 10:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748343580; x=1779879580;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NmhNBoyyc1nY5W2V4W60zlMVXKEU4aIrOPoWLBYIjgI=;
 b=Z+gHFBqlbObNJlZwiKl3LIzF575td8ec3bSRUIkZ5kYP7kuIefMjq7RO
 56Smx/aA5onixpfbN4x45UaV3678fldD7fA6S6StIQk2xCbh8pe+Dllo5
 lnko95SMJm3O714N8VZVThnbVTWOCTDdzay/R46vyRFTNjoYGuVjb5wcG
 xbbZVn6PBUxJcWkkBrSPJk4nH4NRUhyS2j0+4CXcburmbSRMWl3+hJ1Yo
 c00B7GMzCDAm/vt0xwwyi2teANH5Q1i3e6MUjnyqB2+Ru0yIYY1f4d2zB
 E1lETrUQVtiFmyd4vr52DFrOCwMNQOLsYKOOjnj3Np4jnxOuaCSNEH5LD Q==;
X-CSE-ConnectionGUID: oIBNP0x6TgW7dv1Hl0nlkw==
X-CSE-MsgGUID: 4/y2vIO2S4GPC68DPgTSzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11445"; a="72859882"
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="72859882"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 03:59:40 -0700
X-CSE-ConnectionGUID: VnJNuavJQI6oildpthI5iQ==
X-CSE-MsgGUID: Zri5YzzYSD6JIKMDYg2PWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="142768868"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.119])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 03:59:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 5/8] drm/i915: add out_value to intel_wait_for_register_fw()
 and intel_de_wait_fw()
Date: Tue, 27 May 2025 13:59:11 +0300
Message-Id: <f804b2fe85ad63389e74d82e4c97220e9275f170.1748343520.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1748343520.git.jani.nikula@intel.com>
References: <cover.1748343520.git.jani.nikula@intel.com>
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

Future users of intel_de_wait_fw() need the final value. Just return it
for everyone using intel_wait_for_register_fw() and intel_de_wait_fw()
to avoid adding or using another set of specialized functions. There
aren't that many users for these anyway.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.h               | 4 ++--
 drivers/gpu/drm/i915/display/intel_dpio_phy.c         | 2 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c            | 2 +-
 drivers/gpu/drm/i915/display/intel_sbi.c              | 2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c              | 2 +-
 drivers/gpu/drm/i915/intel_uncore.c                   | 6 +++---
 drivers/gpu/drm/i915/intel_uncore.h                   | 5 +++--
 drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h | 5 +++--
 8 files changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index 823290e0cf7d..9ecdcf6b73e4 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -141,14 +141,14 @@ intel_de_wait(struct intel_display *display, i915_reg_t reg,
 
 static inline int
 intel_de_wait_fw(struct intel_display *display, i915_reg_t reg,
-		 u32 mask, u32 value, unsigned int timeout_ms)
+		 u32 mask, u32 value, unsigned int timeout_ms, u32 *out_value)
 {
 	int ret;
 
 	intel_dmc_wl_get(display, reg);
 
 	ret = intel_wait_for_register_fw(__to_uncore(display), reg, mask,
-					 value, timeout_ms);
+					 value, timeout_ms, out_value);
 
 	intel_dmc_wl_put(display, reg);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 552dd984ade9..0282c0b2440b 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -428,7 +428,7 @@ static void _bxt_dpio_phy_init(struct intel_display *display, enum dpio_phy phy)
 	 * use 1ms due to occasional timeouts observed with that.
 	 */
 	if (intel_de_wait_fw(display, BXT_PORT_CL1CM_DW0(phy),
-			     PHY_RESERVED | PHY_POWER_GOOD, PHY_POWER_GOOD, 1))
+			     PHY_RESERVED | PHY_POWER_GOOD, PHY_POWER_GOOD, 1, NULL))
 		drm_err(display->drm, "timeout during PHY%d power on\n",
 			phy);
 
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index d55cc77650b7..88494bd4f968 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -414,7 +414,7 @@ gmbus_wait_idle(struct intel_display *display)
 	add_wait_queue(&display->gmbus.wait_queue, &wait);
 	intel_de_write_fw(display, GMBUS4(display), irq_enable);
 
-	ret = intel_de_wait_fw(display, GMBUS2(display), GMBUS_ACTIVE, 0, 10);
+	ret = intel_de_wait_fw(display, GMBUS2(display), GMBUS_ACTIVE, 0, 10, NULL);
 
 	intel_de_write_fw(display, GMBUS4(display), 0);
 	remove_wait_queue(&display->gmbus.wait_queue, &wait);
diff --git a/drivers/gpu/drm/i915/display/intel_sbi.c b/drivers/gpu/drm/i915/display/intel_sbi.c
index 198a1ad280e2..135f190cf653 100644
--- a/drivers/gpu/drm/i915/display/intel_sbi.c
+++ b/drivers/gpu/drm/i915/display/intel_sbi.c
@@ -23,7 +23,7 @@ static int intel_sbi_rw(struct intel_display *display, u16 reg,
 
 	if (intel_wait_for_register_fw(uncore,
 				       SBI_CTL_STAT, SBI_BUSY, 0,
-				       100)) {
+				       100, NULL)) {
 		drm_err(display->drm, "timeout waiting for SBI to become ready\n");
 		return -EBUSY;
 	}
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index ec33ad942115..e848a04a80dc 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -1116,7 +1116,7 @@ static int uc_fw_xfer(struct intel_uc_fw *uc_fw, u32 dst_offset, u32 dma_flags)
 			      _MASKED_BIT_ENABLE(dma_flags | START_DMA));
 
 	/* Wait for DMA to finish */
-	ret = intel_wait_for_register_fw(uncore, DMA_CTRL, START_DMA, 0, 100);
+	ret = intel_wait_for_register_fw(uncore, DMA_CTRL, START_DMA, 0, 100, NULL);
 	if (ret)
 		gt_err(gt, "DMA for %s fw failed, DMA_CTRL=%u\n",
 		       intel_uc_fw_type_repr(uc_fw->type),
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 9b2254d86491..c8e29fd72290 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -2644,7 +2644,7 @@ static void driver_initiated_flr(struct intel_uncore *uncore)
 	 * is still pending (unless the HW is totally dead), but better to be
 	 * safe in case something unexpected happens
 	 */
-	ret = intel_wait_for_register_fw(uncore, GU_CNTL, DRIVERFLR, 0, flr_timeout_ms);
+	ret = intel_wait_for_register_fw(uncore, GU_CNTL, DRIVERFLR, 0, flr_timeout_ms, NULL);
 	if (ret) {
 		drm_err(&i915->drm,
 			"Failed to wait for Driver-FLR bit to clear! %d\n",
@@ -2659,7 +2659,7 @@ static void driver_initiated_flr(struct intel_uncore *uncore)
 	/* Wait for hardware teardown to complete */
 	ret = intel_wait_for_register_fw(uncore, GU_CNTL,
 					 DRIVERFLR, 0,
-					 flr_timeout_ms);
+					 flr_timeout_ms, NULL);
 	if (ret) {
 		drm_err(&i915->drm, "Driver-FLR-teardown wait completion failed! %d\n", ret);
 		return;
@@ -2668,7 +2668,7 @@ static void driver_initiated_flr(struct intel_uncore *uncore)
 	/* Wait for hardware/firmware re-init to complete */
 	ret = intel_wait_for_register_fw(uncore, GU_DEBUG,
 					 DRIVERFLR_STATUS, DRIVERFLR_STATUS,
-					 flr_timeout_ms);
+					 flr_timeout_ms, NULL);
 	if (ret) {
 		drm_err(&i915->drm, "Driver-FLR-reinit wait completion failed! %d\n", ret);
 		return;
diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index e39582950627..6048b99b96cb 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -313,10 +313,11 @@ intel_wait_for_register_fw(struct intel_uncore *uncore,
 			   i915_reg_t reg,
 			   u32 mask,
 			   u32 value,
-			       unsigned int timeout_ms)
+			   unsigned int timeout_ms,
+			   u32 *out_value)
 {
 	return __intel_wait_for_register_fw(uncore, reg, mask, value,
-					    2, timeout_ms, NULL);
+					    2, timeout_ms, out_value);
 }
 
 #define IS_GSI_REG(reg) ((reg) < 0x40000)
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
index 0c1e88e36a1e..797091cf1c99 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
@@ -110,12 +110,13 @@ static inline int intel_wait_for_register(struct intel_uncore *uncore,
 
 static inline int intel_wait_for_register_fw(struct intel_uncore *uncore,
 					     i915_reg_t i915_reg, u32 mask,
-					     u32 value, unsigned int timeout)
+					     u32 value, unsigned int timeout,
+					     u32 *out_value)
 {
 	struct xe_reg reg = XE_REG(i915_mmio_reg_offset(i915_reg));
 
 	return xe_mmio_wait32(__compat_uncore_to_mmio(uncore), reg, mask, value,
-			      timeout * USEC_PER_MSEC, NULL, false);
+			      timeout * USEC_PER_MSEC, out_value, false);
 }
 
 static inline int
-- 
2.39.5

