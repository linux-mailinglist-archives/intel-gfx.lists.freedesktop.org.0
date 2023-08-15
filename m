Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 076FE77CE18
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Aug 2023 16:29:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 262C710E255;
	Tue, 15 Aug 2023 14:29:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB47910E255
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Aug 2023 14:29:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692109785; x=1723645785;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dZkoEsGpgPKWZT5aVLCqO+KiZmb5YYh1s63/n0s32IU=;
 b=cIAh+/ukvx08Rpn6S8V0nrL8KgK32cRGMoJWf6Iyu9XNQ0F/jw433OEZ
 q/6XzYuBLi6rkmmi+mc5D2uqI65pm6PrF3Y5cuaJzYvqr2anc3IG4dK/W
 jxsUtqWyQbXQoBa9nVTthRNgKbwqfo5PsB+ZQEu1FCSCX6NOgeVGRUimI
 XeOIJ8UyuhfgKh2T7kElF+zETzgeYJ035Cix2jnQ0aiNWjw0hkMNNvy0k
 gTSg7dr5yETbMlstyVnUi5yGgq5cM+3TLg2ic1x8fkILbwv/S85BleYp6
 N2WydpxW7K/cZV8aOENZKbCzKD4CgBUKNR7JKIafkDtyFAXSB5AVltxNr A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="376021575"
X-IronPort-AV: E=Sophos;i="6.01,174,1684825200"; d="scan'208";a="376021575"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 07:29:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="799210070"
X-IronPort-AV: E=Sophos;i="6.01,174,1684825200"; d="scan'208";a="799210070"
Received: from emurares-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.43.82])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 07:29:43 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Aug 2023 17:29:21 +0300
Message-Id: <20230815142921.404127-5-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230815142921.404127-1-vinod.govindapillai@intel.com>
References: <20230815142921.404127-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/4] drm/915/display: configure SDP split for
 DP-MST
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
 drivers/gpu/drm/i915/display/intel_dp.c     | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.h     | 4 ++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 7 +++----
 3 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0eb072a78d44..269828e22437 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2233,7 +2233,7 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 	return ret;
 }
 
-static void
+void
 intel_dp_audio_compute_config(struct intel_encoder *encoder,
 			      struct intel_crtc_state *pipe_config,
 			      struct drm_connector_state *conn_state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index e7b515b685ac..b8516a34cfaf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -65,6 +65,10 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				struct link_config_limits *limits,
 				int timeslots,
 				bool recompute_pipe_bpp);
+void intel_dp_audio_compute_config(struct intel_encoder *encoder,
+				   struct intel_crtc_state *pipe_config,
+				   struct drm_connector_state *conn_state,
+				   struct intel_dp *intel_dp);
 bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp);
 bool intel_dp_is_edp(struct intel_dp *intel_dp);
 bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 8881cfd41ee7..05228c006a1b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -309,10 +309,6 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->has_pch_encoder = false;
 
-	pipe_config->has_audio =
-		intel_dp_has_audio(encoder, conn_state, intel_dp) &&
-		intel_audio_compute_config(encoder, pipe_config, conn_state);
-
 	/*
 	 * for MST we always configure max link bw - the spec doesn't
 	 * seem to suggest we should do otherwise.
@@ -375,6 +371,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 		pipe_config->lane_lat_optim_mask =
 			bxt_ddi_phy_calc_lane_lat_optim_mask(pipe_config->lane_count);
 
+	intel_dp_audio_compute_config(encoder, pipe_config, conn_state, intel_dp);
 	intel_ddi_compute_min_voltage_level(dev_priv, pipe_config);
 
 	return 0;
@@ -779,6 +776,8 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 		intel_de_rmw(dev_priv, CHICKEN_TRANS(trans), 0,
 			     FECSTALL_DIS_DPTSTREAM_DPTTG);
 
+	intel_audio_sdp_split_update(pipe_config);
+
 	intel_enable_transcoder(pipe_config);
 
 	intel_crtc_vblank_on(pipe_config);
-- 
2.34.1

