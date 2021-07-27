Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5ED13D74C7
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 14:10:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B01036E8BC;
	Tue, 27 Jul 2021 12:10:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 161C16E4AB
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 12:10:46 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 l11-20020a7bc34b0000b029021f84fcaf75so1713390wmj.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 05:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dv6v6igQ1oKOZ1Eun+l9MhtnCwva3rhJyFEX4Pf2kQ0=;
 b=aFzCTrleOrI2z32bCgVx9p/g2hH1VRi9wHYhfCs0Pjoi+fEhqPeNFd4lUQijRIB3EQ
 Lu1j83gEtF9wXyJsGZgNFnneYPh/IRXjzWhxLYbJStSMwv8csawIH/e+5/iYqUM+/hIy
 lEcDDNFxhD8gYvzcf8tu4/xENb0Kqy1dRqGVY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dv6v6igQ1oKOZ1Eun+l9MhtnCwva3rhJyFEX4Pf2kQ0=;
 b=GCtx4zJ4sfj9o8y/RZei2fJvlrM2TyuP+wpOHwdpKIWPBxhOUuxu9759abo0A4igKO
 xrUu1PtDlxO+YIyXnXFpTviC+/j/w0VBVlnvSMII4e6nBzYKuW+exBujE8uKnmsq4lCe
 Cgm+rWiefBm4tzTz5ST7fuesvU8wgeP1zBC1BNyQhxMs2vwSlOhwHfRi4qA7MBn71mMs
 bhQeMU3rlorodNZrlRRtj9jS+pQjtl5zqq4KhrHul7SO+LJ4mzBDlSmodGv4qzfNtkYc
 pYEXx0/Toq+nzzObBZf0l/Rf/9QxWWkdNz2YSFOtGffw1cc63Tlb/d6aOepqqfj79CJ7
 8rWg==
X-Gm-Message-State: AOAM532ETU2b0U7izdpDiMy4C4RXwFB1CE0Cth8Un4m+KpxFYBYMyRSN
 q8lm9R9fVplZ7/Wm41KV6hjTpQ==
X-Google-Smtp-Source: ABdhPJw52+IyaRzEIS3K2HqWrpga4Pu1Of3wXi6MHgYRBZuFv0SIyY5taAASC3x4OBivQ/OLJ6JFPA==
X-Received: by 2002:a05:600c:5106:: with SMTP id
 o6mr3724746wms.18.1627387844472; 
 Tue, 27 Jul 2021 05:10:44 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id k186sm3010577wme.45.2021.07.27.05.10.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Jul 2021 05:10:43 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 27 Jul 2021 14:10:28 +0200
Message-Id: <20210727121037.2041102-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210727121037.2041102-1-daniel.vetter@ffwll.ch>
References: <20210727121037.2041102-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 02/11] drm/i915: move i915_active slab to
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
noise with removing the static global.slab_cache to just a slab_cache.

v2: Make slab static (Jason, 0day)

Reviewed-by: Jason Ekstrand <jason@jlekstrand.net>
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
index 91723123ae9f..3103c1e1fd14 100644
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
+static struct kmem_cache *slab_cache;
 
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
index eb520fcb32e4..2a1726e9ae7f 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -30,6 +30,7 @@
 
 #include "display/intel_fbdev.h"
 
+#include "i915_active.h"
 #include "i915_drv.h"
 #include "i915_perf.h"
 #include "i915_globals.h"
@@ -1294,6 +1295,7 @@ static const struct {
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
