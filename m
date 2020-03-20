Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC8318D11C
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 15:37:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CB956EB51;
	Fri, 20 Mar 2020 14:37:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D31A6EB56
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 14:37:32 +0000 (UTC)
IronPort-SDR: 17Xwgnu0s36iZID9EEBygR2s+OMKBBb1CAjKCS37Jnjw5tDq5Lqxjpars4tbxHaCaSi5nBd023
 3fnwFxIEcNxg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 07:37:32 -0700
IronPort-SDR: cYLCInDff4i/t9QSCXzP9EeCMpCVBQmDwmq4pOtLH6gRownISS4w+j42YoewUSHTyh+Ud24hoG
 R1k5noKJuZWQ==
X-IronPort-AV: E=Sophos;i="5.72,284,1580803200"; d="scan'208";a="245506438"
Received: from rkamins1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.41.98])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 07:37:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Mar 2020 16:36:36 +0200
Message-Id: <ffdbda0a0fe18354867b3f8c7a83f59f0963711d.1584714939.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584714939.git.jani.nikula@intel.com>
References: <cover.1584714939.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 11/13] drm/i915/display: use struct drm_device
 based logging
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
Cc: jani.nikula@intel.com, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Convert all the DRM_* logging macros to the struct drm_device based
macros to provide device specific logging.

No functional changes.

Generated using the following semantic patch, originally written by
Wambui Karuga <wambui.karugax@gmail.com>, with manual fixups on top:

@@
identifier fn, T;
@@

fn(...,struct drm_i915_private *T,...) {
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_NOTE(
+drm_notice(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_ATOMIC(
+drm_dbg_atomic(&T->drm,
...)
)
...+>
}

@@
identifier fn, T;
@@

fn(...) {
...
struct drm_i915_private *T = ...;
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_NOTE(
+drm_notice(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_ATOMIC(
+drm_dbg_atomic(&T->drm,
...)
)
...+>
}

Cc: Wambui Karuga <wambui.karugax@gmail.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 25 +++++++++++---------
 1 file changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6af8d43ceb0c..fe55c7c713f1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2908,6 +2908,7 @@ intel_fb_plane_get_subsampling(int *hsub, int *vsub,
 static int
 intel_fb_check_ccs_xy(struct drm_framebuffer *fb, int ccs_plane, int x, int y)
 {
+	struct drm_i915_private *i915 = to_i915(fb->dev);
 	struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);
 	int main_plane;
 	int hsub, vsub;
@@ -2936,7 +2937,8 @@ intel_fb_check_ccs_xy(struct drm_framebuffer *fb, int ccs_plane, int x, int y)
 	 * x/y offsets must match between CCS and the main surface.
 	 */
 	if (main_x != ccs_x || main_y != ccs_y) {
-		DRM_DEBUG_KMS("Bad CCS x/y (main %d,%d ccs %d,%d) full (main %d,%d ccs %d,%d)\n",
+		drm_dbg_kms(&i915->drm,
+			      "Bad CCS x/y (main %d,%d ccs %d,%d) full (main %d,%d ccs %d,%d)\n",
 			      main_x, main_y,
 			      ccs_x, ccs_y,
 			      intel_fb->normal[main_plane].x,
@@ -12882,16 +12884,17 @@ compute_baseline_pipe_bpp(struct intel_crtc *crtc,
 	return 0;
 }
 
-static void intel_dump_crtc_timings(const struct drm_display_mode *mode)
+static void intel_dump_crtc_timings(struct drm_i915_private *i915,
+				    const struct drm_display_mode *mode)
 {
-	DRM_DEBUG_KMS("crtc timings: %d %d %d %d %d %d %d %d %d, "
-		      "type: 0x%x flags: 0x%x\n",
-		      mode->crtc_clock,
-		      mode->crtc_hdisplay, mode->crtc_hsync_start,
-		      mode->crtc_hsync_end, mode->crtc_htotal,
-		      mode->crtc_vdisplay, mode->crtc_vsync_start,
-		      mode->crtc_vsync_end, mode->crtc_vtotal,
-		      mode->type, mode->flags);
+	drm_dbg_kms(&i915->drm, "crtc timings: %d %d %d %d %d %d %d %d %d, "
+		    "type: 0x%x flags: 0x%x\n",
+		    mode->crtc_clock,
+		    mode->crtc_hdisplay, mode->crtc_hsync_start,
+		    mode->crtc_hsync_end, mode->crtc_htotal,
+		    mode->crtc_vdisplay, mode->crtc_vsync_start,
+		    mode->crtc_vsync_end, mode->crtc_vtotal,
+		    mode->type, mode->flags);
 }
 
 static inline void
@@ -13075,7 +13078,7 @@ static void intel_dump_pipe_config(const struct intel_crtc_state *pipe_config,
 	drm_mode_debug_printmodeline(&pipe_config->hw.mode);
 	drm_dbg_kms(&dev_priv->drm, "adjusted mode:\n");
 	drm_mode_debug_printmodeline(&pipe_config->hw.adjusted_mode);
-	intel_dump_crtc_timings(&pipe_config->hw.adjusted_mode);
+	intel_dump_crtc_timings(dev_priv, &pipe_config->hw.adjusted_mode);
 	drm_dbg_kms(&dev_priv->drm,
 		    "port clock: %d, pipe src size: %dx%d, pixel rate %d\n",
 		    pipe_config->port_clock,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
