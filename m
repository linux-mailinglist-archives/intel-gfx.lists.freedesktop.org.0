Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1F46C6ACC
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:21:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 108A710EAB6;
	Thu, 23 Mar 2023 14:21:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1235510EAC2
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679581267; x=1711117267;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=BpBX8gk+B64yN2pvt1hZNF/pXJKI75M0Mg8OOFBibMY=;
 b=R42DRWBfHQnti4DGDMYCgO9PkIyGNoxfcgtVM5OFKUU0MCeDvPsnebvw
 1BIwgnSwyXnj1np9/4DolvssyxldVAntW+JH7xMCWjgK6z7pNtGuuI0j/
 KH1d1I60OT24I6f2D2LyFch/4+owUHCcYzw+uD8V9xKgyH5uWM1H4088s
 NMMLAp91fDjVGysCFTSlezP446gtLLOg3X530VUBOzic4+ilC3pz2LdIJ
 yZkca6yBqfiU07jF/788U5xTrjzyc34xCEdb0N1eN+aX9Cwcl++vb9ivo
 HfON9HFVqMSzcQVT6nkEFy4alHDBn8fbzyZi2srZ0x/zXfiteM8dO/5E+ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="327892351"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="327892351"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:21:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746722756"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="746722756"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:21:05 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 16:20:33 +0200
Message-Id: <20230323142035.1432621-28-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 27/29] drm/i915: Disable DPLLs before
 disconnecting the TC PHY
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

Bspec requires disabling the DPLLs on TC ports before disconnecting the
port's PHY. Add a post_pll_disable encoder hook and move the call to
disconnect the port's PHY from the post_disable hook to the new hook.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     | 15 ++++++++++++---
 drivers/gpu/drm/i915/display/intel_display.c |  2 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 15 +++++++++++++++
 3 files changed, 29 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index dac3ec8fbbc11..62bd4196dc464 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2720,9 +2720,6 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
 				   const struct drm_connector_state *old_conn_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
-	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
-	bool is_tc_port = intel_phy_is_tc(dev_priv, phy);
 	struct intel_crtc *slave_crtc;
 
 	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST)) {
@@ -2772,6 +2769,17 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
 	else
 		intel_ddi_post_disable_dp(state, encoder, old_crtc_state,
 					  old_conn_state);
+}
+
+static void intel_ddi_post_pll_disable(struct intel_atomic_state *state,
+				       struct intel_encoder *encoder,
+				       const struct intel_crtc_state *old_crtc_state,
+				       const struct drm_connector_state *old_conn_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	bool is_tc_port = intel_phy_is_tc(i915, phy);
 
 	main_link_aux_power_domain_put(dig_port, old_crtc_state);
 
@@ -4398,6 +4406,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	encoder->pre_pll_enable = intel_ddi_pre_pll_enable;
 	encoder->pre_enable = intel_ddi_pre_enable;
 	encoder->disable = intel_disable_ddi;
+	encoder->post_pll_disable = intel_ddi_post_pll_disable;
 	encoder->post_disable = intel_ddi_post_disable;
 	encoder->update_pipe = intel_ddi_update_pipe;
 	encoder->get_hw_state = intel_ddi_get_hw_state;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ca024f288ab65..0e171f66d6983 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1927,6 +1927,8 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 
 	intel_disable_shared_dpll(old_crtc_state);
 
+	intel_encoders_post_pll_disable(state, crtc);
+
 	intel_dmc_disable_pipe(i915, crtc->pipe);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index a860cbc5dbea8..23302dc738450 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -623,6 +623,20 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 		    intel_dp->active_mst_links);
 }
 
+static void intel_mst_post_pll_disable_dp(struct intel_atomic_state *state,
+					  struct intel_encoder *encoder,
+					  const struct intel_crtc_state *old_crtc_state,
+					  const struct drm_connector_state *old_conn_state)
+{
+	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
+	struct intel_digital_port *dig_port = intel_mst->primary;
+	struct intel_dp *intel_dp = &dig_port->dp;
+
+	if (intel_dp->active_mst_links == 0 &&
+	    dig_port->base.post_pll_disable)
+		dig_port->base.post_pll_disable(state, encoder, old_crtc_state, old_conn_state);
+}
+
 static void intel_mst_pre_pll_enable_dp(struct intel_atomic_state *state,
 					struct intel_encoder *encoder,
 					const struct intel_crtc_state *pipe_config,
@@ -1146,6 +1160,7 @@ intel_dp_create_fake_mst_encoder(struct intel_digital_port *dig_port, enum pipe
 	intel_encoder->compute_config_late = intel_dp_mst_compute_config_late;
 	intel_encoder->disable = intel_mst_disable_dp;
 	intel_encoder->post_disable = intel_mst_post_disable_dp;
+	intel_encoder->post_pll_disable = intel_mst_post_pll_disable_dp;
 	intel_encoder->update_pipe = intel_ddi_update_pipe;
 	intel_encoder->pre_pll_enable = intel_mst_pre_pll_enable_dp;
 	intel_encoder->pre_enable = intel_mst_pre_enable_dp;
-- 
2.37.1

