Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4917B9E3674
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 10:24:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFB0E10EC97;
	Wed,  4 Dec 2024 09:24:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y8+JkvG+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B18DA10EC9F;
 Wed,  4 Dec 2024 09:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733304256; x=1764840256;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6nraEN7GAU6HcvOGqgi71Opyp46EpkiDBki3RIbMIsg=;
 b=Y8+JkvG+YdFIsTiBx7f1Egexcj60CP0GMDIJtnlYK5rhf22ovUcDN0t5
 benWo/j26bcIjMdqzOTFriKbIV4ALMKzQWrhlVR1KCFD8FDRmC+94N8QD
 OUDEwUGNqJgUpvlTQaHv0yu3lVI5tjEDkVBkDY+AAcyPpdLhNL0luZED6
 nXsdWPHddSc9N6QiWNDfvAFCdgDpVIgcPpzQbgzBE27ZwpGfCyo6RWXX2
 0ImoAmYCP4SlNHP07deVYM94Ydii6YIJKJbcMM/R/jcK7TaLBi0E/i8aQ
 57MW6UB79oyNYT5sfiVqzam/k+VfGVY04zHROPx2pmIEh7MBhtgoZD/9F Q==;
X-CSE-ConnectionGUID: czHvSIP5SPev3mC1xIDq2g==
X-CSE-MsgGUID: Nf0008qvQECZ9cgoVETgOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="44038470"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="44038470"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 01:24:16 -0800
X-CSE-ConnectionGUID: kQQbc6gJTA+qK1KSqAFsjg==
X-CSE-MsgGUID: UEeUZsHsRBqe+NeNhaangg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="93555165"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 01:24:14 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 10/14] drm/i915/dp: Refactor pipe_bpp limits with dsc
Date: Wed,  4 Dec 2024 14:56:38 +0530
Message-ID: <20241204092642.1835807-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
References: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
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
index ea1d1e7c0f45..fe0957e028bc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2189,21 +2189,11 @@ int intel_dp_dsc_min_src_input_bpc(void)
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
@@ -2218,7 +2208,7 @@ int intel_dp_force_dsc_pipe_bpp(struct intel_dp *intel_dp,
 
 	forced_bpp = intel_dp->force_dsc_bpc * 3;
 
-	if (is_dsc_pipe_bpp_sufficient(i915, limits, forced_bpp)) {
+	if (is_dsc_pipe_bpp_sufficient(limits, forced_bpp)) {
 		drm_dbg_kms(&i915->drm, "Input DSC BPC forced to %d\n", intel_dp->force_dsc_bpc);
 		return forced_bpp;
 	}
@@ -2235,11 +2225,10 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
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
@@ -2255,14 +2244,8 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
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
@@ -2307,7 +2290,7 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 
 		/* For eDP use max bpp that can be supported with DSC. */
 		pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, max_bpc);
-		if (!is_dsc_pipe_bpp_sufficient(i915, limits, pipe_bpp)) {
+		if (!is_dsc_pipe_bpp_sufficient(limits, pipe_bpp)) {
 			drm_dbg_kms(&i915->drm,
 				    "Computed BPC is not in DSC BPC limits\n");
 			return -EINVAL;
@@ -2521,6 +2504,18 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
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
 static bool
 intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 			       struct intel_crtc_state *crtc_state,
@@ -2541,6 +2536,8 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 	limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
 	limits->pipe.max_bpp = intel_dp_max_bpp(intel_dp, crtc_state,
 						     respect_downstream_limits);
+	if (dsc)
+		intel_dp_dsc_compute_pipe_bpp_limits(intel_dp, limits);
 
 	if (intel_dp->use_max_params) {
 		/*
-- 
2.45.2

