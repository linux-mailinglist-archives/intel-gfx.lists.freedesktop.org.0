Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5B52C9B0A
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 10:07:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D0DD6E4BA;
	Tue,  1 Dec 2020 09:07:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78B6D6E4AF
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 09:07:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23172169-1500050 
 for multiple; Tue, 01 Dec 2020 09:07:31 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 09:07:21 +0000
Message-Id: <20201201090729.24777-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201201090729.24777-1-chris@chris-wilson.co.uk>
References: <20201201090729.24777-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/12] drm/i915: Update client name on context
 create
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Some clients have the DRM fd passed to them over a socket by the X server.

Grab the real client and pid when they create their first context and
update the exposed data for more useful enumeration.

To enable lockless access to client name and pid data from the following
patches, we also make these fields rcu protected. In this way asynchronous
code paths where both contexts which remain after the client exit, and
access to client name and pid as they are getting updated due context
creation running in parallel with name/pid queries.

v2:
 * Do not leak the pid reference and borrow context idr_lock. (Chris)

v3:
 * More avoiding leaks. (Chris)

v4:
 * Move update completely to drm client. (Chris)
 * Do not lose previous client data on failure to re-register and simplify
   update to only touch what it needs.

v5:
 * Reuse ext_data local. (Chris)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c |  5 ++
 drivers/gpu/drm/i915/i915_drm_client.c      | 94 +++++++++++++++++----
 drivers/gpu/drm/i915/i915_drm_client.h      | 16 +++-
 3 files changed, 98 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 8493af37eb8a..694641aa656b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -74,6 +74,7 @@
 #include "gt/intel_engine_user.h"
 #include "gt/intel_ring.h"
 
+#include "i915_drm_client.h"
 #include "i915_gem_context.h"
 #include "i915_globals.h"
 #include "i915_trace.h"
@@ -2327,6 +2328,10 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 		return -EIO;
 	}
 
+	ret = i915_drm_client_update(ext_data.fpriv->client, current);
+	if (ret)
+		return ret;
+
 	ext_data.ctx = i915_gem_create_context(i915, args->flags);
 	if (IS_ERR(ext_data.ctx))
 		return PTR_ERR(ext_data.ctx);
diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
index 597829f2c657..3ace17556194 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -7,7 +7,10 @@
 #include <linux/slab.h>
 #include <linux/types.h>
 
+#include <drm/drm_print.h>
+
 #include "i915_drm_client.h"
+#include "i915_drv.h"
 #include "i915_gem.h"
 #include "i915_utils.h"
 
@@ -25,10 +28,15 @@ show_client_name(struct device *kdev, struct device_attribute *attr, char *buf)
 {
 	struct i915_drm_client *client =
 		container_of(attr, typeof(*client), attr.name);
+	int ret;
 
-	return snprintf(buf, PAGE_SIZE,
-			READ_ONCE(client->closed) ? "<%s>" : "%s",
-			client->name);
+	rcu_read_lock();
+	ret = snprintf(buf, PAGE_SIZE,
+		       READ_ONCE(client->closed) ? "<%s>" : "%s",
+		       rcu_dereference(client->name)->name);
+	rcu_read_unlock();
+
+	return ret;
 }
 
 static ssize_t
@@ -36,10 +44,15 @@ show_client_pid(struct device *kdev, struct device_attribute *attr, char *buf)
 {
 	struct i915_drm_client *client =
 		container_of(attr, typeof(*client), attr.pid);
+	int ret;
+
+	rcu_read_lock();
+	ret = snprintf(buf, PAGE_SIZE,
+		       READ_ONCE(client->closed) ? "<%u>" : "%u",
+		       pid_nr(rcu_dereference(client->name)->pid));
+	rcu_read_unlock();
 
-	return snprintf(buf, PAGE_SIZE,
-			READ_ONCE(client->closed) ? "<%u>" : "%u",
-			pid_nr(client->pid));
+	return ret;
 }
 
 static int __client_register_sysfs(struct i915_drm_client *client)
@@ -91,20 +104,46 @@ static void __client_unregister_sysfs(struct i915_drm_client *client)
 	kobject_put(fetch_and_zero(&client->root));
 }
 
+static struct i915_drm_client_name *get_name(struct i915_drm_client *client,
+					     struct task_struct *task)
+{
+	struct i915_drm_client_name *name;
+	int len = strlen(task->comm);
+
+	name = kmalloc(struct_size(name, name, len + 1), GFP_KERNEL);
+	if (!name)
+		return NULL;
+
+	init_rcu_head(&name->rcu);
+	name->client = client;
+	name->pid = get_task_pid(task, PIDTYPE_PID);
+	memcpy(name->name, task->comm, len + 1);
+
+	return name;
+}
+
+static void free_name(struct rcu_head *rcu)
+{
+	struct i915_drm_client_name *name =
+		container_of(rcu, typeof(*name), rcu);
+
+	put_pid(name->pid);
+	kfree(name);
+}
+
 static int
 __i915_drm_client_register(struct i915_drm_client *client,
 			   struct task_struct *task)
 {
 	struct i915_drm_clients *clients = client->clients;
-	char *name;
+	struct i915_drm_client_name *name;
 	int ret;
 
-	name = kstrdup(task->comm, GFP_KERNEL);
+	name = get_name(client, task);
 	if (!name)
 		return -ENOMEM;
 
-	client->pid = get_task_pid(task, PIDTYPE_PID);
-	client->name = name;
+	RCU_INIT_POINTER(client->name, name);
 
 	if (!clients->root)
 		return 0; /* intel_fbdev_init registers a client before sysfs */
@@ -116,18 +155,22 @@ __i915_drm_client_register(struct i915_drm_client *client,
 	return 0;
 
 err_sysfs:
-	put_pid(client->pid);
-	kfree(client->name);
-
+	RCU_INIT_POINTER(client->name, NULL);
+	call_rcu(&name->rcu, free_name);
 	return ret;
 }
 
 static void __i915_drm_client_unregister(struct i915_drm_client *client)
 {
+	struct i915_drm_client_name *name;
+
 	__client_unregister_sysfs(client);
 
-	put_pid(fetch_and_zero(&client->pid));
-	kfree(fetch_and_zero(&client->name));
+	mutex_lock(&client->update_lock);
+	name = rcu_replace_pointer(client->name, NULL, true);
+	mutex_unlock(&client->update_lock);
+
+	call_rcu(&name->rcu, free_name);
 }
 
 static void __rcu_i915_drm_client_free(struct work_struct *wrk)
@@ -152,6 +195,7 @@ i915_drm_client_add(struct i915_drm_clients *clients, struct task_struct *task)
 		return ERR_PTR(-ENOMEM);
 
 	kref_init(&client->kref);
+	mutex_init(&client->update_lock);
 	client->clients = clients;
 	INIT_RCU_WORK(&client->rcu, __rcu_i915_drm_client_free);
 
@@ -188,3 +232,23 @@ void i915_drm_client_close(struct i915_drm_client *client)
 	WRITE_ONCE(client->closed, true);
 	i915_drm_client_put(client);
 }
+
+int
+i915_drm_client_update(struct i915_drm_client *client,
+		       struct task_struct *task)
+{
+	struct i915_drm_client_name *name;
+
+	name = get_name(client, task);
+	if (!name)
+		return -ENOMEM;
+
+	mutex_lock(&client->update_lock);
+	if (name->pid != rcu_dereference_protected(client->name, true)->pid) {
+		name = rcu_replace_pointer(client->name, name, true);
+	}
+	mutex_unlock(&client->update_lock);
+
+	call_rcu(&name->rcu, free_name);
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i915/i915_drm_client.h
index e222864748c7..d4d3c0af5793 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.h
+++ b/drivers/gpu/drm/i915/i915_drm_client.h
@@ -9,6 +9,7 @@
 #include <linux/device.h>
 #include <linux/kobject.h>
 #include <linux/kref.h>
+#include <linux/mutex.h>
 #include <linux/pid.h>
 #include <linux/rcupdate.h>
 #include <linux/sched.h>
@@ -25,14 +26,22 @@ struct i915_drm_clients {
 	struct kobject *root;
 };
 
+struct i915_drm_client_name {
+	struct rcu_head rcu;
+	struct i915_drm_client *client;
+	struct pid *pid;
+	char name[];
+};
+
 struct i915_drm_client {
 	struct kref kref;
 
 	struct rcu_work rcu;
 
+	struct mutex update_lock; /* Serializes name and pid updates. */
+
 	unsigned int id;
-	struct pid *pid;
-	char *name;
+	struct i915_drm_client_name __rcu *name;
 	bool closed;
 
 	struct i915_drm_clients *clients;
@@ -66,4 +75,7 @@ void i915_drm_client_close(struct i915_drm_client *client);
 struct i915_drm_client *i915_drm_client_add(struct i915_drm_clients *clients,
 					    struct task_struct *task);
 
+int i915_drm_client_update(struct i915_drm_client *client,
+			   struct task_struct *task);
+
 #endif /* !__I915_DRM_CLIENT_H__ */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
