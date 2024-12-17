Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 290499F4786
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 10:30:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08AE710E894;
	Tue, 17 Dec 2024 09:30:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KSiJ6XPj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E217F10E8A0;
 Tue, 17 Dec 2024 09:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734427805; x=1765963805;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8wa9IVim7iX73Ohq+zWQ50oittqWjAtPbHsWlypg7dY=;
 b=KSiJ6XPjo/CHlGZap1KqKzxqkm5BuPYNf0gu49Jas4zupdlYxpXVK4lO
 30cCeXn0pVKpBCL46rvs2qv2BLRgU76rBtDokrIynolLj3yoRbAa9WQ4u
 Z9u4bgaF5T5amwVEVIOeGi1y6q9O564v70EGqfvsmUIMv2wytj+RLjvEE
 tfDGhWu1ESDA67lDZU7V4asZwPH1QoS6chkHMv4L+6bzk1ae9ehmsDXBt
 T+CH6u/dVx1Zpy2Pqg1qR6fN9tc8Li8PEWYyhECtq+w5FmiMmnP51lM7R
 x46sJ1uPhNTAv9xFefRovhLxEjdoN1SP7kcVN7dsZJtkxts+O0ueoUTom Q==;
X-CSE-ConnectionGUID: jAT4htJWRFeBf0dBAfkWDQ==
X-CSE-MsgGUID: +MpWTQKCReKAHY18CZGFpw==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="34976168"
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="34976168"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 01:30:05 -0800
X-CSE-ConnectionGUID: tKFqVz96QZuAIwoE7mgC1w==
X-CSE-MsgGUID: eubykR/JR9uekLl9VriSWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="98052456"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 01:30:03 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 09/14] drm/i915/dp: Refactor pipe_bpp limits with dsc
Date: Tue, 17 Dec 2024 15:02:39 +0530
Message-ID: <20241217093244.3938132-10-ankit.k.nautiyal@intel.com>
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

With DSC there are additional limits for pipe_bpp. Currently these are
scattered in different places.
Instead set the limits->pipe.max/min_bpp in one place and use them
wherever required.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 49 ++++++++++++-------------
 1 file changed, 24 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ab7d9d43712e..4ce7e5413cf7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2193,20 +2193,11 @@ int intel_dp_dsc_min_src_input_bpc(void)
 }
 
 static
-bool is_dsc_pipe_bpp_sufficient(struct intel_display *display,
-				struct link_config_limits *limits,
+bool is_dsc_pipe_bpp_sufficient(struct link_config_limits *limits,
 				int pipe_bpp)
 {
-	int dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp, dsc_min_pipe_bpp;
-
-	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
-	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc();
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
@@ -2221,7 +2212,7 @@ int intel_dp_force_dsc_pipe_bpp(struct intel_dp *intel_dp,
 
 	forced_bpp = intel_dp->force_dsc_bpc * 3;
 
-	if (is_dsc_pipe_bpp_sufficient(display, limits, forced_bpp)) {
+	if (is_dsc_pipe_bpp_sufficient(limits, forced_bpp)) {
 		drm_dbg_kms(display->drm, "Input DSC BPC forced to %d\n",
 			    intel_dp->force_dsc_bpc);
 		return forced_bpp;
@@ -2240,11 +2231,10 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
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
@@ -2260,14 +2250,8 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 		}
 	}
 
-	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
-	if (!dsc_max_bpc)
-		return -EINVAL;
-
-	dsc_max_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
-
-	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc();
-	dsc_min_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
+	dsc_max_bpp = limits->pipe.max_bpp;
+	dsc_min_bpp = limits->pipe.min_bpp;
 
 	/*
 	 * Get the maximum DSC bpc that will be supported by any valid
@@ -2312,7 +2296,7 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 
 		/* For eDP use max bpp that can be supported with DSC. */
 		pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, max_bpc);
-		if (!is_dsc_pipe_bpp_sufficient(display, limits, pipe_bpp)) {
+		if (!is_dsc_pipe_bpp_sufficient(limits, pipe_bpp)) {
 			drm_dbg_kms(display->drm,
 				    "Computed BPC is not in DSC BPC limits\n");
 			return -EINVAL;
@@ -2518,6 +2502,18 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 	return true;
 }
 
+static void
+intel_dp_dsc_compute_pipe_bpp_limits(struct intel_dp *intel_dp,
+				     struct link_config_limits *limits)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	int dsc_min_bpc = intel_dp_dsc_min_src_input_bpc();
+	int dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
+
+	limits->pipe.max_bpp = min(limits->pipe.max_bpp, dsc_max_bpc * 3);
+	limits->pipe.min_bpp = max(limits->pipe.min_bpp, dsc_min_bpc * 3);
+}
+
 bool
 intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 			       struct intel_crtc_state *crtc_state,
@@ -2554,6 +2550,9 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 							respect_downstream_limits);
 	}
 
+	if (dsc)
+		intel_dp_dsc_compute_pipe_bpp_limits(intel_dp, limits);
+
 	if (is_mst || intel_dp->use_max_params) {
 		/*
 		 * For MST we always configure max link bw - the spec doesn't
-- 
2.45.2

