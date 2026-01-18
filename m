Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50973D399ED
	for <lists+intel-gfx@lfdr.de>; Sun, 18 Jan 2026 22:07:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 474A310E2EE;
	Sun, 18 Jan 2026 21:07:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZaDAjz9W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02DE010E038;
 Sun, 18 Jan 2026 21:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768770455; x=1800306455;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TQXLTOnpCPrrVC+HVoOwe2vPgwr/ikivez+J2L96hhQ=;
 b=ZaDAjz9WVxXzdfvsw0W9gx3iIbzrvgbI2QBLP99c6S+a4SH4cIXBpCdI
 FWPzK8a7xjmfkd6WjexB3QtaIRti90hcMeOKk0/9JefC4N2f6vzTKIMCN
 FnGY8WVqmb3OoGWh/45fFMmKn9sJlvNxdTYDvF5CMwDimjX2XTsGMGU9Q
 mW1GovYJW2NIf1wOi4veFmK7erdHrARERsBBTJUdaijP1r2Al981S9xLX
 3znIXxqeNBxmkywiN0dRJhZv5qnEWdjNgjG1WJl46a9KsFaNjTfc/bNf0
 wOLkLCDAbqY5aW9ZF5OTW8FIeWnEjHBE9bB6kaukfMoeXXXoRvIbgyC/I Q==;
X-CSE-ConnectionGUID: duB3xpfsRxmy/CvHKv9SDg==
X-CSE-MsgGUID: inzoBXRdRPizdNnvfNj8VA==
X-IronPort-AV: E=McAfee;i="6800,10657,11675"; a="57545118"
X-IronPort-AV: E=Sophos;i="6.21,236,1763452800"; d="scan'208";a="57545118"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2026 13:07:34 -0800
X-CSE-ConnectionGUID: rfdYlB/lQ9WUxS6DtJ98mA==
X-CSE-MsgGUID: fXkBkN3uRk+xPGIz9yLEhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,236,1763452800"; d="scan'208";a="243263720"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.244.21])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2026 13:07:31 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, uma.shankar@intel.com,
 juha-pekka.heikkila@intel.com
Subject: [PATCH] drm/i915/display: fix the pixel normalization handling for
 xe3p_lpd
Date: Sun, 18 Jan 2026 23:07:17 +0200
Message-ID: <20260118210717.284056-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo
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

Pixel normalizer is enabled with normalization factor as 1.0 for
FP16 formats in order to support FBC for those formats in xe3p_lpd.
Previously pixel normalizer gets disabled during the plane disable
routine. But there could be plane format settings without explicitly
calling the plane disable in-between and we could endup keeping the
pixel normalizer enabled for formats which we don't require that.
This is causing crc mismatches in yuv formats and FIFO underruns in
planar formats like NV12. Fix this by updating the pixel normalizer
configuration based on the pixel formats explicitly during the plane
settings arm calls itself - enable it for FP16 and disable it for other
formats in HDR capable planes.

Fixes: 5298eea7ed20 ("drm/i915/xe3p_lpd: use pixel normalizer for fp16 formats for FBC")
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 .../drm/i915/display/intel_display_device.h   |  1 +
 .../drm/i915/display/skl_universal_plane.c    | 51 +++++++++++++------
 2 files changed, 36 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 6c74d6b0cc48..126aa1eeeb6d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -175,6 +175,7 @@ struct intel_display_platforms {
 #define HAS_DSC_MST(__display)		(DISPLAY_VER(__display) >= 12 && HAS_DSC(__display))
 #define HAS_FBC(__display)		(DISPLAY_RUNTIME_INFO(__display)->fbc_mask != 0)
 #define HAS_FBC_DIRTY_RECT(__display)	(DISPLAY_VER(__display) >= 30)
+#define HAS_FBC_FP16_FORMATS(__display)	(DISPLAY_VER(__display) >= 35)
 #define HAS_FBC_SYS_CACHE(__display)	(DISPLAY_VER(__display) >= 35 && !(__display)->platform.dgfx)
 #define HAS_FPGA_DBG_UNCLAIMED(__display)	(DISPLAY_INFO(__display)->has_fpga_dbg)
 #define HAS_FW_BLC(__display)		(DISPLAY_VER(__display) >= 3)
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index b3d41705448a..724d5d25d3d0 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -891,20 +891,46 @@ static void icl_plane_disable_sel_fetch_arm(struct intel_dsb *dsb,
 	intel_de_write_dsb(display, dsb, SEL_FETCH_PLANE_CTL(pipe, plane->id), 0);
 }
 
-static void x3p_lpd_plane_update_pixel_normalizer(struct intel_dsb *dsb,
-						  struct intel_plane *plane,
-						  bool enable)
+static void xe3p_lpd_plane_disable_pixel_normalizer(struct intel_dsb *dsb,
+						    struct intel_plane *plane)
 {
 	struct intel_display *display = to_intel_display(plane);
 	enum intel_fbc_id fbc_id = skl_fbc_id_for_pipe(plane->pipe);
-	u32 val;
 
-	/* Only HDR planes have pixel normalizer and don't matter if no FBC */
+	if (!HAS_FBC_FP16_FORMATS(display))
+		return;
+
+	/* Only HDR planes have pixel normalizer and don't matter if FBC is fused off */
+	if (!skl_plane_has_fbc(display, fbc_id, plane->id))
+		return;
+
+	intel_de_write_dsb(display, dsb,
+			   PLANE_PIXEL_NORMALIZE(plane->pipe, plane->id), 0);
+}
+
+static void xe3p_lpd_plane_update_pixel_normalizer(struct intel_dsb *dsb,
+						   struct intel_plane *plane)
+{
+	struct intel_display *display = to_intel_display(plane);
+	enum intel_fbc_id fbc_id = skl_fbc_id_for_pipe(plane->pipe);
+	const struct intel_plane_state *plane_state =
+		to_intel_plane_state(plane->base.state);
+	u32 val = 0;
+
+	if (!HAS_FBC_FP16_FORMATS(display))
+		return;
+
 	if (!skl_plane_has_fbc(display, fbc_id, plane->id))
 		return;
 
-	val = enable ? PLANE_PIXEL_NORMALIZE_NORM_FACTOR(PLANE_PIXEL_NORMALIZE_NORM_FACTOR_1_0) |
-		       PLANE_PIXEL_NORMALIZE_ENABLE : 0;
+	/*
+	 * In order to have FBC for fp16 formats pixel normalizer block must be
+	 * active. Check if pixel normalizer block need to be enabled for FBC.
+	 * If needed, use normalization factor as 1.0 and enable the block.
+	 */
+	if (intel_fbc_is_enable_pixel_normalizer(plane_state))
+		val = PLANE_PIXEL_NORMALIZE_NORM_FACTOR(PLANE_PIXEL_NORMALIZE_NORM_FACTOR_1_0) |
+		      PLANE_PIXEL_NORMALIZE_ENABLE;
 
 	intel_de_write_dsb(display, dsb,
 			   PLANE_PIXEL_NORMALIZE(plane->pipe, plane->id), val);
@@ -926,8 +952,7 @@ icl_plane_disable_arm(struct intel_dsb *dsb,
 
 	icl_plane_disable_sel_fetch_arm(dsb, plane, crtc_state);
 
-	if (DISPLAY_VER(display) >= 35)
-		x3p_lpd_plane_update_pixel_normalizer(dsb, plane, false);
+	xe3p_lpd_plane_disable_pixel_normalizer(dsb, plane);
 
 	intel_de_write_dsb(display, dsb, PLANE_CTL(pipe, plane_id), 0);
 	intel_de_write_dsb(display, dsb, PLANE_SURF(pipe, plane_id), 0);
@@ -1674,13 +1699,7 @@ icl_plane_update_arm(struct intel_dsb *dsb,
 
 	intel_color_plane_commit_arm(dsb, plane_state);
 
-	/*
-	 * In order to have FBC for fp16 formats pixel normalizer block must be
-	 * active. Check if pixel normalizer block need to be enabled for FBC.
-	 * If needed, use normalization factor as 1.0 and enable the block.
-	 */
-	if (intel_fbc_is_enable_pixel_normalizer(plane_state))
-		x3p_lpd_plane_update_pixel_normalizer(dsb, plane, true);
+	xe3p_lpd_plane_update_pixel_normalizer(dsb, plane);
 
 	/*
 	 * The control register self-arms if the plane was previously
-- 
2.43.0

