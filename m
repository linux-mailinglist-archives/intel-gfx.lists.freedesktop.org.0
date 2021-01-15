Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA96D2F7BAD
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 14:05:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19D9989C82;
	Fri, 15 Jan 2021 13:05:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7F8089C82
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jan 2021 13:05:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23606310-1500050 
 for multiple; Fri, 15 Jan 2021 13:05:21 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Jan 2021 13:05:19 +0000
Message-Id: <20210115130519.11230-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/gem: Use GEM context tracking for
 i915_gem_objects
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, stable@kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rather than take an indirect jump to the drm midlayer (that introduces a
use-after-free in reading the ctx->file backpointer) to find all the vma
on objects associated with the ctx->file, walk the LUT table stored in
the context that tracks all the objects in use with the context.

The improper serialisation with device closure resulting in a
use-after-free is a much older issue, we have also introduced a new
incorrect list iteration due to commit a4e7ccdac38e ("drm/i915: Move
context management under GEM") as the link is no longer guarded by the
context's reference context.

Fixes: a4e7ccdac38e ("drm/i915: Move context management under GEM")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: CQ Tang <cq.tang@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: stable@kernel.org
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c |   4 +-
 drivers/gpu/drm/i915/i915_debugfs.c         | 181 ++++++++------------
 2 files changed, 71 insertions(+), 114 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 4d2f40cf237b..7879dd01e517 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -606,7 +606,7 @@ static void context_close(struct i915_gem_context *ctx)
 	lut_close(ctx);
 
 	spin_lock(&ctx->i915->gem.contexts.lock);
-	list_del(&ctx->link);
+	list_del_rcu(&ctx->link);
 	spin_unlock(&ctx->i915->gem.contexts.lock);
 
 	mutex_unlock(&ctx->mutex);
@@ -908,7 +908,7 @@ static int gem_context_register(struct i915_gem_context *ctx,
 		goto err_pid;
 
 	spin_lock(&i915->gem.contexts.lock);
-	list_add_tail(&ctx->link, &i915->gem.contexts.list);
+	list_add_tail_rcu(&ctx->link, &i915->gem.contexts.list);
 	spin_unlock(&i915->gem.contexts.lock);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index de8e0e44cfb6..2d294db93781 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -220,73 +220,14 @@ i915_debugfs_describe_obj(struct seq_file *m, struct drm_i915_gem_object *obj)
 		seq_printf(m, " (%s)", engine->name);
 }
 
-struct file_stats {
-	struct i915_address_space *vm;
+struct ctx_stats {
 	unsigned long count;
 	u64 total;
 	u64 active, inactive;
 	u64 closed;
 };
 
-static int per_file_stats(int id, void *ptr, void *data)
-{
-	struct drm_i915_gem_object *obj = ptr;
-	struct file_stats *stats = data;
-	struct i915_vma *vma;
-
-	if (IS_ERR_OR_NULL(obj) || !kref_get_unless_zero(&obj->base.refcount))
-		return 0;
-
-	stats->count++;
-	stats->total += obj->base.size;
-
-	spin_lock(&obj->vma.lock);
-	if (!stats->vm) {
-		for_each_ggtt_vma(vma, obj) {
-			if (!drm_mm_node_allocated(&vma->node))
-				continue;
-
-			if (i915_vma_is_active(vma))
-				stats->active += vma->node.size;
-			else
-				stats->inactive += vma->node.size;
-
-			if (i915_vma_is_closed(vma))
-				stats->closed += vma->node.size;
-		}
-	} else {
-		struct rb_node *p = obj->vma.tree.rb_node;
-
-		while (p) {
-			long cmp;
-
-			vma = rb_entry(p, typeof(*vma), obj_node);
-			cmp = i915_vma_compare(vma, stats->vm, NULL);
-			if (cmp == 0) {
-				if (drm_mm_node_allocated(&vma->node)) {
-					if (i915_vma_is_active(vma))
-						stats->active += vma->node.size;
-					else
-						stats->inactive += vma->node.size;
-
-					if (i915_vma_is_closed(vma))
-						stats->closed += vma->node.size;
-				}
-				break;
-			}
-			if (cmp < 0)
-				p = p->rb_right;
-			else
-				p = p->rb_left;
-		}
-	}
-	spin_unlock(&obj->vma.lock);
-
-	i915_gem_object_put(obj);
-	return 0;
-}
-
-#define print_file_stats(m, name, stats) do { \
+#define print_ctx_stats(m, name, stats) do { \
 	if (stats.count) \
 		seq_printf(m, "%s: %lu objects, %llu bytes (%llu active, %llu inactive, %llu closed)\n", \
 			   name, \
@@ -297,66 +238,82 @@ static int per_file_stats(int id, void *ptr, void *data)
 			   stats.closed); \
 } while (0)
 
+static void vma_stats(struct i915_vma *vma, struct ctx_stats *stats)
+{
+	if (!drm_mm_node_allocated(&vma->node))
+		return;
+
+	stats->count++;
+	stats->total += vma->size;
+
+	if (i915_vma_is_active(vma))
+		stats->active += vma->node.size;
+	else
+		stats->inactive += vma->node.size;
+
+	if (i915_vma_is_closed(vma))
+		stats->closed += vma->node.size;
+}
+
+static void context_stats(struct i915_gem_context *ctx, struct ctx_stats *stats)
+{
+	struct radix_tree_iter iter;
+	void __rcu **slot;
+
+	radix_tree_for_each_slot(slot, &ctx->handles_vma, &iter, 0) {
+		struct i915_vma *vma = rcu_dereference_raw(*slot);
+		struct drm_i915_gem_object *obj;
+
+		obj = i915_gem_object_get_rcu(vma->obj);
+		if (!obj)
+			continue;
+
+		vma_stats(vma, stats);
+		i915_gem_object_put(obj);
+	}
+}
+
+static void
+kcontext_stats(struct i915_gem_context *ctx, struct ctx_stats *stats)
+{
+	struct i915_gem_engines_iter it;
+	struct intel_context *ce;
+
+	for_each_gem_engine(ce, rcu_dereference(ctx->engines), it) {
+		if (intel_context_pin_if_active(ce)) {
+			if (ce->state)
+				vma_stats(ce->state, stats);
+			vma_stats(ce->ring->vma, stats);
+			intel_context_unpin(ce);
+		}
+	}
+}
+
 static void print_context_stats(struct seq_file *m,
 				struct drm_i915_private *i915)
 {
-	struct file_stats kstats = {};
-	struct i915_gem_context *ctx, *cn;
+	struct ctx_stats kstats = {};
+	struct i915_gem_context *ctx;
 
-	spin_lock(&i915->gem.contexts.lock);
-	list_for_each_entry_safe(ctx, cn, &i915->gem.contexts.list, link) {
-		struct i915_gem_engines_iter it;
-		struct intel_context *ce;
+	rcu_read_lock();
+	list_for_each_entry_rcu(ctx, &i915->gem.contexts.list, link) {
+		struct ctx_stats stats = {};
+		struct task_struct *task;
+		char name[80] = "<unknown>";
 
-		if (!kref_get_unless_zero(&ctx->ref))
-			continue;
+		kcontext_stats(ctx, &kstats);
+		context_stats(ctx, &stats);
 
-		spin_unlock(&i915->gem.contexts.lock);
-
-		for_each_gem_engine(ce,
-				    i915_gem_context_lock_engines(ctx), it) {
-			if (intel_context_pin_if_active(ce)) {
-				rcu_read_lock();
-				if (ce->state)
-					per_file_stats(0,
-						       ce->state->obj, &kstats);
-				per_file_stats(0, ce->ring->vma->obj, &kstats);
-				rcu_read_unlock();
-				intel_context_unpin(ce);
-			}
+		if (ctx->pid) {
+			task = pid_task(ctx->pid, PIDTYPE_PID);
+			if (task)
+				memcpy(name, task->comm, sizeof(task->comm));
 		}
-		i915_gem_context_unlock_engines(ctx);
-
-		mutex_lock(&ctx->mutex);
-		if (!IS_ERR_OR_NULL(ctx->file_priv)) {
-			struct file_stats stats = {
-				.vm = rcu_access_pointer(ctx->vm),
-			};
-			struct drm_file *file = ctx->file_priv->file;
-			struct task_struct *task;
-			char name[80];
-
-			rcu_read_lock();
-			idr_for_each(&file->object_idr, per_file_stats, &stats);
-			rcu_read_unlock();
-
-			rcu_read_lock();
-			task = pid_task(ctx->pid ?: file->pid, PIDTYPE_PID);
-			snprintf(name, sizeof(name), "%s",
-				 task ? task->comm : "<unknown>");
-			rcu_read_unlock();
-
-			print_file_stats(m, name, stats);
-		}
-		mutex_unlock(&ctx->mutex);
-
-		spin_lock(&i915->gem.contexts.lock);
-		list_safe_reset_next(ctx, cn, link);
-		i915_gem_context_put(ctx);
+		print_ctx_stats(m, name, stats);
 	}
-	spin_unlock(&i915->gem.contexts.lock);
+	rcu_read_unlock();
 
-	print_file_stats(m, "[k]contexts", kstats);
+	print_ctx_stats(m, "[k]contexts", kstats);
 }
 
 static int i915_gem_object_info(struct seq_file *m, void *data)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
