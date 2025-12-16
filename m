Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FBA2CC1A35
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 09:47:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 904BE10E7A8;
	Tue, 16 Dec 2025 08:46:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZKhGSLZ1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A96010E785;
 Tue, 16 Dec 2025 08:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765874815; x=1797410815;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+T5gNyzAHJNZTtgCWUAuOsaWvMLZISmQaWvtxWaMEZg=;
 b=ZKhGSLZ1cthzRK0kXAvsELj2JzMb0d9qwmfKb6B1uweH6k4ZhBZ29LYb
 imspAVP0wra1hbl/ncD/K4IitLZfTga89UOl+LsUE8JoZb3304JX7EnlI
 ixXhWEMM3Nmwn2sNAmA+Hk7Ql7814Plh9mj4vhP5pNRBw0FqUgZ7/6iK6
 WmTE4XNBITsIAP1YmUhqDl6Fsrg2vTqAD1TyP0h5Efuto7Ay25mujcxEq
 qmtJ7G8RUVzBwXJrht1BHr+w/BQQcnZb9VhcVN8iEtchjx70oAKfhveMp
 teoK8tao0oG+BhXPsKSCmW5Omb6DMa6nTKX/YzgJz3CvB1IiMZtz8ZTJX Q==;
X-CSE-ConnectionGUID: Y2wSQrWWQuiQX/OG2M1kKQ==
X-CSE-MsgGUID: sia6kB1bSsGZXNGdMhwWsw==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="71642333"
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="71642333"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 00:46:54 -0800
X-CSE-ConnectionGUID: yW7r6DEESruHY4NhFQ8Y9A==
X-CSE-MsgGUID: kJcb7BQqRHOZ2o2su9H+pA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="198448891"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa009.fm.intel.com with ESMTP; 16 Dec 2025 00:46:53 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 10/13] drm/i915/lt_phy: Add verfication for lt phy pll dividers
Date: Tue, 16 Dec 2025 10:37:56 +0200
Message-Id: <20251216083759.383163-11-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251216083759.383163-1-mika.kahola@intel.com>
References: <20251216083759.383163-1-mika.kahola@intel.com>
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

Add verification for lt phy pll dividers during boot. The port clock
is calculated from pll dividers and compared against the requested
port clock value. If there are a difference exceeding +-2 kHz an
drm_warn() is thrown out to indicate possible pll divider mismatch.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   1 +
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 123 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_lt_phy.h   |   1 +
 3 files changed, 99 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 001788174f6b..1bb2fd43fade 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4640,6 +4640,7 @@ void intel_dpll_init(struct intel_display *display)
 	 * debug option.
 	 */
 	intel_cx0pll_verify_plls(display);
+	intel_lt_phy_verify_plls(display);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index d00cf3232e7a..d0fd36e3f80e 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -438,24 +438,29 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_uhbr20 = {
 
 struct intel_lt_phy_pll_params {
 	const char *name;
+	bool is_hdmi;
 	int clock_rate;
-	const struct intel_lt_phy_pll_state *pll;
+	const struct intel_lt_phy_pll_state *state;
 };
 
-#define LT_PHY_PLL_PARAMS(__clock_rate, __state)    { \
+#define __LT_PHY_PLL_PARAMS(__is_hdmi, __clock_rate, __state)    { \
 	.name = __stringify(__state), \
+	.is_hdmi = __is_hdmi, \
 	.clock_rate = __clock_rate, \
-	.pll = &__state, \
+	.state = &__state, \
 }
 
+#define LT_PHY_PLL_HDMI_PARAMS(__clock_rate, __state)	__LT_PHY_PLL_PARAMS(true, __clock_rate, __state)
+#define LT_PHY_PLL_DP_PARAMS(__clock_rate, __state)	__LT_PHY_PLL_PARAMS(false, __clock_rate, __state)
+
 static const struct intel_lt_phy_pll_params xe3plpd_lt_dp_tables[] = {
-	LT_PHY_PLL_PARAMS(162000, xe3plpd_lt_dp_rbr),
-	LT_PHY_PLL_PARAMS(270000, xe3plpd_lt_dp_hbr1),
-	LT_PHY_PLL_PARAMS(540000, xe3plpd_lt_dp_hbr2),
-	LT_PHY_PLL_PARAMS(810000, xe3plpd_lt_dp_hbr3),
-	LT_PHY_PLL_PARAMS(1000000, xe3plpd_lt_dp_uhbr10),
-	LT_PHY_PLL_PARAMS(1350000, xe3plpd_lt_dp_uhbr13_5),
-	LT_PHY_PLL_PARAMS(2000000, xe3plpd_lt_dp_uhbr20),
+	LT_PHY_PLL_DP_PARAMS(162000, xe3plpd_lt_dp_rbr),
+	LT_PHY_PLL_DP_PARAMS(270000, xe3plpd_lt_dp_hbr1),
+	LT_PHY_PLL_DP_PARAMS(540000, xe3plpd_lt_dp_hbr2),
+	LT_PHY_PLL_DP_PARAMS(810000, xe3plpd_lt_dp_hbr3),
+	LT_PHY_PLL_DP_PARAMS(1000000, xe3plpd_lt_dp_uhbr10),
+	LT_PHY_PLL_DP_PARAMS(1350000, xe3plpd_lt_dp_uhbr13_5),
+	LT_PHY_PLL_DP_PARAMS(2000000, xe3plpd_lt_dp_uhbr20),
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_2_16 = {
@@ -729,15 +734,15 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_6_75 = {
 };
 
 static const struct intel_lt_phy_pll_params xe3plpd_lt_edp_tables[] = {
-	LT_PHY_PLL_PARAMS(162000, xe3plpd_lt_dp_rbr),
-	LT_PHY_PLL_PARAMS(216000, xe3plpd_lt_edp_2_16),
-	LT_PHY_PLL_PARAMS(243000, xe3plpd_lt_edp_2_43),
-	LT_PHY_PLL_PARAMS(270000, xe3plpd_lt_dp_hbr1),
-	LT_PHY_PLL_PARAMS(324000, xe3plpd_lt_edp_3_24),
-	LT_PHY_PLL_PARAMS(432000, xe3plpd_lt_edp_4_32),
-	LT_PHY_PLL_PARAMS(540000, xe3plpd_lt_dp_hbr2),
-	LT_PHY_PLL_PARAMS(675000, xe3plpd_lt_edp_6_75),
-	LT_PHY_PLL_PARAMS(810000, xe3plpd_lt_dp_hbr3),
+	LT_PHY_PLL_DP_PARAMS(162000, xe3plpd_lt_dp_rbr),
+	LT_PHY_PLL_DP_PARAMS(216000, xe3plpd_lt_edp_2_16),
+	LT_PHY_PLL_DP_PARAMS(243000, xe3plpd_lt_edp_2_43),
+	LT_PHY_PLL_DP_PARAMS(270000, xe3plpd_lt_dp_hbr1),
+	LT_PHY_PLL_DP_PARAMS(324000, xe3plpd_lt_edp_3_24),
+	LT_PHY_PLL_DP_PARAMS(432000, xe3plpd_lt_edp_4_32),
+	LT_PHY_PLL_DP_PARAMS(540000, xe3plpd_lt_dp_hbr2),
+	LT_PHY_PLL_DP_PARAMS(675000, xe3plpd_lt_edp_6_75),
+	LT_PHY_PLL_DP_PARAMS(810000, xe3plpd_lt_dp_hbr3),
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_252 = {
@@ -1011,11 +1016,11 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_5p94 = {
 };
 
 static const struct intel_lt_phy_pll_params xe3plpd_lt_hdmi_tables[] = {
-	LT_PHY_PLL_PARAMS(25200, xe3plpd_lt_hdmi_252),
-	LT_PHY_PLL_PARAMS(27200, xe3plpd_lt_hdmi_272),
-	LT_PHY_PLL_PARAMS(74250, xe3plpd_lt_hdmi_742p5),
-	LT_PHY_PLL_PARAMS(148500, xe3plpd_lt_hdmi_1p485),
-	LT_PHY_PLL_PARAMS(594000, xe3plpd_lt_hdmi_5p94),
+	LT_PHY_PLL_HDMI_PARAMS(25200, xe3plpd_lt_hdmi_252),
+	LT_PHY_PLL_HDMI_PARAMS(27200, xe3plpd_lt_hdmi_272),
+	LT_PHY_PLL_HDMI_PARAMS(74250, xe3plpd_lt_hdmi_742p5),
+	LT_PHY_PLL_HDMI_PARAMS(148500, xe3plpd_lt_hdmi_1p485),
+	LT_PHY_PLL_HDMI_PARAMS(594000, xe3plpd_lt_hdmi_5p94),
 };
 
 static u8 intel_lt_phy_get_owned_lane_mask(struct intel_encoder *encoder)
@@ -1792,8 +1797,8 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
 		return -EINVAL;
 
 	for (i = 0; tables; i++) {
-		if (crtc_state->port_clock == tables[i].clock_rate) {
-			crtc_state->dpll_hw_state.ltpll = *tables[i].pll;
+		if (intel_cx0pll_clock_matches(crtc_state->port_clock, tables[i].clock_rate)) {
+			crtc_state->dpll_hw_state.ltpll = *tables[i].state;
 			if (intel_crtc_has_dp_encoder(crtc_state)) {
 				if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
 					crtc_state->dpll_hw_state.ltpll.config[2] = 1;
@@ -2331,3 +2336,69 @@ void intel_xe3plpd_pll_disable(struct intel_encoder *encoder)
 		intel_lt_phy_pll_disable(encoder);
 
 }
+
+static void intel_lt_phy_pll_verify_clock(struct intel_display *display,
+					  int precomputed_clock,
+					  const char *pll_params_name,
+					  const struct intel_lt_phy_pll_state *pll_state,
+					  bool pre_computed_params)
+{
+	struct drm_printer p;
+	int clock;
+
+	clock = intel_lt_phy_calc_port_clock(display, pll_state);
+
+	if (intel_cx0pll_clock_matches(clock, precomputed_clock))
+		return;
+
+	drm_warn(display->drm,
+		 "%s (%s): clock difference too high: computed %d, pre-computed %d\n",
+		 pll_params_name,
+		 pre_computed_params ? "precomputed" : "computed",
+		 clock, precomputed_clock);
+
+	if (!drm_debug_enabled(DRM_UT_KMS))
+		return;
+
+	p = drm_dbg_printer(display->drm, DRM_UT_KMS, NULL);
+
+	drm_printf(&p, "PLL state (%s):\n",
+		   pre_computed_params ? "precomputed" : "computed");
+	intel_lt_phy_dump_hw_state(display, pll_state);
+}
+
+static void intel_lt_phy_pll_verify_params(struct intel_display *display,
+					   const struct intel_lt_phy_pll_params *pll_params)
+{
+	struct intel_lt_phy_pll_state pll_state;
+
+	intel_lt_phy_pll_verify_clock(display, pll_params->clock_rate, pll_params->name, pll_params->state, true);
+
+	if (!pll_params->is_hdmi)
+		return;
+
+	if (intel_lt_phy_calculate_hdmi_state(&pll_state, pll_params->clock_rate) != 0)
+		return;
+
+	intel_lt_phy_pll_verify_clock(display, pll_params->clock_rate, pll_params->name, &pll_state, false);
+}
+
+static void intel_lt_phy_pll_verify_tables(struct intel_display *display,
+					   const struct intel_lt_phy_pll_params *tables,
+					   int size)
+{
+	int i;
+
+	for (i = 0; i < size; i++)
+		intel_lt_phy_pll_verify_params(display, &tables[i]);
+}
+
+void intel_lt_phy_verify_plls(struct intel_display *display)
+{
+	intel_lt_phy_pll_verify_tables(display, xe3plpd_lt_dp_tables,
+				       ARRAY_SIZE(xe3plpd_lt_dp_tables));
+	intel_lt_phy_pll_verify_tables(display, xe3plpd_lt_edp_tables,
+				       ARRAY_SIZE(xe3plpd_lt_edp_tables));
+	intel_lt_phy_pll_verify_tables(display, xe3plpd_lt_hdmi_tables,
+				       ARRAY_SIZE(xe3plpd_lt_hdmi_tables));
+}
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
index c4999a55473e..56c5a875d93b 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
@@ -41,5 +41,6 @@ intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_state,
 void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state);
 void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);
+void intel_lt_phy_verify_plls(struct intel_display *display);
 
 #endif /* __INTEL_LT_PHY_H__ */
-- 
2.34.1

