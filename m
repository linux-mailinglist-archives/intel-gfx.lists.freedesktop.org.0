Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD759ABF4F
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 08:51:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD8DF10E765;
	Wed, 23 Oct 2024 06:51:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MKm43V5T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F9C310E762;
 Wed, 23 Oct 2024 06:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729666264; x=1761202264;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k9Ugfvo26XuQP34ms6NjO4xTjQADEzrYE6WveB9BBOc=;
 b=MKm43V5TiaoUmB837z2ND6Dg1boQHGVKQSNAPBjPe+4IgcyYfaOB8X9S
 YjUJ/5TexRb1JgB4gF8minxmXRhbmo95Fqi/P29Xnmztr2Q2ebkSLaAnn
 v7Kzd8vWf/kfBm7+1qpb8+ETvhq2eSVbtQPas/gAlQZxb6+QCJbrwl89m
 d9FVY8ayFx3B1NUuS8TySeUSwf3jc+MBhwFp1HTukglTxdTAOhF+pXA4v
 qrlRnR5jDSlc8qfjmGOuYMsXYJGDrMYRxTfTrajqeegF1kbaOPOr/Mi/B
 tMA6lt8yM0jwdQHuqLiQIg3tdQUNrYOfj9ne+6JstmJFYBTSp7cn/yCdT g==;
X-CSE-ConnectionGUID: agl26054S3+SMnKSAGecCA==
X-CSE-MsgGUID: LE9lrMv0QiSFyUWEXB6PoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="32097498"
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="32097498"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 23:51:04 -0700
X-CSE-ConnectionGUID: tNTSiGXmTO2J3pf2osrmmA==
X-CSE-MsgGUID: NPAX1HtGRzeDXjbIP1dw/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="84691623"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 23:51:03 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 13/16] drm/i915/dp: Enable DSC pixel replication
Date: Wed, 23 Oct 2024 12:22:54 +0530
Message-ID: <20241023065257.190035-14-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
References: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
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

Allow DSC slice count that do not divide the hactive evenly by adding
extra pixels (replicated pixels).
Check if the pixel replication is supported and store the no. of
replicated pixel count in crtc_state.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 20 +++++++++++++++--
 drivers/gpu/drm/i915/display/intel_dp.h     |  1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 ++
 drivers/gpu/drm/i915/display/intel_vdsc.c   | 25 ++++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_vdsc.h   |  3 +++
 5 files changed, 44 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f4a446824cb3..026254687a8d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -992,9 +992,11 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
+				enum intel_output_format output_format,
 				int num_joined_pipes)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	u8 min_slice_count, i;
 	int max_slice_width;
 
@@ -1047,7 +1049,11 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 		if (num_joined_pipes > 1 && valid_dsc_slicecount[i] < 2)
 			continue;
 
-		if (mode_hdisplay % test_slice_count)
+		if (mode_hdisplay % test_slice_count &&
+		    !intel_dsc_can_use_pixel_replication(display,
+							 mode_hdisplay,
+							 test_slice_count,
+							 output_format))
 			continue;
 
 		if (min_slice_count <= test_slice_count)
@@ -1474,6 +1480,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 				intel_dp_dsc_get_slice_count(connector,
 							     target_clock,
 							     mode->hdisplay,
+							     output_format,
 							     num_joined_pipes);
 		}
 
@@ -2366,6 +2373,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				int timeslots,
 				bool compute_pipe_bpp)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
 	const struct intel_connector *connector =
@@ -2428,6 +2436,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 			intel_dp_dsc_get_slice_count(connector,
 						     adjusted_mode->crtc_clock,
 						     adjusted_mode->crtc_hdisplay,
+						     pipe_config->output_format,
 						     num_joined_pipes);
 		if (!dsc_dp_slice_count) {
 			drm_dbg_kms(&dev_priv->drm,
@@ -2437,6 +2446,13 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 
 		pipe_config->dsc.slice_count = dsc_dp_slice_count;
 	}
+
+	pipe_config->dsc.replicated_pixels =
+		intel_dsc_get_replicated_pixels(display,
+						adjusted_mode->crtc_hdisplay,
+						pipe_config->dsc.slice_count,
+						pipe_config->output_format);
+
 	/*
 	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
 	 * is greater than the maximum Cdclock and if slice count is even
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index e90a9dc1a8f5..7460675c16f6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -150,6 +150,7 @@ int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector
 					 int bpc);
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
+				enum intel_output_format output_format,
 				int num_joined_pipes);
 int intel_dp_num_joined_pipes(struct intel_dp *intel_dp,
 			      struct intel_connector *connector,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 2bd33e1b318e..794a5121e661 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -172,6 +172,7 @@ static int intel_dp_mst_dsc_get_slice_count(const struct intel_connector *connec
 	return intel_dp_dsc_get_slice_count(connector,
 					    adjusted_mode->clock,
 					    adjusted_mode->hdisplay,
+					    crtc_state->output_format,
 					    num_joined_pipes);
 }
 
@@ -1538,6 +1539,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 				intel_dp_dsc_get_slice_count(intel_connector,
 							     target_clock,
 							     mode->hdisplay,
+							     INTEL_OUTPUT_FORMAT_RGB,
 							     num_joined_pipes);
 		}
 
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 9eaf608995dc..0aa2d96ee329 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -1041,6 +1041,22 @@ void intel_vdsc_state_dump(struct drm_printer *p, int indent,
 	drm_dsc_dump_config(p, indent, &crtc_state->dsc.config);
 }
 
+bool intel_dsc_can_use_pixel_replication(struct intel_display *display,
+					 int mode_hdisplay, u8 slice_count,
+					 enum intel_output_format output_format)
+{
+	int slice_width = DIV_ROUND_UP(mode_hdisplay, slice_count);
+
+	if (!HAS_PIXEL_REPLICATION(display))
+		return false;
+
+	/* Odd slice width is not supported by YCbCr420 format */
+	if (slice_width % 2 && output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
+		return false;
+
+	return true;
+}
+
 int intel_dsc_get_replicated_pixels(struct intel_display *display,
 				    int mode_hdisplay,
 				    int slice_count,
@@ -1049,11 +1065,10 @@ int intel_dsc_get_replicated_pixels(struct intel_display *display,
 	int replicated_pixels;
 	int slice_width = DIV_ROUND_UP(mode_hdisplay, slice_count);
 
-	if (!HAS_PIXEL_REPLICATION(display))
-		return 0;
-
-	/* Odd slice width is not supported by YCbCr420 format */
-	if (slice_width % 2 && output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
+	if (!intel_dsc_can_use_pixel_replication(display,
+						 mode_hdisplay,
+						 slice_count,
+						 output_format))
 		return 0;
 
 	replicated_pixels = (slice_width * slice_count) - mode_hdisplay;
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
index 41b8b5c5866e..3611fc53840d 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
@@ -33,6 +33,9 @@ void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state);
 void intel_vdsc_state_dump(struct drm_printer *p, int indent,
 			   const struct intel_crtc_state *crtc_state);
+bool intel_dsc_can_use_pixel_replication(struct intel_display *display,
+					 int mode_hdisplay, u8 slice_count,
+					 enum intel_output_format output_format);
 int intel_dsc_get_replicated_pixels(struct intel_display *display,
 				    int mode_hdisplay,
 				    int slice_count,
-- 
2.45.2

