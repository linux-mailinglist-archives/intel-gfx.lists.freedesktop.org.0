Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 742B1C63AB6
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 11:59:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05EE610E38F;
	Mon, 17 Nov 2025 10:59:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h+agxAtc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EC8B10E37B;
 Mon, 17 Nov 2025 10:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763377167; x=1794913167;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s18AjwtwAHyyVf1BX0AI5cGLK+fOlLMULKckCu/vxo0=;
 b=h+agxAtc5T9Zrlg6cYoqdU+TgVLIgL0446bigoA0b0R1jS4RcW26w0VG
 2gdKYQK7O8KjYhK9xNM9ElidcfLYd37PIrG0gsp8GQk9O3VCkfsMQRQ9X
 l7UNlq5pZc66qixE7pIWmEmDuXiaYa2MRAzE9Jh2OcGBp7IZsHqZm7xXb
 CRBh2/sCVXz7+82vVWhbNURUjq4v+dy3CA5VTehSmOuOWET/ng6AWbh4g
 6auSbMP6vYPd1ML6H9BTU19gRjCUz91EHigDAlXQlvuLKCPll5X6xPwci
 Y5hmfFTdA1N6FF+CWLkyXqrg9OfLNo77Ac9MPPfwnvCFRgBnrZNHHcLbb w==;
X-CSE-ConnectionGUID: WyAYcA5lQRyt40Gr72k9Uw==
X-CSE-MsgGUID: RnEJVshVTpiYg1zltOkgFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="76475398"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="76475398"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 02:59:27 -0800
X-CSE-ConnectionGUID: l7KHabEqRsiJ1hZsVcHYkw==
X-CSE-MsgGUID: MvR2LtXMS6Cuh7sB+ywiuw==
X-ExtLoop1: 1
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 02:59:25 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
	Imre Deak <imre.deak@intel.com>
Subject: [PATCH v2 19/32] drm/i915/cx0: Add MTL+ .get_dplls hook
Date: Mon, 17 Nov 2025 12:45:49 +0200
Message-Id: <20251117104602.2363671-20-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251117104602.2363671-1-mika.kahola@intel.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
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
to support dpll framework. Reuse the ICL function
pointer.

v2: Getting configuration either for a C10 or on the PTL port B
    eDP on TypeC PHY case for a C20 PHY PLL. Hence refer to this
    case as "non_tc_phy" instead of "c10phy".
v3: Fix comment to "eDP over TypeC" (Suraj)
    Fix pll id as separate variable (Suraj)

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 57 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  1 +
 2 files changed, 58 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 20f940110faa..313cb244d5d6 100644
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
@@ -3490,6 +3506,36 @@ static int icl_get_tc_phy_dplls(struct intel_atomic_state *state,
 	return ret;
 }
 
+/*
+ * Get the PLL for either a port using a C10 PHY PLL, or in the
+ * PTL port B eDP over TypeC PHY case, the PLL for a port using
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
+	enum intel_dpll_id pll_id = mtl_port_to_pll_id(display, encoder->port);
+
+	port_dpll->pll = intel_find_dpll(state, crtc,
+					 &port_dpll->hw_state,
+					 BIT(pll_id));
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
@@ -4387,10 +4433,21 @@ static int mtl_compute_dplls(struct intel_atomic_state *state,
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
index a7946ff13cb6..322af5c55d7c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -450,6 +450,7 @@ bool intel_dpll_compare_hw_state(struct intel_display *display,
 				 const struct intel_dpll_hw_state *a,
 				 const struct intel_dpll_hw_state *b);
 enum intel_dpll_id icl_tc_port_to_pll_id(enum tc_port tc_port);
+enum intel_dpll_id mtl_port_to_pll_id(struct intel_display *display, enum port port);
 bool intel_dpll_is_combophy(enum intel_dpll_id id);
 
 void intel_dpll_state_verify(struct intel_atomic_state *state,
-- 
2.34.1

