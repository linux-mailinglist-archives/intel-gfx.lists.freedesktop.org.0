Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61CB53D40C8
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 21:29:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 305956FCFA;
	Fri, 23 Jul 2021 19:29:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BBF16FCF4
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 19:29:45 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id g15so3486811wrd.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 12:29:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jvHZSHCTFhPZcSwhiRoD7iAMhzOpQwcD87IHvGz5oc4=;
 b=VCcCnXk2bMW8Y5Tm+nDldA060LSuM8pogmdtNzq9Eb5sSCSrafXG5V1WbbQ9xG6vnW
 4CvW7yyXxhBwAddpqUICSdctsRdkecQcGsY3/soBEY5PdixgU+z0dPQERuujMVIYRLLr
 2hlQixSbRThcbANlQiVXHEr7MCAwz++5zCxOI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jvHZSHCTFhPZcSwhiRoD7iAMhzOpQwcD87IHvGz5oc4=;
 b=g8ho+XdOFKwI/9gRIFsG+f6q5EJ/QkHFGYfAxGiFByCxF96jZMzlCUULb5dWaOcLgk
 GvyElQUVppvXRwyvi6korOn3KSOA5f6bamOFrZbvUvuWc4eZX2zYpLbRb0A2VIwIqP2e
 6pmzuFr7IwpK3/iwXORAjfHEsic/LbUmWZEPiKSl8Vc9LAPuU9npwAY6ZrNc4hprOQNc
 a1JaBJnJkW7YWGv5gIZRCTTumzlfUZ5nYn5jWNJqf5NyxMCWN/pwgiWwNcSqMMjFTdbd
 Zf02d89P9c60hpi/SiPUmb46FHJnqXlDrHsmjHI5PFvpK5yIhJXQ7F7fD3zxSu/tyuB8
 DG7A==
X-Gm-Message-State: AOAM530zU7GoLlRCD+77w4v/aPde35B+9hexz4m7XsimUH++WMytC6i7
 VEIRT2svhvitD7Q25N2721+WIQ==
X-Google-Smtp-Source: ABdhPJwoqOnU7UuG+1SC5sRkptFrXmJj9RTxEjzNI1VVc9RUnYpU6DSWOBzTPOr7ET7dUSKtRTT+ww==
X-Received: by 2002:adf:ecc9:: with SMTP id s9mr823266wro.306.1627068584213;
 Fri, 23 Jul 2021 12:29:44 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s14sm17609870wmc.25.2021.07.23.12.29.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Jul 2021 12:29:43 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 23 Jul 2021 21:29:30 +0200
Message-Id: <20210723192934.1004427-6-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210723192934.1004427-1-daniel.vetter@ffwll.ch>
References: <20210723192934.1004427-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/10] drm/i915: move gem_objects slab to direct
 module init/exit
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
index 5c21cff33199..53156250d283 100644
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
+struct kmem_cache *slab_objects;
 
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
@@ -664,23 +660,17 @@ void i915_gem_init__objects(struct drm_i915_private *i915)
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
index f3ede43282dc..6d8ea62a372f 100644
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
index 2b56e664d043..2334eb3e9abb 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1301,6 +1301,7 @@ static const struct {
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
