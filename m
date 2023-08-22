Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21479784B9E
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 22:48:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3872A10E3C6;
	Tue, 22 Aug 2023 20:48:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83B7910E3C6
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 20:48:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692737319; x=1724273319;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FmM6xXLeu9QG3TAz+sZvmDaEvmS2H7A9pnLb/ZUpQB4=;
 b=StMttqBCtPwKi8FLWRUcNJiFMlskMRVoAsuDHMBjBapCHDcOgltq3lVp
 QJYrefZmz2HefOjKld1PJrpOmAFAv+WTDbU+CnNw7842o2BZj8hpKypBM
 Kb/SuS8zcX0/4TnyoeqhOyqjXOUYHsdE7hkUMz23oMWFp6NpfrTsEMNev
 IhC3F8k0FG49AnYts43PEfnzBBMHhf1PK5d4fpbcUM1bD6fZZwrkAc7V1
 E0HYgsRWHB0GLx/Jb8wCNDSQjom2bBGTJCJWvDDj5KSLE8tV2WpdAk2wZ
 Sh6u7mkyfQ4EiEKirCAH0ECD5VVLkwLfVaScmbrgN8zCqK/DGgcftiD/j g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="404991159"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="404991159"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 13:48:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="910223873"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="910223873"
Received: from nnesher-mobl.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.251.213.152])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 13:48:36 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Aug 2023 23:48:18 +0300
Message-Id: <20230822204818.109742-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230822204818.109742-1-vinod.govindapillai@intel.com>
References: <20230822204818.109742-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 2/2] drm/i915/display: configure SDP split
 for DP-MST
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Extend the SDP split audio config for DP-MST

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.h     |  3 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 21 ++++-----------------
 3 files changed, 8 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6ec5f2dbb6db..05694e0b6143 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2625,7 +2625,7 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 	return ret;
 }
 
-static void
+void
 intel_dp_audio_compute_config(struct intel_encoder *encoder,
 			      struct intel_crtc_state *pipe_config,
 			      struct drm_connector_state *conn_state)
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 788a577ebe16..b34ddc9c352a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -65,6 +65,9 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				struct link_config_limits *limits,
 				int timeslots,
 				bool recompute_pipe_bpp);
+void intel_dp_audio_compute_config(struct intel_encoder *encoder,
+				   struct intel_crtc_state *pipe_config,
+				   struct drm_connector_state *conn_state);
 bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp);
 bool intel_dp_is_edp(struct intel_dp *intel_dp);
 bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 3eb085fbc7c8..2d1c42a5e684 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -293,19 +293,6 @@ static int intel_dp_mst_update_slots(struct intel_encoder *encoder,
 	return 0;
 }
 
-static bool intel_dp_mst_has_audio(const struct drm_connector_state *conn_state)
-{
-	const struct intel_digital_connector_state *intel_conn_state =
-		to_intel_digital_connector_state(conn_state);
-	struct intel_connector *connector =
-		to_intel_connector(conn_state->connector);
-
-	if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
-		return connector->base.display_info.has_audio;
-	else
-		return intel_conn_state->force_audio == HDMI_AUDIO_ON;
-}
-
 static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 				       struct intel_crtc_state *pipe_config,
 				       struct drm_connector_state *conn_state)
@@ -325,10 +312,6 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->has_pch_encoder = false;
 
-	pipe_config->has_audio =
-		intel_dp_mst_has_audio(conn_state) &&
-		intel_audio_compute_config(encoder, pipe_config, conn_state);
-
 	/*
 	 * for MST we always configure max link bw - the spec doesn't
 	 * seem to suggest we should do otherwise.
@@ -396,6 +379,8 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 		pipe_config->lane_lat_optim_mask =
 			bxt_ddi_phy_calc_lane_lat_optim_mask(pipe_config->lane_count);
 
+	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
+
 	intel_ddi_compute_min_voltage_level(dev_priv, pipe_config);
 
 	return 0;
@@ -800,6 +785,8 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 		intel_de_rmw(dev_priv, CHICKEN_TRANS(trans), 0,
 			     FECSTALL_DIS_DPTSTREAM_DPTTG);
 
+	intel_audio_sdp_split_update(pipe_config);
+
 	intel_enable_transcoder(pipe_config);
 
 	intel_crtc_vblank_on(pipe_config);
-- 
2.34.1

