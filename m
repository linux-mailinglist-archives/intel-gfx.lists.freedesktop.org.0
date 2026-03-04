Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ODxrNDwwqGlPpQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 14:14:36 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 808E8200328
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 14:14:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05A7F10E9F6;
	Wed,  4 Mar 2026 13:14:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BNyEP4jW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59B0E10E9F6;
 Wed,  4 Mar 2026 13:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772630073; x=1804166073;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=u52Ni7mEy3I1xKoEvI/y1lYJ21k6T/ixUgXmQov2zuU=;
 b=BNyEP4jWaBmS4SHANFge7qz+H6yqdpKD1HkNRJUYxLt1Pt1PE7JgiXhg
 bEb2BtC1znkAwxIS+pVng10/2UTISPR7ObE9OBxQLpQ9eeJu5gf3FImEo
 LtBgslYcpYN6voNiMq3XUwJVwYSks0vyiARxKbSga/YhqmIv40ax6Nt4h
 Zxea0TtKhPsU8E6jpK6sKA31mxqH/0KzLWq6u8oZa2avosinWELtj1Kum
 eMRTiJnFttTlPG87w6V/vIsPii7Er9EtiXnh7LBOk+wKh0DAaXOwKiKlR
 V0n0ldNkal0eD+/P6Rhdr+EaBd6PdN916rM3eM6F+rhy5sOnof9ynl/sW w==;
X-CSE-ConnectionGUID: bc3b6IclQluNPv6yPmaOQw==
X-CSE-MsgGUID: xheHS/GXSNa/L3tKQ6Udkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="77293460"
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="77293460"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 05:14:33 -0800
X-CSE-ConnectionGUID: mio4mzSOTSmYNrdDr5mXhw==
X-CSE-MsgGUID: YmcIL6VYSE+3Gmvuvu/xng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="241350769"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa002.fm.intel.com with ESMTP; 04 Mar 2026 05:14:32 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 06/24] drm/i915/lt_phy: Add xe3plpd .compute_dplls hook
Date: Wed,  4 Mar 2026 13:14:05 +0000
Message-ID: <20260304131423.1017821-7-mika.kahola@intel.com>
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
X-Rspamd-Queue-Id: 808E8200328
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

Add compute dpll hook for xe3plpd platform and bring
PLL state calculation to support PLL framework.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 65 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 17 +++--
 drivers/gpu/drm/i915/display/intel_lt_phy.h   |  3 +-
 4 files changed, 78 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 8433e3ff0319..147baa777856 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1222,7 +1222,7 @@ static int xe3plpd_crtc_compute_clock(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(encoder);
 	int ret;
 
-	ret = intel_lt_phy_pll_calc_state(crtc_state, encoder);
+	ret = intel_lt_phy_pll_calc_state(crtc_state, encoder, &crtc_state->dpll_hw_state);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 4185c8e136da..58c24e2164ca 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4585,9 +4585,74 @@ static const struct dpll_info xe3plpd_plls[] = {
 	{}
 };
 
+static int xe3plpd_compute_non_tc_phy_dpll(struct intel_atomic_state *state,
+					   struct intel_crtc *crtc,
+					   struct intel_encoder *encoder)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct icl_port_dpll *port_dpll =
+		&crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
+	int ret;
+
+	ret = intel_lt_phy_pll_calc_state(crtc_state, encoder, &port_dpll->hw_state);
+	if (ret)
+		return ret;
+
+	/* this is mainly for the fastset check */
+	icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_DEFAULT);
+
+	crtc_state->port_clock = intel_lt_phy_calc_port_clock(display, &port_dpll->hw_state.ltpll);
+
+	return 0;
+}
+
+static int xe3plpd_compute_tc_phy_dplls(struct intel_atomic_state *state,
+					struct intel_crtc *crtc,
+					struct intel_encoder *encoder)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
+	struct icl_port_dpll *port_dpll;
+	int ret;
+
+	/* TODO: Add state calculation for TBT PLL */
+
+	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_MG_PHY];
+	ret = intel_lt_phy_pll_calc_state(crtc_state, encoder, &port_dpll->hw_state);
+	if (ret)
+		return ret;
+
+	/* this is mainly for the fastset check */
+	if (old_crtc_state->intel_dpll &&
+	    old_crtc_state->intel_dpll->info->id == DPLL_ID_ICL_TBTPLL)
+		icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_DEFAULT);
+	else
+		icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_MG_PHY);
+
+	crtc_state->port_clock = intel_lt_phy_calc_port_clock(display, &port_dpll->hw_state.ltpll);
+
+	return 0;
+}
+
+static int xe3plpd_compute_dplls(struct intel_atomic_state *state,
+				 struct intel_crtc *crtc,
+				 struct intel_encoder *encoder)
+{
+	if (intel_encoder_is_tc(encoder))
+		return xe3plpd_compute_tc_phy_dplls(state, crtc, encoder);
+	else
+		return xe3plpd_compute_non_tc_phy_dpll(state, crtc, encoder);
+}
+
 __maybe_unused
 static const struct intel_dpll_mgr xe3plpd_pll_mgr = {
 	.dpll_info = xe3plpd_plls,
+	.compute_dplls = xe3plpd_compute_dplls,
 };
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 07eab4d7bcff..ca31b3c1440c 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1727,12 +1727,15 @@ intel_lt_phy_calc_port_clock(struct intel_display *display,
 
 int
 intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
-			    struct intel_encoder *encoder)
+			    struct intel_encoder *encoder,
+			    struct intel_dpll_hw_state *hw_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	const struct intel_lt_phy_pll_params *tables;
 	int i;
 
+	memset(hw_state, 0, sizeof(*hw_state));
+
 	tables = intel_lt_phy_pll_tables_get(crtc_state, encoder);
 	if (!tables)
 		return -EINVAL;
@@ -1742,21 +1745,21 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
 
 		drm_WARN_ON(display->drm, !intel_dpll_clock_matches(clock, tables[i].clock_rate));
 		if (intel_dpll_clock_matches(crtc_state->port_clock, clock)) {
-			crtc_state->dpll_hw_state.ltpll = *tables[i].state;
+			hw_state->ltpll = *tables[i].state;
 			if (intel_crtc_has_dp_encoder(crtc_state)) {
 				if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
-					crtc_state->dpll_hw_state.ltpll.config[2] = 1;
+					hw_state->ltpll.config[2] = 1;
 			}
-			crtc_state->dpll_hw_state.ltpll.ssc_enabled =
+			hw_state->ltpll.ssc_enabled =
 				intel_lt_phy_pll_is_ssc_enabled(crtc_state, encoder);
-			crtc_state->dpll_hw_state.ltpll.lane_count = crtc_state->lane_count;
+			hw_state->ltpll.lane_count = crtc_state->lane_count;
 			return 0;
 		}
 	}
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
-		crtc_state->dpll_hw_state.ltpll.lane_count = crtc_state->lane_count;
-		return intel_lt_phy_calculate_hdmi_state(&crtc_state->dpll_hw_state.ltpll,
+		hw_state->ltpll.lane_count = crtc_state->lane_count;
+		return intel_lt_phy_calculate_hdmi_state(&hw_state->ltpll,
 							 crtc_state->port_clock);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
index db905668f86d..61ec0e5d8888 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
@@ -20,7 +20,8 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 void intel_lt_phy_pll_disable(struct intel_encoder *encoder);
 int
 intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
-			    struct intel_encoder *encoder);
+			    struct intel_encoder *encoder,
+			    struct intel_dpll_hw_state *hw_state);
 int intel_lt_phy_calc_port_clock(struct intel_display *display,
 				 const struct intel_lt_phy_pll_state *lt_state);
 void intel_lt_phy_set_signal_levels(struct intel_encoder *encoder,
-- 
2.43.0

