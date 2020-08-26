Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0BA8252FDB
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 15:29:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD9316EA80;
	Wed, 26 Aug 2020 13:29:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4077E6EA5F
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 13:28:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22244747-1500050 
 for multiple; Wed, 26 Aug 2020 14:28:16 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Aug 2020 14:27:53 +0100
Message-Id: <20200826132811.17577-21-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200826132811.17577-1-chris@chris-wilson.co.uk>
References: <20200826132811.17577-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 21/39] drm/i915/gt: Protect context lifetime
 with RCU
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
v5: The ctor is back. Tvrtko spotted that ce->signal_lock [introduced
later] maybe accessed under RCU and so needs special care not to be
reinitialised.
v6: Don't mix SLAB_TYPESAFE_BY_RCU and RCU list iteration.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_context.c       | 12 +++++++++---
 drivers/gpu/drm/i915/gt/intel_context_types.h | 11 ++++++++++-
 2 files changed, 19 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 61b05cd4c47a..52a836ef0006 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -25,11 +25,18 @@ static struct intel_context *intel_context_alloc(void)
 	return kmem_cache_zalloc(global.slab_ce, GFP_KERNEL);
 }
 
-void intel_context_free(struct intel_context *ce)
+static void rcu_context_free(struct rcu_head *rcu)
 {
+	struct intel_context *ce = container_of(rcu, typeof(*ce), rcu);
+
 	kmem_cache_free(global.slab_ce, ce);
 }
 
+void intel_context_free(struct intel_context *ce)
+{
+	call_rcu(&ce->rcu, rcu_context_free);
+}
+
 struct intel_context *
 intel_context_create(struct intel_engine_cs *engine)
 {
@@ -347,8 +354,7 @@ static int __intel_context_active(struct i915_active *active)
 }
 
 void
-intel_context_init(struct intel_context *ce,
-		   struct intel_engine_cs *engine)
+intel_context_init(struct intel_context *ce, struct intel_engine_cs *engine)
 {
 	GEM_BUG_ON(!engine->cops);
 	GEM_BUG_ON(!engine->gt->vm);
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 552cb57a2e8c..20cb5835d1c3 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -44,7 +44,16 @@ struct intel_context_ops {
 };
 
 struct intel_context {
-	struct kref ref;
+	/*
+	 * Note: Some fields may be accessed under RCU.
+	 *
+	 * Unless otherwise noted a field can safely be assumed to be protected
+	 * by strong reference counting.
+	 */
+	union {
+		struct kref ref; /* no kref_get_unless_zero()! */
+		struct rcu_head rcu;
+	};
 
 	struct intel_engine_cs *engine;
 	struct intel_engine_cs *inflight;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
