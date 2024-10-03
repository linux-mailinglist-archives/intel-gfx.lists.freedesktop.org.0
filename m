Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA60498ED2E
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 12:41:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DE4A10E7F4;
	Thu,  3 Oct 2024 10:41:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YvH2/Lx+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E154810E7E8;
 Thu,  3 Oct 2024 10:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727952115; x=1759488115;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gBTpM4ZAgXoLahMkerZR/PwwpgtQXTLwFwYYJNbiIuI=;
 b=YvH2/Lx+cNJB4ht88ljrFJWUoaWPpVdUC7ouV3e/VaHHTgBXM3/xij15
 flximWWyB9yWtO7nUraNWMeGRnLrW2PGPa4jB/8iCu+8EkVLT4wANoQiu
 3R+XJM0ULVkMk4elbzRJmhBcwI60J1ychERXH1Qfh+iRidWgY56Kbxt0R
 RlBgQB1l9rPzZstJNU4AY0CnSdAqyKyS2BX5cxp7m2cXsRmVjAq1YaM6z
 +J7KtSuvz4W1RgI5VtUEXpHooJRyFIPua1mbf1bJ9lFYLKhGNWpbS6yCW
 qzHwq80SkrG669Tgi28raLkc6q2OKcRFYvSiCBBLnVazRLL9HIijzLxQu Q==;
X-CSE-ConnectionGUID: MF3bu7jsSBukjvxNSIENsQ==
X-CSE-MsgGUID: nMVfL2RvT8SusaBflBk/OA==
X-IronPort-AV: E=McAfee;i="6700,10204,11213"; a="27270783"
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="27270783"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 03:41:55 -0700
X-CSE-ConnectionGUID: YaiRrUlZQsCnpdldAnodow==
X-CSE-MsgGUID: x2MiqRZuRBKPDnPxj3Mzuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="105142474"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 03:41:52 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com
Subject: [PATCH 5/7] drm/i915/dp: Refactor pipe_bpp limits with dsc
Date: Thu,  3 Oct 2024 16:13:41 +0530
Message-ID: <20241003104343.984060-6-ankit.k.nautiyal@intel.com>
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

With DSC there are additional limits for pipe_bpp. Currently these are
scattered in different places.
Instead set the limits->pipe.max/min_bpp in one place and use them
wherever required.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 43 ++++++++++---------------
 1 file changed, 17 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 46f3b680afe9..55ee438a4fec 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2166,21 +2166,11 @@ int intel_dp_dsc_min_src_input_bpc(struct intel_display *display)
 }
 
 static
-bool is_dsc_pipe_bpp_sufficient(struct drm_i915_private *i915,
-				struct link_config_limits *limits,
+bool is_dsc_pipe_bpp_sufficient(struct link_config_limits *limits,
 				int pipe_bpp)
 {
-	struct intel_display *display = to_intel_display(&i915->drm);
-	int dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp, dsc_min_pipe_bpp;
-
-	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
-	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(display);
-
-	dsc_max_pipe_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
-	dsc_min_pipe_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
-
-	return pipe_bpp >= dsc_min_pipe_bpp &&
-	       pipe_bpp <= dsc_max_pipe_bpp;
+	return pipe_bpp >= limits->pipe.min_bpp &&
+	       pipe_bpp <= limits->pipe.max_bpp;
 }
 
 static
@@ -2195,7 +2185,7 @@ int intel_dp_force_dsc_pipe_bpp(struct intel_dp *intel_dp,
 
 	forced_bpp = intel_dp->force_dsc_bpc * 3;
 
-	if (is_dsc_pipe_bpp_sufficient(i915, limits, forced_bpp)) {
+	if (is_dsc_pipe_bpp_sufficient(limits, forced_bpp)) {
 		drm_dbg_kms(&i915->drm, "Input DSC BPC forced to %d\n", intel_dp->force_dsc_bpc);
 		return forced_bpp;
 	}
@@ -2212,11 +2202,10 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 					 struct link_config_limits *limits,
 					 int timeslots)
 {
-	struct intel_display *display = to_intel_display(intel_dp);
 	const struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
-	int dsc_max_bpc, dsc_max_bpp;
-	int dsc_min_bpc, dsc_min_bpp;
+	int dsc_max_bpp;
+	int dsc_min_bpp;
 	u8 dsc_bpc[3] = {};
 	int forced_bpp, pipe_bpp;
 	int num_bpc, i, ret;
@@ -2232,14 +2221,8 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 		}
 	}
 
-	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
-	if (!dsc_max_bpc)
-		return -EINVAL;
-
-	dsc_max_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
-
-	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(display);
-	dsc_min_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
+	dsc_max_bpp = limits->pipe.max_bpp;
+	dsc_min_bpp = limits->pipe.min_bpp;
 
 	/*
 	 * Get the maximum DSC bpc that will be supported by any valid
@@ -2284,7 +2267,7 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 
 		/* For eDP use max bpp that can be supported with DSC. */
 		pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, max_bpc);
-		if (!is_dsc_pipe_bpp_sufficient(i915, limits, pipe_bpp)) {
+		if (!is_dsc_pipe_bpp_sufficient(limits, pipe_bpp)) {
 			drm_dbg_kms(&i915->drm,
 				    "Computed BPC is not in DSC BPC limits\n");
 			return -EINVAL;
@@ -2502,6 +2485,14 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 	limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
 	limits->pipe.max_bpp = intel_dp_max_bpp(intel_dp, crtc_state,
 						     respect_downstream_limits);
+	if (dsc) {
+		struct intel_display *display = to_intel_display(intel_dp);
+		int dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(display);
+		int dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
+
+		limits->pipe.max_bpp = min(limits->pipe.max_bpp, dsc_max_bpc * 3);
+		limits->pipe.min_bpp = max(limits->pipe.min_bpp, dsc_min_bpc * 3);
+	}
 
 	if (intel_dp->use_max_params) {
 		/*
-- 
2.45.2

