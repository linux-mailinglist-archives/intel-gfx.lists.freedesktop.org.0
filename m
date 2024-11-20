Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6E89D3876
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 11:35:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20F7910E6FE;
	Wed, 20 Nov 2024 10:35:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GlykRDNd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F8B210E6FB;
 Wed, 20 Nov 2024 10:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732098950; x=1763634950;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WFKRYIdIO3l3ZZsU3VjtU5P8Hc31lUJoJBjCz1wy8ls=;
 b=GlykRDNdjHzvIJGJmRjwGFGWvs4PxmUrb9oC3x38bjOgHni8UXw5jvCd
 WrR5aPBtyf2qHo1X6nP/dQM/9t9owCHbm8lhHeun/0ayZiXTerfud7YTd
 yAFr00nAcTYBCWB1q1WG+3ZcCEIVThDmNg9miCplnMg0GuAl2klmYxk5r
 keMWehV/Tomek0QN7GsWoxN/ZZ/0OQreLRYvpeMq6rvPDtVlJq2GszeVs
 lq8mbi5ihXC9nvteLpewhBskRXksvIzSiFO6yzw8wFI/uGJXLDZW0IGuT
 /c2MYfu6H4/tFzsi2iO5EhNjQXzqwmcgAlgPcHEy96CTuId0Cr+9+NFZr g==;
X-CSE-ConnectionGUID: NWQbOnHUQY60zLp7TMtI/g==
X-CSE-MsgGUID: j1YS9bFMTg2HBC2XRIk1HQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="31520072"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="31520072"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 02:35:50 -0800
X-CSE-ConnectionGUID: V5LQVnwFSn+1q2aWrkfMMw==
X-CSE-MsgGUID: uZtqj1UETnGRZ9LO0J7WBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="89674118"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 02:35:48 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 12/12] drm/i915/dp: Set the DSC link limits
 intel_dp_compute_config_link_bpp_limits
Date: Wed, 20 Nov 2024 16:08:02 +0530
Message-ID: <20241120103802.134295-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241120103802.134295-1-ankit.k.nautiyal@intel.com>
References: <20241120103802.134295-1-ankit.k.nautiyal@intel.com>
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

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 60 +++++++++++----------
 drivers/gpu/drm/i915/display/intel_dp.h     |  1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  1 +
 3 files changed, 34 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1adde61c5b76..21cde5487e1a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2161,21 +2161,16 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
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
@@ -2286,8 +2281,8 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	int pipe_bpp, forced_bpp;
-	int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
-	int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
+	int dsc_min_bpp;
+	int dsc_max_bpp;
 
 	forced_bpp = intel_dp_force_dsc_pipe_bpp(intel_dp, limits);
 
@@ -2307,16 +2302,12 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
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
@@ -2455,6 +2446,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 /**
  * intel_dp_compute_config_link_bpp_limits - compute output link bpp limits
  * @intel_dp: intel DP
+ * @connector: intel connector
  * @crtc_state: crtc state
  * @dsc: DSC compression mode
  * @limits: link configuration limits
@@ -2466,6 +2458,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
  */
 bool
 intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
+					const struct intel_connector *connector,
 					const struct intel_crtc_state *crtc_state,
 					bool dsc,
 					struct link_config_limits *limits)
@@ -2488,12 +2481,22 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 
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
@@ -2566,6 +2569,7 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 	intel_dp_test_compute_config(intel_dp, crtc_state, limits);
 
 	return intel_dp_compute_config_link_bpp_limits(intel_dp,
+						       intel_dp->attached_connector,
 						       crtc_state,
 						       dsc,
 						       limits);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index eac517c1d445..5981ab36fa8d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -197,6 +197,7 @@ int intel_dp_output_bpp(enum intel_output_format output_format, int bpp);
 
 bool
 intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
+					const struct intel_connector *connector,
 					const struct intel_crtc_state *crtc_state,
 					bool dsc,
 					struct link_config_limits *limits);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 78cb65f7cb2b..356c328aba72 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -576,6 +576,7 @@ mst_stream_compute_config_limits(struct intel_dp *intel_dp,
 		intel_dp_dsc_compute_pipe_bpp_limits(intel_dp, limits);
 
 	if (!intel_dp_compute_config_link_bpp_limits(intel_dp,
+						     connector,
 						     crtc_state,
 						     dsc,
 						     limits))
-- 
2.45.2

