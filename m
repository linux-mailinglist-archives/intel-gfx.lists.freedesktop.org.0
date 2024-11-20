Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E00C19D3872
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 11:35:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E89310E6F7;
	Wed, 20 Nov 2024 10:35:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kFVg0Euh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E552E10E6F4;
 Wed, 20 Nov 2024 10:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732098938; x=1763634938;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qxMwB6nCCJPtUPA64sy+sCeVB4zDd72wmxRRxZ259gM=;
 b=kFVg0EuheQ09vrniJC+rHT6BQeH2LT+G6CJmx7j+4RX2RRjzk9eK5vWw
 6nA2uIqzKqyAi+/Woih0dLjeRjzQcxthaZ37WQX8lA1En5R3n/sXlg8dP
 ENQJD2+n3cJwDYsnMMIyMeZZhJimW47R99m5ap8lY5osvvdYbneaBx2VD
 BTLb+DiU1EoVg7tUy5B2jNtm4rRlBp7Se1PVeGOGsdu7yxc9bouRpuKoO
 8rfKMfMt0T9iDFYHDuJgLQODL3QJTcblhYJhuyR/RfREXIv7CU3wlUHUh
 qkHNi0eCDrGyflTQJoITTSPbGWhqMaZ2o39F2qa+A0LHdYvZeQA/qTlhW g==;
X-CSE-ConnectionGUID: SOrIeWrURFK/lcIrzsVBhQ==
X-CSE-MsgGUID: 6ilr9M4BTUGf/h/b/+LjNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="31520055"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="31520055"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 02:35:37 -0800
X-CSE-ConnectionGUID: wJoTb9vbTXS8XJjM9gD2TQ==
X-CSE-MsgGUID: c7qnO8FJTVm68mCZJudTKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="89674087"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 02:35:36 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 06/12] drm/i915/dp_mst: Use helpers to get dsc min/max input
 bpc
Date: Wed, 20 Nov 2024 16:07:56 +0530
Message-ID: <20241120103802.134295-7-ankit.k.nautiyal@intel.com>
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

Use helpers for source min/max input bpc with DSC.
While at it, make them return int instead of u8 and use struct
intel_display.

v2: Make the helpers return int instead of u8. (Jani)
v3: Use min/max macros instead of min_t/max_t. (Jani)
v4: Use struct intel_display.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 25 ++++++++++-----------
 drivers/gpu/drm/i915/display/intel_dp.h     |  3 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 13 +++++------
 3 files changed, 20 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 10fb2b9e6bc1..e6dacdf00e0b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1788,13 +1788,12 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 	return -EINVAL;
 }
 
-static
-int intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
+int intel_dp_dsc_max_src_input_bpc(struct intel_display *display)
 {
 	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
-	if (DISPLAY_VER(i915) >= 12)
+	if (DISPLAY_VER(display) >= 12)
 		return 12;
-	if (DISPLAY_VER(i915) == 11)
+	if (DISPLAY_VER(display) == 11)
 		return 10;
 
 	return 0;
@@ -1803,12 +1802,12 @@ int intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
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
@@ -2191,8 +2190,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 					   dsc_max_bpp, dsc_min_bpp, pipe_bpp, timeslots);
 }
 
-static
-int intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915)
+int intel_dp_dsc_min_src_input_bpc(struct intel_display *display)
 {
 	/* Min DSC Input BPC for ICL+ is 8 */
 	return 8;
@@ -2204,10 +2202,11 @@ bool is_dsc_pipe_bpp_sufficient(struct drm_i915_private *i915,
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
@@ -2246,7 +2245,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 					 struct link_config_limits *limits,
 					 int timeslots)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	const struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	int max_req_bpc = conn_state->max_requested_bpc;
@@ -2267,14 +2266,14 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
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
index 4ae54e9718ce..e5a25e5cbc25 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -20,6 +20,7 @@ struct intel_atomic_state;
 struct intel_connector;
 struct intel_crtc_state;
 struct intel_digital_port;
+struct intel_display;
 struct intel_dp;
 struct intel_encoder;
 
@@ -207,5 +208,7 @@ bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
 				u8 lane_count);
 bool intel_dp_has_connector(struct intel_dp *intel_dp,
 			    const struct drm_connector_state *conn_state);
+int intel_dp_dsc_max_src_input_bpc(struct intel_display *display);
+int intel_dp_dsc_min_src_input_bpc(struct intel_display *display);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 0662736849ac..9568924d143b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -366,17 +366,14 @@ static int mst_stream_dsc_compute_link_config(struct intel_encoder *encoder,
 	int i, num_bpc;
 	u8 dsc_bpc[3] = {};
 	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
-	u8 dsc_max_bpc;
+	int dsc_max_bpc, dsc_min_bpc;
 	int min_compressed_bpp, max_compressed_bpp;
 
-	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
-	if (DISPLAY_VER(display) >= 12)
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

