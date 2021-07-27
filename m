Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6233D74D5
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 14:11:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 807916EA0B;
	Tue, 27 Jul 2021 12:10:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E64BE6E970
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 12:10:49 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id p5so9826408wro.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 05:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SRIvipp+/rUrnGOkRac1/pvU10F62QyZRdjP7HrxZ/8=;
 b=Kca4K7//yhayfuyQhPoTsbnMUnuHZGjAeyptIn6fOwGEE7rOooa+CJK2M+i+WOGRnH
 kdtd9wLTwJ0YUOHtBls3O6sJJMgd1461pdG1qU49ie2Q5NzN9M7bshFCXK5ykK6PBVH+
 CBKXowWuLb4jO8F8gXOqUzmVjkMp3CkBobabA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SRIvipp+/rUrnGOkRac1/pvU10F62QyZRdjP7HrxZ/8=;
 b=iOMHj+kiwaUfImXsdVZJXm2xTxKDCOTE7R1CaUvU+FvQtk0HhyaZBDGuQzQO+Yl3WN
 peH4+K1RP/y0EyChY5pMl9ps6z6/lXfzRk4cJ+OmYGhtyqoTBGNdXvfHrZOpZuspC93y
 EGCnsiL6KqXjiHcNyWehviT8DGR65j3o+mnA2rP7mlbQmR/DV1ERJILJzW/m4MQEI+gV
 qgCbWjnz5a6+8NrLDx9EfBSi4F/lxlg6WBuci0dQmRD91Hkx05+bUtqJboePYf2QK8/t
 vhlKHfcDXXTSSzcxLOUG2RMzeI1ILE71fRVivYer0gy4sWhbXOt0VBjFgmDR6Cp78jVD
 g1ag==
X-Gm-Message-State: AOAM531Sw6ebL97c7PZbpeVsFIKEYMgwlHHljvw6TKYpX+tfs4Gvvhrw
 R/qrsz1mB3DqXjbN5MuNEBJ9ew==
X-Google-Smtp-Source: ABdhPJzP0KJDkPO+B0t6qoGyLcMmF7d9ryoPlA8zkTwpfNqqcbqOXMlg0Man+JSt5wlabQXHYOl0ug==
X-Received: by 2002:a5d:40c6:: with SMTP id b6mr10402724wrq.222.1627387848470; 
 Tue, 27 Jul 2021 05:10:48 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id k186sm3010577wme.45.2021.07.27.05.10.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Jul 2021 05:10:48 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 27 Jul 2021 14:10:33 +0200
Message-Id: <20210727121037.2041102-7-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210727121037.2041102-1-daniel.vetter@ffwll.ch>
References: <20210727121037.2041102-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 07/11] drm/i915: move request slabs to direct
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
noise with removing the static global.slab_requests|execute_cbs to just a
slab_requests|execute_cbs.

v2: Make slab static (Jason, 0day)

Reviewed-by: Jason Ekstrand <jason@jlekstrand.net>
Cc: Jason Ekstrand <jason@jlekstrand.net>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/i915/i915_globals.c |  2 --
 drivers/gpu/drm/i915/i915_pci.c     |  2 ++
 drivers/gpu/drm/i915/i915_request.c | 47 ++++++++++++-----------------
 drivers/gpu/drm/i915/i915_request.h |  3 ++
 4 files changed, 24 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_globals.c b/drivers/gpu/drm/i915/i915_globals.c
index 40a592fbc3e0..8fffa8d93bc5 100644
--- a/drivers/gpu/drm/i915/i915_globals.c
+++ b/drivers/gpu/drm/i915/i915_globals.c
@@ -8,7 +8,6 @@
 #include <linux/workqueue.h>
 
 #include "i915_globals.h"
-#include "i915_request.h"
 #include "i915_scheduler.h"
 #include "i915_vma.h"
 
@@ -30,7 +29,6 @@ static void __i915_globals_cleanup(void)
 }
 
 static __initconst int (* const initfn[])(void) = {
-	i915_global_request_init,
 	i915_global_scheduler_init,
 	i915_global_vma_init,
 };
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 7a13570c04a5..3f1716a3d74f 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -35,6 +35,7 @@
 #include "i915_drv.h"
 #include "gem/i915_gem_context.h"
 #include "gem/i915_gem_object.h"
+#include "i915_request.h"
 #include "i915_perf.h"
 #include "i915_globals.h"
 #include "i915_selftest.h"
@@ -1303,6 +1304,7 @@ static const struct {
 	{ i915_context_module_init, i915_context_module_exit },
 	{ i915_gem_context_module_init, i915_gem_context_module_exit },
 	{ i915_objects_module_init, i915_objects_module_exit },
+	{ i915_request_module_init, i915_request_module_exit },
 	{ i915_globals_init, i915_globals_exit },
 	{ i915_mock_selftests, NULL },
 	{ i915_pmu_init, i915_pmu_exit },
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 6594cb2f8ebd..3dd759be3c28 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -42,7 +42,6 @@
 
 #include "i915_active.h"
 #include "i915_drv.h"
-#include "i915_globals.h"
 #include "i915_trace.h"
 #include "intel_pm.h"
 
@@ -52,11 +51,8 @@ struct execute_cb {
 	struct i915_request *signal;
 };
 
-static struct i915_global_request {
-	struct i915_global base;
-	struct kmem_cache *slab_requests;
-	struct kmem_cache *slab_execute_cbs;
-} global;
+static struct kmem_cache *slab_requests;
+static struct kmem_cache *slab_execute_cbs;
 
 static const char *i915_fence_get_driver_name(struct dma_fence *fence)
 {
@@ -107,7 +103,7 @@ static signed long i915_fence_wait(struct dma_fence *fence,
 
 struct kmem_cache *i915_request_slab_cache(void)
 {
-	return global.slab_requests;
+	return slab_requests;
 }
 
 static void i915_fence_release(struct dma_fence *fence)
@@ -159,7 +155,7 @@ static void i915_fence_release(struct dma_fence *fence)
 	    !cmpxchg(&rq->engine->request_pool, NULL, rq))
 		return;
 
-	kmem_cache_free(global.slab_requests, rq);
+	kmem_cache_free(slab_requests, rq);
 }
 
 const struct dma_fence_ops i915_fence_ops = {
@@ -176,7 +172,7 @@ static void irq_execute_cb(struct irq_work *wrk)
 	struct execute_cb *cb = container_of(wrk, typeof(*cb), work);
 
 	i915_sw_fence_complete(cb->fence);
-	kmem_cache_free(global.slab_execute_cbs, cb);
+	kmem_cache_free(slab_execute_cbs, cb);
 }
 
 static __always_inline void
@@ -514,7 +510,7 @@ __await_execution(struct i915_request *rq,
 	if (i915_request_is_active(signal))
 		return 0;
 
-	cb = kmem_cache_alloc(global.slab_execute_cbs, gfp);
+	cb = kmem_cache_alloc(slab_execute_cbs, gfp);
 	if (!cb)
 		return -ENOMEM;
 
@@ -868,7 +864,7 @@ request_alloc_slow(struct intel_timeline *tl,
 	rq = list_first_entry(&tl->requests, typeof(*rq), link);
 	i915_request_retire(rq);
 
-	rq = kmem_cache_alloc(global.slab_requests,
+	rq = kmem_cache_alloc(slab_requests,
 			      gfp | __GFP_RETRY_MAYFAIL | __GFP_NOWARN);
 	if (rq)
 		return rq;
@@ -881,7 +877,7 @@ request_alloc_slow(struct intel_timeline *tl,
 	retire_requests(tl);
 
 out:
-	return kmem_cache_alloc(global.slab_requests, gfp);
+	return kmem_cache_alloc(slab_requests, gfp);
 }
 
 static void __i915_request_ctor(void *arg)
@@ -942,7 +938,7 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
 	 *
 	 * Do not use kmem_cache_zalloc() here!
 	 */
-	rq = kmem_cache_alloc(global.slab_requests,
+	rq = kmem_cache_alloc(slab_requests,
 			      gfp | __GFP_RETRY_MAYFAIL | __GFP_NOWARN);
 	if (unlikely(!rq)) {
 		rq = request_alloc_slow(tl, &ce->engine->request_pool, gfp);
@@ -1029,7 +1025,7 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
 	GEM_BUG_ON(!list_empty(&rq->sched.waiters_list));
 
 err_free:
-	kmem_cache_free(global.slab_requests, rq);
+	kmem_cache_free(slab_requests, rq);
 err_unreserve:
 	intel_context_unpin(ce);
 	return ERR_PTR(ret);
@@ -2084,19 +2080,15 @@ void i915_request_show(struct drm_printer *m,
 #include "selftests/i915_request.c"
 #endif
 
-static void i915_global_request_exit(void)
+void i915_request_module_exit(void)
 {
-	kmem_cache_destroy(global.slab_execute_cbs);
-	kmem_cache_destroy(global.slab_requests);
+	kmem_cache_destroy(slab_execute_cbs);
+	kmem_cache_destroy(slab_requests);
 }
 
-static struct i915_global_request global = { {
-	.exit = i915_global_request_exit,
-} };
-
-int __init i915_global_request_init(void)
+int __init i915_request_module_init(void)
 {
-	global.slab_requests =
+	slab_requests =
 		kmem_cache_create("i915_request",
 				  sizeof(struct i915_request),
 				  __alignof__(struct i915_request),
@@ -2104,20 +2096,19 @@ int __init i915_global_request_init(void)
 				  SLAB_RECLAIM_ACCOUNT |
 				  SLAB_TYPESAFE_BY_RCU,
 				  __i915_request_ctor);
-	if (!global.slab_requests)
+	if (!slab_requests)
 		return -ENOMEM;
 
-	global.slab_execute_cbs = KMEM_CACHE(execute_cb,
+	slab_execute_cbs = KMEM_CACHE(execute_cb,
 					     SLAB_HWCACHE_ALIGN |
 					     SLAB_RECLAIM_ACCOUNT |
 					     SLAB_TYPESAFE_BY_RCU);
-	if (!global.slab_execute_cbs)
+	if (!slab_execute_cbs)
 		goto err_requests;
 
-	i915_global_register(&global.base);
 	return 0;
 
 err_requests:
-	kmem_cache_destroy(global.slab_requests);
+	kmem_cache_destroy(slab_requests);
 	return -ENOMEM;
 }
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 717e5b292046..a79480f07f04 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -647,4 +647,7 @@ bool
 i915_request_active_engine(struct i915_request *rq,
 			   struct intel_engine_cs **active);
 
+void i915_request_module_exit(void);
+int i915_request_module_init(void);
+
 #endif /* I915_REQUEST_H */
-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
