Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F38098ED2C
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 12:41:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BD7910E7F5;
	Thu,  3 Oct 2024 10:41:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Py08l8ZD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C102010E7F2;
 Thu,  3 Oct 2024 10:41:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727952110; x=1759488110;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BxVUHE4GAi9s/XQcowsXy8fITERVm/+XGY1AeptsCc4=;
 b=Py08l8ZDGfDhoH6iG1+o0tlLLzouIsy/cOPrrIazh/wUhy3SCwTf0o8P
 mz3utztIlkYn/RkF/qILd37jMbHbQ5LDeTe5qoAegDxonwknbPhGOl7kA
 v6VwFgmoJCT8I4Sxp9Hw8AlpxPCt0rhqQ1+F65apPlk/gOXWP8kEXO9U5
 +yN9XttyZikrxHEmbfeSpH9TvAcfsgT8Z5J1ztJmPLkje4Kfnhg0iG6HE
 IPrR3A6rrvrHqHayhe9Ug/h9/hld9Z2+Nv6khLovJoXtXcOLdMMgwIZ1v
 phtW4SbPGe6S99WSOM5Infi9e8PuNLcfrzuH77pMD58q4pHqeOKULQxcF w==;
X-CSE-ConnectionGUID: ibJl7gL8RNiGa4XYcFlHkA==
X-CSE-MsgGUID: /dcNNZMRSpuhXVM9fyYplw==
X-IronPort-AV: E=McAfee;i="6700,10204,11213"; a="27270778"
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="27270778"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 03:41:50 -0700
X-CSE-ConnectionGUID: 9Ophf5tmReaHZkLhk/x6xw==
X-CSE-MsgGUID: T7lqKUNAR1Od4bABFUtWzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="105142454"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 03:41:48 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com
Subject: [PATCH 3/7] drm/i915/dp_mst: Use helpers to get dsc min/max input bpc
Date: Thu,  3 Oct 2024 16:13:39 +0530
Message-ID: <20241003104343.984060-4-ankit.k.nautiyal@intel.com>
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

Use helpers for source min/max input bpc with DSC.
While at it, make them return int instead of u8 and use struct
intel_display.

v2: Make the helpers return int instead of u8. (Jani)
v3: Use min/max macros instead of min_t/max_t. (Jani)
v4: Use struct intel_display.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 29 ++++++++++-----------
 drivers/gpu/drm/i915/display/intel_dp.h     |  3 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 14 +++++-----
 3 files changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index cf09698b0ee9..b553b24604e1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1763,16 +1763,15 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 	return -EINVAL;
 }
 
-static
-int intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
+int intel_dp_dsc_max_src_input_bpc(struct intel_display *display)
 {
-	if (!HAS_DSC(i915))
+	if (!HAS_DSC(display))
 		return 0;
 
 	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
-	if (DISPLAY_VER(i915) >= 12)
+	if (DISPLAY_VER(display) >= 12)
 		return 12;
-	if (DISPLAY_VER(i915) == 11)
+	if (DISPLAY_VER(display) == 11)
 		return 10;
 
 	return 0;
@@ -1781,12 +1780,12 @@ int intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
 int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
 				 u8 max_req_bpc)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	int i, num_bpc;
 	u8 dsc_bpc[3] = {};
 	int dsc_max_bpc;
 
-	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(i915);
+	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
 
 	if (!dsc_max_bpc)
 		return dsc_max_bpc;
@@ -2160,11 +2159,10 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 					   dsc_max_bpp, dsc_min_bpp, pipe_bpp, timeslots);
 }
 
-static
-int intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915)
+int intel_dp_dsc_min_src_input_bpc(struct intel_display *display)
 {
 	/* Min DSC Input BPC for ICL+ is 8 */
-	return HAS_DSC(i915) ? 8 : 0;
+	return HAS_DSC(display) ? 8 : 0;
 }
 
 static
@@ -2173,10 +2171,11 @@ bool is_dsc_pipe_bpp_sufficient(struct drm_i915_private *i915,
 				struct link_config_limits *limits,
 				int pipe_bpp)
 {
+	struct intel_display *display = to_intel_display(&i915->drm);
 	int dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp, dsc_min_pipe_bpp;
 
-	dsc_max_bpc = min(intel_dp_dsc_max_src_input_bpc(i915), conn_state->max_requested_bpc);
-	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
+	dsc_max_bpc = min(intel_dp_dsc_max_src_input_bpc(display), conn_state->max_requested_bpc);
+	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(display);
 
 	dsc_max_pipe_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
 	dsc_min_pipe_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
@@ -2215,7 +2214,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 					 struct link_config_limits *limits,
 					 int timeslots)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	const struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	int max_req_bpc = conn_state->max_requested_bpc;
@@ -2236,14 +2235,14 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 		}
 	}
 
-	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(i915);
+	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
 	if (!dsc_max_bpc)
 		return -EINVAL;
 
 	dsc_max_bpc = min(dsc_max_bpc, max_req_bpc);
 	dsc_max_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
 
-	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
+	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(display);
 	dsc_min_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 53d1217800ef..8bd0bb4ec0e1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -20,6 +20,7 @@ struct intel_atomic_state;
 struct intel_connector;
 struct intel_crtc_state;
 struct intel_digital_port;
+struct intel_display;
 struct intel_dp;
 struct intel_encoder;
 
@@ -205,5 +206,7 @@ bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
 				u8 lane_count);
 bool intel_dp_has_connector(struct intel_dp *intel_dp,
 			    const struct drm_connector_state *conn_state);
+int intel_dp_dsc_max_src_input_bpc(struct intel_display *display);
+int intel_dp_dsc_min_src_input_bpc(struct intel_display *display);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 4765bda154c1..9453f3531910 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -328,6 +328,7 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
 						struct drm_connector_state *conn_state,
 						struct link_config_limits *limits)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
@@ -335,17 +336,14 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
 	int i, num_bpc;
 	u8 dsc_bpc[3] = {};
 	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
-	u8 dsc_max_bpc;
+	int dsc_max_bpc, dsc_min_bpc;
 	int min_compressed_bpp, max_compressed_bpp;
 
-	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
-	if (DISPLAY_VER(i915) >= 12)
-		dsc_max_bpc = min_t(u8, 12, conn_state->max_requested_bpc);
-	else
-		dsc_max_bpc = min_t(u8, 10, conn_state->max_requested_bpc);
+	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
+	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(display);
 
-	max_bpp = min_t(u8, dsc_max_bpc * 3, limits->pipe.max_bpp);
-	min_bpp = limits->pipe.min_bpp;
+	max_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
+	min_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
 
 	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
 						       dsc_bpc);
-- 
2.45.2

