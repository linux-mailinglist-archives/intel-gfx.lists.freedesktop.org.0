Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 092B4135501
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 09:59:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BC3E6E8ED;
	Thu,  9 Jan 2020 08:59:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B8926E8E1
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 08:59:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19817526-1500050 
 for multiple; Thu, 09 Jan 2020 08:58:42 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Jan 2020 08:58:29 +0000
Message-Id: <20200109085839.873553-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc1
In-Reply-To: <20200109085839.873553-1-chris@chris-wilson.co.uk>
References: <20200109085839.873553-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/14] drm/i915: Pin the context as we work on it
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

Since we now allow the intel_context_unpin() to run unserialised, we
risk our operations under the intel_context_lock_pinned() being run as
the context is unpinned (and thus invalidating our state). We can
atomically acquire the pin, testing to see if it is pinned in the
process, thus ensuring that the state remains consistent during the
course of the whole operation.

Fixes: 841350223816 ("drm/i915/gt: Drop mutex serialisation between context pin/unpin")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 10 +++++++---
 drivers/gpu/drm/i915/gt/intel_context.h     |  7 ++++++-
 drivers/gpu/drm/i915/i915_debugfs.c         | 10 ++++------
 drivers/gpu/drm/i915/i915_perf.c            | 15 +++++----------
 4 files changed, 22 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 88f6253f5405..a2e57e62af30 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1236,12 +1236,14 @@ gen8_modify_rpcs(struct intel_context *ce, struct intel_sseu sseu)
 	 * image, or into the registers directory, does not stick). Pristine
 	 * and idle contexts will be configured on pinning.
 	 */
-	if (!intel_context_is_pinned(ce))
+	if (!intel_context_pin_if_active(ce))
 		return 0;
 
 	rq = intel_engine_create_kernel_request(ce->engine);
-	if (IS_ERR(rq))
-		return PTR_ERR(rq);
+	if (IS_ERR(rq)) {
+		ret = PTR_ERR(rq);
+		goto out_unpin;
+	}
 
 	/* Serialise with the remote context */
 	ret = intel_context_prepare_remote_request(ce, rq);
@@ -1249,6 +1251,8 @@ gen8_modify_rpcs(struct intel_context *ce, struct intel_sseu sseu)
 		ret = gen8_emit_rpcs_config(rq, ce, sseu);
 
 	i915_request_add(rq);
+out_unpin:
+	intel_context_unpin(ce);
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index f0f49b50b968..30bd248827d8 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -78,9 +78,14 @@ static inline void intel_context_unlock_pinned(struct intel_context *ce)
 
 int __intel_context_do_pin(struct intel_context *ce);
 
+static inline bool intel_context_pin_if_active(struct intel_context *ce)
+{
+	return atomic_inc_not_zero(&ce->pin_count);
+}
+
 static inline int intel_context_pin(struct intel_context *ce)
 {
-	if (likely(atomic_inc_not_zero(&ce->pin_count)))
+	if (likely(intel_context_pin_if_active(ce)))
 		return 0;
 
 	return __intel_context_do_pin(ce);
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 0ac98e39eb75..db184536acef 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -321,16 +321,15 @@ static void print_context_stats(struct seq_file *m,
 
 		for_each_gem_engine(ce,
 				    i915_gem_context_lock_engines(ctx), it) {
-			intel_context_lock_pinned(ce);
-			if (intel_context_is_pinned(ce)) {
+			if (intel_context_pin_if_active(ce)) {
 				rcu_read_lock();
 				if (ce->state)
 					per_file_stats(0,
 						       ce->state->obj, &kstats);
 				per_file_stats(0, ce->ring->vma->obj, &kstats);
 				rcu_read_unlock();
+				intel_context_unpin(ce);
 			}
-			intel_context_unlock_pinned(ce);
 		}
 		i915_gem_context_unlock_engines(ctx);
 
@@ -1513,15 +1512,14 @@ static int i915_context_status(struct seq_file *m, void *unused)
 
 		for_each_gem_engine(ce,
 				    i915_gem_context_lock_engines(ctx), it) {
-			intel_context_lock_pinned(ce);
-			if (intel_context_is_pinned(ce)) {
+			if (intel_context_pin_if_active(ce)) {
 				seq_printf(m, "%s: ", ce->engine->name);
 				if (ce->state)
 					describe_obj(m, ce->state->obj);
 				describe_ctx_ring(m, ce->ring);
 				seq_putc(m, '\n');
+				intel_context_unpin(ce);
 			}
-			intel_context_unlock_pinned(ce);
 		}
 		i915_gem_context_unlock_engines(ctx);
 
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 84350c7bc711..0f556d80ba36 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -2159,8 +2159,6 @@ static int gen8_modify_context(struct intel_context *ce,
 	struct i915_request *rq;
 	int err;
 
-	lockdep_assert_held(&ce->pin_mutex);
-
 	rq = intel_engine_create_kernel_request(ce->engine);
 	if (IS_ERR(rq))
 		return PTR_ERR(rq);
@@ -2203,17 +2201,14 @@ static int gen8_configure_context(struct i915_gem_context *ctx,
 		if (ce->engine->class != RENDER_CLASS)
 			continue;
 
-		err = intel_context_lock_pinned(ce);
-		if (err)
-			break;
+		/* Otherwise OA settings will be set upon first use */
+		if (!intel_context_pin_if_active(ce))
+			continue;
 
 		flex->value = intel_sseu_make_rpcs(ctx->i915, &ce->sseu);
+		err = gen8_modify_context(ce, flex, count);
 
-		/* Otherwise OA settings will be set upon first use */
-		if (intel_context_is_pinned(ce))
-			err = gen8_modify_context(ce, flex, count);
-
-		intel_context_unlock_pinned(ce);
+		intel_context_unpin(ce);
 		if (err)
 			break;
 	}
-- 
2.25.0.rc1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
