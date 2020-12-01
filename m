Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A2A2C9B03
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 10:07:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 070E689F89;
	Tue,  1 Dec 2020 09:07:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9532589F89
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 09:07:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23172175-1500050 
 for multiple; Tue, 01 Dec 2020 09:07:32 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 09:07:27 +0000
Message-Id: <20201201090729.24777-10-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201201090729.24777-1-chris@chris-wilson.co.uk>
References: <20201201090729.24777-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/12] drm/i915: Look up clients by pid
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

Use the pid to find associated clients, and report their runtime. This
will be used to provide the information via procfs.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_drm_client.c | 75 ++++++++++++++++++++++++--
 drivers/gpu/drm/i915/i915_drm_client.h | 12 +++--
 2 files changed, 79 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
index 8a5594819f9a..7602786347fb 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -26,6 +26,9 @@ void i915_drm_clients_init(struct i915_drm_clients *clients,
 
 	clients->next_id = 0;
 	xa_init_flags(&clients->xarray, XA_FLAGS_ALLOC);
+
+	hash_init(clients->pids);
+	spin_lock_init(&clients->pid_lock);
 }
 
 static ssize_t
@@ -149,6 +152,58 @@ show_client_sw_busy(struct device *kdev,
 	return snprintf(buf, PAGE_SIZE, "%llu\n", total);
 }
 
+u64 i915_drm_clients_get_runtime(struct i915_drm_clients *clients,
+				 struct pid *pid,
+				 u64 *rt)
+{
+	u32 period_ns = RUNTIME_INFO(clients->i915)->cs_timestamp_period_ns;
+	struct i915_drm_client_name *name;
+	u64 total = 0;
+	u64 t;
+
+	memset64(rt, 0, MAX_ENGINE_CLASS + 1);
+
+	rcu_read_lock();
+	hash_for_each_possible_rcu(clients->pids, name, node, pid_nr(pid)) {
+		struct i915_drm_client *client = name->client;
+		struct list_head *list = &client->ctx_list;
+		struct i915_gem_context *ctx;
+		int i;
+
+		if (name->pid != pid)
+			continue;
+
+		for (i = 0; i < ARRAY_SIZE(client->past_runtime); i++) {
+			t = atomic64_read(&client->past_runtime[i]) * period_ns;
+			rt[i] += t;
+			total += t;
+		}
+
+		list_for_each_entry_rcu(ctx, list, client_link) {
+			struct i915_gem_engines *engines = rcu_dereference(ctx->engines);
+			struct i915_gem_engines_iter it;
+			struct intel_context *ce;
+
+			for_each_gem_engine(ce, engines, it) {
+				struct intel_context_stats *stats = &ce->stats;
+				unsigned int seq;
+
+				do {
+					seq = read_seqbegin(&stats->lock);
+					t = ce->stats.runtime.total * period_ns;
+					t += __intel_context_get_active_time(ce);
+				} while (read_seqretry(&stats->lock, seq));
+
+				rt[ce->engine->class] += t;
+				total += t;
+			}
+		}
+	}
+	rcu_read_unlock();
+
+	return total;
+}
+
 static const char * const uabi_class_names[] = {
 	[I915_ENGINE_CLASS_RENDER] = "0",
 	[I915_ENGINE_CLASS_COPY] = "1",
@@ -300,7 +355,10 @@ __i915_drm_client_register(struct i915_drm_client *client,
 	if (!name)
 		return -ENOMEM;
 
+	spin_lock(&clients->pid_lock);
+	hash_add_rcu(clients->pids, &name->node, pid_nr(name->pid));
 	RCU_INIT_POINTER(client->name, name);
+	spin_unlock(&clients->pid_lock);
 
 	if (!clients->root)
 		return 0; /* intel_fbdev_init registers a client before sysfs */
@@ -312,20 +370,25 @@ __i915_drm_client_register(struct i915_drm_client *client,
 	return 0;
 
 err_sysfs:
+	spin_lock(&clients->pid_lock);
 	RCU_INIT_POINTER(client->name, NULL);
+	hash_del_rcu(&name->node);
+	spin_unlock(&clients->pid_lock);
 	call_rcu(&name->rcu, free_name);
 	return ret;
 }
 
 static void __i915_drm_client_unregister(struct i915_drm_client *client)
 {
+	struct i915_drm_clients *clients = client->clients;
 	struct i915_drm_client_name *name;
 
 	__client_unregister_sysfs(client);
 
-	mutex_lock(&client->update_lock);
+	spin_lock(&clients->pid_lock);
 	name = rcu_replace_pointer(client->name, NULL, true);
-	mutex_unlock(&client->update_lock);
+	hash_del_rcu(&name->node);
+	spin_unlock(&clients->pid_lock);
 
 	call_rcu(&name->rcu, free_name);
 }
@@ -352,7 +415,6 @@ i915_drm_client_add(struct i915_drm_clients *clients, struct task_struct *task)
 		return ERR_PTR(-ENOMEM);
 
 	kref_init(&client->kref);
-	mutex_init(&client->update_lock);
 	spin_lock_init(&client->ctx_lock);
 	INIT_LIST_HEAD(&client->ctx_list);
 
@@ -397,17 +459,20 @@ int
 i915_drm_client_update(struct i915_drm_client *client,
 		       struct task_struct *task)
 {
+	struct i915_drm_clients *clients = client->clients;
 	struct i915_drm_client_name *name;
 
 	name = get_name(client, task);
 	if (!name)
 		return -ENOMEM;
 
-	mutex_lock(&client->update_lock);
+	spin_lock(&clients->pid_lock);
 	if (name->pid != rcu_dereference_protected(client->name, true)->pid) {
+		hash_add_rcu(clients->pids, &name->node, pid_nr(name->pid));
 		name = rcu_replace_pointer(client->name, name, true);
+		hash_del_rcu(&name->node);
 	}
-	mutex_unlock(&client->update_lock);
+	spin_unlock(&clients->pid_lock);
 
 	call_rcu(&name->rcu, free_name);
 	return 0;
diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i915/i915_drm_client.h
index 6365723d89e0..0b392ed9d540 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.h
+++ b/drivers/gpu/drm/i915/i915_drm_client.h
@@ -7,10 +7,10 @@
 #define __I915_DRM_CLIENT_H__
 
 #include <linux/device.h>
+#include <linux/hashtable.h>
 #include <linux/kobject.h>
 #include <linux/kref.h>
 #include <linux/list.h>
-#include <linux/mutex.h>
 #include <linux/pid.h>
 #include <linux/rcupdate.h>
 #include <linux/sched.h>
@@ -28,6 +28,9 @@ struct i915_drm_clients {
 	u32 next_id;
 
 	struct kobject *root;
+
+	spinlock_t pid_lock;
+	DECLARE_HASHTABLE(pids, 6);
 };
 
 struct i915_drm_client;
@@ -40,6 +43,7 @@ struct i915_engine_busy_attribute {
 
 struct i915_drm_client_name {
 	struct rcu_head rcu;
+	struct hlist_node node;
 	struct i915_drm_client *client;
 	struct pid *pid;
 	char name[];
@@ -50,8 +54,6 @@ struct i915_drm_client {
 
 	struct rcu_work rcu;
 
-	struct mutex update_lock; /* Serializes name and pid updates. */
-
 	unsigned int id;
 	struct i915_drm_client_name __rcu *name;
 	bool closed;
@@ -100,4 +102,8 @@ struct i915_drm_client *i915_drm_client_add(struct i915_drm_clients *clients,
 int i915_drm_client_update(struct i915_drm_client *client,
 			   struct task_struct *task);
 
+u64 i915_drm_clients_get_runtime(struct i915_drm_clients *clients,
+				 struct pid *pid,
+				 u64 *rt);
+
 #endif /* !__I915_DRM_CLIENT_H__ */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
