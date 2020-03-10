Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE7B17F25A
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 09:53:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 044336E855;
	Tue, 10 Mar 2020 08:53:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B56336E855
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 08:53:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 01:53:47 -0700
X-IronPort-AV: E=Sophos;i="5.70,535,1574150400"; d="scan'208";a="415124421"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 01:53:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Mar 2020 10:52:49 +0200
Message-Id: <ca3c14de13e308419caf33eb4bbf274f5387f1e0.1583766715.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1583766715.git.jani.nikula@intel.com>
References: <cover.1583766715.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 10/10] drm/i915/overlay: convert to drm_device
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

Convert various instances of the printk based drm logging macros to the
struct drm_device based logging macros in i915/display/intel_overlay.c.
This transformation was achieved using the following coccinelle script:
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
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG(
+drm_dbg(&T->drm,
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
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_ATOMIC(
+drm_dbg_atomic(&T->drm,
...)
)
...+>
}

Note that this converts DRM_DEBUG to drm_dbg().

Checkpatch warnings were addressed manually.

References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html
Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 3b0cb3534e2a..481187223101 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -323,7 +323,7 @@ static int intel_overlay_continue(struct intel_overlay *overlay,
 	/* check for underruns */
 	tmp = intel_de_read(dev_priv, DOVSTA);
 	if (tmp & (1 << 17))
-		DRM_DEBUG("overlay underrun, DOVSTA: %x\n", tmp);
+		drm_dbg(&dev_priv->drm, "overlay underrun, DOVSTA: %x\n", tmp);
 
 	rq = alloc_request(overlay, NULL);
 	if (IS_ERR(rq))
@@ -1068,7 +1068,7 @@ int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
 
 	overlay = dev_priv->overlay;
 	if (!overlay) {
-		DRM_DEBUG("userspace bug: no overlay\n");
+		drm_dbg(&dev_priv->drm, "userspace bug: no overlay\n");
 		return -ENODEV;
 	}
 
@@ -1092,7 +1092,8 @@ int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
 	drm_modeset_lock_all(dev);
 
 	if (i915_gem_object_is_tiled(new_bo)) {
-		DRM_DEBUG_KMS("buffer used for overlay image can not be tiled\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "buffer used for overlay image can not be tiled\n");
 		ret = -EINVAL;
 		goto out_unlock;
 	}
@@ -1227,7 +1228,7 @@ int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
 
 	overlay = dev_priv->overlay;
 	if (!overlay) {
-		DRM_DEBUG("userspace bug: no overlay\n");
+		drm_dbg(&dev_priv->drm, "userspace bug: no overlay\n");
 		return -ENODEV;
 	}
 
@@ -1371,7 +1372,7 @@ void intel_overlay_setup(struct drm_i915_private *dev_priv)
 	update_reg_attrs(overlay, overlay->regs);
 
 	dev_priv->overlay = overlay;
-	DRM_INFO("Initialized overlay support.\n");
+	drm_info(&dev_priv->drm, "Initialized overlay support.\n");
 	return;
 
 out_free:
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
