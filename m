Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2C52C9B08
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 10:07:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEEB46E4C4;
	Tue,  1 Dec 2020 09:07:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7885B89FCE
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 09:07:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23172172-1500050 
 for multiple; Tue, 01 Dec 2020 09:07:32 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 09:07:24 +0000
Message-Id: <20201201090729.24777-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201201090729.24777-1-chris@chris-wilson.co.uk>
References: <20201201090729.24777-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/12] drm/i915: Track all user contexts per
 client
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

We soon want to start answering questions like how much GPU time is the
context belonging to a client which exited still using.

To enable this we start tracking all context belonging to a client on a
separate list.

v2:
 * Keep adding to gem.contexts.list as last. (Lucas)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  12 ++
 .../gpu/drm/i915/gem/i915_gem_context_types.h |   3 +
 drivers/gpu/drm/i915/i915_drm_client.c        | 106 +++++++++++++++++-
 drivers/gpu/drm/i915/i915_drm_client.h        |  15 +++
 4 files changed, 135 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index e9bfedf9da84..26452d7383f4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -598,6 +598,7 @@ static void set_closed_name(struct i915_gem_context *ctx)
 static void context_close(struct i915_gem_context *ctx)
 {
 	struct i915_address_space *vm;
+	struct i915_drm_client *client;
 
 	/* Flush any concurrent set_engines() */
 	mutex_lock(&ctx->engines_mutex);
@@ -626,6 +627,13 @@ static void context_close(struct i915_gem_context *ctx)
 	list_del(&ctx->link);
 	spin_unlock(&ctx->i915->gem.contexts.lock);
 
+	client = ctx->client;
+	if (client) {
+		spin_lock(&client->ctx_lock);
+		list_del_rcu(&ctx->client_link);
+		spin_unlock(&client->ctx_lock);
+	}
+
 	mutex_unlock(&ctx->mutex);
 
 	/*
@@ -926,6 +934,10 @@ static int gem_context_register(struct i915_gem_context *ctx,
 
 	ctx->client = client;
 
+	spin_lock(&client->ctx_lock);
+	list_add_tail_rcu(&ctx->client_link, &client->ctx_list);
+	spin_unlock(&client->ctx_lock);
+
 	spin_lock(&i915->gem.contexts.lock);
 	list_add_tail(&ctx->link, &i915->gem.contexts.list);
 	spin_unlock(&i915->gem.contexts.lock);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index c47bb45d2110..085f6a3735e8 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -102,6 +102,9 @@ struct i915_gem_context {
 	/** client: struct i915_drm_client */
 	struct i915_drm_client *client;
 
+	/** link: &drm_client.context_list */
+	struct list_head client_link;
+
 	/**
 	 * @ref: reference count
 	 *
diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
index 3ace17556194..65dd049b1f7d 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -9,6 +9,11 @@
 
 #include <drm/drm_print.h>
 
+#include <uapi/drm/i915_drm.h>
+
+#include "gem/i915_gem_context.h"
+#include "gt/intel_engine_user.h"
+
 #include "i915_drm_client.h"
 #include "i915_drv.h"
 #include "i915_gem.h"
@@ -55,6 +60,97 @@ show_client_pid(struct device *kdev, struct device_attribute *attr, char *buf)
 	return ret;
 }
 
+static u64 pphwsp_busy_add(struct i915_gem_context *ctx, unsigned int class)
+{
+	struct i915_gem_engines *engines = rcu_dereference(ctx->engines);
+	struct i915_gem_engines_iter it;
+	struct intel_context *ce;
+	u64 total = 0;
+
+	for_each_gem_engine(ce, engines, it) {
+		if (ce->engine->uabi_class == class)
+			total += ce->runtime.total;
+	}
+
+	return total;
+}
+
+static ssize_t
+show_client_busy(struct device *kdev, struct device_attribute *attr, char *buf)
+{
+	struct i915_engine_busy_attribute *i915_attr =
+		container_of(attr, typeof(*i915_attr), attr);
+	unsigned int class = i915_attr->engine_class;
+	struct i915_drm_client *client = i915_attr->client;
+	u64 total = atomic64_read(&client->past_runtime[class]);
+	struct list_head *list = &client->ctx_list;
+	struct i915_gem_context *ctx;
+
+	rcu_read_lock();
+	list_for_each_entry_rcu(ctx, list, client_link)
+		total += pphwsp_busy_add(ctx, class);
+	rcu_read_unlock();
+
+	total *= RUNTIME_INFO(client->clients->i915)->cs_timestamp_period_ns;
+
+	return snprintf(buf, PAGE_SIZE, "%llu\n", total);
+}
+
+static const char * const uabi_class_names[] = {
+	[I915_ENGINE_CLASS_RENDER] = "0",
+	[I915_ENGINE_CLASS_COPY] = "1",
+	[I915_ENGINE_CLASS_VIDEO] = "2",
+	[I915_ENGINE_CLASS_VIDEO_ENHANCE] = "3",
+};
+
+static int __client_register_sysfs_busy(struct i915_drm_client *client)
+{
+	struct i915_drm_clients *clients = client->clients;
+	unsigned int i;
+	int ret = 0;
+
+	if (!HAS_LOGICAL_RING_CONTEXTS(clients->i915))
+		return 0;
+
+	client->busy_root = kobject_create_and_add("busy", client->root);
+	if (!client->busy_root)
+		return -ENOMEM;
+
+	for (i = 0; i < ARRAY_SIZE(uabi_class_names); i++) {
+		struct i915_engine_busy_attribute *i915_attr =
+			&client->attr.busy[i];
+		struct device_attribute *attr = &i915_attr->attr;
+
+		if (!intel_engine_lookup_user(clients->i915, i, 0))
+			continue;
+
+		i915_attr->client = client;
+		i915_attr->engine_class = i;
+
+		sysfs_attr_init(&attr->attr);
+
+		attr->attr.name = uabi_class_names[i];
+		attr->attr.mode = 0444;
+		attr->show = show_client_busy;
+
+		ret = sysfs_create_file(client->busy_root,
+					(struct attribute *)attr);
+		if (ret)
+			goto err;
+	}
+
+	return 0;
+
+err:
+	kobject_put(client->busy_root);
+	return ret;
+}
+
+static void __client_unregister_sysfs_busy(struct i915_drm_client *client)
+{
+	kobject_put(fetch_and_zero(&client->busy_root));
+}
+
 static int __client_register_sysfs(struct i915_drm_client *client)
 {
 	const struct {
@@ -90,9 +186,12 @@ static int __client_register_sysfs(struct i915_drm_client *client)
 
 		ret = sysfs_create_file(client->root, (struct attribute *)attr);
 		if (ret)
-			break;
+			goto out;
 	}
 
+	ret = __client_register_sysfs_busy(client);
+
+out:
 	if (ret)
 		kobject_put(client->root);
 
@@ -101,6 +200,8 @@ static int __client_register_sysfs(struct i915_drm_client *client)
 
 static void __client_unregister_sysfs(struct i915_drm_client *client)
 {
+	__client_unregister_sysfs_busy(client);
+
 	kobject_put(fetch_and_zero(&client->root));
 }
 
@@ -196,6 +297,9 @@ i915_drm_client_add(struct i915_drm_clients *clients, struct task_struct *task)
 
 	kref_init(&client->kref);
 	mutex_init(&client->update_lock);
+	spin_lock_init(&client->ctx_lock);
+	INIT_LIST_HEAD(&client->ctx_list);
+
 	client->clients = clients;
 	INIT_RCU_WORK(&client->rcu, __rcu_i915_drm_client_free);
 
diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i915/i915_drm_client.h
index c2ca28335c15..6365723d89e0 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.h
+++ b/drivers/gpu/drm/i915/i915_drm_client.h
@@ -9,10 +9,12 @@
 #include <linux/device.h>
 #include <linux/kobject.h>
 #include <linux/kref.h>
+#include <linux/list.h>
 #include <linux/mutex.h>
 #include <linux/pid.h>
 #include <linux/rcupdate.h>
 #include <linux/sched.h>
+#include <linux/spinlock.h>
 #include <linux/xarray.h>
 
 #include "gt/intel_engine_types.h"
@@ -28,6 +30,14 @@ struct i915_drm_clients {
 	struct kobject *root;
 };
 
+struct i915_drm_client;
+
+struct i915_engine_busy_attribute {
+	struct device_attribute attr;
+	struct i915_drm_client *client;
+	unsigned int engine_class;
+};
+
 struct i915_drm_client_name {
 	struct rcu_head rcu;
 	struct i915_drm_client *client;
@@ -46,12 +56,17 @@ struct i915_drm_client {
 	struct i915_drm_client_name __rcu *name;
 	bool closed;
 
+	spinlock_t ctx_lock; /* For add/remove from ctx_list. */
+	struct list_head ctx_list; /* List of contexts belonging to client. */
+
 	struct i915_drm_clients *clients;
 
 	struct kobject *root;
+	struct kobject *busy_root;
 	struct {
 		struct device_attribute pid;
 		struct device_attribute name;
+		struct i915_engine_busy_attribute busy[MAX_ENGINE_CLASS + 1];
 	} attr;
 
 	/**
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
