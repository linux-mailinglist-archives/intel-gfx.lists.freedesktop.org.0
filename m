Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C51646CD50C
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 10:47:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1FD010E516;
	Wed, 29 Mar 2023 08:47:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78E2810E516
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 08:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680079633; x=1711615633;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MNCkWOFd5HZ+4xpfVN6vknnduyKl6SXAEtN65/sdbkY=;
 b=UkclWIiykL7T6Wsy+cKEb+DNwwoaxU0QPKi2XuCebgzKRlXcpXoMNU55
 YisRquSa1AtVE/uoT/E695lZ4XvYab7Q0D9hmlDz/TOsu/8SF4bGhJN2U
 aEkZqBHh7r0W7y+ONF1IBbGK2dVJ3Vf9Q5/gy3q1vCb6jKPGkhAfw+ikc
 LFiuCXQimixRb1zrfWcKJTvEPrgZzG94rpqNMf0lBgQo+CSVXuNtbmdit
 gl/O8jQMHSmaWuXIPhAArwgM8QqXQLHDLjPg+UZVe/rmG1cB9KiS5ygD+
 THrhGwjp2/dLbLECc4IfNwWdxEsBXRBVr4BjcEfegI9mh+bAdaf86xVnZ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="427093311"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="427093311"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 01:47:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="773487370"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="773487370"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 01:46:59 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 14:14:49 +0530
Message-Id: <20230329084449.717954-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230329084449.717954-1-ankit.k.nautiyal@intel.com>
References: <20230329084449.717954-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/dp: Use current cdclk for DSC
 Bigjoiner BW check
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

As per Bspec, Big Joiner BW check is:
Output bpp <= PPC * CDCLK frequency * Big joiner interface bits /
Pixel clock

Currently we always use max_cdclk in the check for both modevalid
and compute config steps.

During modevalid use max_cdclk_freq for the check.
During compute config step use current cdclk for the check.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 9 ++++++---
 drivers/gpu/drm/i915/display/intel_dp.h     | 1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 1 +
 3 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3fe651a8f5d0..d6600de1ab49 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -711,6 +711,7 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
 u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 				u32 link_clock, u32 lane_count,
 				u32 mode_clock, u32 mode_hdisplay,
+				unsigned int cdclk,
 				bool bigjoiner,
 				u32 pipe_bpp,
 				u32 timeslots)
@@ -757,9 +758,9 @@ u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 
 	if (bigjoiner) {
 		int bigjoiner_interface_bits = DISPLAY_VER(i915) <= 12 ? 24 : 36;
-		u32 max_bpp_bigjoiner =
-			i915->display.cdclk.max_cdclk_freq * 2 * bigjoiner_interface_bits /
-			intel_dp_mode_to_fec_clock(mode_clock);
+
+		u32 max_bpp_bigjoiner = cdclk * 2 * bigjoiner_interface_bits /
+					intel_dp_mode_to_fec_clock(mode_clock);
 
 		bits_per_pixel = min(bits_per_pixel, max_bpp_bigjoiner);
 	}
@@ -1073,6 +1074,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 							    max_lanes,
 							    target_clock,
 							    mode->hdisplay,
+							    dev_priv->display.cdclk.max_cdclk_freq,
 							    bigjoiner,
 							    pipe_bpp, 64) >> 4;
 			dsc_slice_count =
@@ -1580,6 +1582,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 							    pipe_config->lane_count,
 							    adjusted_mode->crtc_clock,
 							    adjusted_mode->crtc_hdisplay,
+							    dev_priv->display.cdclk.hw.cdclk,
 							    pipe_config->bigjoiner_pipes,
 							    pipe_bpp,
 							    timeslots);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index ef39e4f7a329..d150bfe8abf4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -106,6 +106,7 @@ int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
 u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 				u32 link_clock, u32 lane_count,
 				u32 mode_clock, u32 mode_hdisplay,
+				unsigned int cdclk,
 				bool bigjoiner,
 				u32 pipe_bpp,
 				u32 timeslots);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index a860cbc5dbea..266e31b78729 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -925,6 +925,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 							    max_lanes,
 							    target_clock,
 							    mode->hdisplay,
+							    dev_priv->display.cdclk.max_cdclk_freq,
 							    bigjoiner,
 							    pipe_bpp, 64) >> 4;
 			dsc_slice_count =
-- 
2.25.1

