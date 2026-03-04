Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WNA9F1IwqGlPpQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 14:14:58 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4BC2003C5
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 14:14:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D90310EA19;
	Wed,  4 Mar 2026 13:14:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kXPD7Lhp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FD9610EA1A;
 Wed,  4 Mar 2026 13:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772630094; x=1804166094;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aTiT0cjExrTnzAS3NUN/0LR4SN0fS/gkOyzirhOQrbI=;
 b=kXPD7Lhp0+iFiUmWgxBGhQwRZJgoFcAjHICNCz6p4GR/YdX4IJZ0An3V
 Og2nZGeox+eGJDHoys9kjYxc7sY+YCi3Bo1jG5H6+T7JlEMGM52sG6ybi
 DQUsV+w9NZebdfgvDsM/OQBnF6u1U9mZgLbcRs9fB/JuN7zD8ZApiR77J
 jIk7gC8xM3Kgq2SDO9RDYY13pgBDfMofugCY/h8p2N9tYiS0F6UEcgbSP
 DNOVblREUj0ORsKIwVFHTu0pLFY3uexqvBBNExJCBCjc+iAkZGlEU7K2i
 E63WLpAyyNmu4WJv8G3fMxiioGIOHTrEqP+IBUqBUxDAy6dppw28GY1kw Q==;
X-CSE-ConnectionGUID: irisH7GpTnmURt8WSx5twQ==
X-CSE-MsgGUID: k05hd89PRnmhFA89pho3Cg==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="77293488"
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="77293488"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 05:14:54 -0800
X-CSE-ConnectionGUID: Oz1oCv6HThyKWo8MsHt3qQ==
X-CSE-MsgGUID: 3FMfK0KcR3aiEPyW5U5IIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="241350877"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa002.fm.intel.com with ESMTP; 04 Mar 2026 05:14:52 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 23/24] drm/i915/lt_phy: Remove LT PHY specific state
 verification
Date: Wed,  4 Mar 2026 13:14:22 +0000
Message-ID: <20260304131423.1017821-24-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260304131423.1017821-1-mika.kahola@intel.com>
References: <20260304131423.1017821-1-mika.kahola@intel.com>
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
X-Rspamd-Queue-Id: 0F4BC2003C5
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
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Action: no action

Remove LT PHY specific state verification as DPLL framework
has state verification check.

v2: Reuse intel_lt_phy_pll_compare_hw_state() as only config[0]
    and config[0] parameters are reliable with LT PHY (Suraj)

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  5 ++-
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 39 -------------------
 drivers/gpu/drm/i915/display/intel_lt_phy.h   |  2 -
 .../drm/i915/display/intel_modeset_verify.c   |  1 -
 4 files changed, 3 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 534cc691979f..63a0469d4e65 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -5117,8 +5117,9 @@ verify_single_dpll_state(struct intel_display *display,
 				 pll->info->name, pipe_mask, pll->state.pipe_mask);
 
 	if (INTEL_DISPLAY_STATE_WARN(display,
-				     pll->on && memcmp(&pll->state.hw_state, &dpll_hw_state,
-						       sizeof(dpll_hw_state)),
+				     pll->on && HAS_LT_PHY(display) ?
+				     !intel_lt_phy_pll_compare_hw_state(&pll->state.hw_state.ltpll, &dpll_hw_state.ltpll) :
+				     memcmp(&pll->state.hw_state, &dpll_hw_state, sizeof(dpll_hw_state)),
 				     "%s: pll hw state mismatch\n",
 				     pll->info->name)) {
 		struct drm_printer p = drm_dbg_printer(display->drm, DRM_UT_KMS, NULL);
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 746b0182362a..032fd80664c6 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -2263,45 +2263,6 @@ bool intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
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
index 1c2ec438cd10..8b98997b3107 100644
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

