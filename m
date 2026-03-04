Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +K+FNkQwqGm+pQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 14:14:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC1C20036C
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 14:14:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04C5510EA08;
	Wed,  4 Mar 2026 13:14:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GxLNY3tL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E663710EA01;
 Wed,  4 Mar 2026 13:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772630082; x=1804166082;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=11QFJGGLdn/h12QReiHhF/sFdRB5ksbjEOPBKsFIBEA=;
 b=GxLNY3tLB4t4n+LyvXVpnI6e+8qjUnh7qCuXa0kFbGVSnKKzfN05hvIh
 msGeLKBk7ZVbrevWrRY5/elu16LkVr5by3JWm/ogsF0XFFcED0XgFyH1L
 Sz8qlTbj8uqMx50pOlN4Of6OH5vWanKBNzzXgcd6plnqUHraw6zDLZ3TI
 OjOtNQfjfstOu7g82wVz530wEH/7PorDaeVGBiHhZurvgJ8jMVUQ/j1Bg
 TTpUHr5+Zn5Sb1e5rnqcu1MgeqTnIjz1QUQX8Du03RSxKDVZBOvzystU0
 jMD78quDgjW/212WxMM+g6lGRd5clf7qy6isulWYfZo7rdEaeC9HDOwU1 Q==;
X-CSE-ConnectionGUID: OOizIw9nRfCp/WQb9QbmeQ==
X-CSE-MsgGUID: m/SD04YyRG6L9f3jvxh/yA==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="77293473"
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="77293473"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 05:14:41 -0800
X-CSE-ConnectionGUID: uovro8CBQIyMHqIY5d+IKw==
X-CSE-MsgGUID: xUeitL3wTVKf565CBWcEIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="241350807"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa002.fm.intel.com with ESMTP; 04 Mar 2026 05:14:40 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 13/24] drm/i915/lt_phy: Add xe3plpd .get_hw_state hook
Date: Wed,  4 Mar 2026 13:14:12 +0000
Message-ID: <20260304131423.1017821-14-mika.kahola@intel.com>
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
X-Rspamd-Queue-Id: 8EC1C20036C
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid]
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
index 94ae583e907f..76ba308f32ad 100644
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
index 923ee132ec3c..c3686ac6adc9 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -2207,8 +2207,7 @@ static bool intel_lt_phy_pll_is_enabled(struct intel_encoder *encoder)
 			     intel_lt_phy_get_pclk_pll_ack(lane);
 }
 
-void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
-				       const struct intel_crtc_state *crtc_state,
+bool intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 				       struct intel_lt_phy_pll_state *pll_state)
 {
 	u8 owned_lane_mask;
@@ -2217,11 +2216,11 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
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
@@ -2239,6 +2238,8 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 	}
 
 	intel_lt_phy_transaction_end(encoder, wakeref);
+
+	return true;
 }
 
 void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
@@ -2264,7 +2265,7 @@ void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
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

