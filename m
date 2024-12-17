Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7AC89F478D
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 10:30:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EFC910E8C1;
	Tue, 17 Dec 2024 09:30:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cLueZLuK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2371D10E8B3;
 Tue, 17 Dec 2024 09:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734427803; x=1765963803;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XTM2hpzCdkAOmCRowpm+vnvFA49bNh6u/KXupUTWZY4=;
 b=cLueZLuKdEPW5HoHoBmiKlkZ05i64rWbA3iiMAsCKx5dv1euS7KzXRVY
 D/Pd2sZKuQQ56vPvc9UB4vLJXSvVEbJ/Ihi3SNE0TEUYivy0/EJm/MBIi
 663Lvdm+TgTtunwjMrq6dPqL+mmlw37vlPIpcJKE535Us5Rw9KMifjLPX
 nPIhPTwL6dhAqFsWfrWIsITcQ7Msf3N/TmQfG7LnK8Iem5qWjVnxdhvGe
 t3F9J+c9X9WUz+O2t2ySeyDhxiadku3DPDwSMzqHvPhkXr3GrUHbrD42D
 x7/sBg/QGB3Lp2ylGeu3fR3FBbj+K2imehwyoC+WuKQnHeZcGw3HRouSu Q==;
X-CSE-ConnectionGUID: XaXBbpWIQ8m91qj3Z0Qxtw==
X-CSE-MsgGUID: aEZ/VrIhRe6On39/2U9z0g==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="34976165"
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="34976165"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 01:30:03 -0800
X-CSE-ConnectionGUID: ASfUWiwBQyCpWjOir9ePAg==
X-CSE-MsgGUID: Ua92Z51+SoqNyGI7iVuzNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="98052448"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 01:30:01 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 08/14] drm/i915/dp: Drop max_requested_bpc for dsc
 pipe_min/max bpp
Date: Tue, 17 Dec 2024 15:02:38 +0530
Message-ID: <20241217093244.3938132-9-ankit.k.nautiyal@intel.com>
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
index 2435370b7a06..ab7d9d43712e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2194,13 +2194,12 @@ int intel_dp_dsc_min_src_input_bpc(void)
 
 static
 bool is_dsc_pipe_bpp_sufficient(struct intel_display *display,
-				struct drm_connector_state *conn_state,
 				struct link_config_limits *limits,
 				int pipe_bpp)
 {
 	int dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp, dsc_min_pipe_bpp;
 
-	dsc_max_bpc = min(intel_dp_dsc_max_src_input_bpc(display), conn_state->max_requested_bpc);
+	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
 	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc();
 
 	dsc_max_pipe_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
@@ -2212,7 +2211,6 @@ bool is_dsc_pipe_bpp_sufficient(struct intel_display *display,
 
 static
 int intel_dp_force_dsc_pipe_bpp(struct intel_dp *intel_dp,
-				struct drm_connector_state *conn_state,
 				struct link_config_limits *limits)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
@@ -2223,7 +2221,7 @@ int intel_dp_force_dsc_pipe_bpp(struct intel_dp *intel_dp,
 
 	forced_bpp = intel_dp->force_dsc_bpc * 3;
 
-	if (is_dsc_pipe_bpp_sufficient(display, conn_state, limits, forced_bpp)) {
+	if (is_dsc_pipe_bpp_sufficient(display, limits, forced_bpp)) {
 		drm_dbg_kms(display->drm, "Input DSC BPC forced to %d\n",
 			    intel_dp->force_dsc_bpc);
 		return forced_bpp;
@@ -2245,14 +2243,13 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
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
@@ -2267,7 +2264,6 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	if (!dsc_max_bpc)
 		return -EINVAL;
 
-	dsc_max_bpc = min(dsc_max_bpc, max_req_bpc);
 	dsc_max_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
 
 	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc();
@@ -2307,16 +2303,16 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
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
-		if (!is_dsc_pipe_bpp_sufficient(display, conn_state, limits, pipe_bpp)) {
+		if (!is_dsc_pipe_bpp_sufficient(display, limits, pipe_bpp)) {
 			drm_dbg_kms(display->drm,
 				    "Computed BPC is not in DSC BPC limits\n");
 			return -EINVAL;
-- 
2.45.2

