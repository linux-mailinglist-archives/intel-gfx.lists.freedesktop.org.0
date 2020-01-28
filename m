Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B347014B025
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 08:14:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04D176ECB0;
	Tue, 28 Jan 2020 07:14:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D857D6ECAE
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 07:14:53 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id f129so1299261wmf.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 23:14:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rGUV5vwC+J4YaGrBfT7SwH7LhrvkG56hLYR+dL52/DQ=;
 b=IVmrlVWjqiSqCVWoY8P1sVbL3t0YqjmlE/1q3QV+CLtT0dNFlfuwAudV9LUBiMQBEj
 vBruZ+LzYhSurR0an95IIHRsh8+TwZKWCqOvlGFXsaxBX/G8xFmEBKslEGwTFSa8EMp0
 Cc357iGFiYyu0+ppxnHaTjr8IZamHqvtrjdyOB41X1YG2ACInBW9rsnmLubv1U4v8ziU
 JvABc6QmmIJ838IRp7GRLpwGx9hYZTgxCkJ3WKyLoGT7PeyrkxdKxw8zVrR+R4pWS5e4
 Ubl2SaN6/qvLjeukOPSZV7CNB+Pd8Lc6Pr+f7KtBZ5aTypcBXi3bs92C4RFJvG2foPo/
 3A6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rGUV5vwC+J4YaGrBfT7SwH7LhrvkG56hLYR+dL52/DQ=;
 b=oIxFUSNdVwdxYP4OIvraRw0jlV+OzcLeitQ0W6BfK/fWxCYv0ZLktwStOPbKeUp+eW
 DhLG9eKXAfO+YFF3lwZOKwIhrbRSFjMrzeziwp1PUs7x9l9Z7RdLuP3++faJtGr4Ea0j
 on5P9wjnuMjlBfmtLEyYm94jZuggRLGuXth4fFLCgETMG6nHmKImy2Ou5Sd8h2KctJfU
 Kf7/6oE6mIBBWFrS4dlrGLoX/BAUCoLXEXT/rr36YIz2zZGL9J0v9K8M96dhkXLk0eh7
 PwqfAQ47ahOKOBT59wqcAJkooIjnmKV7tEg06yZjxa8nW+yJqcy08/BjudiQgJDORCoB
 2oDA==
X-Gm-Message-State: APjAAAUlVykvNn9bQ2L4sEd4NnRVNs/07X8dx/J70oMTyTEXqpBiPSdt
 J24wTeBVnvoJA7aca006YtI=
X-Google-Smtp-Source: APXvYqy7tneZOSr5cPawRHXHwuPuG2DuiRgMmHiT18y+CCdP+zpVC9rZ7tutP7wFCNrMYhM7WBZz4A==
X-Received: by 2002:a1c:e488:: with SMTP id b130mr2994389wmh.108.1580195692538; 
 Mon, 27 Jan 2020 23:14:52 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id b67sm1794420wmc.38.2020.01.27.23.14.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 23:14:52 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Tue, 28 Jan 2020 10:14:32 +0300
Message-Id: <20200128071437.9284-4-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200128071437.9284-1-wambui.karugax@gmail.com>
References: <20200128071437.9284-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/8] drm/i915/reset: conversion to new drm
 logging macros in gt/intel_reset.c
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

This converts most instances of the printk based drm logging macros in
i915/gt/intel_resect.c to the new struct drm_based logging macros.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/gt/intel_reset.c | 48 +++++++++++++++------------
 1 file changed, 26 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index beee0cf89bce..df8240324714 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -72,9 +72,10 @@ static void client_mark_guilty(struct i915_gem_context *ctx, bool banned)
 	if (score) {
 		atomic_add(score, &file_priv->ban_score);
 
-		DRM_DEBUG_DRIVER("client %s: gained %u ban score, now %u\n",
-				 ctx->name, score,
-				 atomic_read(&file_priv->ban_score));
+		drm_dbg(&ctx->i915->drm,
+			"client %s: gained %u ban score, now %u\n",
+			ctx->name, score,
+			atomic_read(&file_priv->ban_score));
 	}
 }
 
@@ -122,8 +123,8 @@ static bool mark_guilty(struct i915_request *rq)
 	if (time_before(jiffies, prev_hang + CONTEXT_FAST_HANG_JIFFIES))
 		banned = true;
 	if (banned) {
-		DRM_DEBUG_DRIVER("context %s: guilty %d, banned\n",
-				 ctx->name, atomic_read(&ctx->guilty_count));
+		drm_dbg(&ctx->i915->drm, "context %s: guilty %d, banned\n",
+			ctx->name, atomic_read(&ctx->guilty_count));
 		intel_context_set_banned(rq->context);
 	}
 
@@ -226,7 +227,7 @@ static int g4x_do_reset(struct intel_gt *gt,
 			      GRDOM_MEDIA | GRDOM_RESET_ENABLE);
 	ret =  wait_for_atomic(g4x_reset_complete(pdev), 50);
 	if (ret) {
-		DRM_DEBUG_DRIVER("Wait for media reset failed\n");
+		drm_dbg(&gt->i915->drm, "Wait for media reset failed\n");
 		goto out;
 	}
 
@@ -234,7 +235,7 @@ static int g4x_do_reset(struct intel_gt *gt,
 			      GRDOM_RENDER | GRDOM_RESET_ENABLE);
 	ret =  wait_for_atomic(g4x_reset_complete(pdev), 50);
 	if (ret) {
-		DRM_DEBUG_DRIVER("Wait for render reset failed\n");
+		drm_dbg(&gt->i915->drm, "Wait for render reset failed\n");
 		goto out;
 	}
 
@@ -260,7 +261,7 @@ static int ilk_do_reset(struct intel_gt *gt, intel_engine_mask_t engine_mask,
 					   5000, 0,
 					   NULL);
 	if (ret) {
-		DRM_DEBUG_DRIVER("Wait for render reset failed\n");
+		drm_dbg(&gt->i915->drm, "Wait for render reset failed\n");
 		goto out;
 	}
 
@@ -271,7 +272,7 @@ static int ilk_do_reset(struct intel_gt *gt, intel_engine_mask_t engine_mask,
 					   5000, 0,
 					   NULL);
 	if (ret) {
-		DRM_DEBUG_DRIVER("Wait for media reset failed\n");
+		drm_dbg(&gt->i915->drm, "Wait for media reset failed\n");
 		goto out;
 	}
 
@@ -300,8 +301,9 @@ static int gen6_hw_domain_reset(struct intel_gt *gt, u32 hw_domain_mask)
 					   500, 0,
 					   NULL);
 	if (err)
-		DRM_DEBUG_DRIVER("Wait for 0x%08x engines reset failed\n",
-				 hw_domain_mask);
+		drm_dbg(&gt->i915->drm,
+			"Wait for 0x%08x engines reset failed\n",
+			hw_domain_mask);
 
 	return err;
 }
@@ -401,7 +403,8 @@ static int gen11_lock_sfc(struct intel_engine_cs *engine, u32 *hw_mask)
 		return 0;
 
 	if (ret) {
-		DRM_DEBUG_DRIVER("Wait for SFC forced lock ack failed\n");
+		drm_dbg(&engine->i915->drm,
+			"Wait for SFC forced lock ack failed\n");
 		return ret;
 	}
 
@@ -515,9 +518,10 @@ static int gen8_engine_reset_prepare(struct intel_engine_cs *engine)
 	ret = __intel_wait_for_register_fw(uncore, reg, mask, ack,
 					   700, 0, NULL);
 	if (ret)
-		DRM_ERROR("%s reset request timed out: {request: %08x, RESET_CTL: %08x}\n",
-			  engine->name, request,
-			  intel_uncore_read_fw(uncore, reg));
+		drm_err(&engine->i915->drm,
+			"%s reset request timed out: {request: %08x, RESET_CTL: %08x}\n",
+			engine->name, request,
+			intel_uncore_read_fw(uncore, reg));
 
 	return ret;
 }
@@ -1022,7 +1026,7 @@ void intel_gt_reset(struct intel_gt *gt,
 		if (i915_modparams.reset)
 			dev_err(gt->i915->drm.dev, "GPU reset not supported\n");
 		else
-			DRM_DEBUG_DRIVER("GPU reset disabled\n");
+			drm_dbg(&gt->i915->drm, "GPU reset disabled\n");
 		goto error;
 	}
 
@@ -1049,8 +1053,9 @@ void intel_gt_reset(struct intel_gt *gt,
 	 */
 	ret = intel_gt_init_hw(gt);
 	if (ret) {
-		DRM_ERROR("Failed to initialise HW following reset (%d)\n",
-			  ret);
+		drm_err(&gt->i915->drm,
+			"Failed to initialise HW following reset (%d)\n",
+			ret);
 		goto taint;
 	}
 
@@ -1126,9 +1131,8 @@ int intel_engine_reset(struct intel_engine_cs *engine, const char *msg)
 		ret = intel_guc_reset_engine(&engine->gt->uc.guc, engine);
 	if (ret) {
 		/* If we fail here, we expect to fallback to a global reset */
-		DRM_DEBUG_DRIVER("%sFailed to reset %s, ret=%d\n",
-				 uses_guc ? "GuC " : "",
-				 engine->name, ret);
+		drm_dbg(&gt->i915->drm, "%sFailed to reset %s, ret=%d\n",
+			uses_guc ? "GuC " : "", engine->name, ret);
 		goto out;
 	}
 
@@ -1165,7 +1169,7 @@ static void intel_gt_reset_global(struct intel_gt *gt,
 
 	kobject_uevent_env(kobj, KOBJ_CHANGE, error_event);
 
-	DRM_DEBUG_DRIVER("resetting chip\n");
+	drm_dbg(&gt->i915->drm, "resetting chip\n");
 	kobject_uevent_env(kobj, KOBJ_CHANGE, reset_event);
 
 	/* Use a watchdog to ensure that our reset completes */
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
