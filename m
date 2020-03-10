Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4895117F252
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 09:53:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A50066E849;
	Tue, 10 Mar 2020 08:53:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 931106E849
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 08:53:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 01:53:11 -0700
X-IronPort-AV: E=Sophos;i="5.70,535,1574150400"; d="scan'208";a="443086942"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 01:53:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Mar 2020 10:52:42 +0200
Message-Id: <7081a49d20cc46b1b1144c83a4e21294d121d8a7.1583766715.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1583766715.git.jani.nikula@intel.com>
References: <cover.1583766715.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 03/10] drm/i915/fbdev: convert to drm_device
 based logging.
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

From: Wambui Karuga <wambui.karugax@gmail.com>

Convert various instances of printk based drm logging macros to the
struct drm_device based logging macros in i915/display/intel_fbdev.c.
This also involves extracting the drm_i915_private device from various
intel types.

v2 by Jani:
- fix the final one too

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c | 96 +++++++++++++---------
 1 file changed, 55 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 3bc804212a99..bd39eb6a21b8 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -146,7 +146,7 @@ static int intelfb_alloc(struct drm_fb_helper *helper,
 	if (IS_ERR(obj))
 		obj = i915_gem_object_create_shmem(dev_priv, size);
 	if (IS_ERR(obj)) {
-		DRM_ERROR("failed to allocate framebuffer\n");
+		drm_err(&dev_priv->drm, "failed to allocate framebuffer\n");
 		return PTR_ERR(obj);
 	}
 
@@ -183,21 +183,23 @@ static int intelfb_create(struct drm_fb_helper *helper,
 	if (intel_fb &&
 	    (sizes->fb_width > intel_fb->base.width ||
 	     sizes->fb_height > intel_fb->base.height)) {
-		DRM_DEBUG_KMS("BIOS fb too small (%dx%d), we require (%dx%d),"
-			      " releasing it\n",
-			      intel_fb->base.width, intel_fb->base.height,
-			      sizes->fb_width, sizes->fb_height);
+		drm_dbg_kms(&dev_priv->drm,
+			    "BIOS fb too small (%dx%d), we require (%dx%d),"
+			    " releasing it\n",
+			    intel_fb->base.width, intel_fb->base.height,
+			    sizes->fb_width, sizes->fb_height);
 		drm_framebuffer_put(&intel_fb->base);
 		intel_fb = ifbdev->fb = NULL;
 	}
 	if (!intel_fb || drm_WARN_ON(dev, !intel_fb_obj(&intel_fb->base))) {
-		DRM_DEBUG_KMS("no BIOS fb, allocating a new one\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "no BIOS fb, allocating a new one\n");
 		ret = intelfb_alloc(helper, sizes);
 		if (ret)
 			return ret;
 		intel_fb = ifbdev->fb;
 	} else {
-		DRM_DEBUG_KMS("re-using BIOS fb\n");
+		drm_dbg_kms(&dev_priv->drm, "re-using BIOS fb\n");
 		prealloc = true;
 		sizes->fb_width = intel_fb->base.width;
 		sizes->fb_height = intel_fb->base.height;
@@ -220,7 +222,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
 
 	info = drm_fb_helper_alloc_fbi(helper);
 	if (IS_ERR(info)) {
-		DRM_ERROR("Failed to allocate fb_info\n");
+		drm_err(&dev_priv->drm, "Failed to allocate fb_info\n");
 		ret = PTR_ERR(info);
 		goto out_unpin;
 	}
@@ -240,7 +242,8 @@ static int intelfb_create(struct drm_fb_helper *helper,
 
 	vaddr = i915_vma_pin_iomap(vma);
 	if (IS_ERR(vaddr)) {
-		DRM_ERROR("Failed to remap framebuffer into virtual memory\n");
+		drm_err(&dev_priv->drm,
+			"Failed to remap framebuffer into virtual memory\n");
 		ret = PTR_ERR(vaddr);
 		goto out_unpin;
 	}
@@ -258,9 +261,9 @@ static int intelfb_create(struct drm_fb_helper *helper,
 
 	/* Use default scratch pixmap (info->pixmap.flags = FB_PIXMAP_SYSTEM) */
 
-	DRM_DEBUG_KMS("allocated %dx%d fb: 0x%08x\n",
-		      ifbdev->fb->base.width, ifbdev->fb->base.height,
-		      i915_ggtt_offset(vma));
+	drm_dbg_kms(&dev_priv->drm, "allocated %dx%d fb: 0x%08x\n",
+		    ifbdev->fb->base.width, ifbdev->fb->base.height,
+		    i915_ggtt_offset(vma));
 	ifbdev->vma = vma;
 	ifbdev->vma_flags = flags;
 
@@ -309,6 +312,7 @@ static void intel_fbdev_destroy(struct intel_fbdev *ifbdev)
 static bool intel_fbdev_init_bios(struct drm_device *dev,
 				 struct intel_fbdev *ifbdev)
 {
+	struct drm_i915_private *i915 = to_i915(dev);
 	struct intel_framebuffer *fb = NULL;
 	struct drm_crtc *crtc;
 	struct intel_crtc *intel_crtc;
@@ -321,21 +325,24 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
 		intel_crtc = to_intel_crtc(crtc);
 
 		if (!crtc->state->active || !obj) {
-			DRM_DEBUG_KMS("pipe %c not active or no fb, skipping\n",
-				      pipe_name(intel_crtc->pipe));
+			drm_dbg_kms(&i915->drm,
+				    "pipe %c not active or no fb, skipping\n",
+				    pipe_name(intel_crtc->pipe));
 			continue;
 		}
 
 		if (obj->base.size > max_size) {
-			DRM_DEBUG_KMS("found possible fb from plane %c\n",
-				      pipe_name(intel_crtc->pipe));
+			drm_dbg_kms(&i915->drm,
+				    "found possible fb from plane %c\n",
+				    pipe_name(intel_crtc->pipe));
 			fb = to_intel_framebuffer(crtc->primary->state->fb);
 			max_size = obj->base.size;
 		}
 	}
 
 	if (!fb) {
-		DRM_DEBUG_KMS("no active fbs found, not using BIOS config\n");
+		drm_dbg_kms(&i915->drm,
+			    "no active fbs found, not using BIOS config\n");
 		goto out;
 	}
 
@@ -346,13 +353,14 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
 		intel_crtc = to_intel_crtc(crtc);
 
 		if (!crtc->state->active) {
-			DRM_DEBUG_KMS("pipe %c not active, skipping\n",
-				      pipe_name(intel_crtc->pipe));
+			drm_dbg_kms(&i915->drm,
+				    "pipe %c not active, skipping\n",
+				    pipe_name(intel_crtc->pipe));
 			continue;
 		}
 
-		DRM_DEBUG_KMS("checking plane %c for BIOS fb\n",
-			      pipe_name(intel_crtc->pipe));
+		drm_dbg_kms(&i915->drm, "checking plane %c for BIOS fb\n",
+			    pipe_name(intel_crtc->pipe));
 
 		/*
 		 * See if the plane fb we found above will fit on this
@@ -362,9 +370,10 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
 		cur_size = crtc->state->adjusted_mode.crtc_hdisplay;
 		cur_size = cur_size * fb->base.format->cpp[0];
 		if (fb->base.pitches[0] < cur_size) {
-			DRM_DEBUG_KMS("fb not wide enough for plane %c (%d vs %d)\n",
-				      pipe_name(intel_crtc->pipe),
-				      cur_size, fb->base.pitches[0]);
+			drm_dbg_kms(&i915->drm,
+				    "fb not wide enough for plane %c (%d vs %d)\n",
+				    pipe_name(intel_crtc->pipe),
+				    cur_size, fb->base.pitches[0]);
 			fb = NULL;
 			break;
 		}
@@ -372,28 +381,32 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
 		cur_size = crtc->state->adjusted_mode.crtc_vdisplay;
 		cur_size = intel_fb_align_height(&fb->base, 0, cur_size);
 		cur_size *= fb->base.pitches[0];
-		DRM_DEBUG_KMS("pipe %c area: %dx%d, bpp: %d, size: %d\n",
-			      pipe_name(intel_crtc->pipe),
-			      crtc->state->adjusted_mode.crtc_hdisplay,
-			      crtc->state->adjusted_mode.crtc_vdisplay,
-			      fb->base.format->cpp[0] * 8,
-			      cur_size);
+		drm_dbg_kms(&i915->drm,
+			    "pipe %c area: %dx%d, bpp: %d, size: %d\n",
+			    pipe_name(intel_crtc->pipe),
+			    crtc->state->adjusted_mode.crtc_hdisplay,
+			    crtc->state->adjusted_mode.crtc_vdisplay,
+			    fb->base.format->cpp[0] * 8,
+			    cur_size);
 
 		if (cur_size > max_size) {
-			DRM_DEBUG_KMS("fb not big enough for plane %c (%d vs %d)\n",
-				      pipe_name(intel_crtc->pipe),
-				      cur_size, max_size);
+			drm_dbg_kms(&i915->drm,
+				    "fb not big enough for plane %c (%d vs %d)\n",
+				    pipe_name(intel_crtc->pipe),
+				    cur_size, max_size);
 			fb = NULL;
 			break;
 		}
 
-		DRM_DEBUG_KMS("fb big enough for plane %c (%d >= %d)\n",
-			      pipe_name(intel_crtc->pipe),
-			      max_size, cur_size);
+		drm_dbg_kms(&i915->drm,
+			    "fb big enough for plane %c (%d >= %d)\n",
+			    pipe_name(intel_crtc->pipe),
+			    max_size, cur_size);
 	}
 
 	if (!fb) {
-		DRM_DEBUG_KMS("BIOS fb not suitable for all pipes, not using\n");
+		drm_dbg_kms(&i915->drm,
+			    "BIOS fb not suitable for all pipes, not using\n");
 		goto out;
 	}
 
@@ -415,7 +428,7 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
 	}
 
 
-	DRM_DEBUG_KMS("using BIOS fb for initial console\n");
+	drm_dbg_kms(&i915->drm, "using BIOS fb for initial console\n");
 	return true;
 
 out:
@@ -522,8 +535,9 @@ void intel_fbdev_fini(struct drm_i915_private *dev_priv)
  * processing, fbdev will perform a full connector reprobe if a hotplug event
  * was received while HPD was suspended.
  */
-static void intel_fbdev_hpd_set_suspend(struct intel_fbdev *ifbdev, int state)
+static void intel_fbdev_hpd_set_suspend(struct drm_i915_private *i915, int state)
 {
+	struct intel_fbdev *ifbdev = i915->fbdev;
 	bool send_hpd = false;
 
 	mutex_lock(&ifbdev->hpd_lock);
@@ -533,7 +547,7 @@ static void intel_fbdev_hpd_set_suspend(struct intel_fbdev *ifbdev, int state)
 	mutex_unlock(&ifbdev->hpd_lock);
 
 	if (send_hpd) {
-		DRM_DEBUG_KMS("Handling delayed fbcon HPD event\n");
+		drm_dbg_kms(&i915->drm, "Handling delayed fbcon HPD event\n");
 		drm_fb_helper_hotplug_event(&ifbdev->helper);
 	}
 }
@@ -588,7 +602,7 @@ void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool synchronous
 	drm_fb_helper_set_suspend(&ifbdev->helper, state);
 	console_unlock();
 
-	intel_fbdev_hpd_set_suspend(ifbdev, state);
+	intel_fbdev_hpd_set_suspend(dev_priv, state);
 }
 
 void intel_fbdev_output_poll_changed(struct drm_device *dev)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
