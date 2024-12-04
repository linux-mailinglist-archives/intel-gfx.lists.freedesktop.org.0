Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E37D09E3673
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 10:24:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84AB110EC90;
	Wed,  4 Dec 2024 09:24:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WR2thxkB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94F3C10EC90;
 Wed,  4 Dec 2024 09:24:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733304254; x=1764840254;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C6XzV9DQBZZJnQNfmxDI5ypMeIlvcyJtKzKEZ0qh3i8=;
 b=WR2thxkBO/V4ySi6ASU3A5ByAxtqr6k8jea5h4XWBy2GetAs3NCIsMlK
 wr1jh146Nq4BTruO0VJG+ARUr/s8nVi48/AOIWgfgUvwcHet7Ip7HFDXP
 HitZMuo9b6rhe+IIUkZR/gHzufIea518Rfhd/9uI6ge9ExQ4s2sR6blul
 I3tTzDVYog3nPR0kFn2v0HFWz5erlwbCz2cMTaYEAuNUHQVn8Ny/815Er
 mHUK4va96iHJ4Lmn0muPGMxdRWdxUYSZe9+rYC/PadcpKc6fl3//Hg7D5
 hPyD7ob/d6EQNywC0ZxWepDjxfp8zB5F4LjgYwl0vdqGlhyTfZJtBA5vZ w==;
X-CSE-ConnectionGUID: WsDuW0WyTrC928D/5i57OQ==
X-CSE-MsgGUID: kugmSkLaRGa7cjPhSxxU1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="44038468"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="44038468"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 01:24:14 -0800
X-CSE-ConnectionGUID: ZJAVMhwLTsmNVg1ox93EwQ==
X-CSE-MsgGUID: d9H5te1dSfKUcOkx02A2cA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="93555154"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 01:24:12 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 09/14] drm/i915/dp: Drop max_requested_bpc for dsc
 pipe_min/max bpp
Date: Wed,  4 Dec 2024 14:56:37 +0530
Message-ID: <20241204092642.1835807-10-ankit.k.nautiyal@intel.com>
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

Currently we are including both max_requested_bpc and
limits->pipe.bpp_max while computing maximum possible pipe bpp with dsc.
However, while setting limits->pipe.max_bpp, the max_requested_bpc is
already taken into account.

Drop the redundant check for max_requested_bpc and use only
limits->pipe.bpp_max. This will also result in dropping conn_state
argument in functions where it was used only to get max_requested_bpc.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index bff7441d2ddd..ea1d1e7c0f45 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2190,14 +2190,13 @@ int intel_dp_dsc_min_src_input_bpc(void)
 
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
 	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc();
 
 	dsc_max_pipe_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
@@ -2209,7 +2208,6 @@ bool is_dsc_pipe_bpp_sufficient(struct drm_i915_private *i915,
 
 static
 int intel_dp_force_dsc_pipe_bpp(struct intel_dp *intel_dp,
-				struct drm_connector_state *conn_state,
 				struct link_config_limits *limits)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
@@ -2220,7 +2218,7 @@ int intel_dp_force_dsc_pipe_bpp(struct intel_dp *intel_dp,
 
 	forced_bpp = intel_dp->force_dsc_bpc * 3;
 
-	if (is_dsc_pipe_bpp_sufficient(i915, conn_state, limits, forced_bpp)) {
+	if (is_dsc_pipe_bpp_sufficient(i915, limits, forced_bpp)) {
 		drm_dbg_kms(&i915->drm, "Input DSC BPC forced to %d\n", intel_dp->force_dsc_bpc);
 		return forced_bpp;
 	}
@@ -2240,14 +2238,13 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
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
@@ -2262,7 +2259,6 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	if (!dsc_max_bpc)
 		return -EINVAL;
 
-	dsc_max_bpc = min(dsc_max_bpc, max_req_bpc);
 	dsc_max_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
 
 	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc();
@@ -2302,16 +2298,16 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
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

