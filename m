Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BEC4A21F87
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 15:46:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0430010E80B;
	Wed, 29 Jan 2025 14:46:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hjpbl6CO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B180310E807;
 Wed, 29 Jan 2025 14:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738162012; x=1769698012;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AmezEQygzWQosr2Pyv8MXblfBaPBWvf4mDTqiOmWU+g=;
 b=Hjpbl6COIKaPQFD9NUtwQWpQAOlQbiNxHR0BYCtFzJVnhIvK7mkQjg+H
 jWKHdcVxnDa5SVGjI4+OQieVbtym0tQAehCc1g9OiUcz3C220fIFSASpE
 XYHGcjdsd+S+gJF0nf+Mvh4j29wS1c5iWLkQ3FfPE8BCBmFuJsRYP1tbw
 ++igzNtml1N7e9e98Zz6cW7q8iluqNtXp+gc5wRukKJSuh+ChIn+sx+Od
 njRQNoh2nwLjaG2CqnNhdBLf3V3dhzGLUOsIMUthh9xDs+8eEuwK1sHrJ
 75xtkX3bvTp9G+U9SXgvVDalwNnW8LI9cjv3/Tt93KoJ7S40bauNCpKXu w==;
X-CSE-ConnectionGUID: J+eHnsZvR4eZM/n6aNRwPw==
X-CSE-MsgGUID: SJyX4lV8TRal5zVzHRHQow==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="64040582"
X-IronPort-AV: E=Sophos;i="6.13,243,1732608000"; d="scan'208";a="64040582"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 06:46:51 -0800
X-CSE-ConnectionGUID: xTSYQkvvTaej1XHSIwQv+g==
X-CSE-MsgGUID: uF5L/qWdQJCHLoBxNpK/ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113056983"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.235])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 06:46:49 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [PATCH 1/6] drm/i915/dp: constify struct link_config_limits pointers
Date: Wed, 29 Jan 2025 16:46:33 +0200
Message-Id: <6ab2f68eef7849aca18e82ad788e44e9f82b576e.1738161945.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1738161945.git.jani.nikula@intel.com>
References: <cover.1738161945.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

The limits get passed around, but are only modified in a few
places. Constify the pointers elsewhere so it's easier to follow where
they can be modified.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 18 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dp.h     |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  6 +++---
 3 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a286e5e31c4d..d367f9c2fa23 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1941,7 +1941,7 @@ static bool is_bw_sufficient_for_dsc_config(u16 compressed_bppx16, u32 link_cloc
 
 static int dsc_compute_link_config(struct intel_dp *intel_dp,
 				   struct intel_crtc_state *pipe_config,
-				   struct link_config_limits *limits,
+				   const struct link_config_limits *limits,
 				   u16 compressed_bppx16,
 				   int timeslots)
 {
@@ -2061,7 +2061,7 @@ static int dsc_src_max_compressed_bpp(struct intel_dp *intel_dp)
 static int
 icl_dsc_compute_link_config(struct intel_dp *intel_dp,
 			    struct intel_crtc_state *pipe_config,
-			    struct link_config_limits *limits,
+			    const struct link_config_limits *limits,
 			    int dsc_max_bpp,
 			    int dsc_min_bpp,
 			    int pipe_bpp,
@@ -2104,7 +2104,7 @@ static int
 xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
 			      const struct intel_connector *connector,
 			      struct intel_crtc_state *pipe_config,
-			      struct link_config_limits *limits,
+			      const struct link_config_limits *limits,
 			      int dsc_max_bpp,
 			      int dsc_min_bpp,
 			      int pipe_bpp,
@@ -2153,7 +2153,7 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
 static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 				      const struct intel_connector *connector,
 				      struct intel_crtc_state *pipe_config,
-				      struct link_config_limits *limits,
+				      const struct link_config_limits *limits,
 				      int pipe_bpp,
 				      int timeslots)
 {
@@ -2185,7 +2185,7 @@ int intel_dp_dsc_min_src_input_bpc(void)
 }
 
 static
-bool is_dsc_pipe_bpp_sufficient(struct link_config_limits *limits,
+bool is_dsc_pipe_bpp_sufficient(const struct link_config_limits *limits,
 				int pipe_bpp)
 {
 	return pipe_bpp >= limits->pipe.min_bpp &&
@@ -2194,7 +2194,7 @@ bool is_dsc_pipe_bpp_sufficient(struct link_config_limits *limits,
 
 static
 int intel_dp_force_dsc_pipe_bpp(struct intel_dp *intel_dp,
-				struct link_config_limits *limits)
+				const struct link_config_limits *limits)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	int forced_bpp;
@@ -2220,7 +2220,7 @@ int intel_dp_force_dsc_pipe_bpp(struct intel_dp *intel_dp,
 static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 					 struct intel_crtc_state *pipe_config,
 					 struct drm_connector_state *conn_state,
-					 struct link_config_limits *limits,
+					 const struct link_config_limits *limits,
 					 int timeslots)
 {
 	const struct intel_connector *connector =
@@ -2270,7 +2270,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 					  struct intel_crtc_state *pipe_config,
 					  struct drm_connector_state *conn_state,
-					  struct link_config_limits *limits)
+					  const struct link_config_limits *limits)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector =
@@ -2335,7 +2335,7 @@ static void intel_dp_fec_compute_config(struct intel_dp *intel_dp,
 int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				struct intel_crtc_state *pipe_config,
 				struct drm_connector_state *conn_state,
-				struct link_config_limits *limits,
+				const struct link_config_limits *limits,
 				int timeslots,
 				bool compute_pipe_bpp)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index ca49f0a05da5..ffc27f8ad226 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -75,7 +75,7 @@ int intel_dp_compute_config(struct intel_encoder *encoder,
 int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				struct intel_crtc_state *pipe_config,
 				struct drm_connector_state *conn_state,
-				struct link_config_limits *limits,
+				const struct link_config_limits *limits,
 				int timeslots,
 				bool recompute_pipe_bpp);
 void intel_dp_audio_compute_config(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index d58facf78aa9..2acc26aad6a0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -363,7 +363,7 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
 					      struct intel_crtc_state *crtc_state,
 					      int max_bpp, int min_bpp,
-					      struct link_config_limits *limits,
+					      const struct link_config_limits *limits,
 					      struct drm_connector_state *conn_state,
 					      int step, bool dsc)
 {
@@ -388,7 +388,7 @@ static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
 static int mst_stream_compute_link_config(struct intel_dp *intel_dp,
 					  struct intel_crtc_state *crtc_state,
 					  struct drm_connector_state *conn_state,
-					  struct link_config_limits *limits)
+					  const struct link_config_limits *limits)
 {
 	/*
 	 * FIXME: allocate the BW according to link_bpp, which in the case of
@@ -404,7 +404,7 @@ static int mst_stream_compute_link_config(struct intel_dp *intel_dp,
 static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 					      struct intel_crtc_state *crtc_state,
 					      struct drm_connector_state *conn_state,
-					      struct link_config_limits *limits)
+					      const struct link_config_limits *limits)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-- 
2.39.5

