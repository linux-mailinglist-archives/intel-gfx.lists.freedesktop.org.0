Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D165BAFB08
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:39:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AC9E10E6DF;
	Wed,  1 Oct 2025 08:39:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mlIANQiC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14F7310E6DA;
 Wed,  1 Oct 2025 08:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759307949; x=1790843949;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uEyDRvLwJqHP0Rva/KIOu2PWZL0PQszmPiIOh5yww7k=;
 b=mlIANQiCb0gor2R0Mx4W/AGG+16TRbvKMJDkob2KFOXzTcBF1Oz7lnGi
 yeq0PnN7FIJRSp42o02mxoyXpVa+1yLJJZ1gHleqsghCXrLsJazkhXjmy
 w9SXIpktP8VsVudNPPYCQdn2F8r37wxjxx8LwnLL6ffCSMuh1KSmeXiMi
 6c6GZvhVhjEYk+EwQ0NyFo3hH2YB9wmBIeEn1jt5z1dY7mn766gHabofv
 PJRzNUvrltnRF1QSDmAu4VTltzPDZKSQOuxPs0BVsj/lTKWwcMehOcgS9
 Fdk4egsZzmQRQ6Chhvaeuexfyk9cyV+H1e6boBHaY9ds7TsY4K3deBXeX w==;
X-CSE-ConnectionGUID: kJzcN6sYRRWbRxWWRanZMQ==
X-CSE-MsgGUID: IFzEiEkRQY2/PNE+mDGXkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61742780"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61742780"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:39:08 -0700
X-CSE-ConnectionGUID: hiWnVVAgTaKvZCRFtVQ55Q==
X-CSE-MsgGUID: YrVw6SkoRsOJ3+U2PNz8sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179142757"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa008.fm.intel.com with ESMTP; 01 Oct 2025 01:39:06 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
	Imre Deak <imre.deak@intel.com>
Subject: [RFC PATCH 25/39] drm/i915/display: Compute plls for MTL+ platform
Date: Wed,  1 Oct 2025 11:28:25 +0300
Message-Id: <20251001082839.2585559-26-mika.kahola@intel.com>
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

To bring MTL+ platform aligned with dpll framework we
need to call and calculate pll state from dpll
framework.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 65 +++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index a9d9b7113f12..04eec62c06ae 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4320,9 +4320,74 @@ static const struct dpll_info mtl_plls[] = {
 	{}
 };
 
+static int mtl_compute_c10phy_dplls(struct intel_atomic_state *state,
+				    struct intel_crtc *crtc,
+				    struct intel_encoder *encoder)
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
+static int mtl_compute_c20phy_dplls(struct intel_atomic_state *state,
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
+	if (intel_encoder_is_c10phy(encoder))
+		return mtl_compute_c10phy_dplls(state, crtc, encoder);
+	else
+		return mtl_compute_c20phy_dplls(state, crtc, encoder);
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

