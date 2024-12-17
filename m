Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C17E79F478B
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 10:30:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5907210E061;
	Tue, 17 Dec 2024 09:30:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="auvv1r/x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD7A010E061;
 Tue, 17 Dec 2024 09:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734427813; x=1765963813;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I0XsuJktOzLdAGo0Zyem1BW/YiJUJqSbsssSPzUI+Sk=;
 b=auvv1r/x3xDnw6iIlXXUU7x9HfoZ/Ff0pQ1VBmm5T2LzEptqd7n3Ulff
 UAnhBzkYqGNejuq2uczorqatkwLijoXhvTfoRl3xygHmvgw4vc+jMKZuR
 ddItZmkYWoYHZ7B5QLeS4JemlWWnZxn/ylC0tT7Gapye+4V3vRSy1tycV
 uPvX2SgxYz3wG/Pl277Bf3c2VCHo5FEyUdxaT5FRNe9HuZmKy5SW1Punu
 5IJWuN9U8eIr9aE14TZWiyZgVePAD/SIGezlxm4/ZSCB4GZUu5lHx7cXB
 Lpcq3l5Hq4mAH6sBN7hvJhngkCq9p6avwaNBc8KWKe7hcoGIUF/N7eJUi w==;
X-CSE-ConnectionGUID: NsvbR54AR2enEPlFFjOBsA==
X-CSE-MsgGUID: ll3QumqWSCKPEOGVPPIH5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="34976189"
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="34976189"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 01:30:13 -0800
X-CSE-ConnectionGUID: ygjYAjNdQC6O11nXTCTJug==
X-CSE-MsgGUID: rh2yYLKmT3KffLpXDhn3JQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="98052484"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 01:30:11 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 13/14] drm/i915/dp: Set the DSC link limits in
 intel_dp_compute_config_link_bpp_limits
Date: Tue, 17 Dec 2024 15:02:43 +0530
Message-ID: <20241217093244.3938132-14-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241217093244.3938132-1-ankit.k.nautiyal@intel.com>
References: <20241217093244.3938132-1-ankit.k.nautiyal@intel.com>
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

v2: Add argument intel_connector to the helper to get correct connector
for DP MST. (Imre)

v3: Remove redundant calls to intel_dp_dsc_sink_max_compressed_bpp as
its already accounted while setting link bpp limits.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 58 +++++++++++--------------
 1 file changed, 26 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f694895d223e..0d74adae2ec9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2157,27 +2157,17 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
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
-
-	dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
-	dsc_sink_max_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
-								pipe_config,
-								pipe_bpp / 3);
-	dsc_max_bpp = dsc_sink_max_bpp ? min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
+	dsc_min_bpp = fxp_q4_to_int_roundup(limits->link.min_bpp_x16);
 
 	dsc_joiner_max_bpp = get_max_compressed_bpp_with_joiner(display, adjusted_mode->clock,
 								adjusted_mode->hdisplay,
 								num_joined_pipes);
-	dsc_max_bpp = min(dsc_max_bpp, dsc_joiner_max_bpp);
-	dsc_max_bpp = min(dsc_max_bpp, fxp_q4_to_int(limits->link.max_bpp_x16));
+	dsc_max_bpp = min(dsc_joiner_max_bpp, fxp_q4_to_int(limits->link.max_bpp_x16));
 
 	if (DISPLAY_VER(display) >= 13)
 		return xelpd_dsc_compute_link_config(intel_dp, connector, pipe_config, limits,
@@ -2284,8 +2274,8 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	int pipe_bpp, forced_bpp;
-	int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
-	int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
+	int dsc_min_bpp;
+	int dsc_max_bpp;
 
 	forced_bpp = intel_dp_force_dsc_pipe_bpp(intel_dp, limits);
 
@@ -2305,17 +2295,9 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	pipe_config->port_clock = limits->max_rate;
 	pipe_config->lane_count = limits->max_lane_count;
 
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
-	dsc_max_bpp = min(dsc_max_bpp, fxp_q4_to_int(limits->link.max_bpp_x16));
+	dsc_max_bpp = fxp_q4_to_int(limits->link.max_bpp_x16);
 
 	/* Compressed BPP should be less than the Input DSC bpp */
 	dsc_max_bpp = min(dsc_max_bpp, pipe_bpp - 1);
@@ -2456,6 +2438,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
  */
 static bool
 intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
+					const struct intel_connector *connector,
 					const struct intel_crtc_state *crtc_state,
 					bool dsc,
 					struct link_config_limits *limits)
@@ -2478,12 +2461,22 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 
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
@@ -2572,6 +2565,7 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 	intel_dp_test_compute_config(intel_dp, crtc_state, limits);
 
 	return intel_dp_compute_config_link_bpp_limits(intel_dp,
+						       intel_dp->attached_connector,
 						       crtc_state,
 						       dsc,
 						       limits);
-- 
2.45.2

