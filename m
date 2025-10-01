Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB35BAFB2F
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:39:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A31A410E6FE;
	Wed,  1 Oct 2025 08:39:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oJiclE/Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C02010E6F6;
 Wed,  1 Oct 2025 08:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759307964; x=1790843964;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5Mg0IEi8APqik1TOb+fJCuo8G3STo/MT2pwwlvxYEXA=;
 b=oJiclE/YUqI3IuYK5ydZvJ8Gvo6vktuU6PNh3e9r4b+dKTi/EZ1anAZD
 LjCBU1m6b6k5EShXCphRDjEExmnQc10ajYLck0XqfiMRO5uvR6HCsejwU
 6Pm/04um27pRqE67O35Yoqzo+oWggD/UroqWOgh/xvLTweK3yHDmfBQQW
 MTKa/HGGIdOdomVIeXs+xDIAbcz4lIq65a6/ZH/VRPvHMpzv6q0cYx6AM
 xsHJoFozw+j5zweLCYi1L5hFdAaOmUVnBCTnK5yOGX0RAvpdiE0+Tepzv
 MEiktILeb0ohE6lyE4MCzwpc9H+4mAfDqFER94hysY6LaNrzIfUvsA/R+ A==;
X-CSE-ConnectionGUID: pEKNcgW3RFyADjNHeaK1WQ==
X-CSE-MsgGUID: f2xs4iZoTcSBazPjn34S0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61742831"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61742831"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:39:23 -0700
X-CSE-ConnectionGUID: yxNmkfIgTluPUPGFigSCOA==
X-CSE-MsgGUID: VmSfnvOyTg+PGsXytubZ4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179142999"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa008.fm.intel.com with ESMTP; 01 Oct 2025 01:39:21 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
	Imre Deak <imre.deak@intel.com>
Subject: [RFC PATCH 37/39] drm/i915/display: Get configuration for C10 and C20
Date: Wed,  1 Oct 2025 11:28:37 +0300
Message-Id: <20251001082839.2585559-38-mika.kahola@intel.com>
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

For DDI initialization get configuration for C10 and C20
chips.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 76 ++++++++++++++++++++++--
 1 file changed, 70 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 342c2433cbb5..972033b41718 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4255,6 +4255,72 @@ static void mtl_ddi_get_config(struct intel_encoder *encoder,
 	intel_ddi_get_config(encoder, crtc_state);
 }
 
+static bool icl_ddi_tc_pll_is_tbt(const struct intel_dpll *pll)
+{
+	return pll->info->id == DPLL_ID_ICL_TBTPLL;
+}
+
+static void mtl_ddi_cx0_get_config(struct intel_encoder *encoder,
+				   struct intel_crtc_state *crtc_state,
+				   enum icl_port_dpll_id port_dpll_id,
+				   enum intel_dpll_id pll_id)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct icl_port_dpll *port_dpll;
+	struct intel_dpll *pll;
+	bool pll_active;
+
+	port_dpll = &crtc_state->icl_port_dplls[port_dpll_id];
+	pll = intel_get_dpll_by_id(display, pll_id);
+
+	if (drm_WARN_ON(display->drm, !pll))
+		return;
+
+	port_dpll->pll = pll;
+	pll_active = intel_dpll_get_hw_state(display, pll, &port_dpll->hw_state);
+	drm_WARN_ON(display->drm, !pll_active);
+
+	icl_set_active_port_dpll(crtc_state, port_dpll_id);
+
+	if (icl_ddi_tc_pll_is_tbt(crtc_state->intel_dpll))
+		crtc_state->port_clock = intel_mtl_tbt_calc_port_clock(encoder);
+	else
+		crtc_state->port_clock = intel_dpll_get_freq(display, crtc_state->intel_dpll,
+							     &crtc_state->dpll_hw_state);
+
+	intel_ddi_get_config(encoder, crtc_state);
+}
+
+static void mtl_ddi_c10phy_get_config(struct intel_encoder *encoder,
+				      struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(encoder);
+
+	/* TODO: Remove when the PLL manager is in place. */
+	mtl_ddi_get_config(encoder, crtc_state);
+	return;
+
+	mtl_ddi_cx0_get_config(encoder, crtc_state, ICL_PORT_DPLL_DEFAULT,
+			       mtl_port_to_pll_id(display, encoder->port));
+}
+
+static void mtl_ddi_c20phy_get_config(struct intel_encoder *encoder,
+				      struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(encoder);
+
+	/* TODO: Remove when the PLL manager is in place. */
+	mtl_ddi_get_config(encoder, crtc_state);
+	return;
+
+	if (intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder)))
+		mtl_ddi_cx0_get_config(encoder, crtc_state, ICL_PORT_DPLL_DEFAULT,
+				       DPLL_ID_ICL_TBTPLL);
+	else
+		mtl_ddi_cx0_get_config(encoder, crtc_state, ICL_PORT_DPLL_MG_PHY,
+				       mtl_port_to_pll_id(display, encoder->port));
+}
+
 static void dg2_ddi_get_config(struct intel_encoder *encoder,
 				struct intel_crtc_state *crtc_state)
 {
@@ -4292,11 +4358,6 @@ static void icl_ddi_combo_get_config(struct intel_encoder *encoder,
 	intel_ddi_get_config(encoder, crtc_state);
 }
 
-static bool icl_ddi_tc_pll_is_tbt(const struct intel_dpll *pll)
-{
-	return pll->info->id == DPLL_ID_ICL_TBTPLL;
-}
-
 static enum icl_port_dpll_id
 icl_ddi_tc_port_pll_type(struct intel_encoder *encoder,
 			 const struct intel_crtc_state *crtc_state)
@@ -5230,7 +5291,10 @@ void intel_ddi_init(struct intel_display *display,
 		encoder->enable_clock = intel_mtl_pll_enable_clock;
 		encoder->disable_clock = intel_mtl_pll_disable_clock;
 		encoder->port_pll_type = intel_mtl_port_pll_type;
-		encoder->get_config = mtl_ddi_get_config;
+		if (intel_encoder_is_c10phy(encoder))
+			encoder->get_config = mtl_ddi_c10phy_get_config;
+		else
+			encoder->get_config = mtl_ddi_c20phy_get_config;
 	} else if (display->platform.dg2) {
 		encoder->enable_clock = intel_mpllb_enable;
 		encoder->disable_clock = intel_mpllb_disable;
-- 
2.34.1

