Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04018268BE7
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 15:13:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B1086E497;
	Mon, 14 Sep 2020 13:13:12 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D791D6E497
 for <Intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 13:13:09 +0000 (UTC)
IronPort-SDR: ZDBY6WQg3H632tCzNdGNRRTUzDrQPRq2RLoJlwOWXaytw5db0P2881SoPls9Gwfu6rbzy7CkMv
 I3PR9uqGcRPw==
X-IronPort-AV: E=McAfee;i="6000,8403,9743"; a="159113420"
X-IronPort-AV: E=Sophos;i="5.76,426,1592895600"; d="scan'208";a="159113420"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 06:13:09 -0700
IronPort-SDR: d6NBe3hsnsbtV++CRQmE60EI3PhsPZBd51huj0pOdSbkoAwB2NWzqlLQX/pYuukkkUb10L2UU/
 qM2hHOnx50Fw==
X-IronPort-AV: E=Sophos;i="5.76,426,1592895600"; d="scan'208";a="507136340"
Received: from matancoh-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.255.198.45])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 06:13:08 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 14 Sep 2020 14:12:50 +0100
Message-Id: <20200914131256.89465-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200914131256.89465-1-tvrtko.ursulin@linux.intel.com>
References: <20200914131256.89465-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/9] drm/i915: Make GEM contexts track DRM
 clients
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

If we make GEM contexts keep a reference to i915_drm_client for the whole
of their lifetime, we can consolidate the current task pid and name usage
by getting it from the client.

v2:
 * Don't bother supporting selftests contexts from debugfs. (Chris)

v3:
 * Trivial rebase.

v4:
 * Fully initialize context before adding to the list. (Lucas)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 19 +++++++++---
 .../gpu/drm/i915/gem/i915_gem_context_types.h | 13 ++-------
 drivers/gpu/drm/i915/i915_debugfs.c           | 29 +++++++------------
 drivers/gpu/drm/i915/i915_gpu_error.c         | 22 ++++++++------
 4 files changed, 41 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 5919cc5f8348..df5488998d53 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -336,8 +336,13 @@ static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx)
 
 static void i915_gem_context_free(struct i915_gem_context *ctx)
 {
+	struct i915_drm_client *client = ctx->client;
+
 	GEM_BUG_ON(!i915_gem_context_is_closed(ctx));
 
+	if (client)
+		i915_drm_client_put(client);
+
 	spin_lock(&ctx->i915->gem.contexts.lock);
 	list_del(&ctx->link);
 	spin_unlock(&ctx->i915->gem.contexts.lock);
@@ -348,7 +353,6 @@ static void i915_gem_context_free(struct i915_gem_context *ctx)
 	if (ctx->timeline)
 		intel_timeline_put(ctx->timeline);
 
-	put_pid(ctx->pid);
 	mutex_destroy(&ctx->mutex);
 
 	kfree_rcu(ctx, rcu);
@@ -936,6 +940,7 @@ static int gem_context_register(struct i915_gem_context *ctx,
 				u32 *id)
 {
 	struct drm_i915_private *i915 = ctx->i915;
+	struct i915_drm_client *client;
 	struct i915_address_space *vm;
 	int ret;
 
@@ -947,15 +952,21 @@ static int gem_context_register(struct i915_gem_context *ctx,
 		WRITE_ONCE(vm->file, fpriv); /* XXX */
 	mutex_unlock(&ctx->mutex);
 
-	ctx->pid = get_task_pid(current, PIDTYPE_PID);
+	client = i915_drm_client_get(fpriv->client);
+
+	rcu_read_lock();
 	snprintf(ctx->name, sizeof(ctx->name), "%s[%d]",
-		 current->comm, pid_nr(ctx->pid));
+		 rcu_dereference(client->name),
+		 pid_nr(rcu_dereference(client->pid)));
+	rcu_read_unlock();
 
 	/* And finally expose ourselves to userspace via the idr */
 	ret = xa_alloc(&fpriv->context_xa, id, ctx, xa_limit_32b, GFP_KERNEL);
 	if (ret)
 		goto err_pid;
 
+	ctx->client = client;
+
 	spin_lock(&i915->gem.contexts.lock);
 	list_add_tail(&ctx->link, &i915->gem.contexts.list);
 	spin_unlock(&i915->gem.contexts.lock);
@@ -963,7 +974,7 @@ static int gem_context_register(struct i915_gem_context *ctx,
 	return 0;
 
 err_pid:
-	put_pid(fetch_and_zero(&ctx->pid));
+	i915_drm_client_put(client);
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index ae14ca24a11f..31a6a30f7ea8 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -96,20 +96,13 @@ struct i915_gem_context {
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
 
+	/** client: struct i915_drm_client */
+	struct i915_drm_client *client;
+
 	/**
 	 * @ref: reference count
 	 *
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 784219962193..1df87d9735fc 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -331,17 +331,15 @@ static void print_context_stats(struct seq_file *m,
 				.vm = rcu_access_pointer(ctx->vm),
 			};
 			struct drm_file *file = ctx->file_priv->file;
-			struct task_struct *task;
 			char name[80];
 
 			rcu_read_lock();
+
 			idr_for_each(&file->object_idr, per_file_stats, &stats);
-			rcu_read_unlock();
 
-			rcu_read_lock();
-			task = pid_task(ctx->pid ?: file->pid, PIDTYPE_PID);
 			snprintf(name, sizeof(name), "%s",
-				 task ? task->comm : "<unknown>");
+				 rcu_dereference(ctx->client->name));
+
 			rcu_read_unlock();
 
 			print_file_stats(m, name, stats);
@@ -1073,20 +1071,13 @@ static int i915_context_status(struct seq_file *m, void *unused)
 		spin_unlock(&i915->gem.contexts.lock);
 
 		seq_puts(m, "HW context ");
-		if (ctx->pid) {
-			struct task_struct *task;
-
-			task = get_pid_task(ctx->pid, PIDTYPE_PID);
-			if (task) {
-				seq_printf(m, "(%s [%d]) ",
-					   task->comm, task->pid);
-				put_task_struct(task);
-			}
-		} else if (IS_ERR(ctx->file_priv)) {
-			seq_puts(m, "(deleted) ");
-		} else {
-			seq_puts(m, "(kernel) ");
-		}
+
+		rcu_read_lock();
+		seq_printf(m, "(%s [%d]) %s",
+			   rcu_dereference(ctx->client->name),
+			   pid_nr(rcu_dereference(ctx->client->pid)),
+			   ctx->client->closed ? "(closed) " : "");
+		rcu_read_unlock();
 
 		seq_putc(m, ctx->remap_slice ? 'R' : 'r');
 		seq_putc(m, '\n');
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 3e6cbb0d1150..8e468942f943 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1229,7 +1229,9 @@ static void record_request(const struct i915_request *request,
 
 		ctx = rcu_dereference(request->context->gem_context);
 		if (ctx)
-			erq->pid = pid_nr(ctx->pid);
+			erq->pid = I915_SELFTEST_ONLY(!ctx->client) ?
+				   0 :
+				   pid_nr(rcu_dereference(ctx->client->pid));
 	}
 	rcu_read_unlock();
 }
@@ -1250,23 +1252,25 @@ static bool record_context(struct i915_gem_context_coredump *e,
 			   const struct i915_request *rq)
 {
 	struct i915_gem_context *ctx;
-	struct task_struct *task;
 	bool simulated;
 
 	rcu_read_lock();
+
 	ctx = rcu_dereference(rq->context->gem_context);
 	if (ctx && !kref_get_unless_zero(&ctx->ref))
 		ctx = NULL;
-	rcu_read_unlock();
-	if (!ctx)
+	if (!ctx) {
+		rcu_read_unlock();
 		return true;
+	}
 
-	rcu_read_lock();
-	task = pid_task(ctx->pid, PIDTYPE_PID);
-	if (task) {
-		strcpy(e->comm, task->comm);
-		e->pid = task->pid;
+	if (I915_SELFTEST_ONLY(!ctx->client)) {
+		strcpy(e->comm, "[kernel]");
+	} else {
+		strcpy(e->comm, rcu_dereference(ctx->client->name));
+		e->pid = pid_nr(rcu_dereference(ctx->client->pid));
 	}
+
 	rcu_read_unlock();
 
 	e->sched_attr = ctx->sched;
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
