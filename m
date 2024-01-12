Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F01482BBF1
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jan 2024 08:43:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03DCF10EA87;
	Fri, 12 Jan 2024 07:43:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E155710EA87
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jan 2024 07:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705045426; x=1736581426;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t8jblCgzeW4n9lrl3dga9yAy6U1+2T1v+luwT4WP0d4=;
 b=BZotQSZxKtBWs/cm7eOmpuFfiptXOFFZv8VCHt22C/DCCNFQiglP4fNB
 tkyu0CfSYH1NlpdJ0efSyDOxU07ZfKOYjyJY4eXXrTxLPptEGO8baCO3O
 oiEtqBXUzaY0DauSNR1ojvjVMZxkOVj5MVNhAl9jZ+qds5W+jakjbucBX
 yPotslkyuolfp54UI2UfcESOKJGvoqF2Jmaj6c82iEDH9jBokrkkLPjJZ
 dCQJM1X4OJgbOJzbwlsy09RTE0kwpcVaUUZaNKtrVqtGfd9I2CvRdgq+Y
 Swzf4M1Gwk43VWebLn82j09KBA/6PNGV25LkaLazRhysls6FX07hHkSwX w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="5867072"
X-IronPort-AV: E=Sophos;i="6.04,188,1695711600"; 
   d="scan'208";a="5867072"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 23:43:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,188,1695711600"; d="scan'208";a="17317600"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa002.fm.intel.com with ESMTP; 11 Jan 2024 23:43:42 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 7/7] drm/i915/display: fastset tbt pll thing
Date: Fri, 12 Jan 2024 13:11:20 +0530
Message-Id: <20240112074120.159797-8-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240112074120.159797-1-suraj.kandpal@intel.com>
References: <20240112074120.159797-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Some DPCD registers(HDCP related) were not accessible due
to some fastset config this fixes that.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index ef57dad1a9cb..1008e18177c9 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -3308,6 +3308,8 @@ static int icl_compute_tc_phy_dplls(struct intel_atomic_state *state,
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
 	struct icl_port_dpll *port_dpll =
 		&crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
 	struct skl_wrpll_params pll_params = {};
@@ -3326,7 +3328,11 @@ static int icl_compute_tc_phy_dplls(struct intel_atomic_state *state,
 		return ret;
 
 	/* this is mainly for the fastset check */
-	icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_MG_PHY);
+	if (old_crtc_state->shared_dpll &&
+	    old_crtc_state->shared_dpll->info->id == DPLL_ID_ICL_TBTPLL)
+		icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_DEFAULT);
+	else
+		icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_MG_PHY);
 
 	crtc_state->port_clock = icl_ddi_mg_pll_get_freq(i915, NULL,
 							 &port_dpll->hw_state);
-- 
2.25.1

