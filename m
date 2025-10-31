Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF56BC2497C
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 11:48:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67B5310EB82;
	Fri, 31 Oct 2025 10:48:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aG36c7uZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CBAF10EB6D;
 Fri, 31 Oct 2025 10:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761907692; x=1793443692;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ljxABgDF39MnZuVVlQRahN361sf39bLzBrsVX9ySOTs=;
 b=aG36c7uZhBIJhuQTRa9Y8Eozd8sQc7pTa+p++Bw9b++qm1DzFLgBBD5p
 ArI1l67gUg5TNDcndMgGzGlZ7nR6DT9cCUJuoF7DTb6rX106hsdtleInK
 XWKHMwQ/EXJfaJygsQR2WxtCYqTqqD0YtfqJr/i2n2oP3jvPEaV5hV5Lu
 V8mNPnr7L20k9EeE+nmq6fVakh5qeJq5slVz3MtADfojE506mK/noUWyA
 DZNFX6GIHEySI0NMhHOjAOQna1n/jqkgu63e5/gwdWHFljy0BRzwiRz62
 J8/lrziUZM83CdZ2YBfShron+xZ5GidJBM5E/eZmxlVWmDshYQq+pCq3v g==;
X-CSE-ConnectionGUID: +jUqUxZnRFawte5TZ+nVGA==
X-CSE-MsgGUID: /lwqGggGTEWDPcZWoKjjGA==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="64217583"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="64217583"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 03:48:12 -0700
X-CSE-ConnectionGUID: 5IQsMv9HS2i1tp2orWelaA==
X-CSE-MsgGUID: QhxsqndgTX+hscpzIK3KlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="223441418"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa001.jf.intel.com with ESMTP; 31 Oct 2025 03:48:11 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [CI 23/32] drm/i915/display: Add .dump_hw_state
Date: Fri, 31 Oct 2025 12:35:40 +0200
Message-Id: <20251031103549.173208-24-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251031103549.173208-1-mika.kahola@intel.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
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

Add .dump_hw_state function pointer for MTL+ platforms
to support dpll framework. While at it, switch to use
drm_printer structure to print hw state information.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 73 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  3 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  5 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  7 ++
 4 files changed, 48 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index f5e6634a6389..e44dfda43d38 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2302,7 +2302,7 @@ static void intel_c10_pll_program(struct intel_display *display,
 	intel_c10_msgbus_access_commit(encoder, INTEL_CX0_LANE0, true);
 }
 
-static void intel_c10pll_dump_hw_state(struct intel_display *display,
+static void intel_c10pll_dump_hw_state(struct drm_printer *p,
 				       const struct intel_c10pll_state *hw_state)
 {
 	bool fracen;
@@ -2311,33 +2311,33 @@ static void intel_c10pll_dump_hw_state(struct intel_display *display,
 	unsigned int multiplier, tx_clk_div;
 
 	fracen = hw_state->pll[0] & C10_PLL0_FRACEN;
-	drm_dbg_kms(display->drm, "c10pll_hw_state: clock: %d, fracen: %s, ",
-		    hw_state->clock, str_yes_no(fracen));
+	drm_printf(p, "c10pll_hw_state: clock: %d, fracen: %s, ",
+		   hw_state->clock, str_yes_no(fracen));
 
 	if (fracen) {
 		frac_quot = hw_state->pll[12] << 8 | hw_state->pll[11];
 		frac_rem =  hw_state->pll[14] << 8 | hw_state->pll[13];
 		frac_den =  hw_state->pll[10] << 8 | hw_state->pll[9];
-		drm_dbg_kms(display->drm, "quot: %u, rem: %u, den: %u,\n",
-			    frac_quot, frac_rem, frac_den);
+		drm_printf(p, "quot: %u, rem: %u, den: %u,\n",
+			   frac_quot, frac_rem, frac_den);
 	}
 
 	multiplier = (REG_FIELD_GET8(C10_PLL3_MULTIPLIERH_MASK, hw_state->pll[3]) << 8 |
 		      hw_state->pll[2]) / 2 + 16;
 	tx_clk_div = REG_FIELD_GET8(C10_PLL15_TXCLKDIV_MASK, hw_state->pll[15]);
-	drm_dbg_kms(display->drm,
-		    "multiplier: %u, tx_clk_div: %u.\n", multiplier, tx_clk_div);
+	drm_printf(p,
+		   "multiplier: %u, tx_clk_div: %u.\n", multiplier, tx_clk_div);
 
-	drm_dbg_kms(display->drm, "c10pll_rawhw_state:");
-	drm_dbg_kms(display->drm, "tx: 0x%x, cmn: 0x%x\n", hw_state->tx,
-		    hw_state->cmn);
+	drm_printf(p, "c10pll_rawhw_state:");
+	drm_printf(p, "tx: 0x%x, cmn: 0x%x\n", hw_state->tx,
+		   hw_state->cmn);
 
 	BUILD_BUG_ON(ARRAY_SIZE(hw_state->pll) % 4);
 	for (i = 0; i < ARRAY_SIZE(hw_state->pll); i = i + 4)
-		drm_dbg_kms(display->drm,
-			    "pll[%d] = 0x%x, pll[%d] = 0x%x, pll[%d] = 0x%x, pll[%d] = 0x%x\n",
-			    i, hw_state->pll[i], i + 1, hw_state->pll[i + 1],
-			    i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
+		drm_printf(p,
+			   "pll[%d] = 0x%x, pll[%d] = 0x%x, pll[%d] = 0x%x, pll[%d] = 0x%x\n",
+			   i, hw_state->pll[i], i + 1, hw_state->pll[i + 1],
+			   i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
 }
 
 /*
@@ -2832,49 +2832,50 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 	cx0pll_state->ssc_enabled = readout_ssc_state(encoder, intel_c20phy_use_mpllb(pll_state));
 }
 
-static void intel_c20pll_dump_hw_state(struct intel_display *display,
+static void intel_c20pll_dump_hw_state(struct drm_printer *p,
 				       const struct intel_c20pll_state *hw_state)
 {
 	int i;
 
-	drm_dbg_kms(display->drm, "c20pll_hw_state clock: %d:\n", hw_state->clock);
-	drm_dbg_kms(display->drm,
-		    "tx[0] = 0x%.4x, tx[1] = 0x%.4x, tx[2] = 0x%.4x\n",
-		    hw_state->tx[0], hw_state->tx[1], hw_state->tx[2]);
-	drm_dbg_kms(display->drm,
-		    "cmn[0] = 0x%.4x, cmn[1] = 0x%.4x, cmn[2] = 0x%.4x, cmn[3] = 0x%.4x\n",
-		    hw_state->cmn[0], hw_state->cmn[1], hw_state->cmn[2], hw_state->cmn[3]);
+	drm_printf(p, "c20pll_hw_state: clock: %d\n", hw_state->clock);
+	drm_printf(p,
+		   "tx[0] = 0x%.4x, tx[1] = 0x%.4x, tx[2] = 0x%.4x\n",
+		   hw_state->tx[0], hw_state->tx[1], hw_state->tx[2]);
+	drm_printf(p,
+		   "cmn[0] = 0x%.4x, cmn[1] = 0x%.4x, cmn[2] = 0x%.4x, cmn[3] = 0x%.4x\n",
+		   hw_state->cmn[0], hw_state->cmn[1], hw_state->cmn[2], hw_state->cmn[3]);
 
 	if (intel_c20phy_use_mpllb(hw_state)) {
 		for (i = 0; i < ARRAY_SIZE(hw_state->mpllb); i++)
-			drm_dbg_kms(display->drm, "mpllb[%d] = 0x%.4x\n", i,
-				    hw_state->mpllb[i]);
+			drm_printf(p, "mpllb[%d] = 0x%.4x\n", i,
+				   hw_state->mpllb[i]);
 	} else {
 		for (i = 0; i < ARRAY_SIZE(hw_state->mplla); i++)
-			drm_dbg_kms(display->drm, "mplla[%d] = 0x%.4x\n", i,
-				    hw_state->mplla[i]);
+			drm_printf(p, "mplla[%d] = 0x%.4x\n", i,
+				   hw_state->mplla[i]);
 
 		/* For full coverage, also print the additional PLL B entry. */
 		WARN_ON(i + 1 != ARRAY_SIZE(hw_state->mpllb));
-		drm_dbg_kms(display->drm, "mpllb[%d] = 0x%.4x\n", i, hw_state->mpllb[i]);
+		drm_printf(p, "mpllb[%d] = 0x%.4x\n", i, hw_state->mpllb[i]);
 	}
 
-	drm_dbg_kms(display->drm, "vdr: custom width: 0x%02x, serdes rate: 0x%02x, hdmi rate: 0x%02x\n",
-		    hw_state->vdr.custom_width, hw_state->vdr.serdes_rate, hw_state->vdr.hdmi_rate);
+	drm_printf(p,
+		   "vdr: custom width: 0x%02x, serdes rate: 0x%02x, hdmi rate: 0x%02x\n",
+		   hw_state->vdr.custom_width, hw_state->vdr.serdes_rate, hw_state->vdr.hdmi_rate);
 }
 
-void intel_cx0pll_dump_hw_state(struct intel_display *display,
+void intel_cx0pll_dump_hw_state(struct drm_printer *p,
 				const struct intel_cx0pll_state *hw_state)
 {
-	drm_dbg_kms(display->drm,
-		    "cx0pll_hw_state: lane_count: %d, ssc_enabled: %s, use_c10: %s, tbt_mode: %s\n",
-		    hw_state->lane_count, str_yes_no(hw_state->ssc_enabled),
-		    str_yes_no(hw_state->use_c10), str_yes_no(hw_state->tbt_mode));
+	drm_printf(p,
+		   "cx0pll_hw_state: lane_count: %d, ssc_enabled: %s, use_c10: %s, tbt_mode: %s\n",
+		   hw_state->lane_count, str_yes_no(hw_state->ssc_enabled),
+		   str_yes_no(hw_state->use_c10), str_yes_no(hw_state->tbt_mode));
 
 	if (hw_state->use_c10)
-		intel_c10pll_dump_hw_state(display, &hw_state->c10);
+		intel_c10pll_dump_hw_state(p, &hw_state->c10);
 	else
-		intel_c20pll_dump_hw_state(display, &hw_state->c20);
+		intel_c20pll_dump_hw_state(p, &hw_state->c20);
 }
 
 static bool intel_c20_protocol_switch_valid(struct intel_encoder *encoder)
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 7b88c3fe9de1..03441138ec01 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -8,6 +8,7 @@
 
 #include <linux/types.h>
 
+struct drm_printer;
 enum icl_port_dpll_id;
 struct intel_atomic_state;
 struct intel_c10pll_state;
@@ -36,7 +37,7 @@ void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
 int intel_cx0pll_calc_port_clock(struct intel_encoder *encoder,
 				 const struct intel_cx0pll_state *pll_state);
 
-void intel_cx0pll_dump_hw_state(struct intel_display *display,
+void intel_cx0pll_dump_hw_state(struct drm_printer *p,
 				const struct intel_cx0pll_state *hw_state);
 bool intel_cx0pll_compare_hw_state(const struct intel_cx0pll_state *a,
 				   const struct intel_cx0pll_state *b);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a8b4619de347..2e927d6cd577 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4939,15 +4939,14 @@ pipe_config_cx0pll_mismatch(struct drm_printer *p, bool fastset,
 			    const struct intel_cx0pll_state *a,
 			    const struct intel_cx0pll_state *b)
 {
-	struct intel_display *display = to_intel_display(crtc);
 	char *chipname = a->use_c10 ? "C10" : "C20";
 
 	pipe_config_mismatch(p, fastset, crtc, name, chipname);
 
 	drm_printf(p, "expected:\n");
-	intel_cx0pll_dump_hw_state(display, a);
+	intel_cx0pll_dump_hw_state(p, a);
 	drm_printf(p, "found:\n");
-	intel_cx0pll_dump_hw_state(display, b);
+	intel_cx0pll_dump_hw_state(p, b);
 }
 
 static bool allow_vblank_delay_fastset(const struct intel_crtc_state *old_crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 01e649d66f08..d4b58c426044 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4443,6 +4443,12 @@ static int mtl_get_dplls(struct intel_atomic_state *state,
 		return mtl_get_non_tc_phy_dpll(state, crtc, encoder);
 }
 
+static void mtl_dump_hw_state(struct drm_printer *p,
+			      const struct intel_dpll_hw_state *dpll_hw_state)
+{
+	intel_cx0pll_dump_hw_state(p, &dpll_hw_state->cx0pll);
+}
+
 __maybe_unused
 static const struct intel_dpll_mgr mtl_pll_mgr = {
 	.dpll_info = mtl_plls,
@@ -4451,6 +4457,7 @@ static const struct intel_dpll_mgr mtl_pll_mgr = {
 	.put_dplls = icl_put_dplls,
 	.update_active_dpll = icl_update_active_dpll,
 	.update_ref_clks = icl_update_dpll_ref_clks,
+	.dump_hw_state = mtl_dump_hw_state,
 };
 
 /**
-- 
2.34.1

