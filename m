Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C460F3718A2
	for <lists+intel-gfx@lfdr.de>; Mon,  3 May 2021 17:58:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 074B06E8F0;
	Mon,  3 May 2021 15:58:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F83C89FD1
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 May 2021 15:58:10 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id
 b14-20020a17090a6e0eb0290155c7f6a356so8892748pjk.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 May 2021 08:58:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7OEZSj81l6tVKCavFJkWpFNqo57ywrKdv2bvXTYOqD4=;
 b=QfaLD/a0otj0p/z5gDlSWMQvtsKsuqEGEWP8lXEHvjkvLcFubr71R51ZBJj/RXw0sq
 SB3WWocaiXDsr/3m0PpmYfNtWpSKjjRQ/Ghn5t4EfpnVjUga64R7IySZprKpcs2KNL90
 tpGaT9K5g10AZ4/N0XSLAJ41IVYKE0NIf1TjSDjyoMTE62V1ISQIXTwbqwOhcNHuheVx
 J8TsSmJxVmdUbtkKLvwIae9QekYKpgCNSxsoPEyqVAw0+gFCpezg1unx9gCuJwbenIke
 4S13Z9W/xKbmwHI3oXljC59hiybLFp9ih1OozrkyZ9k/veMoajXD28JNvIDZGxvLcH6R
 mOdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7OEZSj81l6tVKCavFJkWpFNqo57ywrKdv2bvXTYOqD4=;
 b=AnGpOXHapv+4MoALITmX+ZXzvWPeaGNXryB0bIUDV99nwjsUWfJClkIP8gCuSRwKRg
 NLKKvQ5USY2i8s5QFhE6eft+t5mprWEf/6GLNTyo2lD44xlJf6eAXR6oP0lP12QJ+ssK
 oIHwa2/6lxGiYHi6CXEw2DQhm0HTHxS+yZtWjhS9ZQytV0dcbOuLGU1ZsOKLQERUGLVN
 E1fzxB09GmvSzK/rH5RfjVBxNdjNaMrumEJLsbMBgORLlKmmLN3trvrLcIwcc98g2EZd
 L5xopFZOW2JxEWVwFTJ5xeYPWD32unS3rr5FKSIc3uHN/eoE8vqdqa0U7aYtn28lte6u
 f9Xg==
X-Gm-Message-State: AOAM530Rg2w8Lbm3oO/ln8+3Bw+wGJ+Bj0lwr4/nS3OmJY4mmXnbwVJn
 v1/ojvVB1HLtvmvXYD2ymP2b3/n58zwrKg==
X-Google-Smtp-Source: ABdhPJxHEgLhZjNL80lcpD6W3LbqO7xJaRQC3GtoXhAsicWVmsy/y86zq1/d6VKpCt4PuwBTf1AJYQ==
X-Received: by 2002:a17:902:4:b029:ee:8f40:ecbf with SMTP id
 4-20020a1709020004b02900ee8f40ecbfmr20643769pla.28.1620057489151; 
 Mon, 03 May 2021 08:58:09 -0700 (PDT)
Received: from omlet.com (jfdmzpr05-ext.jf.intel.com. [134.134.139.74])
 by smtp.gmail.com with ESMTPSA id gf21sm9783296pjb.20.2021.05.03.08.58.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 May 2021 08:58:08 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon,  3 May 2021 10:57:29 -0500
Message-Id: <20210503155748.1961781-9-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210503155748.1961781-1-jason@jlekstrand.net>
References: <20210503155748.1961781-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/27] drm/i915: Drop getparam support for
 I915_CONTEXT_PARAM_ENGINES
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This has never been used by any userspace except IGT and provides no
real functionality beyond parroting back parameters userspace passed in
as part of context creation or via setparam.  If the context is in
legacy mode (where you use I915_EXEC_RENDER and friends), it returns
success with zero data so it's not useful for discovering what engines
are in the context.  It's also not a replacement for the recently
removed I915_CONTEXT_CLONE_ENGINES because it doesn't return any of the
balancing or bonding information.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 77 +--------------------
 1 file changed, 1 insertion(+), 76 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 3f99ef5a72f57..92e55441a7621 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1725,78 +1725,6 @@ set_engines(struct i915_gem_context *ctx,
 	return 0;
 }
 
-static int
-get_engines(struct i915_gem_context *ctx,
-	    struct drm_i915_gem_context_param *args)
-{
-	struct i915_context_param_engines __user *user;
-	struct i915_gem_engines *e;
-	size_t n, count, size;
-	bool user_engines;
-	int err = 0;
-
-	e = __context_engines_await(ctx, &user_engines);
-	if (!e)
-		return -ENOENT;
-
-	if (!user_engines) {
-		i915_sw_fence_complete(&e->fence);
-		args->size = 0;
-		return 0;
-	}
-
-	count = e->num_engines;
-
-	/* Be paranoid in case we have an impedance mismatch */
-	if (!check_struct_size(user, engines, count, &size)) {
-		err = -EINVAL;
-		goto err_free;
-	}
-	if (overflows_type(size, args->size)) {
-		err = -EINVAL;
-		goto err_free;
-	}
-
-	if (!args->size) {
-		args->size = size;
-		goto err_free;
-	}
-
-	if (args->size < size) {
-		err = -EINVAL;
-		goto err_free;
-	}
-
-	user = u64_to_user_ptr(args->value);
-	if (put_user(0, &user->extensions)) {
-		err = -EFAULT;
-		goto err_free;
-	}
-
-	for (n = 0; n < count; n++) {
-		struct i915_engine_class_instance ci = {
-			.engine_class = I915_ENGINE_CLASS_INVALID,
-			.engine_instance = I915_ENGINE_CLASS_INVALID_NONE,
-		};
-
-		if (e->engines[n]) {
-			ci.engine_class = e->engines[n]->engine->uabi_class;
-			ci.engine_instance = e->engines[n]->engine->uabi_instance;
-		}
-
-		if (copy_to_user(&user->engines[n], &ci, sizeof(ci))) {
-			err = -EFAULT;
-			goto err_free;
-		}
-	}
-
-	args->size = size;
-
-err_free:
-	i915_sw_fence_complete(&e->fence);
-	return err;
-}
-
 static int
 set_persistence(struct i915_gem_context *ctx,
 		const struct drm_i915_gem_context_param *args)
@@ -2127,10 +2055,6 @@ int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
 		ret = get_ppgtt(file_priv, ctx, args);
 		break;
 
-	case I915_CONTEXT_PARAM_ENGINES:
-		ret = get_engines(ctx, args);
-		break;
-
 	case I915_CONTEXT_PARAM_PERSISTENCE:
 		args->size = 0;
 		args->value = i915_gem_context_is_persistent(ctx);
@@ -2138,6 +2062,7 @@ int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
 
 	case I915_CONTEXT_PARAM_NO_ZEROMAP:
 	case I915_CONTEXT_PARAM_BAN_PERIOD:
+	case I915_CONTEXT_PARAM_ENGINES:
 	case I915_CONTEXT_PARAM_RINGSIZE:
 	default:
 		ret = -EINVAL;
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
