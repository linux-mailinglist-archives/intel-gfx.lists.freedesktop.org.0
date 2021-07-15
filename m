Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 289CA3CAF43
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 00:39:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BF4E6E8C0;
	Thu, 15 Jul 2021 22:39:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com
 [IPv6:2607:f8b0:4864:20::42b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F1BF6E8BE
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jul 2021 22:39:13 +0000 (UTC)
Received: by mail-pf1-x42b.google.com with SMTP id j9so7001496pfc.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jul 2021 15:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IEg9Ql1P0pH2ya8JFjLrolvs7S9Ijker4C+eWzsnT8Q=;
 b=O89Bpv1/zSsu0DH6HPFsfiqzn3QwUS9Qkg708aexqokYhCSkW6TJ3MCtPn7AbfHDtd
 ZeKmyUmkN/Y++EdgellfXk5PbwYgOvuSBZjH7lPX714W4N+RyW5+xVIj/3n37DAMR0W5
 oicRn/6d249iKqbQo6/JGhB18/fNfTXf/SaXReATMxaWJndRln8sCdfhKBUoFVxQJ3oz
 LMIfONqyB1LYtTOXH5xu1q4pA/ovW8mVR+E3xmi+JWgqrsTjbXvrT/ZgR2awAicoClUE
 syu2nbbwaly4U32D7dvNxhlN7J1nZwjl6H2AE9DBjtHaMhh4k2aAbu52KgodP3LNge2w
 F3gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IEg9Ql1P0pH2ya8JFjLrolvs7S9Ijker4C+eWzsnT8Q=;
 b=VNEcpZo21XyY8gbAdUHgGMPHZUg4D4ckAepFg674mseCuTyHkOOoRtH8kZNWffIK4j
 z4iGCi/UYGuFOtSdUYhUWYGonRrNocIEXNVQLenNZd3VAdKGpxMo+ADpUJCMsin0JeQU
 ChRUzsIcTzZzWqWnG0+gxwICuUM+hLhADLrRQ/7hiovkeGdsGWCGC1d61h+RYgZvlyjr
 WWxq1YNzq1s+YPeH1aaHMRsRP0d82wucN98n/pGRLYp7mbQAzWY1Mo/+7xgc31rVhkaQ
 0C+x2qMxI5GccboJwgwO6lTuZtHKy79hdQknpeyficKwfDa70Ygnm5iduYGMo1gbk6zk
 AnoQ==
X-Gm-Message-State: AOAM530Mvf3TW5S2Jr2TbQSjJVUN4zzHe8b28MNq0KH6RKnlb9NFqcrT
 hNcIVdiZmUk4GBHph2Q0QgNS5Zb857RfLg==
X-Google-Smtp-Source: ABdhPJw4xNvB3n3K1EP2lU9bKKW1nu/gkdDvilFbg/yhLcirnaM9iNh2vL+3t0Wo/1z+q5mpkf/k4w==
X-Received: by 2002:a05:6a00:2182:b029:32d:a761:6f5 with SMTP id
 h2-20020a056a002182b029032da76106f5mr7177303pfi.10.1626388752612; 
 Thu, 15 Jul 2021 15:39:12 -0700 (PDT)
Received: from omlet.com ([134.134.137.87])
 by smtp.gmail.com with ESMTPSA id ft7sm9959459pjb.32.2021.07.15.15.39.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Jul 2021 15:39:12 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 15 Jul 2021 17:38:56 -0500
Message-Id: <20210715223900.1840576-4-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210715223900.1840576-1-jason@jlekstrand.net>
References: <20210715223900.1840576-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/7] drm/i915/gem: Unify user object creation
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

Instead of hand-rolling the same three calls in each function, pull them
into an i915_gem_object_create_user helper.  Apart from re-ordering of
the placements array ENOMEM check, the only functional change here
should be that i915_gem_dumb_create now calls i915_gem_flush_free_objects
which it probably should have been calling all along.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
---
 drivers/gpu/drm/i915/gem/i915_gem_create.c | 106 +++++++++------------
 1 file changed, 43 insertions(+), 63 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
index 391c8c4a12172..69bf9ec777642 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
@@ -11,13 +11,14 @@
 #include "i915_trace.h"
 #include "i915_user_extensions.h"
 
-static u32 object_max_page_size(struct drm_i915_gem_object *obj)
+static u32 object_max_page_size(struct intel_memory_region **placements,
+				unsigned int n_placements)
 {
 	u32 max_page_size = 0;
 	int i;
 
-	for (i = 0; i < obj->mm.n_placements; i++) {
-		struct intel_memory_region *mr = obj->mm.placements[i];
+	for (i = 0; i < n_placements; i++) {
+		struct intel_memory_region *mr = placements[i];
 
 		GEM_BUG_ON(!is_power_of_2(mr->min_page_size));
 		max_page_size = max_t(u32, max_page_size, mr->min_page_size);
@@ -81,22 +82,35 @@ static int i915_gem_publish(struct drm_i915_gem_object *obj,
 	return 0;
 }
 
-static int
-i915_gem_setup(struct drm_i915_gem_object *obj, u64 size)
+static struct drm_i915_gem_object *
+i915_gem_object_create_user(struct drm_i915_private *i915, u64 size,
+			    struct intel_memory_region **placements,
+			    unsigned int n_placements)
 {
-	struct intel_memory_region *mr = obj->mm.placements[0];
+	struct intel_memory_region *mr = placements[0];
+	struct drm_i915_gem_object *obj;
 	unsigned int flags;
 	int ret;
 
-	size = round_up(size, object_max_page_size(obj));
+	i915_gem_flush_free_objects(i915);
+
+	obj = i915_gem_object_alloc();
+	if (!obj)
+		return ERR_PTR(-ENOMEM);
+
+	size = round_up(size, object_max_page_size(placements, n_placements));
 	if (size == 0)
-		return -EINVAL;
+		return ERR_PTR(-EINVAL);
 
 	/* For most of the ABI (e.g. mmap) we think in system pages */
 	GEM_BUG_ON(!IS_ALIGNED(size, PAGE_SIZE));
 
 	if (i915_gem_object_size_2big(size))
-		return -E2BIG;
+		return ERR_PTR(-E2BIG);
+
+	ret = object_set_placements(obj, placements, n_placements);
+	if (ret)
+		goto object_free;
 
 	/*
 	 * I915_BO_ALLOC_USER will make sure the object is cleared before
@@ -106,12 +120,18 @@ i915_gem_setup(struct drm_i915_gem_object *obj, u64 size)
 
 	ret = mr->ops->init_object(mr, obj, size, 0, flags);
 	if (ret)
-		return ret;
+		goto object_free;
 
 	GEM_BUG_ON(size != obj->base.size);
 
 	trace_i915_gem_object_create(obj);
-	return 0;
+	return obj;
+
+object_free:
+	if (obj->mm.n_placements > 1)
+		kfree(obj->mm.placements);
+	i915_gem_object_free(obj);
+	return ERR_PTR(ret);
 }
 
 int
@@ -124,7 +144,6 @@ i915_gem_dumb_create(struct drm_file *file,
 	enum intel_memory_type mem_type;
 	int cpp = DIV_ROUND_UP(args->bpp, 8);
 	u32 format;
-	int ret;
 
 	switch (cpp) {
 	case 1:
@@ -157,24 +176,13 @@ i915_gem_dumb_create(struct drm_file *file,
 	if (HAS_LMEM(to_i915(dev)))
 		mem_type = INTEL_MEMORY_LOCAL;
 
-	obj = i915_gem_object_alloc();
-	if (!obj)
-		return -ENOMEM;
-
 	mr = intel_memory_region_by_type(to_i915(dev), mem_type);
-	ret = object_set_placements(obj, &mr, 1);
-	if (ret)
-		goto object_free;
 
-	ret = i915_gem_setup(obj, args->size);
-	if (ret)
-		goto object_free;
+	obj = i915_gem_object_create_user(to_i915(dev), args->size, &mr, 1);
+	if (IS_ERR(obj))
+		return PTR_ERR(obj);
 
 	return i915_gem_publish(obj, file, &args->size, &args->handle);
-
-object_free:
-	i915_gem_object_free(obj);
-	return ret;
 }
 
 /**
@@ -191,28 +199,14 @@ i915_gem_create_ioctl(struct drm_device *dev, void *data,
 	struct drm_i915_gem_create *args = data;
 	struct drm_i915_gem_object *obj;
 	struct intel_memory_region *mr;
-	int ret;
-
-	i915_gem_flush_free_objects(i915);
-
-	obj = i915_gem_object_alloc();
-	if (!obj)
-		return -ENOMEM;
 
 	mr = intel_memory_region_by_type(i915, INTEL_MEMORY_SYSTEM);
-	ret = object_set_placements(obj, &mr, 1);
-	if (ret)
-		goto object_free;
 
-	ret = i915_gem_setup(obj, args->size);
-	if (ret)
-		goto object_free;
+	obj = i915_gem_object_create_user(i915, args->size, &mr, 1);
+	if (IS_ERR(obj))
+		return PTR_ERR(obj);
 
 	return i915_gem_publish(obj, file, &args->size, &args->handle);
-
-object_free:
-	i915_gem_object_free(obj);
-	return ret;
 }
 
 #define MAX_N_PLACEMENTS = (INTEL_REGION_UNKNOWN + 1)
@@ -379,38 +373,24 @@ i915_gem_create_ext_ioctl(struct drm_device *dev, void *data,
 	if (args->flags)
 		return -EINVAL;
 
-	i915_gem_flush_free_objects(i915);
-
-	obj = i915_gem_object_alloc();
-	if (!obj)
-		return -ENOMEM;
-
 	ret = i915_user_extensions(u64_to_user_ptr(args->extensions),
 				   create_extensions,
 				   ARRAY_SIZE(create_extensions),
 				   &ext_data);
 	if (ret)
-		goto object_free;
+		return ret;
 
 	if (!ext_data.n_placements) {
 		ext_data.placements[0] =
 			intel_memory_region_by_type(i915, INTEL_MEMORY_SYSTEM);
 		ext_data.n_placements = 1;
 	}
-	ret = object_set_placements(obj, ext_data.placements,
-				    ext_data.n_placements);
-	if (ret)
-		goto object_free;
 
-	ret = i915_gem_setup(obj, args->size);
-	if (ret)
-		goto object_free;
+	obj = i915_gem_object_create_user(i915, args->size,
+					  ext_data.placements,
+					  ext_data.n_placements);
+	if (IS_ERR(obj))
+		return PTR_ERR(obj);
 
 	return i915_gem_publish(obj, file, &args->size, &args->handle);
-
-object_free:
-	if (obj->mm.n_placements > 1)
-		kfree(obj->mm.placements);
-	i915_gem_object_free(obj);
-	return ret;
 }
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
