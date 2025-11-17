Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7CBC63AB3
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 11:59:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95E5410E378;
	Mon, 17 Nov 2025 10:59:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YEHYqtmk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E165310E37C;
 Mon, 17 Nov 2025 10:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763377166; x=1794913166;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CbKuirjA1nQHjZ8Q/UDhkegS+Wfo3A3eLVte3ZspiqQ=;
 b=YEHYqtmkeDUWkCdyLzl7WhVAVKXtzNQf4S70gylthWSxQ/9RNABkxrP/
 UE47QOIaoIj97fImCrt+JaGDmoHthIFq57mVXTGJEnI4lMmelw2u5/1Vv
 nI/+nWW+zuyJuXhnrfTVvOJDtSZd0hLO9YoxmWhZXoXOgakclHHvHT8Es
 oblovdzQxK5/vlyTvg/KaCJ0aE6HYCajhmqNVrQibArVPEA7AgASC+Pn6
 UR8OhVVZTvbSM5roUIN1aT0Av233Hjvis4rryp0DSEGoeBo0zfFkfjMCE
 Z2zBupfIEK74XJd5qmOsPRp3cL2aGpH/zSZJSShPulb3FOJWc/6XX8V8V w==;
X-CSE-ConnectionGUID: Pv8RHw4ITUGgytxVGH0VCA==
X-CSE-MsgGUID: qIK56jIESWCyg0xTz7SwjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="76475392"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="76475392"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 02:59:25 -0800
X-CSE-ConnectionGUID: S7o//5ddQTKgv/nrLqQBJg==
X-CSE-MsgGUID: I3kQIeBTSwa4jgk/wZwv0g==
X-ExtLoop1: 1
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 02:59:24 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>, Imre Deak <imre.deak@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 18/32] drm/i915/cx0: Compute plls for MTL+ platform
Date: Mon, 17 Nov 2025 12:45:48 +0200
Message-Id: <20251117104602.2363671-19-mika.kahola@intel.com>
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

To bring MTL+ platform aligned call and calculate PLL state
from dpll framework.

v2: Rename mtl_compute_c10phy_dpll() to mtl_compute_non_tc_phy_dpll().
    The state is computed either for a C10 or on the PTL port B eDP on
    TypeC PHY case for a C20 PHY PLL. Hence refer to this case as
    "non_tc_phy" instead of "c10phy".

    Rename mtl_compute_c20phy_dplls() to mtl_compute_tc_phy_dplls() for
    symmetry with mtl_compute_non_tc_phy_dpll().
v3: Reword commit message (Suraj)

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 69 +++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 23f22c495ec7..20f940110faa 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4319,9 +4319,78 @@ static const struct dpll_info mtl_plls[] = {
 	{}
 };
 
+/*
+ * Compute the state for either a C10 PHY PLL, or in the case of the PTL port B,
+ * eDP on TypeC PHY case for a C20 PHY PLL.
+ */
+static int mtl_compute_non_tc_phy_dpll(struct intel_atomic_state *state,
+				       struct intel_crtc *crtc,
+				       struct intel_encoder *encoder)
+{
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct icl_port_dpll *port_dpll =
+		&crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
+	int ret;
+
+	ret = intel_cx0pll_calc_state(crtc_state, encoder, &port_dpll->hw_state);
+	if (ret)
+		return ret;
+
+	/* this is mainly for the fastset check */
+	icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_DEFAULT);
+
+	crtc_state->port_clock = intel_cx0pll_calc_port_clock(encoder,
+							      &port_dpll->hw_state.cx0pll);
+
+	return 0;
+}
+
+static int mtl_compute_tc_phy_dplls(struct intel_atomic_state *state,
+				    struct intel_crtc *crtc,
+				    struct intel_encoder *encoder)
+{
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
+	ret = intel_cx0pll_calc_state(crtc_state, encoder, &port_dpll->hw_state);
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
+	crtc_state->port_clock = intel_cx0pll_calc_port_clock(encoder,
+							      &port_dpll->hw_state.cx0pll);
+
+	return 0;
+}
+
+static int mtl_compute_dplls(struct intel_atomic_state *state,
+			     struct intel_crtc *crtc,
+			     struct intel_encoder *encoder)
+{
+	if (intel_encoder_is_tc(encoder))
+		return mtl_compute_tc_phy_dplls(state, crtc, encoder);
+	else
+		return mtl_compute_non_tc_phy_dpll(state, crtc, encoder);
+}
+
 __maybe_unused
 static const struct intel_dpll_mgr mtl_pll_mgr = {
 	.dpll_info = mtl_plls,
+	.compute_dplls = mtl_compute_dplls,
 };
 
 /**
-- 
2.34.1

