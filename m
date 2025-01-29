Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A154BA21D92
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 14:11:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E90E310E7F9;
	Wed, 29 Jan 2025 13:11:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bUFKH/It";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 510A510E7F8;
 Wed, 29 Jan 2025 13:11:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738156280; x=1769692280;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Djm1kWWgpBucq6pGqlohPKHnGkBlAPXP/ofI0JJa5l0=;
 b=bUFKH/ItXrkva50gjcU3Xw+YgfIfJPl8DW32Myk4dkgdgflRrp+q12x+
 sq5XJ04pDIBI/tazcdJFKVQ2x2uIrM8gMsPnyBE9o/yFxFU8cBXN5yjp/
 qeLXoi8A2MLy/64fC9b9IdrHnPRGcSRrkNMJj+NUToN65RDuTynT18Myn
 HVu7wVr+qQ9kXH16t+EEuVHUcWaD+c+IL6rm9jxuHqyGekroNilHuBj7m
 EQL4Z4K52DhQeCCv1H02pZd9bqYCseVf3wrsYFekUUOPo+wpvy3AwuVS0
 J3ZEF2RXwxCXM4NFKOFYjtMuyDr2pAUR6uWC7uyU77fiyXNfcASJ+lPLb g==;
X-CSE-ConnectionGUID: Clt8GhfoSQmExhoTxmL/zg==
X-CSE-MsgGUID: uYTaVG9FRhWzM/w8lt1ohw==
X-IronPort-AV: E=McAfee;i="6700,10204,11329"; a="37911562"
X-IronPort-AV: E=Sophos;i="6.13,243,1732608000"; d="scan'208";a="37911562"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 05:11:20 -0800
X-CSE-ConnectionGUID: aEvoCsVyRHi271qOKlWYFw==
X-CSE-MsgGUID: eELJiTt/SXiP8Ua1LbY3Hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="114010039"
Received: from unknown (HELO sorvi2.fi.intel.com) ([10.237.72.194])
 by orviesa003.jf.intel.com with ESMTP; 29 Jan 2025 05:11:19 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 2/2] drm/i915/display: Allow display PHYs to reset power state
Date: Wed, 29 Jan 2025 15:01:05 +0200
Message-ID: <20250129130105.198817-3-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250129130105.198817-1-mika.kahola@intel.com>
References: <20250129130105.198817-1-mika.kahola@intel.com>
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

The dedicated display PHYs reset to a power state that blocks S0ix,
increasing idle system power. After a system reset (cold boot,
S3/4/5, warm reset) if a dedicated PHY is not being brought up
shortly, use these steps to move the PHY to the lowest power state
to save power.

1. Follow the PLL Enable Sequence, using any valid frequency such as DP 1.62 GHz.
   This brings lanes out of reset and enables the PLL to allow powerdown to be moved
   to the Disable state.
2. Follow PLL Disable Sequence. This moves powerdown to the Disable state and disables the PLL.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 35 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  1 +
 .../drm/i915/display/intel_display_reset.c    |  2 ++
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  2 ++
 4 files changed, 40 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index bffe3d4bbe8b..0bd74e899221 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3559,3 +3559,38 @@ void intel_cx0pll_state_verify(struct intel_atomic_state *state,
 	else
 		intel_c20pll_state_verify(new_crtc_state, crtc, encoder, &mpll_hw_state.c20);
 }
+
+/*
+ * WA 14022081154
+ * The dedicated display PHYs reset to a power state that blocks S0ix, increasing idle
+ * system power. After a system reset (cold boot, S3/4/5, warm reset) if a dedicated
+ * PHY is not being brought up shortly, use these steps to move the PHY to the lowest
+ * power state to save power.
+ *
+ * 1. Follow the PLL Enable Sequence, using any valid frequency such as DP 1.62 GHz.
+ *    This brings lanes out of reset and enables the PLL to allow powerdown to be moved
+ *    to the Disable state.
+ * 2. Follow PLL Disable Sequence. This moves powerdown to the Disable state and disables the PLL.
+ */
+void wa_14022081154(struct intel_display *display)
+{
+	struct intel_encoder *encoder;
+	u32 val;
+
+	if (DISPLAY_VER(display) < 30)
+		return;
+
+	for_each_intel_encoder(display->drm, encoder) {
+		if (encoder->port == PORT_A || encoder->port == PORT_B) {
+			val = intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port));
+
+			if (REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val) == XELPDP_DDI_CLOCK_SELECT_NONE) {
+				struct intel_cx0pll_state pll_state = {};
+				int port_clock = 162000;
+				intel_c10pll_calc_state_from_table(encoder, mtl_c10_edp_tables, port_clock, true, &pll_state);
+				__intel_cx0pll_enable(encoder, &pll_state, true, port_clock, 4);
+				intel_cx0pll_disable(encoder);
+			}
+		}
+	}
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 573fa7d3e88f..abebe7fd2cf2 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -42,5 +42,6 @@ bool intel_cx0pll_compare_hw_state(const struct intel_cx0pll_state *a,
 void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 				     const struct intel_crtc_state *crtc_state);
 int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
+void wa_14022081154(struct intel_display *display);
 
 #endif /* __INTEL_CX0_PHY_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
index 093b386c95e8..93b2697a0876 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.c
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
@@ -7,6 +7,7 @@
 
 #include "i915_drv.h"
 #include "intel_clock_gating.h"
+#include "intel_cx0_phy.h"
 #include "intel_display_driver.h"
 #include "intel_display_reset.h"
 #include "intel_display_types.h"
@@ -116,6 +117,7 @@ void intel_display_reset_finish(struct drm_i915_private *i915)
 		intel_pps_unlock_regs_wa(display);
 		intel_display_driver_init_hw(display);
 		intel_clock_gating_init(i915);
+		wa_14022081154(display);
 		intel_hpd_init(i915);
 
 		ret = __intel_display_driver_resume(display, state, ctx);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index b8fa04d3cd5c..76394411dd7a 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -27,6 +27,7 @@
 #include "bxt_dpio_phy_regs.h"
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "intel_cx0_phy.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dkl_phy.h"
@@ -4552,6 +4553,7 @@ static void sanitize_dpll_state(struct drm_i915_private *i915,
 		return;
 
 	adlp_cmtg_clock_gating_wa(i915, pll);
+	wa_14022081154(&i915->display);
 
 	if (pll->active_mask)
 		return;
-- 
2.43.0

