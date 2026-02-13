Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eMoyMHoYj2mJIgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 13:26:34 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E501136064
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 13:26:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF2E810E801;
	Fri, 13 Feb 2026 12:26:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SMrqrwN2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DC6D10E801;
 Fri, 13 Feb 2026 12:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770985592; x=1802521592;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HxbWdkFvbK8fBCUw5t9NvFfo4sLJ9/Fc0fyxvyth29U=;
 b=SMrqrwN23E3d2xek6GW6js7vjFb52OhdwGhrext5DmFGRYQB3GhOWX7y
 kcYzgsPvW4b4gpAOn9jHk6eTB8Ue6ys6buQLkUO0myzRAXJ8pBTTyu3MJ
 UVJ8Z3Odle8+qAgsYvTDKW5fXKOeC8tbssEdfNBqdOUiN2RdiM5Tt4MIC
 QX1Ojf2jKh+zG9DxmuLFzE40Yc8+wRkaf6xARga4AsET8RouoB8fynd3z
 YoI680C7UQJbL2J5CUU9JfD+anHfV00OSWgeH8TKZ+pLKBxudoTT/iIkb
 DFnHS3H5+P3r8OaIhlSoXaDgVHvIf6tQONiSZDnyOnQOYwSJh06pEX0pb Q==;
X-CSE-ConnectionGUID: HiobmOKOS/y5fXabTfl2Fw==
X-CSE-MsgGUID: N7/+xkLNTU+LpmM264DbHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="72158119"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="72158119"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 04:26:32 -0800
X-CSE-ConnectionGUID: 1QChM1+RRR6kmxhWiQkKmA==
X-CSE-MsgGUID: VivjZ6i0QpCeDykgwBKUAA==
X-ExtLoop1: 1
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa003.fm.intel.com with ESMTP; 13 Feb 2026 04:26:30 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 11/19] drm/i915/lt_phy: Add xe3plpd .get_hw_state hook
Date: Fri, 13 Feb 2026 12:26:07 +0000
Message-ID: <20260213122615.1083654-12-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260213122615.1083654-1-mika.kahola@intel.com>
References: <20260213122615.1083654-1-mika.kahola@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 3E501136064
X-Rspamd-Action: no action

Add .get_hw_state hook to xe3plpd platform for dpll framework
and update intel_lt_phy_pll_readout_hw_state() function
accordingly to support dpll framework.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 11 ++++++-----
 drivers/gpu/drm/i915/display/intel_lt_phy.h   |  3 +--
 4 files changed, 21 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index f92323664162..57de15fe3446 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4249,7 +4249,7 @@ static void xe3plpd_ddi_get_config(struct intel_encoder *encoder,
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
index 2d6cbfa79b5c..b1d95eb897db 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -2205,8 +2205,7 @@ static bool intel_lt_phy_pll_is_enabled(struct intel_encoder *encoder)
 			     intel_lt_phy_get_pclk_pll_request(lane);
 }
 
-void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
-				       const struct intel_crtc_state *crtc_state,
+bool intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 				       struct intel_lt_phy_pll_state *pll_state)
 {
 	u8 owned_lane_mask;
@@ -2215,11 +2214,11 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
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
@@ -2240,6 +2239,8 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 	}
 
 	intel_lt_phy_transaction_end(encoder, wakeref);
+
+	return true;
 }
 
 void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
@@ -2265,7 +2266,7 @@ void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
 		return;
 
 	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
-	intel_lt_phy_pll_readout_hw_state(encoder, new_crtc_state, &pll_hw_state);
+	intel_lt_phy_pll_readout_hw_state(encoder, &pll_hw_state);
 
 	dig_port = enc_to_dig_port(encoder);
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
index 597b671bd39d..ff3896a2cebe 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
@@ -33,8 +33,7 @@ void intel_lt_phy_dump_hw_state(struct drm_printer *p,
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

