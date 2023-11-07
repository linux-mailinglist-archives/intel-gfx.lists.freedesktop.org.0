Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA517E321C
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Nov 2023 01:15:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89AE210E494;
	Tue,  7 Nov 2023 00:15:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DA0D10E488
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Nov 2023 00:15:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699316115; x=1730852115;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v2N8JtUmFUqURiJzbPz8vL/gshWqziovh6zz8G52+Sk=;
 b=gcd9xaOpdM9obVmb8s0Tqplc+bxgwcCpIdu94X2kqRFpJwHJ3qRUv3Ea
 bfWHh7NsH/uFVM6NFAXvQJ8IDspCcai++HZj226sCA3sUzeKLlBQ6E1pp
 sGq3V2G7R3KK5RuTgf7KCv+3V31gyLULXqbyOvzWu1cS26RGr7W7+SVOB
 358umU5JOdtdvFhxD1tYHjgeBAwBm4Z99Um4J8bZYhA50QzDTaYGDw44K
 2D8MgELniWpj9iQ3pZCj1kkWXWVsV2My98ZDojRgs6LKe1hHbzIqxedLY
 fIrYjw8OHB7nJJBZ68D9rjsF6+M9TESwiWYBft9wqLmc7sVzQHLI5/SFC A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="369596205"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="369596205"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 16:15:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="853178004"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="853178004"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 16:15:14 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Nov 2023 02:15:02 +0200
Message-Id: <20231107001505.3370108-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231030155843.2251023-23-imre.deak@intel.com>
References: <20231030155843.2251023-23-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 22/30] drm/i915/dp_mst: Enable decompression
 in the sink from the MST encoder hooks
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

v2:
- Rebased on latest drm-tip.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c    | 12 ++++++++----
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 15 ++++++++++++++-
 2 files changed, 22 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 1abf74af6c5ce..cc2a38fc22d0d 100644
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
index 4f066a868b9a2..eab69f57655d9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -776,6 +776,13 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
 	intel_hdcp_disable(intel_mst->connector);
 
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
@@ -932,9 +939,15 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 
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

