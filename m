Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C401B3D40BE
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 21:29:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C601D6FCF1;
	Fri, 23 Jul 2021 19:29:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7771C6EB37
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 19:29:42 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 9-20020a05600c26c9b02901e44e9caa2aso2235064wmv.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 12:29:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zIyCb0qfrFORsJlYuO6McP0GcGUqEhAUniiRnsTmShI=;
 b=eXKrJ+uHnY6Vg/+oiJ25YxlIjBuXwAYOUr3Me7u96wHZSjMFk27xW4Eqpyw5MYWxKo
 snb5yQfFsfW1Ixi8sYb+xVhWURv6m2ByO6RqCgDQbk0JD7ppAGS1mCNB4f7MkmcaLQ3P
 RnmWb8D8ADAEJbOfHqtan7OXsjgI4kTI+k6K4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zIyCb0qfrFORsJlYuO6McP0GcGUqEhAUniiRnsTmShI=;
 b=VVVE1oDC5Xet7oDC8DWPISusUlYKHcWFSbM8dmxhpbhfbO1O8PZeP5FmHnCgXg0oJd
 oIB1y3XTaT6/ee/TWw23XvygoKkjgS3igLDePBk2aIe5wSyHBAeLvxjdG9AEWwUZBnSR
 39HfPDZS6zdKCQSyp8fhXTLKhGfHAEBndD4tDZj6RtGnANY15JYiAckVLVSI53/x2UhH
 hugsd2l61MjdAve0Q7bxGzbo3JQL1CF4aXJFOhvdYF0JyJu/BRqLr5DV7qR0cTjEwz5T
 MJ+7HNOQiofkz6B7OQDluZ3uswxjmYmxAaefIRvUEcgE0Mp6mM2FbvkyG06ssKwg/5hN
 w9VQ==
X-Gm-Message-State: AOAM533WV5AC/syeOWjoLNS0oqkSee+BMRA2+KxNEMMiLStqAC7PdTlq
 7hCXHV+dgOgwJ1+BYsgMP6ElMiGgIOY0Xg==
X-Google-Smtp-Source: ABdhPJyXXwHm01s2KQqv2b7pHjZegFqi+QifeH8WbBv1p34UAnKFxOLdG22/GMsD9QqWSe6HJQ1CPA==
X-Received: by 2002:a05:600c:649:: with SMTP id
 p9mr15674050wmm.151.1627068581163; 
 Fri, 23 Jul 2021 12:29:41 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s14sm17609870wmc.25.2021.07.23.12.29.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Jul 2021 12:29:40 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 23 Jul 2021 21:29:26 +0200
Message-Id: <20210723192934.1004427-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210723192934.1004427-1-daniel.vetter@ffwll.ch>
References: <20210723192934.1004427-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/10] drm/i915: move i915_active slab to direct
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
noise with removing the static global.slab_cache to just a slab_cache.

Cc: Jason Ekstrand <jason@jlekstrand.net>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/i915/i915_active.c  | 31 ++++++++++-------------------
 drivers/gpu/drm/i915/i915_active.h  |  3 +++
 drivers/gpu/drm/i915/i915_globals.c |  2 --
 drivers/gpu/drm/i915/i915_globals.h |  1 -
 drivers/gpu/drm/i915/i915_pci.c     |  2 ++
 5 files changed, 16 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index 91723123ae9f..9ffeb77eb5bb 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -13,7 +13,6 @@
 
 #include "i915_drv.h"
 #include "i915_active.h"
-#include "i915_globals.h"
 
 /*
  * Active refs memory management
@@ -22,10 +21,7 @@
  * they idle (when we know the active requests are inactive) and allocate the
  * nodes from a local slab cache to hopefully reduce the fragmentation.
  */
-static struct i915_global_active {
-	struct i915_global base;
-	struct kmem_cache *slab_cache;
-} global;
+struct kmem_cache *slab_cache;
 
 struct active_node {
 	struct rb_node node;
@@ -174,7 +170,7 @@ __active_retire(struct i915_active *ref)
 	/* Finally free the discarded timeline tree  */
 	rbtree_postorder_for_each_entry_safe(it, n, &root, node) {
 		GEM_BUG_ON(i915_active_fence_isset(&it->base));
-		kmem_cache_free(global.slab_cache, it);
+		kmem_cache_free(slab_cache, it);
 	}
 }
 
@@ -322,7 +318,7 @@ active_instance(struct i915_active *ref, u64 idx)
 	 * XXX: We should preallocate this before i915_active_ref() is ever
 	 *  called, but we cannot call into fs_reclaim() anyway, so use GFP_ATOMIC.
 	 */
-	node = kmem_cache_alloc(global.slab_cache, GFP_ATOMIC);
+	node = kmem_cache_alloc(slab_cache, GFP_ATOMIC);
 	if (!node)
 		goto out;
 
@@ -788,7 +784,7 @@ void i915_active_fini(struct i915_active *ref)
 	mutex_destroy(&ref->mutex);
 
 	if (ref->cache)
-		kmem_cache_free(global.slab_cache, ref->cache);
+		kmem_cache_free(slab_cache, ref->cache);
 }
 
 static inline bool is_idle_barrier(struct active_node *node, u64 idx)
@@ -908,7 +904,7 @@ int i915_active_acquire_preallocate_barrier(struct i915_active *ref,
 		node = reuse_idle_barrier(ref, idx);
 		rcu_read_unlock();
 		if (!node) {
-			node = kmem_cache_alloc(global.slab_cache, GFP_KERNEL);
+			node = kmem_cache_alloc(slab_cache, GFP_KERNEL);
 			if (!node)
 				goto unwind;
 
@@ -956,7 +952,7 @@ int i915_active_acquire_preallocate_barrier(struct i915_active *ref,
 		atomic_dec(&ref->count);
 		intel_engine_pm_put(barrier_to_engine(node));
 
-		kmem_cache_free(global.slab_cache, node);
+		kmem_cache_free(slab_cache, node);
 	}
 	return -ENOMEM;
 }
@@ -1176,21 +1172,16 @@ struct i915_active *i915_active_create(void)
 #include "selftests/i915_active.c"
 #endif
 
-static void i915_global_active_exit(void)
+void i915_active_module_exit(void)
 {
-	kmem_cache_destroy(global.slab_cache);
+	kmem_cache_destroy(slab_cache);
 }
 
-static struct i915_global_active global = { {
-	.exit = i915_global_active_exit,
-} };
-
-int __init i915_global_active_init(void)
+int __init i915_active_module_init(void)
 {
-	global.slab_cache = KMEM_CACHE(active_node, SLAB_HWCACHE_ALIGN);
-	if (!global.slab_cache)
+	slab_cache = KMEM_CACHE(active_node, SLAB_HWCACHE_ALIGN);
+	if (!slab_cache)
 		return -ENOMEM;
 
-	i915_global_register(&global.base);
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
index d0feda68b874..5fcdb0e2bc9e 100644
--- a/drivers/gpu/drm/i915/i915_active.h
+++ b/drivers/gpu/drm/i915/i915_active.h
@@ -247,4 +247,7 @@ static inline int __i915_request_await_exclusive(struct i915_request *rq,
 	return err;
 }
 
+void i915_active_module_exit(void);
+int i915_active_module_init(void);
+
 #endif /* _I915_ACTIVE_H_ */
diff --git a/drivers/gpu/drm/i915/i915_globals.c b/drivers/gpu/drm/i915/i915_globals.c
index 91198f5b0a06..a53135ee831d 100644
--- a/drivers/gpu/drm/i915/i915_globals.c
+++ b/drivers/gpu/drm/i915/i915_globals.c
@@ -7,7 +7,6 @@
 #include <linux/slab.h>
 #include <linux/workqueue.h>
 
-#include "i915_active.h"
 #include "i915_buddy.h"
 #include "gem/i915_gem_context.h"
 #include "gem/i915_gem_object.h"
@@ -34,7 +33,6 @@ static void __i915_globals_cleanup(void)
 }
 
 static __initconst int (* const initfn[])(void) = {
-	i915_global_active_init,
 	i915_global_buddy_init,
 	i915_global_context_init,
 	i915_global_gem_context_init,
diff --git a/drivers/gpu/drm/i915/i915_globals.h b/drivers/gpu/drm/i915/i915_globals.h
index 9e6b4fd07528..d80901ba75e3 100644
--- a/drivers/gpu/drm/i915/i915_globals.h
+++ b/drivers/gpu/drm/i915/i915_globals.h
@@ -23,7 +23,6 @@ int i915_globals_init(void);
 void i915_globals_exit(void);
 
 /* constructors */
-int i915_global_active_init(void);
 int i915_global_context_init(void);
 int i915_global_gem_context_init(void);
 int i915_global_objects_init(void);
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 0deaeeba2347..6ee77a8f43d6 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -30,6 +30,7 @@
 
 #include "display/intel_fbdev.h"
 
+#include "i915_active.h"
 #include "i915_drv.h"
 #include "i915_perf.h"
 #include "i915_globals.h"
@@ -1293,6 +1294,7 @@ static const struct {
    void (*exit)(void);
 } init_funcs[] = {
 	{ i915_check_nomodeset, NULL },
+	{ i915_active_module_init, i915_active_module_exit },
 	{ i915_globals_init, i915_globals_exit },
 	{ i915_mock_selftests, NULL },
 	{ i915_pmu_init, i915_pmu_exit },
-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
