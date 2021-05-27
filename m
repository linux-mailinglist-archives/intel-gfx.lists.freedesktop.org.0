Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 447173933CA
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 18:27:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 849016F44C;
	Thu, 27 May 2021 16:27:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com
 [IPv6:2607:f8b0:4864:20::532])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E88446F447
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 16:27:07 +0000 (UTC)
Received: by mail-pg1-x532.google.com with SMTP id t193so329284pgb.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 09:27:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AyP1owwRF3BjuE5EqLIJztkbKir3ysHS+oxbwFsHWUs=;
 b=DsT0XqO1+sWqSLUazm6a+TgVVtPA9IX/+p3jwt3da403fyYW6MPOxcDAqVDZpvyyMq
 xF3PL7KqgC4lzXMLgzr5lYX5EWUaFnTJJ8D9ckcUAKR7p9Gn4uzwO7+bl0A2tVfO5mZq
 kEQ6ZfbPeswe+28aNvYcufd/Ni1SxhQSnYtDEc1G95H6wzIpMD2+aW1xyEv45mb+a4IS
 PGBQ9n21zDtkWU5rZYmom9xoz9g4z0UOMZSLUQDSUax559hI3r2joGwleAj6rG25mPcG
 STORDDpPmlsWGaYT43VurUpmVvPf/SmAEjt/TKk4kl36bbmtoyxJygYTdCurn4w1gWKw
 3XeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AyP1owwRF3BjuE5EqLIJztkbKir3ysHS+oxbwFsHWUs=;
 b=ULtdDigzsUP40+Y4J37jCAsD6NhvVtq38+ikoXJwr0A1cmTc7BhG/iT049MfPru0Bx
 XBrnOnOgyS5GGTZbljEebBi2M1beZ1iod0kkETJ8Gc5CLfx+aeEF0IEetkfacNCtWykw
 litjBiZBOcX4kZPESYJjt0DP5ADNtCOG/Q5bcvV0P6vBgLLbPfibG8AE+34pwC0X22xQ
 f/QT+YOALeeE3qIQbZOS2ZkOZkD0Ltf/7I23hDJs/KizFnmt4G4RDMhvN72oOyhlmXpA
 pUw6Q2RENhe7Fw2f9JC0TEBPqc/+RM5Rxt3uXXsBX1oOOg+2o8Z0UlY571rW0PtE3Dpn
 Nb8w==
X-Gm-Message-State: AOAM530XNpHva9s1GC5dhELCdyENiKuLOSwZxniUW4do21zwDVMSnveu
 fqfw8e47UfbwbkL+2rfqIBG9fxsoo75E/w==
X-Google-Smtp-Source: ABdhPJzZCY8LfSqWSJ+AF6ra1EQ1lX53rn9k+uElnmQFGCoiNdT4brrS+b9WU3kZ4NfeFDIXGwXoxg==
X-Received: by 2002:a63:5052:: with SMTP id q18mr4366339pgl.349.1622132827237; 
 Thu, 27 May 2021 09:27:07 -0700 (PDT)
Received: from omlet.com ([134.134.139.83])
 by smtp.gmail.com with ESMTPSA id h9sm2298711pja.42.2021.05.27.09.27.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 09:27:06 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 27 May 2021 11:26:29 -0500
Message-Id: <20210527162650.1182544-9-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210527162650.1182544-1-jason@jlekstrand.net>
References: <20210527162650.1182544-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/29] drm/i915: Drop getparam support for
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
index aa792c9517e16..fed3538de9241 100644
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
