Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 511283C1657
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 17:49:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65C096E8F5;
	Thu,  8 Jul 2021 15:48:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com
 [IPv6:2607:f8b0:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 771656E8E8
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 15:48:42 +0000 (UTC)
Received: by mail-ot1-x329.google.com with SMTP id
 l17-20020a9d6a910000b029048a51f0bc3cso6250587otq.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Jul 2021 08:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fgRvSr72S39vTOyGVqdEwt0zdc5o2Khb7EVJ8Yj/xAQ=;
 b=tKihkTTsPzZk+FleIfyGPMvv96oPh1VByRKc3cll80cyawL8vpTvFP3Nxcni+vtKcW
 31KbRyBP2p/+k+u/Dd8Ru8VEo5LP41Ck0y9duvBo5smXTEkrzZa7jXiwCADnbivjtvQP
 nZF+fND3/EI/XUQo575fwe2Zh/6274jV2nPG0utlDx01I6RarhBmYy/KHMW1PmvLjktW
 3wMCpoNVVNPBVI+ZJeDAQ5D2JPVwISjbRPcgm1q9o0qKkcnLOHccfHMRv+fzV55Kj7mX
 ZWaOrSPrxIq8P/OBKqsh8tyqQLp4BTax75/FwST04V9bRdvt71ast7fwJVbcDpNvr8gv
 10fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fgRvSr72S39vTOyGVqdEwt0zdc5o2Khb7EVJ8Yj/xAQ=;
 b=t9Qvv+8bZmFsHNiAZ8p07w1Lu3gHfnYAQyeqU5dMT9GIcra0IUwnlE5lhfM40tdiHc
 QeWTNSbjmepOC0mypDmkWGhnkLmm5eQDavG+CBlxJQ2svzEldNX7Z3u/eG4Tjf0s94Vs
 4f88rsoXzc5RE+DWrt5rZ2ewKd20t4H2zFXmKO/Dbk31QTrigbdF6+oSMcodbf8m8VsJ
 QQ1fEI666w2YvtGeU166HkSDK7bJfhsfzn8aQnPotMiJmRl/4rMPIPLGlm+qV1qAgjFI
 D04+bvx826cg4abWcZ/YZDpd8HQiUrInZjjCZBRUcQgBPQ+uhTCqG7OBu6qci3tUCUP/
 kYSg==
X-Gm-Message-State: AOAM531ltWrW+vLdjyEZzHwbryTg5n0jq30bF4P6QhDnNpxB6xl4xADV
 Yq02xJhOLa86AEOXHFmWL2a4jSOU2Np7LA==
X-Google-Smtp-Source: ABdhPJyMBAkww4+SlaPhg5MWbI/iykfVVDCoN9zWvDfq2dtZydXRjgAP6tt0O2Gt3V8vCoIaD/SPOg==
X-Received: by 2002:a9d:7382:: with SMTP id j2mr23835422otk.245.1625759321470; 
 Thu, 08 Jul 2021 08:48:41 -0700 (PDT)
Received: from omlet.lan ([68.203.99.148])
 by smtp.gmail.com with ESMTPSA id d20sm548356otq.62.2021.07.08.08.48.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Jul 2021 08:48:40 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu,  8 Jul 2021 10:48:08 -0500
Message-Id: <20210708154835.528166-4-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210708154835.528166-1-jason@jlekstrand.net>
References: <20210708154835.528166-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/30] drm/i915: Drop
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
index 7ff2fc3c0b2c9..73acc65d25bad 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -290,7 +290,6 @@ struct i915_execbuffer {
 	struct intel_context *reloc_context;
 
 	u64 invalid_flags; /** Set of execobj.flags that are invalid */
-	u32 context_flags; /** Set of execobj.flags to insert from the ctx */
 
 	u64 batch_len; /** Length of batch within object */
 	u32 batch_start_offset; /** Location within object of batch */
@@ -552,9 +551,6 @@ eb_validate_vma(struct i915_execbuffer *eb,
 			entry->flags |= EXEC_OBJECT_NEEDS_GTT | __EXEC_OBJECT_NEEDS_MAP;
 	}
 
-	if (!(entry->flags & EXEC_OBJECT_PINNED))
-		entry->flags |= eb->context_flags;
-
 	return 0;
 }
 
@@ -761,10 +757,6 @@ static int eb_select_context(struct i915_execbuffer *eb)
 	if (rcu_access_pointer(ctx->vm))
 		eb->invalid_flags |= EXEC_OBJECT_NEEDS_GTT;
 
-	eb->context_flags = 0;
-	if (test_bit(UCONTEXT_NO_ZEROMAP, &ctx->user_flags))
-		eb->context_flags |= __EXEC_OBJECT_NEEDS_BIAS;
-
 	return 0;
 }
 
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index f229c0abcbb54..79dcafaf476eb 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -1638,6 +1638,10 @@ struct drm_i915_gem_context_param {
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
