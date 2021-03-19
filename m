Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 780923428C4
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Mar 2021 23:39:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 786456EAE3;
	Fri, 19 Mar 2021 22:39:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CECF56EAE3
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Mar 2021 22:39:04 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id t18so5344417pjs.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Mar 2021 15:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cRzEe66aeFMo6hto8lY37BgtMoMGBb2vnVripw4gXNg=;
 b=flSHicDxofYKJKMIYUdhqqFpNlQm4N7R3Y+sNrGa1pIHcIKFWk9Y1NVR6/zBvX3aCd
 vpi4Hr8aoWgerMqIleeeNtLj+4tqvN4MDzDprSflvbWQC7i3sFQyv/Q5GH01pDwh5AF+
 QnLzBDrTMo7kVXal+DbXTIvdR6NCcFMvA3JfJVrBM3rZdjB4PItua0e5CvJJxoi3PsCz
 GA2MmcpN0EG9i7BGi6iIx9i6iwUi6DjaV6Z4A8A///uVaF+3hiALxdK0sL4oKmJVkOfg
 dNeqE4hD9QsS62kWICTcevONuckPqoknY39M90ZJ0QegVjGIqz0fZ6uoVDJ5GJBUDx31
 EQMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cRzEe66aeFMo6hto8lY37BgtMoMGBb2vnVripw4gXNg=;
 b=Sm34r4eggjHWWcEyZzqerAnBY5L9zCs5/X6sDdOkn24EdPqPDOWMkEecmp7JjdIic+
 XVkN9QoxK9Wl20mtz9d4MnEW/IjGEAuT3e1TmY5cUZ5LOT1k44nhS0XfppyuuZ+k8Fci
 fVg4tVSYn+E6NQM+CVyz0+cRAmZhr1B3nDzI/JbxruGxPQLgTp9Ik14d5p44pCM2YgeR
 U75etXGMGXxuPyMQTZcUQchVMMgs5bsj+DBj82HUhWDvOVGjx8fxkEUX3mZDSbWyCkYB
 NcIfMP/q4sqKZvDStX5eWTPyyBdJ7xZ6UE0sYjDz9D/8K3+u1tof3xsvCdJpd/CMpx+6
 2RHA==
X-Gm-Message-State: AOAM530hArc9FJqilEFLfz5bAALYkZnmdDqfhZ/GGG40aK3zTQ0hO26A
 0F+ULNt4MBEI6KxdX2RdvxGQCA==
X-Google-Smtp-Source: ABdhPJxePLhARijXPbEalHAW5uPXLbhb3hyc78mFrudKYwRPqyrhdYmyHsdJa45W85V2CuAw8cttaw==
X-Received: by 2002:a17:902:9a45:b029:e6:1444:5287 with SMTP id
 x5-20020a1709029a45b02900e614445287mr16370858plv.54.1616193544419; 
 Fri, 19 Mar 2021 15:39:04 -0700 (PDT)
Received: from omlet.com ([134.134.137.77])
 by smtp.gmail.com with ESMTPSA id a20sm6809206pfl.97.2021.03.19.15.39.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Mar 2021 15:39:03 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Fri, 19 Mar 2021 17:38:54 -0500
Message-Id: <20210319223856.2983244-3-jason@jlekstrand.net>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210319223856.2983244-1-jason@jlekstrand.net>
References: <20210319223856.2983244-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Drop I915_CONTEXT_PARAM_NO_ZEROMAP
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
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c      | 16 ++--------------
 .../gpu/drm/i915/gem/i915_gem_context_types.h    |  1 -
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c   |  8 --------
 include/uapi/drm/i915_drm.h                      |  4 ++++
 4 files changed, 6 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index c528db3b7dcf4..d28ac79de7573 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1904,15 +1904,6 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
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
@@ -1962,6 +1953,7 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
 		ret = set_persistence(ctx, args);
 		break;
 
+	case I915_CONTEXT_PARAM_NO_ZEROMAP:
 	case I915_CONTEXT_PARAM_BAN_PERIOD:
 	case I915_CONTEXT_PARAM_RINGSIZE:
 	default:
@@ -2342,11 +2334,6 @@ int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
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
@@ -2394,6 +2381,7 @@ int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
 		args->value = i915_gem_context_is_persistent(ctx);
 		break;
 
+	case I915_CONTEXT_PARAM_NO_ZEROMAP:
 	case I915_CONTEXT_PARAM_BAN_PERIOD:
 	case I915_CONTEXT_PARAM_RINGSIZE:
 	default:
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index 1449f54924e03..676592e27e7d2 100644
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
index 21676baca8f58..96403130a373d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -286,7 +286,6 @@ struct i915_execbuffer {
 	struct intel_context *reloc_context;
 
 	u64 invalid_flags; /** Set of execobj.flags that are invalid */
-	u32 context_flags; /** Set of execobj.flags to insert from the ctx */
 
 	u64 batch_len; /** Length of batch within object */
 	u32 batch_start_offset; /** Location within object of batch */
@@ -528,9 +527,6 @@ eb_validate_vma(struct i915_execbuffer *eb,
 			entry->flags |= EXEC_OBJECT_NEEDS_GTT | __EXEC_OBJECT_NEEDS_MAP;
 	}
 
-	if (!(entry->flags & EXEC_OBJECT_PINNED))
-		entry->flags |= eb->context_flags;
-
 	return 0;
 }
 
@@ -737,10 +733,6 @@ static int eb_select_context(struct i915_execbuffer *eb)
 	if (rcu_access_pointer(ctx->vm))
 		eb->invalid_flags |= EXEC_OBJECT_NEEDS_GTT;
 
-	eb->context_flags = 0;
-	if (test_bit(UCONTEXT_NO_ZEROMAP, &ctx->user_flags))
-		eb->context_flags |= __EXEC_OBJECT_NEEDS_BIAS;
-
 	return 0;
 }
 
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index a80eb2bcd22bc..4c4b9254def1b 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -1591,6 +1591,10 @@ struct drm_i915_gem_context_param {
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
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
