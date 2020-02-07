Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D82F155B80
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 17:13:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAC866EAD9;
	Fri,  7 Feb 2020 16:13:40 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED0F66EAD9
 for <Intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 16:13:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 08:13:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,414,1574150400"; d="scan'208";a="226515303"
Received: from aabader-mobl1.ccr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.21.249])
 by fmsmga008.fm.intel.com with ESMTP; 07 Feb 2020 08:13:35 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri,  7 Feb 2020 16:13:27 +0000
Message-Id: <20200207161331.23447-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200207161331.23447-1-tvrtko.ursulin@linux.intel.com>
References: <20200207161331.23447-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/6] drm/i915: Update client name on context
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

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c |   8 +-
 drivers/gpu/drm/i915/i915_drm_client.c      | 110 +++++++++++++++++---
 drivers/gpu/drm/i915/i915_drm_client.h      |  10 +-
 3 files changed, 113 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 52a749691a8d..7dfabd8a04a1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -75,6 +75,7 @@
 #include "gt/intel_engine_user.h"
 #include "gt/intel_ring.h"
 
+#include "i915_drm_client.h"
 #include "i915_gem_context.h"
 #include "i915_globals.h"
 #include "i915_trace.h"
@@ -2092,6 +2093,7 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 {
 	struct drm_i915_private *i915 = to_i915(dev);
 	struct drm_i915_gem_context_create_ext *args = data;
+	struct drm_i915_file_private *file_priv = file->driver_priv;
 	struct create_ext ext_data;
 	int ret;
 	u32 id;
@@ -2106,7 +2108,7 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 	if (ret)
 		return ret;
 
-	ext_data.fpriv = file->driver_priv;
+	ext_data.fpriv = file_priv;
 	if (client_is_banned(ext_data.fpriv)) {
 		drm_dbg(&i915->drm,
 			"client %s[%d] banned from creating ctx\n",
@@ -2114,6 +2116,10 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 		return -EIO;
 	}
 
+	ret = i915_drm_client_update(file_priv->client, current);
+	if (ret)
+		return ret;
+
 	ext_data.ctx = i915_gem_create_context(i915, args->flags);
 	if (IS_ERR(ext_data.ctx))
 		return PTR_ERR(ext_data.ctx);
diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
index f97989329df5..770094ef2e67 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -8,6 +8,9 @@
 #include <linux/slab.h>
 #include <linux/types.h>
 
+#include <drm/drm_print.h>
+
+#include "i915_drv.h"
 #include "i915_drm_client.h"
 #include "i915_gem.h"
 #include "i915_utils.h"
@@ -17,10 +20,15 @@ show_client_name(struct device *kdev, struct device_attribute *attr, char *buf)
 {
 	struct i915_drm_client *client =
 		container_of(attr, typeof(*client), attr.name);
+	int ret;
 
-	return snprintf(buf, PAGE_SIZE,
-			client->closed ? "<%s>" : "%s",
-			client->name);
+	rcu_read_lock();
+	ret = snprintf(buf, PAGE_SIZE,
+		       client->closed ? "<%s>" : "%s",
+		       rcu_dereference(client->name));
+	rcu_read_unlock();
+
+	return ret;
 }
 
 static ssize_t
@@ -28,10 +36,15 @@ show_client_pid(struct device *kdev, struct device_attribute *attr, char *buf)
 {
 	struct i915_drm_client *client =
 		container_of(attr, typeof(*client), attr.pid);
+	int ret;
+
+	rcu_read_lock();
+	ret = snprintf(buf, PAGE_SIZE,
+		       client->closed ? "<%u>" : "%u",
+		       pid_nr(rcu_dereference(client->pid)));
+	rcu_read_unlock();
 
-	return snprintf(buf, PAGE_SIZE,
-			client->closed ? "<%u>" : "%u",
-			pid_nr(client->pid));
+	return ret;
 }
 
 static int
@@ -42,12 +55,14 @@ __i915_drm_client_register(struct i915_drm_client *client,
 	struct device_attribute *attr;
 	int ret = -ENOMEM;
 	char idstr[32];
+	char *name;
 
-	client->pid = get_task_pid(task, PIDTYPE_PID);
+	rcu_assign_pointer(client->pid, get_task_pid(task, PIDTYPE_PID));
 
-	client->name = kstrdup(task->comm, GFP_KERNEL);
-	if (!client->name)
+	name = kstrdup(task->comm, GFP_KERNEL);
+	if (!name)
 		goto err_name;
+	rcu_assign_pointer(client->name, name);
 
 	if (!clients->root)
 		return 0; /* intel_fbdev_init registers a client before sysfs */
@@ -82,7 +97,7 @@ __i915_drm_client_register(struct i915_drm_client *client,
 err_attr:
 	kobject_put(client->root);
 err_client:
-	kfree(client->name);
+	kfree(name);
 err_name:
 	put_pid(client->pid);
 
@@ -92,8 +107,8 @@ __i915_drm_client_register(struct i915_drm_client *client,
 static void
 __i915_drm_client_unregister(struct i915_drm_client *client)
 {
-	put_pid(fetch_and_zero(&client->pid));
-	kfree(fetch_and_zero(&client->name));
+	put_pid(rcu_replace_pointer(client->pid, NULL, true));
+	kfree(rcu_replace_pointer(client->name, NULL, true));
 
 	if (!client->root)
 		return; /* fbdev client or error during drm open */
@@ -113,6 +128,7 @@ i915_drm_client_add(struct i915_drm_clients *clients, struct task_struct *task)
 		return ERR_PTR(-ENOMEM);
 
 	kref_init(&client->kref);
+	mutex_init(&client->update_lock);
 	client->clients = clients;
 
 	ret = xa_alloc_cyclic(&clients->xarray, &client->id, client,
@@ -150,3 +166,73 @@ void i915_drm_client_close(struct i915_drm_client *client)
 	client->closed = true;
 	i915_drm_client_put(client);
 }
+
+struct client_update_free
+{
+	struct rcu_head rcu;
+	struct pid *pid;
+	char *name;
+};
+
+static void __client_update_free(struct rcu_head *rcu)
+{
+	struct client_update_free *old = container_of(rcu, typeof(*old), rcu);
+
+	put_pid(old->pid);
+	kfree(old->name);
+	kfree(old);
+}
+
+int
+i915_drm_client_update(struct i915_drm_client *client,
+		       struct task_struct *task)
+{
+	struct drm_i915_private *i915 =
+		container_of(client->clients, typeof(*i915), clients);
+	struct client_update_free *old;
+	struct pid *pid;
+	char *name;
+	int ret;
+
+	old = kmalloc(sizeof(*old), GFP_KERNEL);
+	if (!old)
+		return -ENOMEM;
+
+	ret = mutex_lock_interruptible(&client->update_lock);
+	if (ret)
+		goto out_free;
+
+	pid = get_task_pid(task, PIDTYPE_PID);
+	if (!pid)
+		goto out_pid;
+	if (pid == client->pid)
+		goto out_name;
+
+	name = kstrdup(task->comm, GFP_KERNEL);
+	if (!name) {
+		drm_notice(&i915->drm,
+			   "Failed to update client id=%u,name=%s,pid=%u! (%d)\n",
+			   client->id, client->name, pid_nr(client->pid), ret);
+		goto out_name;
+	}
+
+	init_rcu_head(&old->rcu);
+
+	old->pid = rcu_replace_pointer(client->pid, pid, true);
+	old->name = rcu_replace_pointer(client->name, name, true);
+
+	mutex_unlock(&client->update_lock);
+
+	call_rcu(&old->rcu, __client_update_free);
+
+	return 0;
+
+out_name:
+	put_pid(pid);
+out_pid:
+	mutex_unlock(&client->update_lock);
+out_free:
+	kfree(old);
+
+	return ret;
+}
diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i915/i915_drm_client.h
index 8b261dc4a1f3..a9d4d7396e43 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.h
+++ b/drivers/gpu/drm/i915/i915_drm_client.h
@@ -10,6 +10,7 @@
 #include <linux/device.h>
 #include <linux/kobject.h>
 #include <linux/kref.h>
+#include <linux/mutex.h>
 #include <linux/pid.h>
 #include <linux/rcupdate.h>
 #include <linux/sched.h>
@@ -25,9 +26,11 @@ struct i915_drm_client {
 
 	struct rcu_head rcu;
 
+	struct mutex update_lock;
+
 	unsigned int id;
-	struct pid *pid;
-	char *name;
+	struct pid __rcu *pid;
+	char __rcu *name;
 	bool closed;
 
 	struct i915_drm_clients *clients;
@@ -58,4 +61,7 @@ void i915_drm_client_close(struct i915_drm_client *client);
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
