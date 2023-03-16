Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D82586BCDF9
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 12:19:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E87810ECB3;
	Thu, 16 Mar 2023 11:19:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8403A10ECB2
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 11:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678965551; x=1710501551;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o1qT5e2eH/0VX7p1AaLYClrRQaOYftkMic63LPSVsaU=;
 b=SO8vF1el/B8kj7XFBhFerSkfn7SYOkwWouo1ZoOjgMuVPHtby5rhw54z
 05+VDXg1PAj87fSwg+4TdScLxDhLSU4yhGXoODZ84vP3AO5ay4I24yfO8
 IyRwHK/1G9YfBYtB3pEhiY607uTBB6hwvJ5Z90Vu9U0cORIJvZnJ8kFWB
 ZO+MFTAoTjAKTgbsKa6CwUKJL/VNXkAHXQfgBIkrT6n/poakS/BD9ai7z
 wkJpdXdf3VIUYtscRmIgo/rckkGMil1rrUGuq2FqrlgVMElIsniP+vf6r
 8wGsUW59o45FytJd++WVnN9bZZZAUk+kzTchprOld2Yy2mHQFw6iBz7Ar A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="339485896"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="339485896"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 04:19:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="744083239"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="744083239"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga008.fm.intel.com with ESMTP; 16 Mar 2023 04:19:10 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 13:13:24 +0200
Message-Id: <20230316111335.66915-12-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230316111335.66915-1-mika.kahola@intel.com>
References: <20230316111335.66915-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 11/22] drm/i915/mtl: C20 port clock
 calculation
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

Calculate port clock with C20 phy.

v2: Initialize parameters
v3: Revised formula for port clock check

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 70 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  2 +
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 12 ++--
 drivers/gpu/drm/i915/display/intel_ddi.c      |  4 +-
 4 files changed, 78 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index bc6913a7444a..23ebea25aaa9 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -1626,6 +1626,18 @@ intel_c10_mpllb_tables_get(struct intel_crtc_state *crtc_state,
 	return NULL;
 }
 
+static const struct intel_c20pll_state * const *
+intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
+			 struct intel_encoder *encoder)
+{
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		return mtl_c20_dp_tables;
+	}
+
+	MISSING_CASE(encoder->type);
+	return NULL;
+}
+
 static int intel_c10mpllb_calc_state(struct intel_crtc_state *crtc_state,
 				     struct intel_encoder *encoder)
 {
@@ -1657,15 +1669,36 @@ static int intel_c10mpllb_calc_state(struct intel_crtc_state *crtc_state,
 	return -EINVAL;
 }
 
+static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
+				   struct intel_encoder *encoder)
+{
+	const struct intel_c20pll_state * const *tables;
+	int i;
+
+	tables = intel_c20_pll_tables_get(crtc_state, encoder);
+	if (!tables)
+		return -EINVAL;
+
+	for (i = 0; tables[i]; i++) {
+		if (crtc_state->port_clock <= tables[i]->clock) {
+			crtc_state->cx0pll_state.c20pll_state = *tables[i];
+			return 0;
+		}
+	}
+
+	return -EINVAL;
+}
+
 int intel_cx0mpllb_calc_state(struct intel_crtc_state *crtc_state,
 			      struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
 
-	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
-
-	return intel_c10mpllb_calc_state(crtc_state, encoder);
+	if (intel_is_c10phy(i915, phy))
+		return intel_c10mpllb_calc_state(crtc_state, encoder);
+	else
+		return intel_c20pll_calc_state(crtc_state, encoder);
 }
 
 void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
@@ -2111,6 +2144,37 @@ int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
 	return tmpclk;
 }
 
+int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
+				 const struct intel_c20pll_state *pll_state)
+{
+	unsigned int frac_quot = 0, frac_rem = 0, frac_den = 1;
+	unsigned int multiplier, refclk = 38400;
+	unsigned ref_clk_mpllb_div = 0;
+	unsigned fb_clk_div4_en = 0;
+	unsigned long tmp1, tmp2;
+
+	if (pll_state->mpllb[6] & C20_MPLLB_FRACEN) {
+		multiplier = REG_FIELD_GET(C20_MULTIPLIER_MASK, pll_state->mpllb[0]);
+		ref_clk_mpllb_div = REG_FIELD_GET(C20_REF_CLK_MPLLB_DIV_MASK, pll_state->mpllb[6]);
+		fb_clk_div4_en = REG_FIELD_GET(C20_FB_CLK_DIV4_EN, pll_state->mpllb[6]);
+		frac_den = pll_state->mpllb[7];
+		frac_quot = pll_state->mpllb[8];
+		frac_rem = pll_state->mpllb[9];
+	} else if (pll_state->mplla[6] & C20_MPLLA_FRACEN) {
+		multiplier = REG_FIELD_GET(C20_MULTIPLIER_MASK, pll_state->mplla[0]);
+		ref_clk_mpllb_div = REG_FIELD_GET(C20_REF_CLK_MPLLB_DIV_MASK, pll_state->mpllb[6]);
+		fb_clk_div4_en = REG_FIELD_GET(C20_FB_CLK_DIV4_EN, pll_state->mpllb[6]);
+		frac_den = pll_state->mpllb[7];
+		frac_quot = pll_state->mplla[8];
+		frac_rem = pll_state->mplla[9];
+	}
+
+	tmp1 = DIV_ROUND_CLOSEST(refclk * (1 << (1 + fb_clk_div4_en)), 1 << ref_clk_mpllb_div);
+	tmp2 = (multiplier << 15) + frac_quot + DIV_ROUND_CLOSEST(frac_rem,frac_den);
+
+	return DIV_ROUND_CLOSEST((tmp1 * tmp2) >> 17, 10);
+}
+
 static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 					 const struct intel_crtc_state *crtc_state,
 					 bool lane_reversal)
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 0b46b2ad48a9..0a8e76fd101e 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -43,6 +43,8 @@ int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
 				   const struct intel_c10mpllb_state *pll_state);
 void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
 				 struct intel_crtc_state *new_crtc_state);
+int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
+				 const struct intel_c20pll_state *pll_state);
 int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
 void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 				     const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index baadaaf3e39a..929a8aa243c3 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -208,11 +208,13 @@
 #define PHY_C20_A_MPLLB_CNTX_CFG(idx)	(0xCB5A - (idx))
 #define PHY_C20_B_MPLLB_CNTX_CFG(idx)	(0xCB4E - (idx))
 
-#define C20_MPLLB_FRACEN		REG_BIT(13)
-#define C20_MPLLA_FRACEN		REG_BIT(14)
-#define C20_MULTIPLIER_MASK		REG_GENMASK(11, 0)
-#define C20_MPLLB_TX_CLK_DIV_MASK	REG_GENMASK(15, 13)
-#define C20_MPLLA_TX_CLK_DIV_MASK	REG_GENMASK(10, 8)
+#define C20_MPLLB_FRACEN                REG_BIT(13)
+#define C20_MPLLA_FRACEN                REG_BIT(14)
+#define C20_MPLLB_TX_CLK_DIV_MASK       REG_GENMASK(15, 13)
+#define C20_REF_CLK_MPLLB_DIV_MASK      REG_GENMASK(12, 10)
+#define C20_MULTIPLIER_MASK             REG_GENMASK(11, 0)
+#define C20_MPLLA_TX_CLK_DIV_MASK       REG_GENMASK(10, 8)
+#define C20_FB_CLK_DIV4_EN              REG_BIT(13)
 
 #define RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(idx)	(0x303D + (idx))
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index d94add6e322d..30a1aa7d776a 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3519,13 +3519,13 @@ static void mtl_ddi_get_config(struct intel_encoder *encoder,
 	if (intel_is_c10phy(i915, phy)) {
 		intel_c10mpllb_readout_hw_state(encoder, &crtc_state->cx0pll_state.c10mpllb_state);
 		intel_c10mpllb_dump_hw_state(i915, &crtc_state->cx0pll_state.c10mpllb_state);
+		crtc_state->port_clock = intel_c10mpllb_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10mpllb_state);
 	} else {
 		intel_c20pll_readout_hw_state(encoder, &crtc_state->cx0pll_state.c20pll_state);
 		intel_c20pll_dump_hw_state(i915, &crtc_state->cx0pll_state.c20pll_state);
+		crtc_state->port_clock = intel_c20pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c20pll_state);
 	}
 
-	crtc_state->port_clock = intel_c10mpllb_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10mpllb_state);
-
 	intel_ddi_get_config(encoder, crtc_state);
 }
 
-- 
2.34.1

