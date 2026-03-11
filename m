Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4O6SDPN5sWk2vgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 15:19:31 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D49A0265481
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 15:19:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 656F610E8C5;
	Wed, 11 Mar 2026 14:19:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P1FO6dC9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D84A210E26E;
 Wed, 11 Mar 2026 14:19:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773238765; x=1804774765;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qJYuPkALr0JpedaGYHBbmZ18AMiE0ckgAY7eCi8uRWM=;
 b=P1FO6dC9iSrw24O7J/7GSnlllKfh/1kcuPd0cKTUATaKo29GakhoN/+i
 iOnZoP9X/87FtGV6ycGynONWMNXMjvkxPb08UQrMZ73bC1I5JH+rlEjmG
 NX6Tz2CPxFtraM8SpmchP66VOVY9P//1pqxD6D9Mn2T5l4VUQQnvT0k62
 S/5B00md16hi/agtJS8za9OoBIdgxmHbTmsSoDFTHes+WcA1r6iCA9gGd
 22WP27p7CVvhIXE4PTqwTuEtxjTmc3l4gwsSMLA+G6hOyW/hj20P8vmux
 rM0VdqTm5YGZ8cEBy/dTkRcRspI8RvsvoepdG7X4MkmvS/MHhrhqjdTDH Q==;
X-CSE-ConnectionGUID: UewWXukYQXakMQrtLTONDw==
X-CSE-MsgGUID: DWPHQINqTCKm4ZcBmAJoHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="99775232"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="99775232"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 07:19:25 -0700
X-CSE-ConnectionGUID: bvGEdR6ISA6tF+QATab8nw==
X-CSE-MsgGUID: X/k8/dyiT/uG35BdE2dUsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="216730507"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa006.fm.intel.com with ESMTP; 11 Mar 2026 07:19:23 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v3 13/24] drm/i915/lt_phy: Add xe3plpd .get_hw_state hook
Date: Wed, 11 Mar 2026 14:18:54 +0000
Message-ID: <20260311141905.2526418-14-mika.kahola@intel.com>
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
X-Rspamd-Queue-Id: D49A0265481
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

Add .get_hw_state hook to xe3plpd platform for dpll framework
and update intel_lt_phy_pll_readout_hw_state() function
accordingly to support dpll framework.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 11 ++++++-----
 drivers/gpu/drm/i915/display/intel_lt_phy.h   |  3 +--
 4 files changed, 21 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 7f1576bfe4b0..dbf3f344e014 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4248,7 +4248,7 @@ static void xe3plpd_ddi_get_config(struct intel_encoder *encoder,
 {
 	struct intel_display *display = to_intel_display(encoder);
 
-	intel_lt_phy_pll_readout_hw_state(encoder, crtc_state, &crtc_state->dpll_hw_state.ltpll);
+	intel_lt_phy_pll_readout_hw_state(encoder, &crtc_state->dpll_hw_state.ltpll);
 
 	if (crtc_state->dpll_hw_state.ltpll.tbt_mode)
 		crtc_state->port_clock = intel_mtl_tbt_calc_port_clock(encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index c1d7d9909544..6502916793f5 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4571,7 +4571,20 @@ static const struct intel_dpll_mgr mtl_pll_mgr = {
 	.compare_hw_state = mtl_compare_hw_state,
 };
 
+static bool xe3plpd_pll_get_hw_state(struct intel_display *display,
+				     struct intel_dpll *pll,
+				     struct intel_dpll_hw_state *dpll_hw_state)
+{
+	struct intel_encoder *encoder = get_intel_encoder(display, pll);
+
+	if (!encoder)
+		return false;
+
+	return intel_lt_phy_pll_readout_hw_state(encoder, &dpll_hw_state->ltpll);
+}
+
 static const struct intel_dpll_funcs xe3plpd_pll_funcs = {
+	.get_hw_state = xe3plpd_pll_get_hw_state,
 };
 
 static const struct dpll_info xe3plpd_plls[] = {
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 63579dce24e5..478ab0b87132 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -2212,8 +2212,7 @@ static bool intel_lt_phy_pll_is_enabled(struct intel_encoder *encoder)
 			     XELPDP_LANE_PCLK_PLL_ACK(0);
 }
 
-void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
-				       const struct intel_crtc_state *crtc_state,
+bool intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 				       struct intel_lt_phy_pll_state *pll_state)
 {
 	u8 owned_lane_mask;
@@ -2222,11 +2221,11 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 	int i, j, k;
 
 	if (!intel_lt_phy_pll_is_enabled(encoder))
-		return;
+		return false;
 
 	pll_state->tbt_mode = intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder));
 	if (pll_state->tbt_mode)
-		return;
+		return false;
 
 	owned_lane_mask = intel_lt_phy_get_owned_lane_mask(encoder);
 	lane = owned_lane_mask & INTEL_LT_PHY_LANE0 ? : INTEL_LT_PHY_LANE1;
@@ -2244,6 +2243,8 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 	}
 
 	intel_lt_phy_transaction_end(encoder, wakeref);
+
+	return true;
 }
 
 void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
@@ -2269,7 +2270,7 @@ void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
 		return;
 
 	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
-	intel_lt_phy_pll_readout_hw_state(encoder, new_crtc_state, &pll_hw_state);
+	intel_lt_phy_pll_readout_hw_state(encoder, &pll_hw_state);
 
 	dig_port = enc_to_dig_port(encoder);
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
index b208bbd6f8ca..0053bb5489e5 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
@@ -32,8 +32,7 @@ void intel_lt_phy_dump_hw_state(struct drm_printer *p,
 bool
 intel_lt_phy_pll_compare_hw_state(const struct intel_lt_phy_pll_state *a,
 				  const struct intel_lt_phy_pll_state *b);
-void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
-				       const struct intel_crtc_state *crtc_state,
+bool intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 				       struct intel_lt_phy_pll_state *pll_state);
 void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc);
-- 
2.43.0

