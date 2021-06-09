Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F003A1C18
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 19:44:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48F596EA9B;
	Wed,  9 Jun 2021 17:44:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com
 [IPv6:2607:f8b0:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8FC46EA95
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 17:44:37 +0000 (UTC)
Received: by mail-pf1-x430.google.com with SMTP id q25so18987798pfh.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Jun 2021 10:44:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dczuWBcu8GQi5n1SjUOULDfc1KecOud9gwXQi7cWpdA=;
 b=1kN4QWd5kmFigdl2PrFasVi/X/DndFEMtM3wxIl01tmA2YwpTgw/JEeczon+moxDW/
 5ONEpmTHIrwIMl+nKBf8Qo4sPX85QewIncj9B8hquESpUcnWxzJDTIDzaOOEmbPRlgVO
 X2R+Fr26Yw6PIOY7ImTgrKdRg+eoDC+xB1+VYfdoTjEBCSTVb0g8p5kL4sCeVHwf4j+b
 FJ24jGTtUI0jZwFbTUKTiXnw6uhy6P5zBJRP/IPgrn1oMt0GPhhlNZw2nPC6flBW6x3y
 FDxVMlSympR0XCIVcglSCAVTvc2vilsjqwGEOibTx80V5DsO1ilrsKk5wnlqx408z9bJ
 XQDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dczuWBcu8GQi5n1SjUOULDfc1KecOud9gwXQi7cWpdA=;
 b=rE/F16qYJwnHFj3Z8q2SokMKvkQGeyhTbCnz0D2Uo9GnyVXYYX1BskgaSAkif2m2zX
 hG++rkpTgMmVM16R0eHiZuDv+a7sOisXdEFMKDgsgLAzIwQFnno/bfBsRh9jNt9SFxIT
 p0Ne+UHkJwyjD/WSAQfd4xX2V652JBwGDiGyir3ciqbIUkiZOvSybK8fYRS2B6Ivr/DR
 4+DSEUURNFlP9vGcJyXkOWg/QBn6X1oCWKpTO8kTL4kivJU7Hw1OsQinW30kbjF11C7p
 2gY7/LI+1qT/UvLC0dVOreLoJPS1SBXn5amzOtoUvhLzFS0G/rZVGK+T5pi/7UTqAmOd
 c2fg==
X-Gm-Message-State: AOAM533gvXZMJC4a8HtOcTz2e+TDqK+uQ8l0YMn0pMB0xpdeQ7/V0vkU
 LwCssS1unM5RnDcG4Y/Ej0ddgA==
X-Google-Smtp-Source: ABdhPJy+/mBNMI6ObrxRcUUTM/2IK266zWWRbCOrWkL7Z28o3uDk8FW8my6x9WERgP1E6s34hzmPUQ==
X-Received: by 2002:a63:5743:: with SMTP id h3mr835672pgm.362.1623260677187;
 Wed, 09 Jun 2021 10:44:37 -0700 (PDT)
Received: from omlet.lan (jfdmzpr04-ext.jf.intel.com. [134.134.137.73])
 by smtp.gmail.com with ESMTPSA id b10sm208619pfi.122.2021.06.09.10.44.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Jun 2021 10:44:36 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed,  9 Jun 2021 12:43:55 -0500
Message-Id: <20210609174418.249585-9-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210609174418.249585-1-jason@jlekstrand.net>
References: <20210609174418.249585-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/31] drm/i915: Drop getparam support for
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
index 249bd36f14019..e36e3b1ae14e4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1724,78 +1724,6 @@ set_engines(struct i915_gem_context *ctx,
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
@@ -2126,10 +2054,6 @@ int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
 		ret = get_ppgtt(file_priv, ctx, args);
 		break;
 
-	case I915_CONTEXT_PARAM_ENGINES:
-		ret = get_engines(ctx, args);
-		break;
-
 	case I915_CONTEXT_PARAM_PERSISTENCE:
 		args->size = 0;
 		args->value = i915_gem_context_is_persistent(ctx);
@@ -2137,6 +2061,7 @@ int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
 
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
