Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D499BAFB0B
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:39:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C28010E6E3;
	Wed,  1 Oct 2025 08:39:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="afQWZIfV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 928F410E6DA;
 Wed,  1 Oct 2025 08:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759307950; x=1790843950;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W5y7VLZ42Krv+y71PJtIkzJJaxsRmBDlcWQ/MI3/HhM=;
 b=afQWZIfVDMo+Ab5rAXY/0vNGZNzkgwNRTt+aHWTSVtzbhlXt+8WWNhVI
 KZOSV4M6L54h8DQfqRNSvCm0Jg6NcokcZctfKdBYSZqEy9jLIiKTcX1w+
 qeRaAlCOAnKW8NDHxxOpD5FNCrvzvUCrlmljVG7ALNnZWmNeU3SRAhBei
 Tpy1I5qvOT8DR5hzDyxS6rJNaXN0tfIhQLKLXeBebapZRU0oCzJobwIau
 gFuwANjAowEn9t9DOWXxjTZEwsSKt6/J5Edb5qUYXnRDzYPqx58ulPDVO
 gELtd8Vf3jK+n+/eQS/Is62exC8C690RdGj9+RXsZnQ0QmYFQowK+fIi7 w==;
X-CSE-ConnectionGUID: /9W6WbNkRpeK0YGxq11MMg==
X-CSE-MsgGUID: pTEFujOEQz6r4gfH8NqYTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61742781"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61742781"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:39:10 -0700
X-CSE-ConnectionGUID: Lcw0Vg2NS/qz+83O3h5ytA==
X-CSE-MsgGUID: HHPhEN0lT1m1PK/8zdYY7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179142780"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa008.fm.intel.com with ESMTP; 01 Oct 2025 01:39:07 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
	Imre Deak <imre.deak@intel.com>
Subject: [RFC PATCH 26/39] drm/i915/display: MTL+ .get_dplls
Date: Wed,  1 Oct 2025 11:28:26 +0300
Message-Id: <20251001082839.2585559-27-mika.kahola@intel.com>
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

Add .get_dplls function pointer for MTL+ platforms
to support dpll framework. Reusing the ICL function
pointer.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 43 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  1 +
 2 files changed, 44 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 04eec62c06ae..3906ef6f5c61 100644
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
@@ -3491,6 +3507,30 @@ static int icl_get_tc_phy_dplls(struct intel_atomic_state *state,
 	return ret;
 }
 
+static int mtl_get_c10_phy_dpll(struct intel_atomic_state *state,
+				struct intel_crtc *crtc,
+				struct intel_encoder *encoder)
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
@@ -3513,6 +3553,8 @@ static int icl_get_dplls(struct intel_atomic_state *state,
 		return icl_get_combo_phy_dpll(state, crtc, encoder);
 	else if (intel_encoder_is_tc(encoder))
 		return icl_get_tc_phy_dplls(state, crtc, encoder);
+	else if (intel_encoder_is_c10phy(encoder))
+		return mtl_get_c10_phy_dpll(state, crtc, encoder);
 
 	MISSING_CASE(encoder->port);
 
@@ -4388,6 +4430,7 @@ __maybe_unused
 static const struct intel_dpll_mgr mtl_pll_mgr = {
 	.dpll_info = mtl_plls,
 	.compute_dplls = mtl_compute_dplls,
+	.get_dplls = icl_get_dplls,
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

