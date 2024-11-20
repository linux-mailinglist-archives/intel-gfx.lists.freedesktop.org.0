Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B20099D3877
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 11:35:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3AA110E6FA;
	Wed, 20 Nov 2024 10:35:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vc3sRwqa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D384D10E6F9;
 Wed, 20 Nov 2024 10:35:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732098941; x=1763634941;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fgSV/xvfFtFKN8p30zEwwggg7llW3iY7Xmv+9alzXnU=;
 b=Vc3sRwqazJYdOk/0PWQm7B0Pnzs0zXa+Pi/9lVzV75ZPQFV0Zl6dCWpa
 maI1AbEULB8kB/ZgKNBBcVCXrf9gIB1JriCwoEhxuEOk7OO8bgR+nutJw
 eAQKcCcIyABX1yFAd2/yHWTXaKoBaDX3og62ROgSlNcDnNXc37ApRChWg
 g/aA0GFv2caz4pX+l0877sGXNLxQGY8LyEM/aRp/9rPppysRK22ytNQOx
 NhzQ7zDnEXIAOVlpAAOTG2BFaVT/xYO8IpVDLGKiHsEGANVyb4uz6OcoI
 NT6+oxXtCZI+nDN9ntwu6zkK6G0sCDYxLmAs8iaf15uMXCRiQ3gSZb2ax A==;
X-CSE-ConnectionGUID: i67GABZyRsiD4s1sUhjfcA==
X-CSE-MsgGUID: gEVdbZTgRuGNQNt7Djml7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="31520059"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="31520059"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 02:35:41 -0800
X-CSE-ConnectionGUID: eSgHnb0rSy+7c/aQqJiffA==
X-CSE-MsgGUID: XN/ocErpTTCDoaRJiT/Reg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="89674095"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 02:35:40 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 08/12] drm/i915/dp: Refactor pipe_bpp limits with dsc
Date: Wed, 20 Nov 2024 16:07:58 +0530
Message-ID: <20241120103802.134295-9-ankit.k.nautiyal@intel.com>
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

With DSC there are additional limits for pipe_bpp. Currently these are
scattered in different places.
Instead set the limits->pipe.max/min_bpp in one place and use them
wherever required.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 49 ++++++++++++-------------
 1 file changed, 23 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0af58ddbe69a..b6d5e8eb75f5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2197,21 +2197,11 @@ int intel_dp_dsc_min_src_input_bpc(struct intel_display *display)
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
@@ -2226,7 +2216,7 @@ int intel_dp_force_dsc_pipe_bpp(struct intel_dp *intel_dp,
 
 	forced_bpp = intel_dp->force_dsc_bpc * 3;
 
-	if (is_dsc_pipe_bpp_sufficient(i915, limits, forced_bpp)) {
+	if (is_dsc_pipe_bpp_sufficient(limits, forced_bpp)) {
 		drm_dbg_kms(&i915->drm, "Input DSC BPC forced to %d\n", intel_dp->force_dsc_bpc);
 		return forced_bpp;
 	}
@@ -2243,11 +2233,10 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
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
@@ -2263,14 +2252,8 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
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
@@ -2315,7 +2298,7 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 
 		/* For eDP use max bpp that can be supported with DSC. */
 		pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, max_bpc);
-		if (!is_dsc_pipe_bpp_sufficient(i915, limits, pipe_bpp)) {
+		if (!is_dsc_pipe_bpp_sufficient(limits, pipe_bpp)) {
 			drm_dbg_kms(&i915->drm,
 				    "Computed BPC is not in DSC BPC limits\n");
 			return -EINVAL;
@@ -2529,6 +2512,18 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 	return true;
 }
 
+static void
+intel_dp_dsc_compute_pipe_bpp_limits(struct intel_dp *intel_dp,
+				     struct link_config_limits *limits)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	int dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(display);
+	int dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
+
+	limits->pipe.max_bpp = min(limits->pipe.max_bpp, dsc_max_bpc * 3);
+	limits->pipe.min_bpp = max(limits->pipe.min_bpp, dsc_min_bpc * 3);
+}
+
 static bool
 intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 			       struct intel_crtc_state *crtc_state,
@@ -2549,6 +2544,8 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 	limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
 	limits->pipe.max_bpp = intel_dp_max_bpp(intel_dp, crtc_state,
 						     respect_downstream_limits);
+	if (dsc)
+		intel_dp_dsc_compute_pipe_bpp_limits(intel_dp, limits);
 
 	if (intel_dp->use_max_params) {
 		/*
-- 
2.45.2

