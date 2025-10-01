Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B63C0BAFAF9
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:39:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3651210E6D8;
	Wed,  1 Oct 2025 08:39:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AD6hrm3k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B975210E6D8;
 Wed,  1 Oct 2025 08:39:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759307944; x=1790843944;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HPOAsmZMSl3AvCnnwwfNseX0ZTBe4n4ZLroAMbQH5SU=;
 b=AD6hrm3ks2PlqLKLzxMhUzMxfHKEQmWmBoO4SLwL6UV9J73Kj0zJpQ9F
 uLxDmcOXXiYSZbO08bQ5aiFHQ7jNLp/WCMCdGeE7qYToBMbHmmx9jHLCZ
 QrMh8CDij0Q3drqPETiRyyzHTPVujS01EEi4j5T1K99MTAX/KfahRJJDX
 0ylQXVnZHNsJ5L19Vdjgo8xyBy6GjcfAeWaruMAppRNnCWqmFv+yvn3zZ
 VPswY1+O8QVCEF4R7PQeD5pBS12ThiTJK5G/YroiUjQ3o1d5/cxeezNKc
 lSg8ccymNyl24AeX4TSrM2CCTL1797NLHoAI9ZsPsm6kVx2wYaGjMdd7I A==;
X-CSE-ConnectionGUID: FV2fDYpCTViFmkYus8fVHQ==
X-CSE-MsgGUID: JkAxxU8yQkCkWVEJ9TAsww==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61742767"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61742767"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:39:04 -0700
X-CSE-ConnectionGUID: 7QTwokypQhu7d3wjJXNgdA==
X-CSE-MsgGUID: hab1GG20Qji0dDf59Mopsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179142711"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa008.fm.intel.com with ESMTP; 01 Oct 2025 01:39:02 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
	Imre Deak <imre.deak@intel.com>
Subject: [RFC PATCH 22/39] drm/i915/display: Remove state verification
Date: Wed,  1 Oct 2025 11:28:22 +0300
Message-Id: <20251001082839.2585559-23-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001082839.2585559-1-mika.kahola@intel.com>
References: <20251001082839.2585559-1-mika.kahola@intel.com>
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

When pll's are moved to dpll framework we no longer
need Cx0 specific state verification as we can rely
on dpll state verification instead.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 114 ------------------
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   2 -
 .../drm/i915/display/intel_modeset_verify.c   |   1 -
 3 files changed, 117 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 3a12060a4474..453d940e67f8 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3614,35 +3614,6 @@ intel_mtl_port_pll_type(struct intel_encoder *encoder,
 		return ICL_PORT_DPLL_DEFAULT;
 }
 
-static void intel_c10pll_state_verify(const struct intel_crtc_state *state,
-				      struct intel_crtc *crtc,
-				      struct intel_encoder *encoder,
-				      struct intel_c10pll_state *mpllb_hw_state)
-{
-	struct intel_display *display = to_intel_display(state);
-	const struct intel_c10pll_state *mpllb_sw_state = &state->dpll_hw_state.cx0pll.c10;
-	int i;
-
-	for (i = 0; i < ARRAY_SIZE(mpllb_sw_state->pll); i++) {
-		u8 expected = mpllb_sw_state->pll[i];
-
-		INTEL_DISPLAY_STATE_WARN(display, mpllb_hw_state->pll[i] != expected,
-					 "[CRTC:%d:%s] mismatch in C10MPLLB: Register[%d] (expected 0x%02x, found 0x%02x)",
-					 crtc->base.base.id, crtc->base.name, i,
-					 expected, mpllb_hw_state->pll[i]);
-	}
-
-	INTEL_DISPLAY_STATE_WARN(display, mpllb_hw_state->tx != mpllb_sw_state->tx,
-				 "[CRTC:%d:%s] mismatch in C10MPLLB: Register TX0 (expected 0x%02x, found 0x%02x)",
-				 crtc->base.base.id, crtc->base.name,
-				 mpllb_sw_state->tx, mpllb_hw_state->tx);
-
-	INTEL_DISPLAY_STATE_WARN(display, mpllb_hw_state->cmn != mpllb_sw_state->cmn,
-				 "[CRTC:%d:%s] mismatch in C10MPLLB: Register CMN0 (expected 0x%02x, found 0x%02x)",
-				 crtc->base.base.id, crtc->base.name,
-				 mpllb_sw_state->cmn, mpllb_hw_state->cmn);
-}
-
 void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
 				   struct intel_cx0pll_state *pll_state)
 {
@@ -3719,91 +3690,6 @@ int intel_cx0pll_calc_port_clock(struct intel_encoder *encoder,
 	return intel_c20pll_calc_port_clock(encoder, &pll_state->c20);
 }
 
-static void intel_c20pll_state_verify(const struct intel_crtc_state *state,
-				      struct intel_crtc *crtc,
-				      struct intel_encoder *encoder,
-				      struct intel_c20pll_state *mpll_hw_state)
-{
-	struct intel_display *display = to_intel_display(state);
-	const struct intel_c20pll_state *mpll_sw_state = &state->dpll_hw_state.cx0pll.c20;
-	bool sw_use_mpllb = intel_c20phy_use_mpllb(mpll_sw_state);
-	bool hw_use_mpllb = intel_c20phy_use_mpllb(mpll_hw_state);
-	int clock = intel_c20pll_calc_port_clock(encoder, mpll_sw_state);
-	int i;
-
-	INTEL_DISPLAY_STATE_WARN(display, mpll_hw_state->clock != clock,
-				 "[CRTC:%d:%s] mismatch in C20: Register CLOCK (expected %d, found %d)",
-				 crtc->base.base.id, crtc->base.name,
-				 mpll_sw_state->clock, mpll_hw_state->clock);
-
-	INTEL_DISPLAY_STATE_WARN(display, sw_use_mpllb != hw_use_mpllb,
-				 "[CRTC:%d:%s] mismatch in C20: Register MPLLB selection (expected %d, found %d)",
-				 crtc->base.base.id, crtc->base.name,
-				 sw_use_mpllb, hw_use_mpllb);
-
-	if (hw_use_mpllb) {
-		for (i = 0; i < ARRAY_SIZE(mpll_sw_state->mpllb); i++) {
-			INTEL_DISPLAY_STATE_WARN(display, mpll_hw_state->mpllb[i] != mpll_sw_state->mpllb[i],
-						 "[CRTC:%d:%s] mismatch in C20MPLLB: Register[%d] (expected 0x%04x, found 0x%04x)",
-						 crtc->base.base.id, crtc->base.name, i,
-						 mpll_sw_state->mpllb[i], mpll_hw_state->mpllb[i]);
-		}
-	} else {
-		for (i = 0; i < ARRAY_SIZE(mpll_sw_state->mplla); i++) {
-			INTEL_DISPLAY_STATE_WARN(display, mpll_hw_state->mplla[i] != mpll_sw_state->mplla[i],
-						 "[CRTC:%d:%s] mismatch in C20MPLLA: Register[%d] (expected 0x%04x, found 0x%04x)",
-						 crtc->base.base.id, crtc->base.name, i,
-						 mpll_sw_state->mplla[i], mpll_hw_state->mplla[i]);
-		}
-	}
-
-	for (i = 0; i < ARRAY_SIZE(mpll_sw_state->tx); i++) {
-		INTEL_DISPLAY_STATE_WARN(display, mpll_hw_state->tx[i] != mpll_sw_state->tx[i],
-					 "[CRTC:%d:%s] mismatch in C20: Register TX[%i] (expected 0x%04x, found 0x%04x)",
-					 crtc->base.base.id, crtc->base.name, i,
-					 mpll_sw_state->tx[i], mpll_hw_state->tx[i]);
-	}
-
-	for (i = 0; i < ARRAY_SIZE(mpll_sw_state->cmn); i++) {
-		INTEL_DISPLAY_STATE_WARN(display, mpll_hw_state->cmn[i] != mpll_sw_state->cmn[i],
-					 "[CRTC:%d:%s] mismatch in C20: Register CMN[%i] (expected 0x%04x, found 0x%04x)",
-					 crtc->base.base.id, crtc->base.name, i,
-					 mpll_sw_state->cmn[i], mpll_hw_state->cmn[i]);
-	}
-}
-
-void intel_cx0pll_state_verify(struct intel_atomic_state *state,
-			       struct intel_crtc *crtc)
-{
-	struct intel_display *display = to_intel_display(state);
-	const struct intel_crtc_state *new_crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
-	struct intel_encoder *encoder;
-	struct intel_cx0pll_state mpll_hw_state = {};
-
-	if (DISPLAY_VER(display) < 14)
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
-	intel_cx0pll_readout_hw_state(encoder, &mpll_hw_state);
-
-	if (mpll_hw_state.tbt_mode)
-		return;
-
-	if (intel_encoder_is_c10phy(encoder))
-		intel_c10pll_state_verify(new_crtc_state, crtc, encoder, &mpll_hw_state.c10);
-	else
-		intel_c20pll_state_verify(new_crtc_state, crtc, encoder, &mpll_hw_state.c20);
-}
-
 /*
  * WA 14022081154
  * The dedicated display PHYs reset to a power state that blocks S0ix, increasing idle
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index c5a7b529955b..2b934b96af81 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -35,8 +35,6 @@ int intel_cx0pll_calc_port_clock(struct intel_encoder *encoder,
 
 void intel_cx0pll_dump_hw_state(struct intel_display *display,
 				const struct intel_cx0pll_state *hw_state);
-void intel_cx0pll_state_verify(struct intel_atomic_state *state,
-			       struct intel_crtc *crtc);
 bool intel_cx0pll_compare_hw_state(const struct intel_cx0pll_state *a,
 				   const struct intel_cx0pll_state *b);
 void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index f2f6b9d9afa1..22600bdbe8c5 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -245,7 +245,6 @@ void intel_modeset_verify_crtc(struct intel_atomic_state *state,
 	verify_crtc_state(state, crtc);
 	intel_dpll_state_verify(state, crtc);
 	intel_mpllb_state_verify(state, crtc);
-	intel_cx0pll_state_verify(state, crtc);
 }
 
 void intel_modeset_verify_disabled(struct intel_atomic_state *state)
-- 
2.34.1

