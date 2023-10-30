Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B2B7DBD2E
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 16:58:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A93010E327;
	Mon, 30 Oct 2023 15:58:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A37510E324
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Oct 2023 15:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698681528; x=1730217528;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Qbi/ri5N6sNluDabxGxsjeZvBUihc+R61NIb+jA5uP8=;
 b=m99d5gDbEOppcu+fw+p8bEuQveEsffJ1qPVBvreJlbGe95q9ZM5wXP5k
 zPoOuljWU/PhYDWIxkwERVRpmF966PsJyZ2W8EndH7hdXjnquh5QO2Dxs
 ZXhtBjMrlZQxc5F8XEJ4fuxFhKucLHf2VCiM/B/Gng9kR1XMvlks5lTys
 Ya6OQ+P/bZvDpV55ltG0YtsDJ/lPsJ3vdgeZVEGOmyJp1O69GNBFzDTvR
 55xwZFjsKIrNV6hE8RvxYJmR9FySX/eDstxahiXPuDVSxKKD2U2FLlN7L
 K+xEdi+KpgFIPJ9f1BLs0jl7y4mHM2r99udsBuD6QakzqC5erVVoEBa50 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="974508"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; 
   d="scan'208";a="974508"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 08:58:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="789494034"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="789494034"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 08:58:46 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Oct 2023 17:58:35 +0200
Message-Id: <20231030155843.2251023-23-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231030155843.2251023-1-imre.deak@intel.com>
References: <20231030155843.2251023-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 22/30] drm/i915/dp_mst: Enable decompression
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

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c    | 12 ++++++++----
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 15 ++++++++++++++-
 2 files changed, 22 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 24b343465f6f6..0ec212ead9f02 100644
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
index 94627ab271c7d..f970e25f57fec 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -747,6 +747,13 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
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
@@ -901,9 +908,15 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 
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

