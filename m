Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wKvlK1AwqGlPpQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 14:14:56 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D092003BD
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 14:14:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B203510EA12;
	Wed,  4 Mar 2026 13:14:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hXB7TLeY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FEE010EA15;
 Wed,  4 Mar 2026 13:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772630092; x=1804166092;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IlbhJ+u19NRJkH9utGhNZ/qpMfp9Pagk2JOBjH6sz1Y=;
 b=hXB7TLeY144nqtVwTXQykMBLhWtWwXCMMkYcsNVgPgLC5DfA0orqcJTO
 Rv4m27EPHr4yk6H0QtHN5j0lNmelqrv8WFbDaUnZKK3DlhmVq325+2Kiq
 P1c1ATHbwUxek9jj23TJiJeKymHSi+FXdEPbrd3/dmQfsnXp3yctuLbfZ
 2HziijN4D1gqfOshd0UW5R7i15V42nZYiDabSLu+4zmyTwOcyg0lGAIJ4
 2IJc/nHK0Dq9AAYO1+3bdilusoHX7+R5IFDqxF23BIgtueARzvtnCSD9D
 8yIExktkHcLRymYfgr2WG/Zi4E6OH+IwovT8ZtC3hpMhPKnYbXXlW7YtF w==;
X-CSE-ConnectionGUID: vbYWptOgR5uj9s+rW3tdyA==
X-CSE-MsgGUID: claTgn5GRRSjm4AwBrVDdw==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="77293487"
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="77293487"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 05:14:52 -0800
X-CSE-ConnectionGUID: ffy/bThqQzia5ZwKW/W09g==
X-CSE-MsgGUID: 3th5t8N4ToqomJcqEZhDmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="241350871"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa002.fm.intel.com with ESMTP; 04 Mar 2026 05:14:51 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 22/24] drm/i915/lt_phy: Add xe3plpd Thunderbolt pll hooks
Date: Wed,  4 Mar 2026 13:14:21 +0000
Message-ID: <20260304131423.1017821-23-mika.kahola@intel.com>
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
X-Rspamd-Queue-Id: 47D092003BD
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

Add the PLL hooks for the TBT PLL on xe3plpd. These are simple stubs
similarly to the TBT PLL on earlier platforms, since this PLL is always
on from the display POV - so no PLL enable/disable programming is
required as opposed to the non-TBT PLLs - and the clocks for different
link rates are enabled/disabled at a different level, via the
intel_encoder::enable_clock()/disable_clock() interface.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 13 +++++++++++--
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_lt_phy.h   |  4 ++++
 3 files changed, 33 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 28c560417409..534cc691979f 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4618,6 +4618,13 @@ static void xe3plpd_pll_disable(struct intel_display *display,
 	intel_xe3plpd_pll_disable(encoder);
 }
 
+static const struct intel_dpll_funcs xe3plpd_tbt_pll_funcs = {
+	.enable = mtl_tbt_pll_enable,
+	.disable = mtl_tbt_pll_disable,
+	.get_hw_state = intel_lt_phy_tbt_pll_readout_hw_state,
+	.get_freq = mtl_tbt_pll_get_freq,
+};
+
 static const struct intel_dpll_funcs xe3plpd_pll_funcs = {
 	.enable = xe3plpd_pll_enable,
 	.disable = xe3plpd_pll_disable,
@@ -4628,7 +4635,8 @@ static const struct intel_dpll_funcs xe3plpd_pll_funcs = {
 static const struct dpll_info xe3plpd_plls[] = {
 	{ .name = "DPLL 0", .funcs = &xe3plpd_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
 	{ .name = "DPLL 1", .funcs = &xe3plpd_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
-	/* TODO: Add TBT */
+	{ .name = "TBT PLL", .funcs = &xe3plpd_tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL,
+	  .is_alt_port_dpll = true, .always_on = true },
 	{ .name = "TC PLL 1", .funcs = &xe3plpd_pll_funcs, .id = DPLL_ID_ICL_MGPLL1, },
 	{ .name = "TC PLL 2", .funcs = &xe3plpd_pll_funcs, .id = DPLL_ID_ICL_MGPLL2, },
 	{ .name = "TC PLL 3", .funcs = &xe3plpd_pll_funcs, .id = DPLL_ID_ICL_MGPLL3, },
@@ -4671,7 +4679,8 @@ static int xe3plpd_compute_tc_phy_dplls(struct intel_atomic_state *state,
 	struct icl_port_dpll *port_dpll;
 	int ret;
 
-	/* TODO: Add state calculation for TBT PLL */
+	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
+	intel_lt_phy_tbt_pll_calc_state(&port_dpll->hw_state);
 
 	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_MG_PHY];
 	ret = intel_lt_phy_pll_calc_state(crtc_state, encoder, &port_dpll->hw_state);
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 232f14d69ec8..746b0182362a 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1766,6 +1766,13 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
 	return -EINVAL;
 }
 
+void intel_lt_phy_tbt_pll_calc_state(struct intel_dpll_hw_state *hw_state)
+{
+	memset(hw_state, 0, sizeof(*hw_state));
+
+	hw_state->ltpll.tbt_mode = true;
+}
+
 static void
 intel_lt_phy_program_pll(struct intel_encoder *encoder,
 			 const struct intel_lt_phy_pll_state *ltpll)
@@ -2208,6 +2215,17 @@ static bool intel_lt_phy_pll_is_enabled(struct intel_encoder *encoder)
 			     intel_lt_phy_get_pclk_pll_ack(lane);
 }
 
+bool intel_lt_phy_tbt_pll_readout_hw_state(struct intel_display *display,
+					   struct intel_dpll *pll,
+					   struct intel_dpll_hw_state *hw_state)
+{
+	memset(hw_state, 0, sizeof(*hw_state));
+
+	hw_state->ltpll.tbt_mode = true;
+
+	return true;
+}
+
 bool intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 				       struct intel_lt_phy_pll_state *pll_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
index 3838e9326773..1c2ec438cd10 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
@@ -26,6 +26,7 @@ int
 intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
 			    struct intel_encoder *encoder,
 			    struct intel_dpll_hw_state *hw_state);
+void intel_lt_phy_tbt_pll_calc_state(struct intel_dpll_hw_state *hw_state);
 int intel_lt_phy_calc_port_clock(struct intel_display *display,
 				 const struct intel_lt_phy_pll_state *lt_state);
 void intel_lt_phy_set_signal_levels(struct intel_encoder *encoder,
@@ -35,6 +36,9 @@ void intel_lt_phy_dump_hw_state(struct drm_printer *p,
 bool
 intel_lt_phy_pll_compare_hw_state(const struct intel_lt_phy_pll_state *a,
 				  const struct intel_lt_phy_pll_state *b);
+bool intel_lt_phy_tbt_pll_readout_hw_state(struct intel_display *display,
+					   struct intel_dpll *pll,
+					   struct intel_dpll_hw_state *hw_state);
 bool intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 				       struct intel_lt_phy_pll_state *pll_state);
 void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
-- 
2.43.0

