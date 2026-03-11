Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YAREAvx5sWk2vgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 15:19:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB55C2654BC
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 15:19:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2393510E91F;
	Wed, 11 Mar 2026 14:19:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dzyo9DuF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93F9310E90F;
 Wed, 11 Mar 2026 14:19:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773238777; x=1804774777;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zP6SRH0SUZxf0ujDMHpXvJkegtKkwgiCDr6tAwAjmxY=;
 b=Dzyo9DuFUHkr+i1jPi6dAi9dz+o1Bg9AJAfPMoQ+dS3YqskaeLUPQ2xH
 Po7y6Q9h9n+hhhKxv+kK+yGgylu3aeSjmnIrH8V3sER5Bfrx1oxX0hCjQ
 KWIvpVsBjksPly8wO20WRJTV5MvLAu+hz2qOnKhIXwpBSF0TyJ42iV2Ow
 3UmIHcMYQ7C3CQthWgUMVc9Vwf50EWJBAE5MERxRdWfIMOtYTq51e3FKn
 U7WkTdjQ9xbz8OrPAWjqwzqMMKq2053wHQVoA6GfbzEGs8DNx5w6mcdct
 chhTme4sZZNmAtb1b7GcSJU41vG4YgR6B5AVJwCRRromn8gq3Dh3z+QcX w==;
X-CSE-ConnectionGUID: nu1Xy9M9Su2oVA7matUMgw==
X-CSE-MsgGUID: +ET1ABgWRmSGLzg//3Jl8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="99775302"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="99775302"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 07:19:37 -0700
X-CSE-ConnectionGUID: rTO5CbptS7KLdOqysGuOEw==
X-CSE-MsgGUID: yxi3ILgaQ9azyrnSM7P/iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="216730544"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa006.fm.intel.com with ESMTP; 11 Mar 2026 07:19:35 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v3 22/24] drm/i915/lt_phy: Remove LT PHY specific state
 verification
Date: Wed, 11 Mar 2026 14:19:03 +0000
Message-ID: <20260311141905.2526418-23-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260311141905.2526418-1-mika.kahola@intel.com>
References: <20260311141905.2526418-1-mika.kahola@intel.com>
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
X-Rspamd-Queue-Id: AB55C2654BC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

Remove LT PHY specific state verification as DPLL framework
has state verification check.

v2: Reuse intel_lt_phy_pll_compare_hw_state() as only config[0]
    and config[0] parameters are reliable with LT PHY (Suraj)
v3: Rephrase handling of LT PHY case when verifying the state (CI)

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 14 +++++--
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 39 -------------------
 drivers/gpu/drm/i915/display/intel_lt_phy.h   |  2 -
 .../drm/i915/display/intel_modeset_verify.c   |  1 -
 4 files changed, 11 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 534cc691979f..c3f35250f192 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -5075,6 +5075,7 @@ verify_single_dpll_state(struct intel_display *display,
 			 const struct intel_crtc_state *new_crtc_state)
 {
 	struct intel_dpll_hw_state dpll_hw_state = {};
+	bool pll_mismatch = false;
 	u8 pipe_mask;
 	bool active;
 
@@ -5116,9 +5117,16 @@ verify_single_dpll_state(struct intel_display *display,
 				 "%s: pll enabled crtcs mismatch (expected 0x%x in 0x%x)\n",
 				 pll->info->name, pipe_mask, pll->state.pipe_mask);
 
-	if (INTEL_DISPLAY_STATE_WARN(display,
-				     pll->on && memcmp(&pll->state.hw_state, &dpll_hw_state,
-						       sizeof(dpll_hw_state)),
+	if (pll->on) {
+		const struct intel_dpll_mgr *dpll_mgr = display->dpll.mgr;
+
+		if (HAS_LT_PHY(display))
+			pll_mismatch = !dpll_mgr->compare_hw_state(&pll->state.hw_state, &dpll_hw_state);
+		else
+			pll_mismatch = memcmp(&pll->state.hw_state, &dpll_hw_state, sizeof(dpll_hw_state));
+	}
+
+	if (INTEL_DISPLAY_STATE_WARN(display, pll_mismatch,
 				     "%s: pll hw state mismatch\n",
 				     pll->info->name)) {
 		struct drm_printer p = drm_dbg_printer(display->drm, DRM_UT_KMS, NULL);
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index dd8b99f8821e..5bbbc6182861 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -2268,45 +2268,6 @@ bool intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 	return true;
 }
 
-void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
-				   struct intel_crtc *crtc)
-{
-	struct intel_display *display = to_intel_display(state);
-	struct intel_digital_port *dig_port;
-	const struct intel_crtc_state *new_crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
-	struct intel_encoder *encoder;
-	struct intel_lt_phy_pll_state pll_hw_state = {};
-	const struct intel_lt_phy_pll_state *pll_sw_state = &new_crtc_state->dpll_hw_state.ltpll;
-
-	if (DISPLAY_VER(display) < 35)
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
-	intel_lt_phy_pll_readout_hw_state(encoder, &pll_hw_state);
-
-	dig_port = enc_to_dig_port(encoder);
-	if (intel_tc_port_in_tbt_alt_mode(dig_port))
-		return;
-
-	INTEL_DISPLAY_STATE_WARN(display, pll_hw_state.config[0] != pll_sw_state->config[0],
-				 "[CRTC:%d:%s] mismatch in LT PHY PLL CONFIG 0: (expected 0x%04x, found 0x%04x)",
-				 crtc->base.base.id, crtc->base.name,
-				 pll_sw_state->config[0], pll_hw_state.config[0]);
-	INTEL_DISPLAY_STATE_WARN(display, pll_hw_state.config[2] != pll_sw_state->config[2],
-				 "[CRTC:%d:%s] mismatch in LT PHY PLL CONFIG 2: (expected 0x%04x, found 0x%04x)",
-				 crtc->base.base.id, crtc->base.name,
-				 pll_sw_state->config[2], pll_hw_state.config[2]);
-}
-
 void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
 			      struct intel_dpll *pll,
 			      const struct intel_dpll_hw_state *dpll_hw_state)
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
index 147ae431713d..16de39484779 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
@@ -41,8 +41,6 @@ bool intel_lt_phy_tbt_pll_readout_hw_state(struct intel_display *display,
 					   struct intel_dpll_hw_state *hw_state);
 bool intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 				       struct intel_lt_phy_pll_state *pll_state);
-void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
-				   struct intel_crtc *crtc);
 int
 intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_state,
 				  u32 frequency_khz);
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index 12a00121c274..2ec17c2bfe0f 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -246,7 +246,6 @@ void intel_modeset_verify_crtc(struct intel_atomic_state *state,
 	verify_crtc_state(state, crtc);
 	intel_dpll_state_verify(state, crtc);
 	intel_mpllb_state_verify(state, crtc);
-	intel_lt_phy_pll_state_verify(state, crtc);
 }
 
 void intel_modeset_verify_disabled(struct intel_atomic_state *state)
-- 
2.43.0

