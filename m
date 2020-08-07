Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B66A523EF04
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 16:27:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36F566E9DA;
	Fri,  7 Aug 2020 14:27:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDE1D6E9DA
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Aug 2020 14:27:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22062143-1500050 
 for multiple; Fri, 07 Aug 2020 15:27:42 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Aug 2020 15:27:41 +0100
Message-Id: <20200807142741.20872-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200807125440.3419-2-chris@chris-wilson.co.uk>
References: <20200807125440.3419-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Protect context lifetime with RCU
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Allow a brief period for continued access to a dead intel_context by
deferring the release of the struct until after an RCU grace period.
As we are using a dedicated slab cache for the contexts, we can defer
the release of the slab pages via RCU, with the caveat that individual
structs may be reused from the freelist within an RCU grace period. To
handle that, we have to avoid clearing members of the zombie struct.

This is required for a later patch to handle locking around virtual
requests in the signaler, as those requests may want to move between
engines and be destroyed while we are holding b->irq_lock on a physical
engine.

v2: Drop mutex_reinit(), if we never mark the mutex as destroyed we
don't need to reset the debug code, at the loss of having the mutex
debug code spot us attempting to destroy a locked mutex.
v3: As the intended use will remain strongly referenced counted, with
very little inflight access across reuse, drop the ctor.
v4: Drop the unrequired change to remove the temporary reference around
dropping the active context, and add back some more missing ctor
operations.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_context.c       | 27 +++++++++++++++----
 drivers/gpu/drm/i915/gt/intel_context_types.h |  6 +++++
 2 files changed, 28 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 52db2bde44a3..25690b7fe500 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -22,7 +22,7 @@ static struct i915_global_context {
 
 static struct intel_context *intel_context_alloc(void)
 {
-	return kmem_cache_zalloc(global.slab_ce, GFP_KERNEL);
+	return kmem_cache_alloc(global.slab_ce, GFP_KERNEL);
 }
 
 void intel_context_free(struct intel_context *ce)
@@ -280,8 +280,7 @@ static int __intel_context_active(struct i915_active *active)
 }
 
 void
-intel_context_init(struct intel_context *ce,
-		   struct intel_engine_cs *engine)
+intel_context_init(struct intel_context *ce, struct intel_engine_cs *engine)
 {
 	GEM_BUG_ON(!engine->cops);
 	GEM_BUG_ON(!engine->gt->vm);
@@ -291,19 +290,35 @@ intel_context_init(struct intel_context *ce,
 	ce->engine = engine;
 	ce->ops = engine->cops;
 	ce->sseu = engine->sseu;
-	ce->ring = __intel_context_ring_size(SZ_4K);
+
+	ce->wa_bb_page = 0;
+	ce->flags = 0;
+	ce->tag = 0;
+
+	memset(&ce->runtime, 0, sizeof(ce->runtime));
 
 	ewma_runtime_init(&ce->runtime.avg);
 
 	ce->vm = i915_vm_get(engine->gt->vm);
+	ce->gem_context = NULL;
+
+	ce->ring = __intel_context_ring_size(SZ_4K);
+	ce->timeline = NULL;
+	ce->state = NULL;
 
 	INIT_LIST_HEAD(&ce->signal_link);
 	INIT_LIST_HEAD(&ce->signals);
 
+	atomic_set(&ce->pin_count, 0);
 	mutex_init(&ce->pin_mutex);
 
+	ce->active_count = 0;
 	i915_active_init(&ce->active,
 			 __intel_context_active, __intel_context_retire);
+
+	ce->inflight = NULL;
+	ce->lrc_reg_state = NULL;
+	ce->lrc.desc = 0;
 }
 
 void intel_context_fini(struct intel_context *ce)
@@ -333,7 +348,9 @@ static struct i915_global_context global = { {
 
 int __init i915_global_context_init(void)
 {
-	global.slab_ce = KMEM_CACHE(intel_context, SLAB_HWCACHE_ALIGN);
+	global.slab_ce = KMEM_CACHE(intel_context,
+				    SLAB_HWCACHE_ALIGN |
+				    SLAB_TYPESAFE_BY_RCU);
 	if (!global.slab_ce)
 		return -ENOMEM;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 4954b0df4864..18622f1a0249 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -41,6 +41,12 @@ struct intel_context_ops {
 };
 
 struct intel_context {
+	/*
+	 * Note: Some fields may be accessed under RCU.
+	 *
+	 * Unless otherwise noted a field can safely be assumed to be protected
+	 * by strong reference counting.
+	 */
 	struct kref ref;
 
 	struct intel_engine_cs *engine;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
