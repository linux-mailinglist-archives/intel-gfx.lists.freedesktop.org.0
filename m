Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FBBC16FBC3
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 11:12:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09E946E45E;
	Wed, 26 Feb 2020 10:12:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE05B6E46D
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 10:12:24 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id a5so2311732wmb.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 02:12:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=D+5EDmU/i4eaQLtcqAziX7PTmVAeWPa5JDX8ZST2Q+o=;
 b=H9eHSs51vcnyWb5a2lEYgdYRx1AdCA9OoWiJbjIq6slwC/vnNR6SS2KWd7qALfn50x
 ipcenmCxPG8psLkPKEY2Kz+4CU4TzzsiYB7xDHOBGFinsdLvv8ysQd0jLZib1Uif36lY
 47nWbQUqDk9RUO58buZrqmqXev9jet63Dg2wx98Fb+fmJftD9JV7UWFR9XbazmklDewC
 sJ+9Wxnl541Rs8z3MCgWecEFGXSPiupkk7+6SWD5rbSNgfvmHSA6FtYmL3dUN1JExYVh
 BvaJwO4lFtJMS8LWUEiTIobO6FI3C72qP+1znV7AA4Jv4QSkMlxhGqdoQ9QvfFxnpZ/D
 rumg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=D+5EDmU/i4eaQLtcqAziX7PTmVAeWPa5JDX8ZST2Q+o=;
 b=aip0oC8aEiHtymlZggYWYfwbUKY8APhL25n0jctlGe62zGH8Zfe+UFTxQm/tf7Jcud
 X1aydzde5JATkwvLSuLnmynMijw1pL+19nrHO7VayEGhCCNHjo73tcoMxtPbELZCckX4
 ON7u3675+p7VKWz33kmEJDgJyvMi9bz9IloceHAqyVsAVVNm49znbG1htC5RGukicf0M
 xSyxhtfVvie4s+S1xYDC4H73/R5VTulk+OCMUoHYYMMIG6ozNk8PXMG8xu0G7/W2nAxJ
 K3o9yIAp8bsrlUVT822RRpnwiXAaadQNbVKO8hkjZ8TB53f0xJLj0vOohExiHmfPE+Oe
 P45Q==
X-Gm-Message-State: APjAAAVIsSge7cJCcjHKTxxz5Fin3bvRecjM+cM2RpsgyM64n2cXqYCL
 cw4mU3tWhS3hGRIvfUUJDyyvV09T0mw=
X-Google-Smtp-Source: APXvYqyTbLWrOIssTpC7fT2t1FRFkpYoBjf2y5CWs9Ig9UUZaL+M4ad86toNz/Yk08asDi6vlvUfoQ==
X-Received: by 2002:a1c:488a:: with SMTP id v132mr4710097wma.153.1582711943578; 
 Wed, 26 Feb 2020 02:12:23 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id r3sm2558190wrn.34.2020.02.26.02.12.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 02:12:23 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Wed, 26 Feb 2020 13:11:38 +0300
Message-Id: <20200226101138.15435-11-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200226101138.15435-1-wambui.karugax@gmail.com>
References: <20200226101138.15435-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

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
---
 drivers/gpu/drm/i915/display/intel_overlay.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 5f1207dec10e..97754ad340b8 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -324,7 +324,7 @@ static int intel_overlay_continue(struct intel_overlay *overlay,
 	/* check for underruns */
 	tmp = intel_de_read(dev_priv, DOVSTA);
 	if (tmp & (1 << 17))
-		DRM_DEBUG("overlay underrun, DOVSTA: %x\n", tmp);
+		drm_dbg(&dev_priv->drm, "overlay underrun, DOVSTA: %x\n", tmp);
 
 	rq = alloc_request(overlay, NULL);
 	if (IS_ERR(rq))
@@ -1069,7 +1069,7 @@ int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
 
 	overlay = dev_priv->overlay;
 	if (!overlay) {
-		DRM_DEBUG("userspace bug: no overlay\n");
+		drm_dbg(&dev_priv->drm, "userspace bug: no overlay\n");
 		return -ENODEV;
 	}
 
@@ -1093,7 +1093,8 @@ int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
 	drm_modeset_lock_all(dev);
 
 	if (i915_gem_object_is_tiled(new_bo)) {
-		DRM_DEBUG_KMS("buffer used for overlay image can not be tiled\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "buffer used for overlay image can not be tiled\n");
 		ret = -EINVAL;
 		goto out_unlock;
 	}
@@ -1228,7 +1229,7 @@ int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
 
 	overlay = dev_priv->overlay;
 	if (!overlay) {
-		DRM_DEBUG("userspace bug: no overlay\n");
+		drm_dbg(&dev_priv->drm, "userspace bug: no overlay\n");
 		return -ENODEV;
 	}
 
@@ -1372,7 +1373,7 @@ void intel_overlay_setup(struct drm_i915_private *dev_priv)
 	update_reg_attrs(overlay, overlay->regs);
 
 	dev_priv->overlay = overlay;
-	DRM_INFO("Initialized overlay support.\n");
+	drm_info(&dev_priv->drm, "Initialized overlay support.\n");
 	return;
 
 out_free:
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
