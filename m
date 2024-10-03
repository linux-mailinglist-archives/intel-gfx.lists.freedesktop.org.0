Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D2898ED30
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 12:42:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 769BA10E7EE;
	Thu,  3 Oct 2024 10:42:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ixrQ/3YA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8225310E7E7;
 Thu,  3 Oct 2024 10:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727952121; x=1759488121;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U4Wy5S2Lm4Uox3+tfiXVm8g/HX5qNgQSnrdYlOP56UE=;
 b=ixrQ/3YAXqUtT+PE708waMrC5+qHk9qsiDESBXnUuXAtBEf73xejaHmk
 1p3VjWJE1UJ+F/4H31D+5pxuDvdDjQWk10sHZku5tO6yFhjdbduMrBB7J
 hRRpQkW4F9ObVNf+2D3DpcOGBp8hn7nwRzwC7GmAmeuRg0tg4qgMpVPbu
 KMajvdyeTi9icHe78RkSMvRafjx5/+joMlXeNGVd42EUaAaYsAS9TnWBn
 1Z5u/FXr2QuZoyLz0iOKQ8f24c0TFXvXLhJVTvUtawGtS5L44UNOTDjSR
 bWJKlPNwb7bNWCOZ7ZJt3MUy5dzf90fV2mR84YA4PmagN5OTqQ3CnKRAe w==;
X-CSE-ConnectionGUID: 4a/goCxKQnWuOyAPfbqxWw==
X-CSE-MsgGUID: obiyxy4DSvi/j+4oZlHKBw==
X-IronPort-AV: E=McAfee;i="6700,10204,11213"; a="27270788"
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="27270788"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 03:42:01 -0700
X-CSE-ConnectionGUID: 0c/HZP7+Ss+0P2HP8BySog==
X-CSE-MsgGUID: 5x2fJqjgR06AavCb02j7sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="105142535"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 03:41:57 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com
Subject: [PATCH 7/7] drm/i915/dp: Set the DSC link limits
 intel_dp_compute_config_link_bpp_limits
Date: Thu,  3 Oct 2024 16:13:43 +0530
Message-ID: <20241003104343.984060-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241003104343.984060-1-ankit.k.nautiyal@intel.com>
References: <20241003104343.984060-1-ankit.k.nautiyal@intel.com>
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

The helper intel_dp_compute_config_link_bpp_limits is the correct place
to set the DSC link limits. Move the code to this function and remove
the #TODO item.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 64 +++++++++++++------------
 drivers/gpu/drm/i915/display/intel_dp.h |  4 +-
 2 files changed, 35 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 02009ae03840..bfc31b3af864 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1958,7 +1958,7 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 
 static
 u16 intel_dp_dsc_max_sink_compressed_bppx16(const struct intel_connector *connector,
-					    struct intel_crtc_state *pipe_config,
+					    const struct intel_crtc_state *pipe_config,
 					    int bpc)
 {
 	u16 max_bppx16 = drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd);
@@ -1983,7 +1983,7 @@ u16 intel_dp_dsc_max_sink_compressed_bppx16(const struct intel_connector *connec
 	return 0;
 }
 
-int intel_dp_dsc_sink_min_compressed_bpp(struct intel_crtc_state *pipe_config)
+int intel_dp_dsc_sink_min_compressed_bpp(const struct intel_crtc_state *pipe_config)
 {
 	/* From Mandatory bit rate range Support Table 2-157 (DP v2.0) */
 	switch (pipe_config->output_format) {
@@ -2001,7 +2001,7 @@ int intel_dp_dsc_sink_min_compressed_bpp(struct intel_crtc_state *pipe_config)
 }
 
 int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector,
-					 struct intel_crtc_state *pipe_config,
+					 const struct intel_crtc_state *pipe_config,
 					 int bpc)
 {
 	return intel_dp_dsc_max_sink_compressed_bppx16(connector,
@@ -2130,21 +2130,16 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 {
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
-	int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
+	int dsc_min_bpp;
+	int dsc_max_bpp;
 	int dsc_joiner_max_bpp;
 	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
 
-	dsc_src_min_bpp = dsc_src_min_compressed_bpp();
-	dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(pipe_config);
-	dsc_min_bpp = max(dsc_src_min_bpp, dsc_sink_min_bpp);
-	dsc_min_bpp = max(dsc_min_bpp, fxp_q4_to_int_roundup(limits->link.min_bpp_x16));
+	dsc_min_bpp = fxp_q4_to_int_roundup(limits->link.min_bpp_x16);
 
-	dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
-	dsc_sink_max_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
-								pipe_config,
-								pipe_bpp / 3);
-	dsc_max_bpp = dsc_sink_max_bpp ? min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
+	dsc_max_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
+							   pipe_config,
+							   pipe_bpp / 3);
 
 	dsc_joiner_max_bpp = get_max_compressed_bpp_with_joiner(i915, adjusted_mode->clock,
 								adjusted_mode->hdisplay,
@@ -2255,8 +2250,8 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	int pipe_bpp, forced_bpp;
-	int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
-	int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
+	int dsc_min_bpp;
+	int dsc_max_bpp;
 
 	forced_bpp = intel_dp_force_dsc_pipe_bpp(intel_dp, limits);
 
@@ -2276,16 +2271,12 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	pipe_config->port_clock = limits->max_rate;
 	pipe_config->lane_count = limits->max_lane_count;
 
-	dsc_src_min_bpp = dsc_src_min_compressed_bpp();
-	dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(pipe_config);
-	dsc_min_bpp = max(dsc_src_min_bpp, dsc_sink_min_bpp);
-	dsc_min_bpp = max(dsc_min_bpp, fxp_q4_to_int_roundup(limits->link.min_bpp_x16));
+	dsc_min_bpp = fxp_q4_to_int_roundup(limits->link.min_bpp_x16);
+
+	dsc_max_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
+							   pipe_config,
+							   pipe_bpp / 3);
 
-	dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
-	dsc_sink_max_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
-								pipe_config,
-								pipe_bpp / 3);
-	dsc_max_bpp = dsc_sink_max_bpp ? min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
 	dsc_max_bpp = min(dsc_max_bpp, fxp_q4_to_int(limits->link.max_bpp_x16));
 
 	/* Compressed BPP should be less than the Input DSC bpp */
@@ -2428,6 +2419,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 		&crtc_state->hw.adjusted_mode;
 	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	const struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	struct intel_connector *connector = intel_dp->attached_connector;
 	int max_link_bpp_x16;
 
 	max_link_bpp_x16 = min(crtc_state->max_link_bpp_x16,
@@ -2441,12 +2433,22 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 
 		limits->link.min_bpp_x16 = fxp_q4_from_int(limits->pipe.min_bpp);
 	} else {
-		/*
-		 * TODO: set the DSC link limits already here, atm these are
-		 * initialized only later in intel_edp_dsc_compute_pipe_bpp() /
-		 * intel_dp_dsc_compute_pipe_bpp()
-		 */
-		limits->link.min_bpp_x16 = 0;
+		int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
+		int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
+
+		dsc_src_min_bpp = dsc_src_min_compressed_bpp();
+		dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(crtc_state);
+		dsc_min_bpp = max(dsc_src_min_bpp, dsc_sink_min_bpp);
+		limits->link.min_bpp_x16 = fxp_q4_from_int(dsc_min_bpp);
+
+		dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
+		dsc_sink_max_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
+									crtc_state,
+									limits->pipe.max_bpp / 3);
+		dsc_max_bpp = dsc_sink_max_bpp ?
+			      min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
+
+		max_link_bpp_x16 = min(max_link_bpp_x16, fxp_q4_from_int(dsc_max_bpp));
 	}
 
 	limits->link.max_bpp_x16 = max_link_bpp_x16;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 8bd0bb4ec0e1..d4ca00ba49b4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -145,9 +145,9 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 					enum intel_output_format output_format,
 					u32 pipe_bpp,
 					u32 timeslots);
-int intel_dp_dsc_sink_min_compressed_bpp(struct intel_crtc_state *pipe_config);
+int intel_dp_dsc_sink_min_compressed_bpp(const struct intel_crtc_state *pipe_config);
 int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector,
-					 struct intel_crtc_state *pipe_config,
+					 const struct intel_crtc_state *pipe_config,
 					 int bpc);
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
-- 
2.45.2

