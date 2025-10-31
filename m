Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46DD3C24958
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 11:48:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C650110EB6B;
	Fri, 31 Oct 2025 10:48:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OFhW6HrP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 688B010EB6B;
 Fri, 31 Oct 2025 10:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761907687; x=1793443687;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/xUstglumJdYZNfrMeD8J8kUcG3MY72EYsCeeqo+z4U=;
 b=OFhW6HrPfx86TuvX9JLvkNswM3EsmYOJw77sEcGUsvNIKJcfBQVwoyGV
 cKpAUerBZgfzQNU+0svjqOH0rewL56IOJ4n/9ZRrSMYXmwAjMYnm3yIwZ
 MrgohVrlTXs3BRkHEpgEVkLBpppAMTt8HS3ckW43qbF0O37IFlKqdZGt9
 WA6zNUmjsv5C63dTCVPKmkNLtJGuY4LgZP52iq/DBMxCtWn61zxVRmGwE
 8w5hvspY2XgZE8mA4Fdrn8u1sBq2JkYVDpBNpZS9658O3gSRWT8FBHYdY
 Y2/X9cPTDgs6BlZxaHKqVJxxHkgLg2XVSCcS09B3ZHySBM76yP7pEtX0P Q==;
X-CSE-ConnectionGUID: 99vkf5GCTW+w3uQrWwMwjw==
X-CSE-MsgGUID: mSG+S60bR9OoZskUdQyfZw==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="64217576"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="64217576"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 03:48:07 -0700
X-CSE-ConnectionGUID: 9DUmfJFvTi6K9gXn3DghVg==
X-CSE-MsgGUID: PQWnNJlARAKp5whyP0T5Fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="223441397"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa001.jf.intel.com with ESMTP; 31 Oct 2025 03:48:06 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
	Imre Deak <imre.deak@intel.com>
Subject: [CI 19/32] drm/i915/display: MTL+ .get_dplls
Date: Fri, 31 Oct 2025 12:35:36 +0200
Message-Id: <20251031103549.173208-20-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251031103549.173208-1-mika.kahola@intel.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
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

Add .get_dplls function pointer for MTL+ platforms
to support dpll framework. Reusing the ICL function
pointer.

v2: Getting configuration either for a C10 or on the PTL port B
    eDP on TypeC PHY case for a C20 PHY PLL. Hence refer to this
    case as "non_tc_phy" instead of "c10phy".

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 56 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  1 +
 2 files changed, 57 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index b6a5a519e936..c6af2816594d 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -203,6 +203,22 @@ enum intel_dpll_id icl_tc_port_to_pll_id(enum tc_port tc_port)
 	return tc_port - TC_PORT_1 + DPLL_ID_ICL_MGPLL1;
 }
 
+enum intel_dpll_id mtl_port_to_pll_id(struct intel_display *display, enum port port)
+{
+	if (port >= PORT_TC1)
+		return icl_tc_port_to_pll_id(intel_port_to_tc(display, port));
+
+	switch (port) {
+	case PORT_A:
+		return DPLL_ID_ICL_DPLL0;
+	case PORT_B:
+		return DPLL_ID_ICL_DPLL1;
+	default:
+		MISSING_CASE(port);
+		return DPLL_ID_ICL_DPLL0;
+	}
+}
+
 static i915_reg_t
 intel_combo_pll_enable_reg(struct intel_display *display,
 			   struct intel_dpll *pll)
@@ -3491,6 +3507,35 @@ static int icl_get_tc_phy_dplls(struct intel_atomic_state *state,
 	return ret;
 }
 
+/*
+ * Get the PLL for either a port using a C10 PHY PLL, or in the
+ * PTL port B eDP on TypeC PHY case, the PLL for a port using
+ * a C20 PHY PLL.
+ */
+static int mtl_get_non_tc_phy_dpll(struct intel_atomic_state *state,
+				      struct intel_crtc *crtc,
+				      struct intel_encoder *encoder)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct icl_port_dpll *port_dpll =
+		&crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
+
+	port_dpll->pll = intel_find_dpll(state, crtc,
+					 &port_dpll->hw_state,
+					 BIT(mtl_port_to_pll_id(display, encoder->port)));
+	if (!port_dpll->pll)
+		return -EINVAL;
+
+	intel_reference_dpll(state, crtc,
+			     port_dpll->pll, &port_dpll->hw_state);
+
+	icl_update_active_dpll(state, crtc, encoder);
+
+	return 0;
+}
+
 static int icl_compute_dplls(struct intel_atomic_state *state,
 			     struct intel_crtc *crtc,
 			     struct intel_encoder *encoder)
@@ -4388,10 +4433,21 @@ static int mtl_compute_dplls(struct intel_atomic_state *state,
 		return mtl_compute_non_tc_phy_dpll(state, crtc, encoder);
 }
 
+static int mtl_get_dplls(struct intel_atomic_state *state,
+			 struct intel_crtc *crtc,
+			 struct intel_encoder *encoder)
+{
+	if (intel_encoder_is_tc(encoder))
+		return icl_get_tc_phy_dplls(state, crtc, encoder);
+	else
+		return mtl_get_non_tc_phy_dpll(state, crtc, encoder);
+}
+
 __maybe_unused
 static const struct intel_dpll_mgr mtl_pll_mgr = {
 	.dpll_info = mtl_plls,
 	.compute_dplls = mtl_compute_dplls,
+	.get_dplls = mtl_get_dplls,
 };
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 839b1a98534f..fbb6a45d565c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -439,6 +439,7 @@ bool intel_dpll_compare_hw_state(struct intel_display *display,
 				 const struct intel_dpll_hw_state *a,
 				 const struct intel_dpll_hw_state *b);
 enum intel_dpll_id icl_tc_port_to_pll_id(enum tc_port tc_port);
+enum intel_dpll_id mtl_port_to_pll_id(struct intel_display *display, enum port port);
 bool intel_dpll_is_combophy(enum intel_dpll_id id);
 
 void intel_dpll_state_verify(struct intel_atomic_state *state,
-- 
2.34.1

