Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4BD9BF8B3
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 22:53:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C23310E78D;
	Wed,  6 Nov 2024 21:53:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Th2O3Bcr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00DB810E790;
 Wed,  6 Nov 2024 21:52:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730929978; x=1762465978;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ob08bR0vZOnsCi4kIlhIaboLPEHBAllWAn1BzfMY2hM=;
 b=Th2O3BcrvyeClpH769nqKH33MoiZBoo9yX+QKe9glD2bzMQfq4tOmvwh
 0rT83k6FylU15XIsEUa/3myL4On89dKPcaWIFgUWTCpssVbYsDlDibaqi
 FFoIk4HzjlmnqkZuM9tbJoKLkRGjsH8ATlTOfBduSO/U6rX0IhphkH3uy
 a2kdr2nZAtoLZdbUQkAY7G2GG4KPgq6P80vgakiSIIjwJZ39QTcE9Qd/9
 XpkQF8dDOqBz0LiEZV31nx+Zrjip09psioFVbV2B8b/EcwUhyp48MfXze
 ZaFvsVbz/dVW5rvrCMYGtg+5wGl4p8v9riwQ59jPe1UVmQ45KlBDUnTuF w==;
X-CSE-ConnectionGUID: R8dkL8qCSOmWxiaTzG8/4w==
X-CSE-MsgGUID: SV9X8tvLTee0h5sjO1ZIqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="48212178"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="48212178"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 13:52:58 -0800
X-CSE-ConnectionGUID: P+IO3FptSKGE0g7LXYU61Q==
X-CSE-MsgGUID: tybcArG3S3qcTssnCnn4TQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="84882487"
Received: from puneetse-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.118])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 13:52:57 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 09/17] drm/i915/dmc_wl: Track registers touched by the DMC
Date: Wed,  6 Nov 2024 18:50:35 -0300
Message-ID: <20241106215231.103474-10-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241106215231.103474-1-gustavo.sousa@intel.com>
References: <20241106215231.103474-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
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

There are extra registers that require the DMC wakelock when specific
dynamic DC states are in place. Those are registers that are touched by
the DMC and require DC exit for proper access. Add the range tables for
them and use the correct one depending on the enabled DC state.

v2:
  - Do not look into power domains guts (i.e.
    display->power.domains.dc_state). (Jani)
  - Come up with better names for variables containing register ranges.
    (Luca)
  - Keep a copy of dc_state in struct intel_dmc_wl.
  - Update commit message for a clearer explanation for the need of
    these new tables.

Bspec: 71583
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 .../i915/display/intel_display_power_well.c   |   4 +-
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   | 126 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_dmc_wl.h   |  11 +-
 3 files changed, 128 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 0c77b6252969..578959ff2d75 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -833,7 +833,7 @@ void gen9_enable_dc5(struct intel_display *display)
 		intel_de_rmw(display, GEN8_CHICKEN_DCPR_1,
 			     0, SKL_SELECT_ALTERNATE_DC_EXIT);
 
-	intel_dmc_wl_enable(display);
+	intel_dmc_wl_enable(display, DC_STATE_EN_UPTO_DC5);
 
 	gen9_set_dc_state(display, DC_STATE_EN_UPTO_DC5);
 }
@@ -866,7 +866,7 @@ void skl_enable_dc6(struct intel_display *display)
 		intel_de_rmw(display, GEN8_CHICKEN_DCPR_1,
 			     0, SKL_SELECT_ALTERNATE_DC_EXIT);
 
-	intel_dmc_wl_enable(display);
+	intel_dmc_wl_enable(display, DC_STATE_EN_UPTO_DC6);
 
 	gen9_set_dc_state(display, DC_STATE_EN_UPTO_DC6);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 1877a89affab..db01b65cb05d 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -5,6 +5,7 @@
 
 #include <linux/kernel.h>
 
+#include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_dmc.h"
 #include "intel_dmc_regs.h"
@@ -56,6 +57,87 @@ static struct intel_dmc_wl_range powered_off_ranges[] = {
 	{},
 };
 
+static struct intel_dmc_wl_range xe3lpd_dc5_dc6_dmc_ranges[] = {
+	{ .start = 0x45500, .end = 0x45500 }, /* DC_STATE_SEL */
+	{ .start = 0x457a0, .end = 0x457b0 }, /* DC*_RESIDENCY_COUNTER */
+	{ .start = 0x45504, .end = 0x45504 }, /* DC_STATE_EN */
+	{ .start = 0x45400, .end = 0x4540c }, /* PWR_WELL_CTL_* */
+	{ .start = 0x454f0, .end = 0x454f0 }, /* RETENTION_CTRL */
+
+	/* DBUF_CTL_* */
+	{ .start = 0x44300, .end = 0x44300 },
+	{ .start = 0x44304, .end = 0x44304 },
+	{ .start = 0x44f00, .end = 0x44f00 },
+	{ .start = 0x44f04, .end = 0x44f04 },
+	{ .start = 0x44fe8, .end = 0x44fe8 },
+	{ .start = 0x45008, .end = 0x45008 },
+
+	{ .start = 0x46070, .end = 0x46070 }, /* CDCLK_PLL_ENABLE */
+	{ .start = 0x46000, .end = 0x46000 }, /* CDCLK_CTL */
+	{ .start = 0x46008, .end = 0x46008 }, /* CDCLK_SQUASH_CTL */
+
+	/* TRANS_CMTG_CTL_* */
+	{ .start = 0x6fa88, .end = 0x6fa88 },
+	{ .start = 0x6fb88, .end = 0x6fb88 },
+
+	{ .start = 0x46430, .end = 0x46430 }, /* CHICKEN_DCPR_1 */
+	{ .start = 0x46434, .end = 0x46434 }, /* CHICKEN_DCPR_2 */
+	{ .start = 0x454a0, .end = 0x454a0 }, /* CHICKEN_DCPR_4 */
+	{ .start = 0x42084, .end = 0x42084 }, /* CHICKEN_MISC_2 */
+	{ .start = 0x42088, .end = 0x42088 }, /* CHICKEN_MISC_3 */
+	{ .start = 0x46160, .end = 0x46160 }, /* CMTG_CLK_SEL */
+	{ .start = 0x8f000, .end = 0x8ffff }, /* Main DMC registers */
+
+	{},
+};
+
+static struct intel_dmc_wl_range xe3lpd_dc3co_dmc_ranges[] = {
+	{ .start = 0x454a0, .end = 0x454a0 }, /* CHICKEN_DCPR_4 */
+
+	{ .start = 0x45504, .end = 0x45504 }, /* DC_STATE_EN */
+
+	/* DBUF_CTL_* */
+	{ .start = 0x44300, .end = 0x44300 },
+	{ .start = 0x44304, .end = 0x44304 },
+	{ .start = 0x44f00, .end = 0x44f00 },
+	{ .start = 0x44f04, .end = 0x44f04 },
+	{ .start = 0x44fe8, .end = 0x44fe8 },
+	{ .start = 0x45008, .end = 0x45008 },
+
+	{ .start = 0x46070, .end = 0x46070 }, /* CDCLK_PLL_ENABLE */
+	{ .start = 0x46000, .end = 0x46000 }, /* CDCLK_CTL */
+	{ .start = 0x46008, .end = 0x46008 }, /* CDCLK_SQUASH_CTL */
+	{ .start = 0x8f000, .end = 0x8ffff }, /* Main DMC registers */
+
+	/* Scanline registers */
+	{ .start = 0x70000, .end = 0x70000 },
+	{ .start = 0x70004, .end = 0x70004 },
+	{ .start = 0x70014, .end = 0x70014 },
+	{ .start = 0x70018, .end = 0x70018 },
+	{ .start = 0x71000, .end = 0x71000 },
+	{ .start = 0x71004, .end = 0x71004 },
+	{ .start = 0x71014, .end = 0x71014 },
+	{ .start = 0x71018, .end = 0x71018 },
+	{ .start = 0x72000, .end = 0x72000 },
+	{ .start = 0x72004, .end = 0x72004 },
+	{ .start = 0x72014, .end = 0x72014 },
+	{ .start = 0x72018, .end = 0x72018 },
+	{ .start = 0x73000, .end = 0x73000 },
+	{ .start = 0x73004, .end = 0x73004 },
+	{ .start = 0x73014, .end = 0x73014 },
+	{ .start = 0x73018, .end = 0x73018 },
+	{ .start = 0x7b000, .end = 0x7b000 },
+	{ .start = 0x7b004, .end = 0x7b004 },
+	{ .start = 0x7b014, .end = 0x7b014 },
+	{ .start = 0x7b018, .end = 0x7b018 },
+	{ .start = 0x7c000, .end = 0x7c000 },
+	{ .start = 0x7c004, .end = 0x7c004 },
+	{ .start = 0x7c014, .end = 0x7c014 },
+	{ .start = 0x7c018, .end = 0x7c018 },
+
+	{},
+};
+
 static void __intel_dmc_wl_release(struct intel_display *display)
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
@@ -112,13 +194,37 @@ static bool intel_dmc_wl_reg_in_range(i915_reg_t reg,
 	return false;
 }
 
-static bool intel_dmc_wl_check_range(i915_reg_t reg)
+static bool intel_dmc_wl_check_range(i915_reg_t reg, u32 dc_state)
 {
+	const struct intel_dmc_wl_range *ranges;
+
 	/*
 	 * Check that the offset is in one of the ranges for which
 	 * registers are powered off during DC states.
 	 */
-	return intel_dmc_wl_reg_in_range(reg, powered_off_ranges);
+	if (intel_dmc_wl_reg_in_range(reg, powered_off_ranges))
+		return true;
+
+	/*
+	 * Check that the offset is for a register that is touched by
+	 * the DMC and requires a DC exit for proper access.
+	 */
+	switch (dc_state) {
+	case DC_STATE_EN_DC3CO:
+		ranges = xe3lpd_dc3co_dmc_ranges;
+		break;
+	case DC_STATE_EN_UPTO_DC5:
+	case DC_STATE_EN_UPTO_DC6:
+		ranges = xe3lpd_dc5_dc6_dmc_ranges;
+		break;
+	default:
+		ranges = NULL;
+	}
+
+	if (ranges && intel_dmc_wl_reg_in_range(reg, ranges))
+		return true;
+
+	return false;
 }
 
 static bool __intel_dmc_wl_supported(struct intel_display *display)
@@ -144,7 +250,7 @@ void intel_dmc_wl_init(struct intel_display *display)
 	refcount_set(&wl->refcount, 0);
 }
 
-void intel_dmc_wl_enable(struct intel_display *display)
+void intel_dmc_wl_enable(struct intel_display *display, u32 dc_state)
 {
 	struct intel_dmc_wl *wl = &display->wl;
 	unsigned long flags;
@@ -154,6 +260,8 @@ void intel_dmc_wl_enable(struct intel_display *display)
 
 	spin_lock_irqsave(&wl->lock, flags);
 
+	wl->dc_state = dc_state;
+
 	if (wl->enabled)
 		goto out_unlock;
 
@@ -205,11 +313,11 @@ void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg)
 	if (!__intel_dmc_wl_supported(display))
 		return;
 
-	if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(reg))
-		return;
-
 	spin_lock_irqsave(&wl->lock, flags);
 
+	if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(reg, wl->dc_state))
+		goto out_unlock;
+
 	if (!wl->enabled)
 		goto out_unlock;
 
@@ -257,11 +365,11 @@ void intel_dmc_wl_put(struct intel_display *display, i915_reg_t reg)
 	if (!__intel_dmc_wl_supported(display))
 		return;
 
-	if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(reg))
-		return;
-
 	spin_lock_irqsave(&wl->lock, flags);
 
+	if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(reg, wl->dc_state))
+		goto out_unlock;
+
 	if (!wl->enabled)
 		goto out_unlock;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.h b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
index 9aa72a4bf153..147eeb4d8432 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
@@ -15,15 +15,22 @@
 struct intel_display;
 
 struct intel_dmc_wl {
-	spinlock_t lock; /* protects enabled, taken  and refcount */
+	spinlock_t lock; /* protects enabled, taken, dc_state and refcount */
 	bool enabled;
 	bool taken;
 	refcount_t refcount;
+	/*
+	 * We are keeping a copy of the enabled DC state because
+	 * intel_display.power.domains is protected by a mutex and we do
+	 * not want call mutex_lock() in atomic context, where some of
+	 * the tracked MMIO operations happen.
+	 */
+	u32 dc_state;
 	struct delayed_work work;
 };
 
 void intel_dmc_wl_init(struct intel_display *display);
-void intel_dmc_wl_enable(struct intel_display *display);
+void intel_dmc_wl_enable(struct intel_display *display, u32 dc_state);
 void intel_dmc_wl_disable(struct intel_display *display);
 void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg);
 void intel_dmc_wl_put(struct intel_display *display, i915_reg_t reg);
-- 
2.47.0

