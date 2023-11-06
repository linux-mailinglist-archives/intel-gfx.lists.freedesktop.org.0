Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E5E7E1C80
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 09:39:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2A9D10E285;
	Mon,  6 Nov 2023 08:39:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C920710E284
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Nov 2023 08:39:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699259976; x=1730795976;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Xfr9lP3Km1zrax+2YDw21FuHKd+DZ0uWSpoDaDahRic=;
 b=LNq9zhM3rjIAcqPsTC647C/5NWky5BYDysryKo35/lqBJNQfzHItaObr
 kLl4fbN0F8beY30gZbALV3lEyCrZ/DcoA4cwdIsGboSkVgZUn0EInYV2q
 k347PBxybFnMK+eEzoX3fRROmiRAPTMQqmCn1W+EHHgYQIUQl2F49PSEu
 YWVZwiyd1E/owufeoZFLEI98NSqWp4p8EIofidtaAz2WRa1+SdlfX2Dkh
 dvklvI7YtkKipOE9jdERNgT3TFtx6yAuaMgb8U7yQNizHlx8jRO1+8SvG
 j+so1tV05splXRJYCqvVEwdD5zdBuKQMfTK9L1k6mj6bhxXJyU7dHhRRw g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="379622628"
X-IronPort-AV: E=Sophos;i="6.03,280,1694761200"; d="scan'208";a="379622628"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 00:39:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="828143590"
X-IronPort-AV: E=Sophos;i="6.03,280,1694761200"; d="scan'208";a="828143590"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga008.fm.intel.com with ESMTP; 06 Nov 2023 00:39:34 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Nov 2023 10:33:22 +0200
Message-Id: <20231106083322.113442-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/mtl: C20 state verification
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

Add state verification for C20 as we have one
for C10.

v2: use register values as u32 instead of u8

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 107 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   2 +-
 .../drm/i915/display/intel_modeset_verify.c   |   2 +-
 3 files changed, 84 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index b2ad4c6172f6..87329bd2272a 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3017,35 +3017,15 @@ intel_mtl_port_pll_type(struct intel_encoder *encoder,
 		return ICL_PORT_DPLL_DEFAULT;
 }
 
-void intel_c10pll_state_verify(struct intel_atomic_state *state,
-			       struct intel_crtc *crtc)
+static void intel_c10pll_state_verify(const struct intel_crtc_state *state,
+				      struct intel_crtc *crtc,
+				      struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	const struct intel_crtc_state *new_crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_c10pll_state mpllb_hw_state = {};
-	const struct intel_c10pll_state *mpllb_sw_state = &new_crtc_state->cx0pll_state.c10;
-	struct intel_encoder *encoder;
-	enum phy phy;
+	const struct intel_c10pll_state *mpllb_sw_state = &state->cx0pll_state.c10;
 	int i;
 
-	if (DISPLAY_VER(i915) < 14)
-		return;
-
-	if (!new_crtc_state->hw.active)
-		return;
-
-	/* intel_get_crtc_new_encoder() only works for modeset/fastset commits */
-	if (!intel_crtc_needs_modeset(new_crtc_state) &&
-	    !intel_crtc_needs_fastset(new_crtc_state))
-		return;
-
-	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
-	phy = intel_port_to_phy(i915, encoder->port);
-
-	if (!intel_is_c10phy(i915, phy))
-		return;
-
 	intel_c10pll_readout_hw_state(encoder, &mpllb_hw_state);
 
 	for (i = 0; i < ARRAY_SIZE(mpllb_sw_state->pll); i++) {
@@ -3091,3 +3071,80 @@ int intel_cx0pll_calc_port_clock(struct intel_encoder *encoder,
 
 	return intel_c20pll_calc_port_clock(encoder, &pll_state->c20);
 }
+
+static void intel_c20pll_state_verify(const struct intel_crtc_state *state,
+				      struct intel_crtc *crtc,
+				      struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_c20pll_state mpll_hw_state = {};
+	const struct intel_c20pll_state *mpll_sw_state = &state->cx0pll_state.c20;
+	bool use_mplla;
+	int i;
+
+	intel_c20pll_readout_hw_state(encoder, &mpll_hw_state);
+
+	use_mplla = intel_c20_use_mplla(mpll_hw_state.clock);
+	if (use_mplla) {
+		for (i = 0; i < ARRAY_SIZE(mpll_sw_state->mplla); i++) {
+			I915_STATE_WARN(i915, mpll_hw_state.mplla[i] != mpll_sw_state->mplla[i],
+					"[CRTC:%d:%s] mismatch in C20MPLLA: Register[%d] (expected 0x%04x, found 0x%04x)",
+					crtc->base.base.id, crtc->base.name, i,
+					mpll_sw_state->mplla[i], mpll_hw_state.mplla[i]);
+		}
+	} else {
+		for (i = 0; i < ARRAY_SIZE(mpll_sw_state->mpllb); i++) {
+			I915_STATE_WARN(i915, mpll_hw_state.mpllb[i] != mpll_sw_state->mpllb[i],
+					"[CRTC:%d:%s] mismatch in C20MPLLB: Register[%d] (expected 0x%04x, found 0x%04x)",
+					crtc->base.base.id, crtc->base.name, i,
+					mpll_sw_state->mpllb[i], mpll_hw_state.mpllb[i]);
+		}
+	}
+
+	for (i = 0; i < ARRAY_SIZE(mpll_sw_state->tx); i++) {
+		I915_STATE_WARN(i915, mpll_hw_state.tx[i] != mpll_sw_state->tx[i],
+				"[CRTC:%d:%s] mismatch in C20MPLL%s: Register TX[%i] (expected 0x%04x, found 0x%04x)",
+				crtc->base.base.id, crtc->base.name,
+				use_mplla ? "A" : "B",
+				i,
+				mpll_sw_state->tx[i], mpll_hw_state.tx[i]);
+	}
+
+	for (i = 0; i < ARRAY_SIZE(mpll_sw_state->cmn); i++) {
+		I915_STATE_WARN(i915, mpll_hw_state.cmn[i] != mpll_sw_state->cmn[i],
+				"[CRTC:%d:%s] mismatch in C20MPLL%s: Register CMN[%i] (expected 0x%04x, found 0x%04x)",
+				crtc->base.base.id, crtc->base.name,
+				use_mplla ? "A" : "B",
+				i,
+				mpll_sw_state->cmn[i], mpll_hw_state.cmn[i]);
+	}
+}
+
+void intel_cx0pll_state_verify(struct intel_atomic_state *state,
+			       struct intel_crtc *crtc)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_encoder *encoder;
+	enum phy phy;
+
+	if (DISPLAY_VER(i915) < 14)
+		return;
+
+	if (!new_crtc_state->hw.active)
+		return;
+
+	/* intel_get_crtc_new_encoder() only works for modeset/fastset commits */
+	if (!intel_crtc_needs_modeset(new_crtc_state) &&
+	    !intel_crtc_needs_fastset(new_crtc_state))
+		return;
+
+	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
+	phy = intel_port_to_phy(i915, encoder->port);
+
+	if (intel_is_c10phy(i915, phy))
+		intel_c10pll_state_verify(new_crtc_state, crtc, encoder);
+	else
+		intel_c20pll_state_verify(new_crtc_state, crtc, encoder);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 222aed16e739..c6682677253a 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -38,7 +38,7 @@ int intel_cx0pll_calc_port_clock(struct intel_encoder *encoder,
 
 void intel_c10pll_dump_hw_state(struct drm_i915_private *dev_priv,
 				const struct intel_c10pll_state *hw_state);
-void intel_c10pll_state_verify(struct intel_atomic_state *state,
+void intel_cx0pll_state_verify(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc);
 void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
 				const struct intel_c20pll_state *hw_state);
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index 5e1c2c780412..076298a8d405 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -244,7 +244,7 @@ void intel_modeset_verify_crtc(struct intel_atomic_state *state,
 	verify_crtc_state(state, crtc);
 	intel_shared_dpll_state_verify(state, crtc);
 	intel_mpllb_state_verify(state, crtc);
-	intel_c10pll_state_verify(state, crtc);
+	intel_cx0pll_state_verify(state, crtc);
 }
 
 void intel_modeset_verify_disabled(struct intel_atomic_state *state)
-- 
2.34.1

