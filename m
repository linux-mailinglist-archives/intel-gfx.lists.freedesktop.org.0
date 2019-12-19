Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7730F126895
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 19:00:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 106166E39E;
	Thu, 19 Dec 2019 18:00:37 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4389D6E39E
 for <Intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 18:00:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 10:00:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,332,1571727600"; d="scan'208";a="206283917"
Received: from dtriolet-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.84.191])
 by orsmga007.jf.intel.com with ESMTP; 19 Dec 2019 10:00:34 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 19 Dec 2019 18:00:18 +0000
Message-Id: <20191219180019.25562-8-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191219180019.25562-1-tvrtko.ursulin@linux.intel.com>
References: <20191219180019.25562-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 7/8] drm/i915: Contexts can use struct pid stored
 in the client
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Now that contexts keep their parent client reference counted, we can
remove separate struct pid reference owned by contexts in favour of the
one already held by the client.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c       | 13 ++++---------
 drivers/gpu/drm/i915/gem/i915_gem_context_types.h | 10 ----------
 drivers/gpu/drm/i915/i915_debugfs.c               |  7 ++++---
 drivers/gpu/drm/i915/i915_gpu_error.c             |  6 +++---
 4 files changed, 11 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 6586edcf4ffb..1c4d4640bafd 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -288,7 +288,6 @@ static void i915_gem_context_free(struct i915_gem_context *ctx)
 	if (ctx->timeline)
 		intel_timeline_put(ctx->timeline);
 
-	put_pid(ctx->pid);
 	mutex_destroy(&ctx->mutex);
 
 	kfree_rcu(ctx, rcu);
@@ -812,16 +811,13 @@ static int gem_context_register(struct i915_gem_context *ctx,
 		WRITE_ONCE(vm->file, fpriv); /* XXX */
 	mutex_unlock(&ctx->mutex);
 
-	ctx->pid = get_task_pid(current, PIDTYPE_PID);
 	snprintf(ctx->name, sizeof(ctx->name), "%s[%d]",
-		 current->comm, pid_nr(ctx->pid));
+		 current->comm, pid_nr(client->pid));
 
 	/* And finally expose ourselves to userspace via the idr */
 	ret = xa_alloc(&fpriv->context_xa, id, ctx, xa_limit_32b, GFP_KERNEL);
-	if (ret) {
-		put_pid(fetch_and_zero(&ctx->pid));
-		goto out;
-	}
+	if (ret)
+		return ret;
 
 	ctx->client = client;
 	i915_gem_client_get(client);
@@ -830,8 +826,7 @@ static int gem_context_register(struct i915_gem_context *ctx,
 	list_add_tail_rcu(&ctx->client_link, &client->ctx_list);
 	spin_unlock(&client->ctx_lock);
 
-out:
-	return ret;
+	return 0;
 }
 
 int i915_gem_context_open(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index 090ef10fdc5d..770b10ea28fb 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -90,16 +90,6 @@ struct i915_gem_context {
 	 */
 	struct i915_address_space __rcu *vm;
 
-	/**
-	 * @pid: process id of creator
-	 *
-	 * Note that who created the context may not be the principle user,
-	 * as the context may be shared across a local socket. However,
-	 * that should only affect the default context, all contexts created
-	 * explicitly by the client are expected to be isolated.
-	 */
-	struct pid *pid;
-
 	/** link: place with &drm_i915_private.context_list */
 	struct list_head link;
 	struct llist_node free_link;
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index d28468eaed57..ec863be938e8 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -347,7 +347,8 @@ static void print_context_stats(struct seq_file *m,
 			rcu_read_unlock();
 
 			rcu_read_lock();
-			task = pid_task(ctx->pid ?: file->pid, PIDTYPE_PID);
+			task = pid_task(ctx->client->pid ?: file->pid,
+					PIDTYPE_PID);
 			snprintf(name, sizeof(name), "%s",
 				 task ? task->comm : "<unknown>");
 			rcu_read_unlock();
@@ -1489,10 +1490,10 @@ static int i915_context_status(struct seq_file *m, void *unused)
 		spin_unlock(&i915->gem.contexts.lock);
 
 		seq_puts(m, "HW context ");
-		if (ctx->pid) {
+		if (ctx->client->pid) {
 			struct task_struct *task;
 
-			task = get_pid_task(ctx->pid, PIDTYPE_PID);
+			task = get_pid_task(ctx->client->pid, PIDTYPE_PID);
 			if (task) {
 				seq_printf(m, "(%s [%d]) ",
 					   task->comm, task->pid);
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 8374d50c0770..3ba169339fa2 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1231,7 +1231,7 @@ static void record_request(const struct i915_request *request,
 	erq->start = i915_ggtt_offset(request->ring->vma);
 	erq->head = request->head;
 	erq->tail = request->tail;
-	erq->pid = ctx->pid ? pid_nr(ctx->pid) : 0;
+	erq->pid = ctx->client->pid ? pid_nr(ctx->client->pid) : 0;
 }
 
 static void engine_record_requests(struct intel_engine_cs *engine,
@@ -1300,11 +1300,11 @@ static bool record_context(struct drm_i915_error_context *e,
 {
 	const struct i915_gem_context *ctx = rq->gem_context;
 
-	if (ctx->pid) {
+	if (ctx->client->pid) {
 		struct task_struct *task;
 
 		rcu_read_lock();
-		task = pid_task(ctx->pid, PIDTYPE_PID);
+		task = pid_task(ctx->client->pid, PIDTYPE_PID);
 		if (task) {
 			strcpy(e->comm, task->comm);
 			e->pid = task->pid;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
