Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CB53D74D2
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 14:11:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8FED6E9F3;
	Tue, 27 Jul 2021 12:10:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37B9B6E970
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 12:10:49 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 m38-20020a05600c3b26b02902161fccabf1so1708742wms.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 05:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HpaQGKtHk2ms/zqFH1p0AkiNURtx44b6tngT7q8EraQ=;
 b=AeHFbSOETmUOZPTQN+BeI6quAoJ/UnHf2T+1Qlh7li4HhC08PJ2zRPI1+KlfMwBlsV
 aNypZhMbQi0EGO7XuEsk6LNc/SUKC+DXBjUyuoA0Y+1WMMuMvjeA4y0aPgiNE6CvsRMs
 JUkKHo72tyQiaHT8epPzpN5d8wGaQ41VLNdNI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HpaQGKtHk2ms/zqFH1p0AkiNURtx44b6tngT7q8EraQ=;
 b=PNWIWqoBETaAdcqd3e3+TdDge2JZ/cjzgTvH6q5acZJ7E5gUSSHfCA+ov1ZyzsKMnQ
 m8ObzlrHIQvK/9lyTtNOVkUnNGxOECqRzAQygOGMWUnfo8l5QlYWejAkXHdBRBVhuM4J
 D6sy/MKz+0+8KHIy0TIY1oPEVJjyAVEJWVP89/IFhO3Yc88jFy+CIIcWmT+8WoyX8p/5
 TNxs+6c2WciJygKfmr15iXxWXQn6JuaCsX5gvT0/dyGeU0Fj2mMWhgc9wgvbzT1s3G7k
 Tg08GMbdNSZQJqcooa1LnxAa1AIW9HeWSJcj1IjxkUWC75ytTz0g4W6cN2wMS1Qh9sX1
 O9BA==
X-Gm-Message-State: AOAM5320jhVP8PGlgCwaJ1JrROtXnLSDLh4+3ANO0Y97cOMFArv6bq8N
 hRM5BhP/OUQrqW6MMABF+ikmWg==
X-Google-Smtp-Source: ABdhPJw+v7xLcIfaRlKDE1ejgZqHRh17cLhySb1bKpNhxaWBGOoA6kMRBHNDRciwtWAYF4hPEuilOA==
X-Received: by 2002:a1c:7314:: with SMTP id d20mr3793604wmb.156.1627387847617; 
 Tue, 27 Jul 2021 05:10:47 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id k186sm3010577wme.45.2021.07.27.05.10.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Jul 2021 05:10:47 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 27 Jul 2021 14:10:32 +0200
Message-Id: <20210727121037.2041102-6-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210727121037.2041102-1-daniel.vetter@ffwll.ch>
References: <20210727121037.2041102-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 06/11] drm/i915: move gem_objects slab to
 direct module init/exit
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With the global kmem_cache shrink infrastructure gone there's nothing
special and we can convert them over.

I'm doing this split up into each patch because there's quite a bit of
noise with removing the static global.slab_objects to just a
slab_objects.

v2: Make slab static (Jason, 0day)

Reviewed-by: Jason Ekstrand <jason@jlekstrand.net>
Cc: Jason Ekstrand <jason@jlekstrand.net>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.c | 26 +++++++---------------
 drivers/gpu/drm/i915/gem/i915_gem_object.h |  3 +++
 drivers/gpu/drm/i915/i915_globals.c        |  1 -
 drivers/gpu/drm/i915/i915_globals.h        |  1 -
 drivers/gpu/drm/i915/i915_pci.c            |  1 +
 5 files changed, 12 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 9d3497e1235a..6fb9afb65034 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -30,14 +30,10 @@
 #include "i915_gem_context.h"
 #include "i915_gem_mman.h"
 #include "i915_gem_object.h"
-#include "i915_globals.h"
 #include "i915_memcpy.h"
 #include "i915_trace.h"
 
-static struct i915_global_object {
-	struct i915_global base;
-	struct kmem_cache *slab_objects;
-} global;
+static struct kmem_cache *slab_objects;
 
 static const struct drm_gem_object_funcs i915_gem_object_funcs;
 
@@ -45,7 +41,7 @@ struct drm_i915_gem_object *i915_gem_object_alloc(void)
 {
 	struct drm_i915_gem_object *obj;
 
-	obj = kmem_cache_zalloc(global.slab_objects, GFP_KERNEL);
+	obj = kmem_cache_zalloc(slab_objects, GFP_KERNEL);
 	if (!obj)
 		return NULL;
 	obj->base.funcs = &i915_gem_object_funcs;
@@ -55,7 +51,7 @@ struct drm_i915_gem_object *i915_gem_object_alloc(void)
 
 void i915_gem_object_free(struct drm_i915_gem_object *obj)
 {
-	return kmem_cache_free(global.slab_objects, obj);
+	return kmem_cache_free(slab_objects, obj);
 }
 
 void i915_gem_object_init(struct drm_i915_gem_object *obj,
@@ -658,23 +654,17 @@ void i915_gem_init__objects(struct drm_i915_private *i915)
 	INIT_WORK(&i915->mm.free_work, __i915_gem_free_work);
 }
 
-static void i915_global_objects_exit(void)
+void i915_objects_module_exit(void)
 {
-	kmem_cache_destroy(global.slab_objects);
+	kmem_cache_destroy(slab_objects);
 }
 
-static struct i915_global_object global = { {
-	.exit = i915_global_objects_exit,
-} };
-
-int __init i915_global_objects_init(void)
+int __init i915_objects_module_init(void)
 {
-	global.slab_objects =
-		KMEM_CACHE(drm_i915_gem_object, SLAB_HWCACHE_ALIGN);
-	if (!global.slab_objects)
+	slab_objects = KMEM_CACHE(drm_i915_gem_object, SLAB_HWCACHE_ALIGN);
+	if (!slab_objects)
 		return -ENOMEM;
 
-	i915_global_register(&global.base);
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 0896ac532f5e..48112b9d76df 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -48,6 +48,9 @@ static inline bool i915_gem_object_size_2big(u64 size)
 
 void i915_gem_init__objects(struct drm_i915_private *i915);
 
+void i915_objects_module_exit(void);
+int i915_objects_module_init(void);
+
 struct drm_i915_gem_object *i915_gem_object_alloc(void);
 void i915_gem_object_free(struct drm_i915_gem_object *obj);
 
diff --git a/drivers/gpu/drm/i915/i915_globals.c b/drivers/gpu/drm/i915/i915_globals.c
index dbb3d81eeea7..40a592fbc3e0 100644
--- a/drivers/gpu/drm/i915/i915_globals.c
+++ b/drivers/gpu/drm/i915/i915_globals.c
@@ -30,7 +30,6 @@ static void __i915_globals_cleanup(void)
 }
 
 static __initconst int (* const initfn[])(void) = {
-	i915_global_objects_init,
 	i915_global_request_init,
 	i915_global_scheduler_init,
 	i915_global_vma_init,
diff --git a/drivers/gpu/drm/i915/i915_globals.h b/drivers/gpu/drm/i915/i915_globals.h
index f16752dbbdbf..9734740708f4 100644
--- a/drivers/gpu/drm/i915/i915_globals.h
+++ b/drivers/gpu/drm/i915/i915_globals.h
@@ -23,7 +23,6 @@ int i915_globals_init(void);
 void i915_globals_exit(void);
 
 /* constructors */
-int i915_global_objects_init(void);
 int i915_global_request_init(void);
 int i915_global_scheduler_init(void);
 int i915_global_vma_init(void);
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 410a85a1cbab..7a13570c04a5 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1302,6 +1302,7 @@ static const struct {
 	{ i915_buddy_module_init, i915_buddy_module_exit },
 	{ i915_context_module_init, i915_context_module_exit },
 	{ i915_gem_context_module_init, i915_gem_context_module_exit },
+	{ i915_objects_module_init, i915_objects_module_exit },
 	{ i915_globals_init, i915_globals_exit },
 	{ i915_mock_selftests, NULL },
 	{ i915_pmu_init, i915_pmu_exit },
-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
