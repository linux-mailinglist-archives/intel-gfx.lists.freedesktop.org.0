Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A627E6987
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Nov 2023 12:28:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C07A510E208;
	Thu,  9 Nov 2023 11:28:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F17010E208
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Nov 2023 11:28:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699529283; x=1731065283;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=m/w4BDqMtF1SHIhd3BnjHEtgmSlbAZTgTSF4JRZ4fsM=;
 b=KcdlK3m8WtHVb9vVJ2j9ONsihys5zzwd5m8+KoFHH5aOkiRJuxWbgBpy
 Y5D9f5na3IK+FPFhfd3S+1uAvroUqgbIqXbgEhF38SXqIB/DnWTmDTJsy
 KZU8S7UrP96YOHEDN0SCLrfyKjIsPHMgr9O47mMKL1OVKSHXXHFpfFo10
 R72bomPl3lSphLieUNKyJyyYEDMaA1No+ppn0CYkfM72ZqpIiwbMW7Uvt
 nl3+xC3M0wuqwRgC899TtjqVzZuYuUAaQ/iPv8gg2iq/Gwo81drZzRDJf
 plqFmA+JwvcRZtG1Tm3ovSxiSmpBp3iRBdhZUQFyS8f/sW2kyFKVUfb6s Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="370168328"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="370168328"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 03:28:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="713266509"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="713266509"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga003.jf.intel.com with ESMTP; 09 Nov 2023 03:28:00 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Nov 2023 13:21:48 +0200
Message-Id: <20231109112148.309669-1-mika.kahola@intel.com>
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

V2: Use abstractation of HW readout (Gustavo)
    Drop MPLLA/B from message for TX and CMN
    parameters (Gustavo)

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com> (v1)
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 120 +++++++++++++-----
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   2 +-
 .../drm/i915/display/intel_modeset_verify.c   |   2 +-
 3 files changed, 88 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index b2ad4c6172f6..a8fa76580802 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3017,55 +3017,33 @@ intel_mtl_port_pll_type(struct intel_encoder *encoder,
 		return ICL_PORT_DPLL_DEFAULT;
 }
 
-void intel_c10pll_state_verify(struct intel_atomic_state *state,
-			       struct intel_crtc *crtc)
+static void intel_c10pll_state_verify(const struct intel_crtc_state *state,
+				      struct intel_crtc *crtc,
+				      struct intel_encoder *encoder,
+				      struct intel_c10pll_state *mpllb_hw_state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	const struct intel_crtc_state *new_crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
-	struct intel_c10pll_state mpllb_hw_state = {};
-	const struct intel_c10pll_state *mpllb_sw_state = &new_crtc_state->cx0pll_state.c10;
-	struct intel_encoder *encoder;
-	enum phy phy;
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
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
-	intel_c10pll_readout_hw_state(encoder, &mpllb_hw_state);
-
 	for (i = 0; i < ARRAY_SIZE(mpllb_sw_state->pll); i++) {
 		u8 expected = mpllb_sw_state->pll[i];
 
-		I915_STATE_WARN(i915, mpllb_hw_state.pll[i] != expected,
+		I915_STATE_WARN(i915, mpllb_hw_state->pll[i] != expected,
 				"[CRTC:%d:%s] mismatch in C10MPLLB: Register[%d] (expected 0x%02x, found 0x%02x)",
 				crtc->base.base.id, crtc->base.name, i,
-				expected, mpllb_hw_state.pll[i]);
+				expected, mpllb_hw_state->pll[i]);
 	}
 
-	I915_STATE_WARN(i915, mpllb_hw_state.tx != mpllb_sw_state->tx,
+	I915_STATE_WARN(i915, mpllb_hw_state->tx != mpllb_sw_state->tx,
 			"[CRTC:%d:%s] mismatch in C10MPLLB: Register TX0 (expected 0x%02x, found 0x%02x)",
 			crtc->base.base.id, crtc->base.name,
-			mpllb_sw_state->tx, mpllb_hw_state.tx);
+			mpllb_sw_state->tx, mpllb_hw_state->tx);
 
-	I915_STATE_WARN(i915, mpllb_hw_state.cmn != mpllb_sw_state->cmn,
+	I915_STATE_WARN(i915, mpllb_hw_state->cmn != mpllb_sw_state->cmn,
 			"[CRTC:%d:%s] mismatch in C10MPLLB: Register CMN0 (expected 0x%02x, found 0x%02x)",
 			crtc->base.base.id, crtc->base.name,
-			mpllb_sw_state->cmn, mpllb_hw_state.cmn);
+			mpllb_sw_state->cmn, mpllb_hw_state->cmn);
 }
 
 void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
@@ -3091,3 +3069,77 @@ int intel_cx0pll_calc_port_clock(struct intel_encoder *encoder,
 
 	return intel_c20pll_calc_port_clock(encoder, &pll_state->c20);
 }
+
+static void intel_c20pll_state_verify(const struct intel_crtc_state *state,
+				      struct intel_crtc *crtc,
+				      struct intel_encoder *encoder,
+				      struct intel_c20pll_state *mpll_hw_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	const struct intel_c20pll_state *mpll_sw_state = &state->cx0pll_state.c20;
+	bool use_mplla;
+	int i;
+
+	use_mplla = intel_c20_use_mplla(mpll_hw_state->clock);
+	if (use_mplla) {
+		for (i = 0; i < ARRAY_SIZE(mpll_sw_state->mplla); i++) {
+			I915_STATE_WARN(i915, mpll_hw_state->mplla[i] != mpll_sw_state->mplla[i],
+					"[CRTC:%d:%s] mismatch in C20MPLLA: Register[%d] (expected 0x%04x, found 0x%04x)",
+					crtc->base.base.id, crtc->base.name, i,
+					mpll_sw_state->mplla[i], mpll_hw_state->mplla[i]);
+		}
+	} else {
+		for (i = 0; i < ARRAY_SIZE(mpll_sw_state->mpllb); i++) {
+			I915_STATE_WARN(i915, mpll_hw_state->mpllb[i] != mpll_sw_state->mpllb[i],
+					"[CRTC:%d:%s] mismatch in C20MPLLB: Register[%d] (expected 0x%04x, found 0x%04x)",
+					crtc->base.base.id, crtc->base.name, i,
+					mpll_sw_state->mpllb[i], mpll_hw_state->mpllb[i]);
+		}
+	}
+
+	for (i = 0; i < ARRAY_SIZE(mpll_sw_state->tx); i++) {
+		I915_STATE_WARN(i915, mpll_hw_state->tx[i] != mpll_sw_state->tx[i],
+				"[CRTC:%d:%s] mismatch in C20: Register TX[%i] (expected 0x%04x, found 0x%04x)",
+				crtc->base.base.id, crtc->base.name, i,
+				mpll_sw_state->tx[i], mpll_hw_state->tx[i]);
+	}
+
+	for (i = 0; i < ARRAY_SIZE(mpll_sw_state->cmn); i++) {
+		I915_STATE_WARN(i915, mpll_hw_state->cmn[i] != mpll_sw_state->cmn[i],
+				"[CRTC:%d:%s] mismatch in C20: Register CMN[%i] (expected 0x%04x, found 0x%04x)",
+				crtc->base.base.id, crtc->base.name, i,
+				mpll_sw_state->cmn[i], mpll_hw_state->cmn[i]);
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
+	struct intel_cx0pll_state mpll_hw_state = {};
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
+	intel_cx0pll_readout_hw_state(encoder, &mpll_hw_state);
+
+	if (intel_is_c10phy(i915, phy))
+		intel_c10pll_state_verify(new_crtc_state, crtc, encoder, &mpll_hw_state.c10);
+	else
+		intel_c20pll_state_verify(new_crtc_state, crtc, encoder, &mpll_hw_state.c20);
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

