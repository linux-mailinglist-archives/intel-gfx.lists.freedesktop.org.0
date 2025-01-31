Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1D2A23DF3
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 13:51:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC2BE10EAA3;
	Fri, 31 Jan 2025 12:51:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X8bgPONM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1DF110EAA2;
 Fri, 31 Jan 2025 12:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738327879; x=1769863879;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yknyMn2k95Mga8M+wQgGuoQDHJJRkzTbeByc1yZSo2I=;
 b=X8bgPONMF6RuUUSjKz6WhjpJwxAreaH5mMlw5CnJMEbSv6DnydmMr5bY
 0GSZwtbjpj6v84HN9LFxJwJ5N9vUA3K3CZ+7fWM8sNPRQbl/VQVp2aj0d
 wWWdLhw9dkkyRmVt+5AiG0OUyRNEnFDuAxwHBigA+spjOM6VgAfMsHWq/
 BgGsxB7NFDzxG3NyZ9RKmO4t+mKRI5HPUjA9aAhdDCqZPrXGZd7WXzBdD
 /3xbuFj/82svQMqdPIKwcEwiZtkUAkanxRUwrDFooEJv9UGqCEL3Y4z/S
 s30N04AwmmrqDc2H0DmqJxSrU+UoNxPhfSuAOYobho0ETgwIvyYtL4YE3 w==;
X-CSE-ConnectionGUID: +4K/dWHRTvCwbt5ixovxqQ==
X-CSE-MsgGUID: LFJoOwWbT/6Mnn4PuMuKYw==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="42645188"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="42645188"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 04:51:19 -0800
X-CSE-ConnectionGUID: snJbsmZASfycsKYnIDerzA==
X-CSE-MsgGUID: kfBcsWRdThami5GO9/Gllw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="110194476"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.174])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 04:51:17 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 12/14] drm/i915/dp: Drop compute_pipe_bpp parameter from
 intel_dp_dsc_compute_config()
Date: Fri, 31 Jan 2025 14:50:05 +0200
Message-Id: <82a4b84711b1416bb3382f5d8383fe65ab88159a.1738327620.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1738327620.git.jani.nikula@intel.com>
References: <cover.1738327620.git.jani.nikula@intel.com>
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

The parameter is basically just a proxy for whether the function is
being called for DP SST or DP MST. We can figure this out from crtc
state.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 14 ++++++--------
 drivers/gpu/drm/i915/display/intel_dp.h     |  3 +--
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 +-
 3 files changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7c6d277729d0..0f1fa4afb808 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2307,8 +2307,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				struct intel_crtc_state *pipe_config,
 				struct drm_connector_state *conn_state,
 				const struct link_config_limits *limits,
-				int timeslots,
-				bool compute_pipe_bpp)
+				int timeslots)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	const struct intel_connector *connector =
@@ -2316,6 +2315,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	const struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
 	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
+	bool is_mst = intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DP_MST);
 	int ret;
 
 	intel_dp_fec_compute_config(intel_dp, pipe_config);
@@ -2324,12 +2324,10 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		return -EINVAL;
 
 	/*
-	 * compute pipe bpp is set to false for DP MST DSC case
-	 * and compressed_bpp is calculated same time once
-	 * vpci timeslots are allocated, because overall bpp
-	 * calculation procedure is bit different for MST case.
+	 * Link parameters, pipe bpp and compressed bpp have already been
+	 * figured out for DP MST DSC.
 	 */
-	if (compute_pipe_bpp) {
+	if (!is_mst) {
 		if (intel_dp_is_edp(intel_dp))
 			ret = intel_edp_dsc_compute_pipe_bpp(intel_dp, pipe_config,
 							     conn_state, limits);
@@ -2640,7 +2638,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 			return -EINVAL;
 
 		ret = intel_dp_dsc_compute_config(intel_dp, pipe_config,
-						  conn_state, &limits, 64, true);
+						  conn_state, &limits, 64);
 		if (ret < 0)
 			return ret;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index ffc27f8ad226..9189db4c2594 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -76,8 +76,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				struct intel_crtc_state *pipe_config,
 				struct drm_connector_state *conn_state,
 				const struct link_config_limits *limits,
-				int timeslots,
-				bool recompute_pipe_bpp);
+				int timeslots);
 void intel_dp_audio_compute_config(struct intel_encoder *encoder,
 				   struct intel_crtc_state *pipe_config,
 				   struct drm_connector_state *conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 60b003bcd1ee..868d0948ca27 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -657,7 +657,7 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 
 		ret = intel_dp_dsc_compute_config(intel_dp, pipe_config,
 						  conn_state, &limits,
-						  pipe_config->dp_m_n.tu, false);
+						  pipe_config->dp_m_n.tu);
 	}
 
 	if (ret)
-- 
2.39.5

