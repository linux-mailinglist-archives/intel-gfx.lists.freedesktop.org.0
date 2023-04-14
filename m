Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D57B6E298D
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 19:38:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60C7710EE45;
	Fri, 14 Apr 2023 17:38:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF7BA10EE45
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 17:38:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681493885; x=1713029885;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FkaHC86rnO3TbIrABP2l570WhP7qc6D5y8rAX7psdu0=;
 b=IcW3oqyQEHYrcwxqCorYu4Y2tMvSox0s2V43Of+NOHgyF4E+utGN22+O
 bG2qxCjf4X7pSxrqQha6+1q5ZMFwEw/KW20yyXVV1TN56ZcNbbHYFdND2
 qvw/bEHnGj8AXXJGiWoPGtVbjxjiu7V6UpZPiShKEqf9DWi05/sM4STBM
 WajGl7YLmBI2xigfdExU5TFbGmtcY3q5pdbZgiM7jM5w7gNN/yXFy1QEZ
 K9Frz5LiReZg2OGomPFZ4ejxEt2XDZmrqfbG7PiDAmApoFwnsM6DKYeoo
 fBUB08XndOb7EyQZlOHqA78cc/Z4b/q8GhXcwR/DI2Qq4RzrloE1NwYcB g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="343281089"
X-IronPort-AV: E=Sophos;i="5.99,197,1677571200"; d="scan'208";a="343281089"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 10:38:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="759169283"
X-IronPort-AV: E=Sophos;i="5.99,197,1677571200"; d="scan'208";a="759169283"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 10:38:01 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Apr 2023 20:38:00 +0300
Message-Id: <20230414173800.590790-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dp_mst: Fix active port PLL selection
 for secondary MST streams
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

The port PLL selection needs to be up-to-date in the CRTC state of both
the primary and all secondary MST streams. The commit removing the
encoder update_prepare/complete hooks (see Fixes: below), stopped doing
this for secondary streams, fix this up.

Fixes: 0f752b2178c9 ("drm/i915: Remove the encoder update_prepare()/complete() hooks")
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8336
Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c    | 27 +++++++++++++++------
 drivers/gpu/drm/i915/display/intel_ddi.h    |  3 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  7 ++++++
 3 files changed, 30 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index ea012d7f378f3..29e4bfab46358 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3349,6 +3349,25 @@ void intel_ddi_update_pipe(struct intel_atomic_state *state,
 	intel_hdcp_update_pipe(state, encoder, crtc_state, conn_state);
 }
 
+void intel_ddi_update_active_dpll(struct intel_atomic_state *state,
+				  struct intel_encoder *encoder,
+				  struct intel_crtc *crtc)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_crtc *slave_crtc;
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+
+	if (!intel_phy_is_tc(i915, phy))
+		return;
+
+	intel_update_active_dpll(state, crtc, encoder);
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
+					 intel_crtc_bigjoiner_slave_pipes(crtc_state))
+		intel_update_active_dpll(state, slave_crtc, encoder);
+}
+
 static void
 intel_ddi_pre_pll_enable(struct intel_atomic_state *state,
 			 struct intel_encoder *encoder,
@@ -3363,15 +3382,9 @@ intel_ddi_pre_pll_enable(struct intel_atomic_state *state,
 	if (is_tc_port) {
 		struct intel_crtc *master_crtc =
 			to_intel_crtc(crtc_state->uapi.crtc);
-		struct intel_crtc *slave_crtc;
 
 		intel_tc_port_get_link(dig_port, crtc_state->lane_count);
-
-		intel_update_active_dpll(state, master_crtc, encoder);
-
-		for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, slave_crtc,
-						 intel_crtc_bigjoiner_slave_pipes(crtc_state))
-			intel_update_active_dpll(state, slave_crtc, encoder);
+		intel_ddi_update_active_dpll(state, encoder, master_crtc);
 	}
 
 	main_link_aux_power_domain_get(dig_port, crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
index c85e74ae68e4d..2bc034042a937 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi.h
@@ -72,5 +72,8 @@ void intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder *encoder);
 int intel_ddi_level(struct intel_encoder *encoder,
 		    const struct intel_crtc_state *crtc_state,
 		    int lane);
+void intel_ddi_update_active_dpll(struct intel_atomic_state *state,
+				  struct intel_encoder *encoder,
+				  struct intel_crtc *crtc);
 
 #endif /* __INTEL_DDI_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index a88b852c437c4..2c49d9ab86a2a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -674,6 +674,13 @@ static void intel_mst_pre_pll_enable_dp(struct intel_atomic_state *state,
 	if (intel_dp->active_mst_links == 0)
 		dig_port->base.pre_pll_enable(state, &dig_port->base,
 						    pipe_config, NULL);
+	else
+		/*
+		 * The port PLL state needs to get updated for secondary
+		 * streams as for the primary stream.
+		 */
+		intel_ddi_update_active_dpll(state, &dig_port->base,
+					     to_intel_crtc(pipe_config->uapi.crtc));
 }
 
 static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
-- 
2.37.2

