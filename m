Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4BC9A6884
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 14:32:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E625710E4DB;
	Mon, 21 Oct 2024 12:32:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WkeqnWMD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D29A610E4D7;
 Mon, 21 Oct 2024 12:32:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729513940; x=1761049940;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZsmxNmDbpDvQV2KaXYlDJAU2OycL3GGlOhKZk/LCFYg=;
 b=WkeqnWMD114aP+72NdO0x750QN3+mJqpcQXLj1D9CVWiRyXPkJJ7GDRQ
 /tFpLT/HiT+H8YsWM+clJlVvfZfCmKELBWcpP7E2yqQE2wbvjP8QbkM9G
 vD4RR6VOxJkjt0QybDeyy0wqfpvazFMlRCUJ4bHyYdcySXLHnG+99xzsi
 wq2i4QjxNfdnzdhOy+dFp3/bNc6GFnwqm6s96FzxQSTXU6oHS9Ml8bJr/
 AP0qaBOWFryB8fu2kT6Ac2S4QzTH6EiKt6gYIV3uqzJETmdldCv8nw54g
 a8U+l1m6ihe1AvqJ30iz9Omx6jEOrri7MyBcdqwCHX0URxhp9PVhpQpVo Q==;
X-CSE-ConnectionGUID: 7THw+o8oQxK40HlFAs1RdA==
X-CSE-MsgGUID: oOBPNJz3QHCaE9iTy78Pcg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46459647"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46459647"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:32:20 -0700
X-CSE-ConnectionGUID: ROJr1j7hRuWbwq+mmvaYCA==
X-CSE-MsgGUID: LcpmRYjeQKi/Y0m4PIjJ5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="79866108"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:32:19 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 13/16] drm/i915/dp: Enable DSC pixel replication
Date: Mon, 21 Oct 2024 18:04:11 +0530
Message-ID: <20241021123414.3993899-14-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241021123414.3993899-1-ankit.k.nautiyal@intel.com>
References: <20241021123414.3993899-1-ankit.k.nautiyal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_dp.c     | 20 +++++++++++++--
 drivers/gpu/drm/i915/display/intel_dp.h     |  1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 ++
 drivers/gpu/drm/i915/display/intel_vdsc.c   | 28 +++++++++++++++------
 drivers/gpu/drm/i915/display/intel_vdsc.h   |  3 +++
 5 files changed, 44 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f35d6fc376c8..433a629c2bae 100644
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
index 72130c7748dd..b5c72628d445 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -171,6 +171,7 @@ static int intel_dp_mst_dsc_get_slice_count(const struct intel_connector *connec
 	return intel_dp_dsc_get_slice_count(connector,
 					    adjusted_mode->clock,
 					    adjusted_mode->hdisplay,
+					    crtc_state->output_format,
 					    num_joined_pipes);
 }
 
@@ -1537,6 +1538,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 				intel_dp_dsc_get_slice_count(intel_connector,
 							     target_clock,
 							     mode->hdisplay,
+							     INTEL_OUTPUT_FORMAT_RGB,
 							     num_joined_pipes);
 		}
 
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index c3c6a4a4dafd..c279f59fdda8 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -1049,6 +1049,22 @@ void intel_vdsc_state_dump(struct drm_printer *p, int indent,
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
@@ -1057,14 +1073,10 @@ int intel_dsc_get_replicated_pixels(struct intel_display *display,
 	int replicated_pixels;
 	int slice_width = DIV_ROUND_UP(mode_hdisplay, slice_count);
 
-	if (!HAS_PIXEL_REPLICATION(display))
-		return 0;
-
-	if (mode_hdisplay % slice_count == 0)
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

