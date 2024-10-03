Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B999498ED2D
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 12:41:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59A3010E7F2;
	Thu,  3 Oct 2024 10:41:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Es8ZnofL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BEE910E7E8;
 Thu,  3 Oct 2024 10:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727952112; x=1759488112;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1vc4qciQ7Au96gyoR9RGG/zNOPfy4F1PBbCHUvOCtpI=;
 b=Es8ZnofL+0gdZkgwoi/OsrkOqzZGZvZ6+NjzE3eMW/9NCza3/KT7l1gN
 TbjRkj+AnFqMdCgrtcey13E/z/Qb9emK7jp2zY/5usAGrvIngkBnihJqW
 6vfyNAH18loZBAj35v7Si+RTODWUT+OAG5EbGdK2vWSvKmFsoqOzIVkRn
 mKCBjOlQhcSOqbZsP0+V1Jw+d/UJYCUt9aivHfw4HMyFCGKBg5qA4O0M6
 nIVmg9Dp5bMfsuWYh8v+RFpoqPN0bryxwLtg/LU3pbcy1oBGy50Trhl7o
 zxWi959RJjvSG/Zs9ZETjoFEg0l2uGPTykCdqVri68BCG7dKyVaAqypEE Q==;
X-CSE-ConnectionGUID: nQnQ75EoTIymL/ZMlVpb3g==
X-CSE-MsgGUID: EesB4iXfSsuxMLMg0tTa6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11213"; a="27270779"
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="27270779"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 03:41:52 -0700
X-CSE-ConnectionGUID: biudHhaLRAeJBidWY7Ke6Q==
X-CSE-MsgGUID: PUI5ou56RLahj9Uf9bbX+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="105142460"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 03:41:50 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com
Subject: [PATCH 4/7] drm/i915/dp: Drop max_requested_bpc for dsc pipe_min/max
 bpp
Date: Thu,  3 Oct 2024 16:13:40 +0530
Message-ID: <20241003104343.984060-5-ankit.k.nautiyal@intel.com>
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

Currently we are including both max_requested_bpc and
limits->pipe.bpp_max while computing maximum possible pipe bpp with dsc.
However, while setting limits->pipe.max_bpp, the max_requested_bpc is
already taken into account.

Drop the redundant check for max_requested_bpc and use only
limits->pipe.bpp_max. This will also result in dropping conn_state
argument in functions where it was used only to get max_requested_bpc.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b553b24604e1..46f3b680afe9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2167,14 +2167,13 @@ int intel_dp_dsc_min_src_input_bpc(struct intel_display *display)
 
 static
 bool is_dsc_pipe_bpp_sufficient(struct drm_i915_private *i915,
-				struct drm_connector_state *conn_state,
 				struct link_config_limits *limits,
 				int pipe_bpp)
 {
 	struct intel_display *display = to_intel_display(&i915->drm);
 	int dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp, dsc_min_pipe_bpp;
 
-	dsc_max_bpc = min(intel_dp_dsc_max_src_input_bpc(display), conn_state->max_requested_bpc);
+	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
 	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(display);
 
 	dsc_max_pipe_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
@@ -2186,7 +2185,6 @@ bool is_dsc_pipe_bpp_sufficient(struct drm_i915_private *i915,
 
 static
 int intel_dp_force_dsc_pipe_bpp(struct intel_dp *intel_dp,
-				struct drm_connector_state *conn_state,
 				struct link_config_limits *limits)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
@@ -2197,7 +2195,7 @@ int intel_dp_force_dsc_pipe_bpp(struct intel_dp *intel_dp,
 
 	forced_bpp = intel_dp->force_dsc_bpc * 3;
 
-	if (is_dsc_pipe_bpp_sufficient(i915, conn_state, limits, forced_bpp)) {
+	if (is_dsc_pipe_bpp_sufficient(i915, limits, forced_bpp)) {
 		drm_dbg_kms(&i915->drm, "Input DSC BPC forced to %d\n", intel_dp->force_dsc_bpc);
 		return forced_bpp;
 	}
@@ -2217,14 +2215,13 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	struct intel_display *display = to_intel_display(intel_dp);
 	const struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
-	int max_req_bpc = conn_state->max_requested_bpc;
 	int dsc_max_bpc, dsc_max_bpp;
 	int dsc_min_bpc, dsc_min_bpp;
 	u8 dsc_bpc[3] = {};
 	int forced_bpp, pipe_bpp;
 	int num_bpc, i, ret;
 
-	forced_bpp = intel_dp_force_dsc_pipe_bpp(intel_dp, conn_state, limits);
+	forced_bpp = intel_dp_force_dsc_pipe_bpp(intel_dp, limits);
 
 	if (forced_bpp) {
 		ret = dsc_compute_compressed_bpp(intel_dp, connector, pipe_config,
@@ -2239,7 +2236,6 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	if (!dsc_max_bpc)
 		return -EINVAL;
 
-	dsc_max_bpc = min(dsc_max_bpc, max_req_bpc);
 	dsc_max_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
 
 	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(display);
@@ -2279,16 +2275,16 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
 	int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
 
-	forced_bpp = intel_dp_force_dsc_pipe_bpp(intel_dp, conn_state, limits);
+	forced_bpp = intel_dp_force_dsc_pipe_bpp(intel_dp, limits);
 
 	if (forced_bpp) {
 		pipe_bpp = forced_bpp;
 	} else {
-		int max_bpc = min(limits->pipe.max_bpp / 3, (int)conn_state->max_requested_bpc);
+		int max_bpc = limits->pipe.max_bpp / 3;
 
 		/* For eDP use max bpp that can be supported with DSC. */
 		pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, max_bpc);
-		if (!is_dsc_pipe_bpp_sufficient(i915, conn_state, limits, pipe_bpp)) {
+		if (!is_dsc_pipe_bpp_sufficient(i915, limits, pipe_bpp)) {
 			drm_dbg_kms(&i915->drm,
 				    "Computed BPC is not in DSC BPC limits\n");
 			return -EINVAL;
-- 
2.45.2

