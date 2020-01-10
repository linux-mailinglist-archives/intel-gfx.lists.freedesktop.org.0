Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9C9136E12
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 14:31:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 658576EA0F;
	Fri, 10 Jan 2020 13:31:03 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51D806EA0B
 for <Intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 13:31:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 05:31:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,417,1571727600"; d="scan'208";a="216666332"
Received: from kumarjai-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.83.12])
 by orsmga008.jf.intel.com with ESMTP; 10 Jan 2020 05:30:59 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jan 2020 13:30:46 +0000
Message-Id: <20200110133049.2705-6-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200110133049.2705-1-tvrtko.ursulin@linux.intel.com>
References: <20200110133049.2705-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 5/8] drm/i915: Contexts can use struct pid stored
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
Cc: kui.wen@intel.com
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
 drivers/gpu/drm/i915/i915_gpu_error.c             |  8 ++++----
 4 files changed, 12 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index ba8ccc754f20..758cebb99ba4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -323,7 +323,6 @@ static void i915_gem_context_free(struct i915_gem_context *ctx)
 	if (ctx->timeline)
 		intel_timeline_put(ctx->timeline);
 
-	put_pid(ctx->pid);
 	mutex_destroy(&ctx->mutex);
 
 	kfree_rcu(ctx, rcu);
@@ -794,24 +793,20 @@ static int gem_context_register(struct i915_gem_context *ctx,
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
 
 	ctx->client = client = i915_drm_client_get(fpriv->client);
 	spin_lock(&client->ctx_lock);
 	list_add_tail_rcu(&ctx->client_link, &client->ctx_list);
 	spin_unlock(&client->ctx_lock);
 
-out:
-	return ret;
+	return 0;
 }
 
 int i915_gem_context_open(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index 879824159646..23421377a43d 100644
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
index 8f01c2bc7355..bc533501b4e0 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -346,7 +346,8 @@ static void print_context_stats(struct seq_file *m,
 			rcu_read_unlock();
 
 			rcu_read_lock();
-			task = pid_task(ctx->pid ?: file->pid, PIDTYPE_PID);
+			task = pid_task(ctx->client->pid ?: file->pid,
+					PIDTYPE_PID);
 			snprintf(name, sizeof(name), "%s",
 				 task ? task->comm : "<unknown>");
 			rcu_read_unlock();
@@ -1492,10 +1493,10 @@ static int i915_context_status(struct seq_file *m, void *unused)
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
index fda0977d2059..9240327bdb7d 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1235,8 +1235,8 @@ static void record_request(const struct i915_request *request,
 	erq->pid = 0;
 	rcu_read_lock();
 	ctx = rcu_dereference(request->context->gem_context);
-	if (ctx)
-		erq->pid = pid_nr(ctx->pid);
+	if (ctx && ctx->client->pid)
+		erq->pid = pid_nr(ctx->client->pid);
 	rcu_read_unlock();
 }
 
@@ -1313,11 +1313,11 @@ static bool record_context(struct drm_i915_error_context *e,
 	if (ctx && !kref_get_unless_zero(&ctx->ref))
 		ctx = NULL;
 	rcu_read_unlock();
-	if (!ctx)
+	if (!ctx || !ctx->client->pid)
 		return false;
 
 	rcu_read_lock();
-	task = pid_task(ctx->pid, PIDTYPE_PID);
+	task = pid_task(ctx->client->pid, PIDTYPE_PID);
 	if (task) {
 		strcpy(e->comm, task->comm);
 		e->pid = task->pid;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
