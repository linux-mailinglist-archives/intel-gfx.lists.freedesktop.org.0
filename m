Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 497A021BB9C
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 18:56:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 403BA6EC91;
	Fri, 10 Jul 2020 16:56:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 323C26EC91
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 16:56:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21781278-1500050 
 for multiple; Fri, 10 Jul 2020 17:56:18 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 17:56:15 +0100
Message-Id: <20200710165615.15673-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Provide i915_request debug Kconfig
 options
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
Cc: Venkata Ramana Nayana <venkata.ramana.nayana@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

i915_request uses the particularly nasty SLAB_TYPESAFE_BY_RCU which
makes it very hard to debug use-after-free as the slab freelists are
immediately reused and so prevent the normal poisoning used to detect
uninitialised use or use-after-free. For debugging purposes, provide an
option to disable the fast slab cache.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Venkata Ramana Nayana <venkata.ramana.nayana@intel.com>
---
 drivers/gpu/drm/i915/Kconfig.debug  | 12 +++++++++++
 drivers/gpu/drm/i915/i915_request.c | 31 ++++++++++++++++++++++++++---
 2 files changed, 40 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
index 206882e154bc..7daa845928db 100644
--- a/drivers/gpu/drm/i915/Kconfig.debug
+++ b/drivers/gpu/drm/i915/Kconfig.debug
@@ -155,6 +155,18 @@ config DRM_I915_DEBUG_GUC
 
 	  If in doubt, say "N".
 
+config DRM_I915_DEBUG_REQUESTS
+	bool "Enable additional driver debugging for requests"
+	default n
+	depends on DRM_I915_DEBUG_GEM
+	help
+	  Enable extra sanity checks (including BUGs) along the requests
+	  paths that may slow the system down and if hit hang the machine.
+
+	  Recommended for driver developers only.
+
+	  If in doubt, say "N".
+
 config DRM_I915_SELFTEST
 	bool "Enable selftests upon driver load"
 	depends on DRM_I915
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 3bb7320249ae..72def88561ce 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -106,6 +106,29 @@ struct kmem_cache *i915_request_slab_cache(void)
 	return global.slab_requests;
 }
 
+#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_REQUESTS)
+
+static void rcu_i915_fence_free(struct rcu_head *rcu)
+{
+	struct i915_request *rq = container_of(rcu, typeof(*rq), fence.rcu);
+
+	kmem_cache_free(global.slab_requests, rq);
+}
+
+static void i915_fence_free(struct i915_request *rq)
+{
+	call_rcu(&rq->fence.rcu, rcu_i915_fence_free);
+}
+
+#else
+
+static void i915_fence_free(struct i915_request *rq)
+{
+	kmem_cache_free(global.slab_requests, rq);
+}
+
+#endif
+
 static void i915_fence_release(struct dma_fence *fence)
 {
 	struct i915_request *rq = to_request(fence);
@@ -155,7 +178,7 @@ static void i915_fence_release(struct dma_fence *fence)
 	    !cmpxchg(&rq->engine->request_pool, NULL, rq))
 		return;
 
-	kmem_cache_free(global.slab_requests, rq);
+	i915_fence_free(rq);
 }
 
 const struct dma_fence_ops i915_fence_ops = {
@@ -1850,9 +1873,11 @@ int __init i915_global_request_init(void)
 		kmem_cache_create("i915_request",
 				  sizeof(struct i915_request),
 				  __alignof__(struct i915_request),
-				  SLAB_HWCACHE_ALIGN |
+#if !IS_ENABLED(CONFIG_DRM_I915_DEBUG_REQUESTS)
+				  SLAB_TYPESAFE_BY_RCU |
+#endif
 				  SLAB_RECLAIM_ACCOUNT |
-				  SLAB_TYPESAFE_BY_RCU,
+				  SLAB_HWCACHE_ALIGN,
 				  __i915_request_ctor);
 	if (!global.slab_requests)
 		return -ENOMEM;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
