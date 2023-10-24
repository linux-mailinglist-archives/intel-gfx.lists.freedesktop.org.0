Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD2C7D44A0
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 03:09:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74D6C10E2C9;
	Tue, 24 Oct 2023 01:09:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1143410E2BC
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 01:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698109767; x=1729645767;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=RzKO3oevh53kgOEKoN8WTSdxAeTvxZjZ7SfwzU2MM/0=;
 b=fpBSQ+uu/+WMsSYR1zyQe7QhGPMlB2inxmkEl50iioUyRrDt+/lLr8kI
 s+hx7I4TCkDdXf7qeJE1+zFr9zN3V5X8bnf87CA2XXAVU4p3YJeCyM29N
 lwuU0qtazIv3oR8qf8j/aPBFwDZb3yTBTRCHKaiD7q0QDaa4u+E43h2eC
 K4mZKPj37a27lK4ZoA1X4Xa1Kca+nuLd6PtG+8sNDA51lKz/jcbhecOEw
 wbqVBQacpla4EWv/9QJaZQByYvWkMCclfMvfw6TLCfFlMw273e7Q3bwGt
 AfMxMhs/smXT6rMzgZO193xHw9yDdkvzTZOjytAj3UbndNMT5dGE2mH66 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="366304386"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="366304386"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="931870142"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="931870142"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:25 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 04:09:17 +0300
Message-Id: <20231024010925.3949910-22-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231024010925.3949910-1-imre.deak@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 21/29] drm/i915/dp_mst: Enable decompression in
 the sink from the MST encoder hooks
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

Enable/disable the DSC decompression in the sink/branch from the MST
encoder hooks. This prepares for an upcoming patch toggling DSC for each
stream as needed, but for now keeps the current behavior, as DSC is only
enabled for the first MST stream.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c    | 12 ++++++++----
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 15 ++++++++++++++-
 2 files changed, 22 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 99d96762fa29c..bc438272d6d1a 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2538,7 +2538,9 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
 
 	intel_dp_configure_protocol_converter(intel_dp, crtc_state);
-	intel_dp_sink_set_decompression_state(intel_dp, crtc_state, true);
+	if (!is_mst)
+		intel_dp_sink_set_decompression_state(intel_dp, crtc_state, true);
+
 	/*
 	 * DDI FEC: "anticipates enabling FEC encoding sets the FEC_READY bit
 	 * in the FEC_CONFIGURATION register to 1 before initiating link
@@ -2689,7 +2691,8 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
 
 	intel_dp_configure_protocol_converter(intel_dp, crtc_state);
-	intel_dp_sink_set_decompression_state(intel_dp, crtc_state, true);
+	if (!is_mst)
+		intel_dp_sink_set_decompression_state(intel_dp, crtc_state, true);
 	/*
 	 * DDI FEC: "anticipates enabling FEC encoding sets the FEC_READY bit
 	 * in the FEC_CONFIGURATION register to 1 before initiating link
@@ -2769,8 +2772,9 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	if (!is_mst)
 		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
 	intel_dp_configure_protocol_converter(intel_dp, crtc_state);
-	intel_dp_sink_set_decompression_state(intel_dp, crtc_state,
-					      true);
+	if (!is_mst)
+		intel_dp_sink_set_decompression_state(intel_dp, crtc_state,
+						      true);
 	intel_dp_sink_set_fec_ready(intel_dp, crtc_state, true);
 	intel_dp_start_link_train(intel_dp, crtc_state);
 	if ((port != PORT_A || DISPLAY_VER(dev_priv) >= 9) &&
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 9124e9cdf4c79..b0310f464c1cd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -729,6 +729,13 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
 	drm_dp_remove_payload_part1(&intel_dp->mst_mgr, new_mst_state, new_payload);
 
 	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
+
+	if (intel_dp->active_mst_links == 1) /* last stream ? */
+		/*
+		 * TODO: disable decompression for all streams/in any MST ports, not
+		 * only in the first downstream branch device.
+		 */
+		intel_dp_sink_set_decompression_state(intel_dp, old_crtc_state, false);
 }
 
 static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
@@ -883,9 +890,15 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 
 	drm_dp_send_power_updown_phy(&intel_dp->mst_mgr, connector->port, true);
 
-	if (first_mst_stream)
+	if (first_mst_stream) {
+		/*
+		 * TODO: enable decompression for all streams/in any MST ports, not
+		 * only in the first downstream branch device.
+		 */
+		intel_dp_sink_set_decompression_state(intel_dp, pipe_config, true);
 		dig_port->base.pre_enable(state, &dig_port->base,
 						pipe_config, NULL);
+	}
 
 	intel_dp->active_mst_links++;
 
-- 
2.39.2

