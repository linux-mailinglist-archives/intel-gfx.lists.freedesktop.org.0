Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A2F3A0B5F
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 06:36:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DD386ECA7;
	Wed,  9 Jun 2021 04:36:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com
 [IPv6:2607:f8b0:4864:20::42a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 123E76ECA6
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 04:36:25 +0000 (UTC)
Received: by mail-pf1-x42a.google.com with SMTP id k15so17447937pfp.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Jun 2021 21:36:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=r9ZR+MX1nSEbH+h520X8i8csRvOWfsynSr6KKpouy5Y=;
 b=AiUCSmPJSL5OHpz/32j/nfaWJpnXM10LDspbDUBJoMo1iiylvpSIJLr82zg3he8k8f
 15n9KTUeRSixnRISpHZrGe+lx7sxOZT9eNG/VqV7XsYgx/qAk52nLdTOwXVYN4ANzlv2
 1gZq2OdCqxuiQKZGhqulTtw9V4fFll3FzcnGhDc+KwEl3WWGgI627hL+zVO0PPswqBeU
 JdY8kZGrIG8NkAUpWFwwIw7+j5lWy/dYFVr5d8weEvdcB4lQhDK5FKgpSFQvSWhXEevW
 +VL41JJU4CnBOzc0J+Q7Upn9Wm53hO8KXUusXio2WCvmiraCSEFwhysmUw0KzNe18Bqv
 PeBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=r9ZR+MX1nSEbH+h520X8i8csRvOWfsynSr6KKpouy5Y=;
 b=mQTxZsuvKq74vPxF8IbusfGKYO5tDfWiKavi07Q6BJrwaOqL/IPwgoRt3cEqR+NVFJ
 imqUlwaOeU1F4mFwJvJreFWcfn7RsKLGQitC0TTQjJ1P6XVY9aBQtl4wgi32htthg1OA
 BGfk2fPNPgsHHp3tyovr7j2KHHEPWpqV1pbTXmV6FsO1LcfpydJC32RVqSKNkm8fKLw4
 Hb3QtJBf86pjUhw0F9OXv1bYV9MA+qWT/QKbjkPr6NrR4lRlcq6IobArYXymFy1x3t1B
 IbFfSHaqUvYU/IMLf9NP5qdPK72qdrLa7MQvDJgfwmjIFoEnJaZRNR34aSyn9GMxPF86
 tdkQ==
X-Gm-Message-State: AOAM533/QYuIy2klNovlJIPTe3tytvYs15vgHQ4/IKYXRg+MkN0lVTjt
 HU8GrrDIgaqqI1JNMWI6Nb5GfCa6p+TszQ==
X-Google-Smtp-Source: ABdhPJytH4YJFwCipll8lm3DPRo07O4fuiVkn0sz6+GekvfoOB2f6KBR6JIjsKkgcYZdidHydIl1EQ==
X-Received: by 2002:a05:6a00:2151:b029:2ec:81eb:518d with SMTP id
 o17-20020a056a002151b02902ec81eb518dmr3232708pfk.61.1623213384459; 
 Tue, 08 Jun 2021 21:36:24 -0700 (PDT)
Received: from omlet.com (jfdmzpr06-ext.jf.intel.com. [134.134.137.75])
 by smtp.gmail.com with ESMTPSA id t5sm11991612pfe.116.2021.06.08.21.36.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Jun 2021 21:36:24 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue,  8 Jun 2021 23:35:45 -0500
Message-Id: <20210609043613.102962-4-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210609043613.102962-1-jason@jlekstrand.net>
References: <20210609043613.102962-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/31] drm/i915: Drop
 I915_CONTEXT_PARAM_NO_ZEROMAP
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

The idea behind this param is to support OpenCL drivers with relocations
because OpenCL reserves 0x0 for NULL and, if we placed memory there, it
would confuse CL kernels.  It was originally sent out as part of a patch
series including libdrm [1] and Beignet [2] support.  However, the
libdrm and Beignet patches never landed in their respective upstream
projects so this API has never been used.  It's never been used in Mesa
or any other driver, either.

Dropping this API allows us to delete a small bit of code.

[1]: https://lists.freedesktop.org/archives/intel-gfx/2015-May/067030.html
[2]: https://lists.freedesktop.org/archives/intel-gfx/2015-May/067031.html

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c      | 16 ++--------------
 .../gpu/drm/i915/gem/i915_gem_context_types.h    |  1 -
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c   |  8 --------
 include/uapi/drm/i915_drm.h                      |  4 ++++
 4 files changed, 6 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index a4faf06022d5a..5fc0eb4beeeae 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1920,15 +1920,6 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
 	int ret = 0;
 
 	switch (args->param) {
-	case I915_CONTEXT_PARAM_NO_ZEROMAP:
-		if (args->size)
-			ret = -EINVAL;
-		else if (args->value)
-			set_bit(UCONTEXT_NO_ZEROMAP, &ctx->user_flags);
-		else
-			clear_bit(UCONTEXT_NO_ZEROMAP, &ctx->user_flags);
-		break;
-
 	case I915_CONTEXT_PARAM_NO_ERROR_CAPTURE:
 		if (args->size)
 			ret = -EINVAL;
@@ -1978,6 +1969,7 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
 		ret = set_persistence(ctx, args);
 		break;
 
+	case I915_CONTEXT_PARAM_NO_ZEROMAP:
 	case I915_CONTEXT_PARAM_BAN_PERIOD:
 	case I915_CONTEXT_PARAM_RINGSIZE:
 	default:
@@ -2358,11 +2350,6 @@ int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
 		return -ENOENT;
 
 	switch (args->param) {
-	case I915_CONTEXT_PARAM_NO_ZEROMAP:
-		args->size = 0;
-		args->value = test_bit(UCONTEXT_NO_ZEROMAP, &ctx->user_flags);
-		break;
-
 	case I915_CONTEXT_PARAM_GTT_SIZE:
 		args->size = 0;
 		rcu_read_lock();
@@ -2410,6 +2397,7 @@ int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
 		args->value = i915_gem_context_is_persistent(ctx);
 		break;
 
+	case I915_CONTEXT_PARAM_NO_ZEROMAP:
 	case I915_CONTEXT_PARAM_BAN_PERIOD:
 	case I915_CONTEXT_PARAM_RINGSIZE:
 	default:
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index 340473aa70de0..5ae71ec936f7c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -129,7 +129,6 @@ struct i915_gem_context {
 	 * @user_flags: small set of booleans controlled by the user
 	 */
 	unsigned long user_flags;
-#define UCONTEXT_NO_ZEROMAP		0
 #define UCONTEXT_NO_ERROR_CAPTURE	1
 #define UCONTEXT_BANNABLE		2
 #define UCONTEXT_RECOVERABLE		3
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index a8abc9af5ff47..19a453bb170a1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -290,7 +290,6 @@ struct i915_execbuffer {
 	struct intel_context *reloc_context;
 
 	u64 invalid_flags; /** Set of execobj.flags that are invalid */
-	u32 context_flags; /** Set of execobj.flags to insert from the ctx */
 
 	u64 batch_len; /** Length of batch within object */
 	u32 batch_start_offset; /** Location within object of batch */
@@ -541,9 +540,6 @@ eb_validate_vma(struct i915_execbuffer *eb,
 			entry->flags |= EXEC_OBJECT_NEEDS_GTT | __EXEC_OBJECT_NEEDS_MAP;
 	}
 
-	if (!(entry->flags & EXEC_OBJECT_PINNED))
-		entry->flags |= eb->context_flags;
-
 	return 0;
 }
 
@@ -750,10 +746,6 @@ static int eb_select_context(struct i915_execbuffer *eb)
 	if (rcu_access_pointer(ctx->vm))
 		eb->invalid_flags |= EXEC_OBJECT_NEEDS_GTT;
 
-	eb->context_flags = 0;
-	if (test_bit(UCONTEXT_NO_ZEROMAP, &ctx->user_flags))
-		eb->context_flags |= __EXEC_OBJECT_NEEDS_BIAS;
-
 	return 0;
 }
 
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index ad8f1a0f587f6..e527f5f7e0dea 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -1639,6 +1639,10 @@ struct drm_i915_gem_context_param {
 	__u32 size;
 	__u64 param;
 #define I915_CONTEXT_PARAM_BAN_PERIOD	0x1
+/* I915_CONTEXT_PARAM_NO_ZEROMAP has been removed.  On the off chance
+ * someone somewhere has attempted to use it, never re-use this context
+ * param number.
+ */
 #define I915_CONTEXT_PARAM_NO_ZEROMAP	0x2
 #define I915_CONTEXT_PARAM_GTT_SIZE	0x3
 #define I915_CONTEXT_PARAM_NO_ERROR_CAPTURE	0x4
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
