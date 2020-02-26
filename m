Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D92A16FBB9
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 11:11:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D424C6E450;
	Wed, 26 Feb 2020 10:11:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F5C96E450
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 10:11:55 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id i10so3083150wmd.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 02:11:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jl5FDZ3E6dCzbCbZDISwzrkzl19kiYK7mBc86RyC/mE=;
 b=MdUIbT/yzM79++m9xDpLPUkJ0etq7/JgaFG57UOc9OY6XX5vTvpQQQTTivwTUwChKF
 KiSfOyTtL68jCsiqWxIPsWwgtHqbxT95Y1XWdBF/hu2DZfiSbBPlqVTqWurNNp1YrC4k
 Z0fMUcKDDm/TswX0nXtq/EkAfBEfpvUNmY+4CiwUgCwsDFplJPOd79jnrJbmFk5yhcRE
 8WcJziwcOQYV4IqGfkqv+bsYsNy718c7LuKJKHLIt29ccqWp5K+BXv80pEUlwfwXP6AI
 TGAi2dPufrBx1XU13U+sIB5parB2AmI30GcuN9VtDrvoUBQDHDg0gLydEef+opY4HrBW
 lgAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jl5FDZ3E6dCzbCbZDISwzrkzl19kiYK7mBc86RyC/mE=;
 b=cSzBd6e0TKZMf8Uw8HpIjbASc6SjKUf+6bWgrfU+C0gGIbrkS15rjDN1fKdiw46slK
 Md94clY0VY5x1FLEvcQcxUoa07lTQteOpwnKAi1TrFJXjcyjXbvGCg8b0qVchcVjPbP2
 F37IocATnTKHds/dA+hwRXlKJS0wfSPM3j3tvmDClU4Q1hslJ2M1MY0qLw0ODfc/meBt
 I8j1Hz/cg7wBlEWXOsVgTSaIGfsM0ETx2UfViUcuF95/RHwKXKgZSsipny/kGA+TyZ+W
 IvAgZLo1d41b5SD9zaBOF5t72DgPrVo+vLS11sBoZZiUiRLey4d6SUp+H87hT8LZWR31
 t8YQ==
X-Gm-Message-State: APjAAAURwWyQbaR2BA5Y4nzHKumapowrOiTLGJWvwtmp3/D6uOQ6ryLF
 o7QkYG8ddyiXwKo5sFtnOEU=
X-Google-Smtp-Source: APXvYqwb1iMPFKMmV9PUzZ4eceFRQHl9J/zvcnNDBQuQrDzMGn7gQtmOkwzI2gceR5Un04ev/HBAyQ==
X-Received: by 2002:a1c:4383:: with SMTP id q125mr4595239wma.88.1582711913973; 
 Wed, 26 Feb 2020 02:11:53 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id r3sm2558190wrn.34.2020.02.26.02.11.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 02:11:53 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Wed, 26 Feb 2020 13:11:30 +0300
Message-Id: <20200226101138.15435-3-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200226101138.15435-1-wambui.karugax@gmail.com>
References: <20200226101138.15435-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/10] drm/i915/fbc: convert to drm_device based
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

This replaces the uses of the printk based drm logging macros with the
struct drm_device based logging macros in i915/display/intel_fbc.c.
This transformation was done using the following coccinelle semantic
patch that matches based on the existence of a drm_i915_private device
pointer:
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

New checkpatch warnings were addressed manually.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 28 ++++++++++++++----------
 1 file changed, 17 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index ddf8d3bb7a7d..356680b402d9 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -103,7 +103,7 @@ static void i8xx_fbc_deactivate(struct drm_i915_private *dev_priv)
 	/* Wait for compressing bit to clear */
 	if (intel_de_wait_for_clear(dev_priv, FBC_STATUS,
 				    FBC_STAT_COMPRESSING, 10)) {
-		DRM_DEBUG_KMS("FBC idle timed out\n");
+		drm_dbg_kms(&dev_priv->drm, "FBC idle timed out\n");
 		return;
 	}
 }
@@ -484,7 +484,8 @@ static int intel_fbc_alloc_cfb(struct drm_i915_private *dev_priv,
 	if (!ret)
 		goto err_llb;
 	else if (ret > 1) {
-		DRM_INFO("Reducing the compressed framebuffer size. This may lead to less power savings than a non-reduced-size. Try to increase stolen memory size if available in BIOS.\n");
+		drm_info(&dev_priv->drm,
+			 "Reducing the compressed framebuffer size. This may lead to less power savings than a non-reduced-size. Try to increase stolen memory size if available in BIOS.\n");
 
 	}
 
@@ -520,8 +521,9 @@ static int intel_fbc_alloc_cfb(struct drm_i915_private *dev_priv,
 			       dev_priv->dsm.start + compressed_llb->start);
 	}
 
-	DRM_DEBUG_KMS("reserved %llu bytes of contiguous stolen space for FBC, threshold: %d\n",
-		      fbc->compressed_fb.size, fbc->threshold);
+	drm_dbg_kms(&dev_priv->drm,
+		    "reserved %llu bytes of contiguous stolen space for FBC, threshold: %d\n",
+		    fbc->compressed_fb.size, fbc->threshold);
 
 	return 0;
 
@@ -944,7 +946,8 @@ static void __intel_fbc_disable(struct drm_i915_private *dev_priv)
 	drm_WARN_ON(&dev_priv->drm, !fbc->crtc);
 	drm_WARN_ON(&dev_priv->drm, fbc->active);
 
-	DRM_DEBUG_KMS("Disabling FBC on pipe %c\n", pipe_name(crtc->pipe));
+	drm_dbg_kms(&dev_priv->drm, "Disabling FBC on pipe %c\n",
+		    pipe_name(crtc->pipe));
 
 	__intel_fbc_cleanup_cfb(dev_priv);
 
@@ -1172,7 +1175,8 @@ void intel_fbc_enable(struct intel_atomic_state *state,
 	else
 		cache->gen9_wa_cfb_stride = 0;
 
-	DRM_DEBUG_KMS("Enabling FBC on pipe %c\n", pipe_name(crtc->pipe));
+	drm_dbg_kms(&dev_priv->drm, "Enabling FBC on pipe %c\n",
+		    pipe_name(crtc->pipe));
 	fbc->no_fbc_reason = "FBC enabled but not active yet\n";
 
 	fbc->crtc = crtc;
@@ -1234,7 +1238,7 @@ static void intel_fbc_underrun_work_fn(struct work_struct *work)
 	if (fbc->underrun_detected || !fbc->crtc)
 		goto out;
 
-	DRM_DEBUG_KMS("Disabling FBC due to FIFO underrun.\n");
+	drm_dbg_kms(&dev_priv->drm, "Disabling FBC due to FIFO underrun.\n");
 	fbc->underrun_detected = true;
 
 	intel_fbc_deactivate(dev_priv, "FIFO underrun");
@@ -1260,7 +1264,8 @@ int intel_fbc_reset_underrun(struct drm_i915_private *dev_priv)
 		return ret;
 
 	if (dev_priv->fbc.underrun_detected) {
-		DRM_DEBUG_KMS("Re-allowing FBC after fifo underrun\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "Re-allowing FBC after fifo underrun\n");
 		dev_priv->fbc.no_fbc_reason = "FIFO underrun cleared";
 	}
 
@@ -1331,7 +1336,8 @@ static bool need_fbc_vtd_wa(struct drm_i915_private *dev_priv)
 	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
 	if (intel_vtd_active() &&
 	    (IS_SKYLAKE(dev_priv) || IS_BROXTON(dev_priv))) {
-		DRM_INFO("Disabling framebuffer compression (FBC) to prevent screen flicker with VT-d enabled\n");
+		drm_info(&dev_priv->drm,
+			 "Disabling framebuffer compression (FBC) to prevent screen flicker with VT-d enabled\n");
 		return true;
 	}
 
@@ -1359,8 +1365,8 @@ void intel_fbc_init(struct drm_i915_private *dev_priv)
 		mkwrite_device_info(dev_priv)->display.has_fbc = false;
 
 	i915_modparams.enable_fbc = intel_sanitize_fbc_option(dev_priv);
-	DRM_DEBUG_KMS("Sanitized enable_fbc value: %d\n",
-		      i915_modparams.enable_fbc);
+	drm_dbg_kms(&dev_priv->drm, "Sanitized enable_fbc value: %d\n",
+		    i915_modparams.enable_fbc);
 
 	if (!HAS_FBC(dev_priv)) {
 		fbc->no_fbc_reason = "unsupported by this chipset";
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
