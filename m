Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D4654D937
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 06:21:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98C27113CFE;
	Thu, 16 Jun 2022 04:21:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F6D3113D1B
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 04:21:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655353278; x=1686889278;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KQYqAuU2hLEVzi1mkaGd5I20Fu0boxATwEPb7BwsJ88=;
 b=FaOebCq6bbofxGtYw6qW42v5KSFbYZHlJskxhvsNMF9xvquKiS77oVvN
 xXIZ96/GSmNMgLYdiuroMim6YFlKe+cvaLVY1kX6GLahVmP7BqTpQajl3
 fvIEQLZQ7ph1hq48m7RLkEDq9G0gK9vseYZ7n2wWHd4dQFQSmN0cTwOC+
 h2imk290n3sTjee8TdHCj3oIIalLijX6rdfC5HzgU3NsnXqXG1jCkdSss
 VvVkTQmFECKgskxi6T7RJzA95xG3xSeGcZ+4PGf2QIGf09Wxwu5RU6Q3v
 /ya45HqsRheyVu6IaUKt3EfmptakWp1/awqRNnCgxAiKuvKFwraOBRjJX g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="279219509"
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="279219509"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 21:21:18 -0700
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="911993770"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 21:21:15 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jun 2022 09:52:45 +0530
Message-Id: <20220616042247.324969-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220616042247.324969-1-ankit.k.nautiyal@intel.com>
References: <20220616042247.324969-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 1/3] drm/i915/dp: Rename helper to calculate
 dsc output bpp
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

Currently we the required dsc output bpp is set to be the largest
compressed bpp supported for max, lane, rate, and bpp.
The helper intel_dp_dsc_get_output_bpp gets the maximum supported
compressed bpp taking into account link configuration, input bpp,
bigjoiner considerations etc.

This patch appends 'max' suffix to the function, and also avoid
unnecessary left shifting by 4, which we are anyway shifting back
later.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 49 +++++++++++--------------
 1 file changed, 22 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2fac76bcf06d..eb00fdf5a3ad 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -660,11 +660,11 @@ small_joiner_ram_size_bits(struct drm_i915_private *i915)
 		return 6144 * 8;
 }
 
-static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
-				       u32 link_clock, u32 lane_count,
-				       u32 mode_clock, u32 mode_hdisplay,
-				       bool bigjoiner,
-				       u32 pipe_bpp)
+static u16 intel_dp_dsc_get_output_bpp_max(struct drm_i915_private *i915,
+					   u32 link_clock, u32 lane_count,
+					   u32 mode_clock, u32 mode_hdisplay,
+					   bool bigjoiner,
+					   u32 pipe_bpp)
 {
 	u32 bits_per_pixel, max_bpp_small_joiner_ram;
 	int i;
@@ -718,11 +718,7 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 		bits_per_pixel = valid_dsc_bpp[i];
 	}
 
-	/*
-	 * Compressed BPP in U6.4 format so multiply by 16, for Gen 11,
-	 * fractional part is 0
-	 */
-	return bits_per_pixel << 4;
+	return bits_per_pixel;
 }
 
 static u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
@@ -1016,13 +1012,13 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 								true);
 		} else if (drm_dp_sink_supports_fec(intel_dp->fec_capable)) {
 			dsc_max_output_bpp =
-				intel_dp_dsc_get_output_bpp(dev_priv,
-							    max_link_clock,
-							    max_lanes,
-							    target_clock,
-							    mode->hdisplay,
-							    bigjoiner,
-							    pipe_bpp) >> 4;
+				intel_dp_dsc_get_output_bpp_max(dev_priv,
+								max_link_clock,
+								max_lanes,
+								target_clock,
+								mode->hdisplay,
+								bigjoiner,
+								pipe_bpp);
 			dsc_slice_count =
 				intel_dp_dsc_get_slice_count(intel_dp,
 							     target_clock,
@@ -1465,13 +1461,13 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		u8 dsc_dp_slice_count;
 
 		dsc_max_output_bpp =
-			intel_dp_dsc_get_output_bpp(dev_priv,
-						    pipe_config->port_clock,
-						    pipe_config->lane_count,
-						    adjusted_mode->crtc_clock,
-						    adjusted_mode->crtc_hdisplay,
-						    pipe_config->bigjoiner_pipes,
-						    pipe_bpp);
+			intel_dp_dsc_get_output_bpp_max(dev_priv,
+							pipe_config->port_clock,
+							pipe_config->lane_count,
+							adjusted_mode->crtc_clock,
+							adjusted_mode->crtc_hdisplay,
+							pipe_config->bigjoiner_pipes,
+							pipe_bpp);
 		dsc_dp_slice_count =
 			intel_dp_dsc_get_slice_count(intel_dp,
 						     adjusted_mode->crtc_clock,
@@ -1482,9 +1478,8 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				    "Compressed BPP/Slice Count not supported\n");
 			return -EINVAL;
 		}
-		pipe_config->dsc.compressed_bpp = min_t(u16,
-							       dsc_max_output_bpp >> 4,
-							       pipe_config->pipe_bpp);
+		pipe_config->dsc.compressed_bpp = min_t(u16, dsc_max_output_bpp,
+							pipe_config->pipe_bpp);
 		pipe_config->dsc.slice_count = dsc_dp_slice_count;
 	}
 
-- 
2.25.1

