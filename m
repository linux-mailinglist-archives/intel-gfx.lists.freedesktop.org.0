Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A36E16FBB8
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 11:11:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A23596E440;
	Wed, 26 Feb 2020 10:11:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA9056E440
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 10:11:51 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id t23so2310384wmi.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 02:11:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YRfsiAZXQdD+7zTwILCmfp/F9fMCLkFVRowwV6Po1HA=;
 b=EGUw4+1LNHgGQt4sTJFYosG9k4XoEv/IwsXJVhU2BU9UIb013hOFsGy5eIdr0U50qV
 Su6w6PF3KqKjLEzrk9dCON8dr8V3GCcEjopO3lXbHfUgWfxdd7ZI3kLLHWAfM7pWyKwW
 V7mmSTHMlOQaf5Vp4Ql5hCliruiC84H/z1NMeXbq3uHMWm0pFxVAohRwGvd1neRqiqK+
 jUK/ptFiVKOOOzpTul/B2mJloBt1EkEGbFfMpC+1/vlTy32G+7FG+rW9jJDZEsX6POJC
 vOqlz75KIL6uBD1hkIdsk4zPEHlYmapH0/eJt4eSAhYwipeEvAH3YShefoAL11D1VN0L
 nyDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YRfsiAZXQdD+7zTwILCmfp/F9fMCLkFVRowwV6Po1HA=;
 b=W5VWiDInhKmUGp5GX5mFchjmVyAGEpJXoFvIu3nJev8IDv6NU3bFXov2whiU4B2jF2
 7rtL5oo+Ng/fO4jzAVExrK6c9gXbd5+OsANPuTLtS092LaqZS5aJdudpexKozmXPBirI
 Go3Qqe1XMCCRdPTlIjMCnFglIONO5JOkda7uNUhiXZ0mamU2JUEROtNGARM5rl6jhQtS
 rLgJM6gSUnhFUTnndx6FSHTwHdcD7pBw0ERiQeteoE64KRGU3637nl+WKAyIBI+kCkkP
 lpA6YsuIP1dvzB1ry0KySbCWzPymnzMBmbrcn5SZlziqpwXXE0F/RYTxAC70fSdTB8uX
 7yLQ==
X-Gm-Message-State: APjAAAWWKlNJxzReUirmIBefwvl+pWMSN2Ia8K3QgVH3Q+fgmFPQdySz
 lMNMaFrajaNj3on0BBHGd4w=
X-Google-Smtp-Source: APXvYqzlI68p+ARJhpux4enDwFIlyF9Sy61+jKhZFcJL4kYrqNNDdmlH0x5MTJIhPxzdl/a4UCkCVA==
X-Received: by 2002:a7b:cc88:: with SMTP id p8mr4552615wma.141.1582711910353; 
 Wed, 26 Feb 2020 02:11:50 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id r3sm2558190wrn.34.2020.02.26.02.11.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 02:11:49 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Wed, 26 Feb 2020 13:11:29 +0300
Message-Id: <20200226101138.15435-2-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200226101138.15435-1-wambui.karugax@gmail.com>
References: <20200226101138.15435-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/10] drm/i915/dsb: convert to drm_device based
 logging macros.
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

This converts uses of the printk based drm logging macros to the struct
drm_device logging macros in i915/display/intel_dsb.c. This was done
using the following coccinelle script:
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

Checkpatch warnings were fixed manually.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 28 ++++++++++++++----------
 1 file changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 76ae01277fd6..d7a6bf2277df 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -52,7 +52,7 @@ static inline bool intel_dsb_enable_engine(struct intel_dsb *dsb)
 
 	dsb_ctrl = intel_de_read(dev_priv, DSB_CTRL(pipe, dsb->id));
 	if (DSB_STATUS & dsb_ctrl) {
-		DRM_DEBUG_KMS("DSB engine is busy.\n");
+		drm_dbg_kms(&dev_priv->drm, "DSB engine is busy.\n");
 		return false;
 	}
 
@@ -72,7 +72,7 @@ static inline bool intel_dsb_disable_engine(struct intel_dsb *dsb)
 
 	dsb_ctrl = intel_de_read(dev_priv, DSB_CTRL(pipe, dsb->id));
 	if (DSB_STATUS & dsb_ctrl) {
-		DRM_DEBUG_KMS("DSB engine is busy.\n");
+		drm_dbg_kms(&dev_priv->drm, "DSB engine is busy.\n");
 		return false;
 	}
 
@@ -115,20 +115,20 @@ intel_dsb_get(struct intel_crtc *crtc)
 
 	obj = i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
 	if (IS_ERR(obj)) {
-		DRM_ERROR("Gem object creation failed\n");
+		drm_err(&i915->drm, "Gem object creation failed\n");
 		goto out;
 	}
 
 	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
 	if (IS_ERR(vma)) {
-		DRM_ERROR("Vma creation failed\n");
+		drm_err(&i915->drm, "Vma creation failed\n");
 		i915_gem_object_put(obj);
 		goto out;
 	}
 
 	buf = i915_gem_object_pin_map(vma->obj, I915_MAP_WC);
 	if (IS_ERR(buf)) {
-		DRM_ERROR("Command buffer creation failed\n");
+		drm_err(&i915->drm, "Command buffer creation failed\n");
 		goto out;
 	}
 
@@ -203,7 +203,7 @@ void intel_dsb_indexed_reg_write(struct intel_dsb *dsb, i915_reg_t reg,
 	}
 
 	if (drm_WARN_ON(&dev_priv->drm, dsb->free_pos >= DSB_BUF_SIZE)) {
-		DRM_DEBUG_KMS("DSB buffer overflow\n");
+		drm_dbg_kms(&dev_priv->drm, "DSB buffer overflow\n");
 		return;
 	}
 
@@ -277,7 +277,7 @@ void intel_dsb_reg_write(struct intel_dsb *dsb, i915_reg_t reg, u32 val)
 	}
 
 	if (drm_WARN_ON(&dev_priv->drm, dsb->free_pos >= DSB_BUF_SIZE)) {
-		DRM_DEBUG_KMS("DSB buffer overflow\n");
+		drm_dbg_kms(&dev_priv->drm, "DSB buffer overflow\n");
 		return;
 	}
 
@@ -310,7 +310,8 @@ void intel_dsb_commit(struct intel_dsb *dsb)
 		goto reset;
 
 	if (is_dsb_busy(dsb)) {
-		DRM_ERROR("HEAD_PTR write failed - dsb engine is busy.\n");
+		drm_err(&dev_priv->drm,
+			"HEAD_PTR write failed - dsb engine is busy.\n");
 		goto reset;
 	}
 	intel_de_write(dev_priv, DSB_HEAD(pipe, dsb->id),
@@ -322,15 +323,18 @@ void intel_dsb_commit(struct intel_dsb *dsb)
 		       (tail - dsb->free_pos * 4));
 
 	if (is_dsb_busy(dsb)) {
-		DRM_ERROR("TAIL_PTR write failed - dsb engine is busy.\n");
+		drm_err(&dev_priv->drm,
+			"TAIL_PTR write failed - dsb engine is busy.\n");
 		goto reset;
 	}
-	DRM_DEBUG_KMS("DSB execution started - head 0x%x, tail 0x%x\n",
-		      i915_ggtt_offset(dsb->vma), tail);
+	drm_dbg_kms(&dev_priv->drm,
+		    "DSB execution started - head 0x%x, tail 0x%x\n",
+		    i915_ggtt_offset(dsb->vma), tail);
 	intel_de_write(dev_priv, DSB_TAIL(pipe, dsb->id),
 		       i915_ggtt_offset(dsb->vma) + tail);
 	if (wait_for(!is_dsb_busy(dsb), 1)) {
-		DRM_ERROR("Timed out waiting for DSB workload completion.\n");
+		drm_err(&dev_priv->drm,
+			"Timed out waiting for DSB workload completion.\n");
 		goto reset;
 	}
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
