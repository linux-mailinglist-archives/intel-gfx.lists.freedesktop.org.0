Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 299D699C092
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 09:00:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B98110E39A;
	Mon, 14 Oct 2024 07:00:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ka9OuHq0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF18D10E392;
 Mon, 14 Oct 2024 07:00:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728889227; x=1760425227;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LX9GptbvoprWzlXzOs/MLtc85nTn4B66Ff93U5fh6Iw=;
 b=ka9OuHq0yDfCiIlOXVLt2LGEqTH0BwuRBw2RCtSpJHHWBXYx8ZM54ioZ
 BJjf9YfZlZ1kjLdPg4Ve5Sk/54pz3Noce0logSHEKyxAKfn0ko3XgkN7w
 BTe0wP9jnLZbONecDIkAPuzoW76EcJVMqRdtGR96DdmBkh0DyEK2s5+aj
 JrSAfDkEblx7j8VYNxTEzqP3u5ukdNnYhrEB+Y0Op0b4LD8zBFFYjLW3a
 sr7DFXDqPKSNjjGGZ5QlzJGyo08tFk9MaAlQDdZ5s2ORjGTr/893uFo+9
 VvPJQUDuOfOmZQonvcXZWxngJvCS6+PbKBlly3q7dyzLoZUkHz4ygmag6 g==;
X-CSE-ConnectionGUID: /oq2ctVuQGa9fd1qUpXcYg==
X-CSE-MsgGUID: 5LfNTqP2TPaSv9mwtPihaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39338007"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="39338007"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 00:00:27 -0700
X-CSE-ConnectionGUID: OG/MsPlbR7S7k1LTKvrQyw==
X-CSE-MsgGUID: 1SJmChQYTYyFJFQSRk0E+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="78310836"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 00:00:26 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 7/9] drm/i915/dp: Compute pixel replication count for DSC 12
 slices case
Date: Mon, 14 Oct 2024 12:32:24 +0530
Message-ID: <20241014070226.2729008-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241014070226.2729008-1-ankit.k.nautiyal@intel.com>
References: <20241014070226.2729008-1-ankit.k.nautiyal@intel.com>
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

Add check if pixel replication is required while computing slice count
and fill the pixel replication count in crtc_state.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 61 ++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_dp.h     |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 +
 3 files changed, 63 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index edcea84a0a59..728d7a93ed60 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -980,13 +980,37 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 	return bits_per_pixel;
 }
 
+static
+bool can_use_pixel_replication(int mode_hdisplay, u8 slice_count,
+			       enum intel_output_format output_format,
+			       bool ultrajoiner)
+{
+	int slice_width;
+
+	if (!(mode_hdisplay % slice_count))
+		return false;
+
+	if (!ultrajoiner)
+		return false;
+
+	slice_width = DIV_ROUND_UP(mode_hdisplay, slice_count);
+
+	/* Odd slice width is not supported by YCbCr420/422 formats */
+	if (slice_width % 2 && output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
+		return false;
+
+	return true;
+}
+
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
+				enum intel_output_format output_format,
 				int num_joined_pipes)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	u8 min_slice_count, i;
 	int max_slice_width;
+	bool ultrajoiner = num_joined_pipes == 4 ? true : false;
 
 	if (mode_clock <= DP_DSC_PEAK_PIXEL_RATE)
 		min_slice_count = DIV_ROUND_UP(mode_clock,
@@ -1030,7 +1054,10 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 		if (num_joined_pipes > 1 && valid_dsc_slicecount[i] < 2)
 			continue;
 
-		if (mode_hdisplay % test_slice_count)
+		if (mode_hdisplay % test_slice_count &&
+		    !can_use_pixel_replication(mode_hdisplay,
+					       test_slice_count,
+					       output_format, ultrajoiner))
 			continue;
 
 		if (min_slice_count <= test_slice_count)
@@ -1457,6 +1484,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 				intel_dp_dsc_get_slice_count(connector,
 							     target_clock,
 							     mode->hdisplay,
+							     output_format,
 							     num_joined_pipes);
 		}
 
@@ -2321,6 +2349,33 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	return 0;
 }
 
+static
+int intel_dp_dsc_get_pixel_replication(struct intel_dp *intel_dp,
+				       struct intel_crtc_state *pipe_config)
+{
+	int mode_hdisplay = pipe_config->hw.adjusted_mode.hdisplay;
+	int slice_count = pipe_config->dsc.slice_count;
+	int pixel_replication_count;
+	int slice_width;
+	bool ultrajoiner = false;
+
+	if (intel_crtc_num_joined_pipes(pipe_config) == 4)
+		ultrajoiner = true;
+
+	if (!can_use_pixel_replication(mode_hdisplay, slice_count,
+				       pipe_config->output_format, ultrajoiner))
+		return 0;
+
+	slice_width = DIV_ROUND_UP(mode_hdisplay, slice_count);
+
+	pixel_replication_count = (slice_width * slice_count) - mode_hdisplay;
+
+	if (pixel_replication_count >= 0)
+		return pixel_replication_count;
+
+	return 0;
+}
+
 int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				struct intel_crtc_state *pipe_config,
 				struct drm_connector_state *conn_state,
@@ -2390,6 +2445,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 			intel_dp_dsc_get_slice_count(connector,
 						     adjusted_mode->crtc_clock,
 						     adjusted_mode->crtc_hdisplay,
+						     pipe_config->output_format,
 						     num_joined_pipes);
 		if (!dsc_dp_slice_count) {
 			drm_dbg_kms(&dev_priv->drm,
@@ -2399,6 +2455,9 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 
 		pipe_config->dsc.slice_count = dsc_dp_slice_count;
 	}
+
+	pipe_config->dsc.pixel_replication_count =
+		intel_dp_dsc_get_pixel_replication(intel_dp, pipe_config);
 	/*
 	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
 	 * is greater than the maximum Cdclock and if slice count is even
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 53d1217800ef..b4dee7b5385b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -150,11 +150,11 @@ int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector
 					 int bpc);
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
+				enum intel_output_format output_format,
 				int num_joined_pipes);
 int intel_dp_num_joined_pipes(struct intel_dp *intel_dp,
 			      struct intel_connector *connector,
 			      int hdisplay, int clock);
-
 static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
 {
 	return ~((1 << lane_count) - 1) & 0xf;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 4765bda154c1..4cb44d88a642 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -109,6 +109,7 @@ static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
 		dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
 							       adjusted_mode->clock,
 							       adjusted_mode->hdisplay,
+							       crtc_state->output_format,
 							       num_joined_pipes);
 	}
 
@@ -1506,6 +1507,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 				intel_dp_dsc_get_slice_count(intel_connector,
 							     target_clock,
 							     mode->hdisplay,
+							     INTEL_OUTPUT_FORMAT_RGB,
 							     num_joined_pipes);
 		}
 
-- 
2.45.2

