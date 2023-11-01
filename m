Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A52C77DE1DD
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Nov 2023 15:05:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7713D10E6FA;
	Wed,  1 Nov 2023 14:05:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9BD610E6FA
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Nov 2023 14:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698847509; x=1730383509;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qrRjF/p785AVeSnmKoh4B72PmRHSaSn4Gl9oC2P3LK0=;
 b=d+05m3SAT/TzaRZA9uf8oDQ0Zz0eu6mMvxe91coJ7FC82Zlp4CRc6pmo
 VynKcx7OmVy6O4E8Lm9RtP/5lb3X2GgPV2ZQEF41c7u73CWldevlamIwZ
 GXlZ2mryQr8m/cSmIFAnV7hvvPCJI1Ss4Pnbz7VRBTHmXBaXxADFFmDM1
 j83tsI8+MJCMBUaWT7mgRSMiZi++212EyFGefhVaeYUetAUo/MQRP1D2t
 zGjKfUdxa/4XShtKHaSsWc1vB99ltPqVmmihoDJXzITs0xmBSRreG6Y+P
 LbxIOaP8s0Ws4A2/WdaN14uBLwM8GVgv1PUgOymNl3LMvBrwlnp/0wtb9 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="1395487"
X-IronPort-AV: E=Sophos;i="6.03,268,1694761200"; 
   d="scan'208";a="1395487"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 07:05:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="851576779"
X-IronPort-AV: E=Sophos;i="6.03,268,1694761200"; d="scan'208";a="851576779"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by FMSMGA003.fm.intel.com with ESMTP; 01 Nov 2023 07:05:03 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Nov 2023 16:05:01 +0200
Message-Id: <20231101140501.160582-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: C20 state verification
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

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 111 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   2 +-
 .../drm/i915/display/intel_modeset_verify.c   |   2 +-
 3 files changed, 88 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index b2ad4c6172f6..654e91deb7e8 100644
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
@@ -3091,3 +3071,84 @@ int intel_cx0pll_calc_port_clock(struct intel_encoder *encoder,
 
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
+			u8 expected = mpll_sw_state->mplla[i];
+
+			I915_STATE_WARN(i915, mpll_hw_state.mplla[i] != expected,
+					"[CRTC:%d:%s] mismatch in C20MPLLA: Register[%d] (expected 0x%02x, found 0x%02x)",
+					crtc->base.base.id, crtc->base.name, i,
+					expected, mpll_hw_state.mplla[i]);
+		}
+	} else {
+		for (i = 0; i < ARRAY_SIZE(mpll_sw_state->mpllb); i++) {
+			u8 expected = mpll_sw_state->mpllb[i];
+
+			I915_STATE_WARN(i915, mpll_hw_state.mpllb[i] != expected,
+					"[CRTC:%d:%s] mismatch in C20MPLLB: Register[%d] (expected 0x%02x, found 0x%02x)",
+					crtc->base.base.id, crtc->base.name, i,
+					expected, mpll_hw_state.mpllb[i]);
+		}
+	}
+
+	for (i = 0; i < ARRAY_SIZE(mpll_sw_state->tx); i++) {
+		I915_STATE_WARN(i915, mpll_hw_state.tx[i] != mpll_sw_state->tx[i],
+				"[CRTC:%d:%s] mismatch in C20MPLL%s: Register TX[%i] (expected 0x%02x, found 0x%02x)",
+				crtc->base.base.id, crtc->base.name,
+				use_mplla ? "A" : "B",
+				i,
+				mpll_sw_state->tx[i], mpll_hw_state.tx[i]);
+	}
+
+	for (i = 0; i < ARRAY_SIZE(mpll_sw_state->cmn); i++) {
+		I915_STATE_WARN(i915, mpll_hw_state.cmn[i] != mpll_sw_state->cmn[i],
+				"[CRTC:%d:%s] mismatch in C20MPLL%s: Register CMN[%i] (expected 0x%02x, found 0x%02x)",
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

