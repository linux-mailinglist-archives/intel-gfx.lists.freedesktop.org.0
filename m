Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDAD9BF8EB
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 23:09:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CBAA10E790;
	Wed,  6 Nov 2024 22:09:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MGNNDgZL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D075010E790
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2024 22:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730930949; x=1762466949;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9v5zfH/XoMEP04aAWpm8N5zMcmeHQITZiHmXu5VfWRk=;
 b=MGNNDgZLmyPCudUBFBqreDp7LTVzZCV+Oq4Gk3GAuQeS0brFJEZOCL3t
 asLOWaztrFuHrdnHs4Jdwmuctr+OMSoP7I+Rm/eULmI901ncuTVXdvn6I
 rvOplH+N5RLp63TC1bNFvBrxUbbvZMwaAur2LQExpH07ONdk+k34OzB+f
 ec/1GREjcO7RB8xGMBDq4GZtWkECt1QKkS2DLwvjE5NXYz9shaWbaEJQz
 CAfYwGADRf147lwe143iGgS4k/gfX4k8c730REmYdmBUS6c3fpC3e3oWW
 /+iv8U5ubOX/pA78dp5KJ7yWX73gGUN/kA70CEaTY8593/wtGBbjyc1R4 A==;
X-CSE-ConnectionGUID: g5yN8mGnT12o8uQ33H03eQ==
X-CSE-MsgGUID: Y/F6J2J1TTyuJipJmdYz4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30609607"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30609607"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 14:09:09 -0800
X-CSE-ConnectionGUID: x9XRv3QbT2OCDE63WHg2RA==
X-CSE-MsgGUID: /hxnuYLUS4O9OE4UnTRMDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,264,1725346800"; d="scan'208";a="84884008"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Nov 2024 14:09:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Nov 2024 00:09:04 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/dsi: Stop using pixel_format_from_register_bits() to
 parse VBT
Date: Thu,  7 Nov 2024 00:09:04 +0200
Message-ID: <20241106220904.29523-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Introduce a proper VBT->enum mipi_dsi_pixel_format converter
instead of abusing pixel_format_from_register_bits() (whose
job is to parse the pixel format from some pre-ICL DSI
hardware register).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 20 ++++++++++++++++++--
 drivers/gpu/drm/i915/display/vlv_dsi.c       |  3 +--
 drivers/gpu/drm/i915/display/vlv_dsi.h       |  7 -------
 3 files changed, 19 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index e8129a720210..b2b78f39cfd3 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -745,6 +745,23 @@ void intel_dsi_log_params(struct intel_dsi *intel_dsi)
 		    str_enabled_disabled(!(intel_dsi->video_frmt_cfg_bits & DISABLE_VIDEO_BTA)));
 }
 
+static enum mipi_dsi_pixel_format vbt_to_dsi_pixel_format(unsigned int format)
+{
+	switch (format) {
+	case PIXEL_FORMAT_RGB888:
+		return MIPI_DSI_FMT_RGB888;
+	case PIXEL_FORMAT_RGB666_LOOSELY_PACKED:
+		return MIPI_DSI_FMT_RGB666;
+	case PIXEL_FORMAT_RGB666:
+		return MIPI_DSI_FMT_RGB666_PACKED;
+	case PIXEL_FORMAT_RGB565:
+		return MIPI_DSI_FMT_RGB565;
+	default:
+		MISSING_CASE(format);
+		return MIPI_DSI_FMT_RGB666;
+	}
+}
+
 bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, u16 panel_id)
 {
 	struct drm_device *dev = intel_dsi->base.base.dev;
@@ -762,8 +779,7 @@ bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, u16 panel_id)
 	intel_dsi->clock_stop = mipi_config->enable_clk_stop ? 1 : 0;
 	intel_dsi->lane_count = mipi_config->lane_cnt + 1;
 	intel_dsi->pixel_format =
-			pixel_format_from_register_bits(
-				mipi_config->videomode_color_format << 7);
+		vbt_to_dsi_pixel_format(mipi_config->videomode_color_format);
 
 	intel_dsi->dual_link = mipi_config->dual_link;
 	intel_dsi->pixel_overlap = mipi_config->pixel_overlap;
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 9383eedee2d4..587e98d32053 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -67,9 +67,8 @@ static u16 pixels_from_txbyteclkhs(u16 clk_hs, int bpp, int lane_count,
 						(bpp * burst_mode_ratio));
 }
 
-enum mipi_dsi_pixel_format pixel_format_from_register_bits(u32 fmt)
+static enum mipi_dsi_pixel_format pixel_format_from_register_bits(u32 fmt)
 {
-	/* It just so happens the VBT matches register contents. */
 	switch (fmt) {
 	case VID_MODE_FORMAT_RGB888:
 		return MIPI_DSI_FMT_RGB888;
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.h b/drivers/gpu/drm/i915/display/vlv_dsi.h
index cf9d7b82f288..a02fd7bd2f2a 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.h
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.h
@@ -6,24 +6,17 @@
 #ifndef __VLV_DSI_H__
 #define __VLV_DSI_H__
 
-#include <linux/types.h>
-
 enum port;
 struct drm_i915_private;
 struct intel_dsi;
 
 #ifdef I915
 void vlv_dsi_wait_for_fifo_empty(struct intel_dsi *intel_dsi, enum port port);
-enum mipi_dsi_pixel_format pixel_format_from_register_bits(u32 fmt);
 void vlv_dsi_init(struct drm_i915_private *dev_priv);
 #else
 static inline void vlv_dsi_wait_for_fifo_empty(struct intel_dsi *intel_dsi, enum port port)
 {
 }
-static inline enum mipi_dsi_pixel_format pixel_format_from_register_bits(u32 fmt)
-{
-	return 0;
-}
 static inline void vlv_dsi_init(struct drm_i915_private *dev_priv)
 {
 }
-- 
2.45.2

