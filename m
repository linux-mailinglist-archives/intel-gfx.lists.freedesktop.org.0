Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA785A381A6
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 12:27:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 572A010E422;
	Mon, 17 Feb 2025 11:27:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YNGglzpc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1100410E41E;
 Mon, 17 Feb 2025 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739791653; x=1771327653;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fAaF6jIuT4IRZXsTrEfl43+0hZDbGh80b+hcY+vOsdQ=;
 b=YNGglzpcbP7KbpnRqJxf6Qbgflao0onabp/n16k/8xk8lZuKNRQuJ0lU
 8sp8FMb9rJcSNLo80V00OTypA7m/90HWHN4ASnHn5NSazjViqC6btrMXU
 oiYAeAkavVOFpy+xHapJ4eUs3jqe1WQBuEopcRRSoPKqXRAHp6KEngJrp
 I3Hyl+aJDq4Xx9uMf2PiSA0GKpGMl19ys/hrpZjzpQ6MV/UmAX0qBXxIs
 rICEp0BodpDh4StTTmDKpR837pM68ggFo5ccuZGC+XU72/X3/qAU5BsW8
 WNo+Jxjp3Rm6SNsIP7W3F7GABEa2pviKnrtmw2vB0jdtaOjyYWN+anGZn Q==;
X-CSE-ConnectionGUID: /qUwf+thSbSe1dXVNPblGg==
X-CSE-MsgGUID: QfSdJPRCTgKlSZnpBzsy8w==
X-IronPort-AV: E=McAfee;i="6700,10204,11347"; a="40392607"
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="40392607"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 03:27:33 -0800
X-CSE-ConnectionGUID: hUGtZ06JSFGXaG9ykTYeJw==
X-CSE-MsgGUID: WV6ABUEgTpKQ57aKZHQ5+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="119101923"
Received: from unknown (HELO sorvi2.fi.intel.com) ([10.237.72.194])
 by orviesa004.jf.intel.com with ESMTP; 17 Feb 2025 03:27:32 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, jani.nikula@linux.intel.com,
 Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v4 2/2] drm/i915/display: Allow display PHYs to reset power
 state
Date: Mon, 17 Feb 2025 13:17:11 +0200
Message-ID: <20250217111711.639619-3-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250217111711.639619-1-mika.kahola@intel.com>
References: <20250217111711.639619-1-mika.kahola@intel.com>
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

1. Follow the PLL Enable Sequence, using any valid frequency such
   as DP 1.62 GHz. This brings lanes out of reset and enables the
   PLL to allow powerdown to be moved to the Disable state.
2. Follow PLL Disable Sequence. This moves powerdown to the Disable
   state and disables the PLL.

v2: Rename WA function to more descriptive (Jani)
    For PTL, only port A needs this wa
    Add helpers to check presence of C10 phy and pll enabling (Imre)
v3: Rename wa function (Imre)
    Check return value of C10 pll tables readout (Imre)
    Use PLL request to check pll enabling (Imre)
v4: Move intel_cx0_pll_is_enabled() right after
    intel_cx0_pll_disable() (Imre)
    Add drm_WARN_ON() if C10 state cannot be calculated from
    the tables (Imre)

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 54 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  1 +
 .../drm/i915/display/intel_display_reset.c    |  2 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  3 ++
 4 files changed, 60 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 9d46acbf26f4..4876ee9afd7d 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3300,6 +3300,16 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
 
+static bool intel_cx0_pll_is_enabled(struct intel_encoder *encoder)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	u8 lane = dig_port->lane_reversal ? INTEL_CX0_LANE1 : INTEL_CX0_LANE0;
+
+	return intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port)) &
+	       intel_cx0_get_pclk_pll_request(lane);
+}
+
 static void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
@@ -3561,3 +3571,47 @@ void intel_cx0pll_state_verify(struct intel_atomic_state *state,
 	else
 		intel_c20pll_state_verify(new_crtc_state, crtc, encoder, &mpll_hw_state.c20);
 }
+
+/*
+ * WA 14022081154
+ * The dedicated display PHYs reset to a power state that blocks S0ix, increasing idle
+ * system power. After a system reset (cold boot, S3/4/5, warm reset) if a dedicated
+ * PHY is not being brought up shortly, use these steps to move the PHY to the lowest
+ * power state to save power. For PTL the workaround is needed only for port A. Port B
+ * is not connected.
+ *
+ * 1. Follow the PLL Enable Sequence, using any valid frequency such as DP 1.62 GHz.
+ *    This brings lanes out of reset and enables the PLL to allow powerdown to be moved
+ *    to the Disable state.
+ * 2. Follow PLL Disable Sequence. This moves powerdown to the Disable state and disables the PLL.
+ */
+void intel_cx0_pll_power_save_wa(struct intel_display *display)
+{
+	struct intel_encoder *encoder;
+
+	if (DISPLAY_VER(display) != 30)
+		return;
+
+	for_each_intel_encoder(display->drm, encoder) {
+		struct intel_cx0pll_state pll_state = {};
+		int port_clock = 162000;
+
+		if (!intel_encoder_is_c10phy(encoder))
+			continue;
+
+		if (intel_cx0_pll_is_enabled(encoder))
+			continue;
+
+		if (intel_c10pll_calc_state_from_table(encoder,
+						       mtl_c10_edp_tables,
+						       port_clock, true,
+						       &pll_state) < 0) {
+			drm_WARN_ON(display->drm,
+				    "Unable to calc C10 state from the tables\n");
+			continue;
+		}
+
+		__intel_cx0pll_enable(encoder, &pll_state, true, port_clock, 4);
+		intel_cx0pll_disable(encoder);
+	}
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 573fa7d3e88f..a8f811ca5e7b 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -42,5 +42,6 @@ bool intel_cx0pll_compare_hw_state(const struct intel_cx0pll_state *a,
 void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 				     const struct intel_crtc_state *crtc_state);
 int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
+void intel_cx0_pll_power_save_wa(struct intel_display *display);
 
 #endif /* __INTEL_CX0_PHY_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
index 093b386c95e8..a690968885bf 100644
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
+		intel_cx0_pll_power_save_wa(display);
 		intel_hpd_init(i915);
 
 		ret = __intel_display_driver_resume(display, state, ctx);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index eb3df25a308c..c825a507b905 100644
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
@@ -4571,6 +4572,8 @@ void intel_dpll_sanitize_state(struct intel_display *display)
 	struct intel_shared_dpll *pll;
 	int i;
 
+	intel_cx0_pll_power_save_wa(display);
+
 	for_each_shared_dpll(display, pll, i)
 		sanitize_dpll_state(display, pll);
 }
-- 
2.43.0

