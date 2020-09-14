Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A768A268BE9
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 15:13:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D783F6E499;
	Mon, 14 Sep 2020 13:13:14 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75C946E21C
 for <Intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 13:13:08 +0000 (UTC)
IronPort-SDR: sHCatt/Fe8htoG1Q9QS1Lk+KQJl45IkN99HqKTj+pa75yU79mizSYY7LHTGosTzMgkGHsZtPk3
 MFNEGbHTa13A==
X-IronPort-AV: E=McAfee;i="6000,8403,9743"; a="159113417"
X-IronPort-AV: E=Sophos;i="5.76,426,1592895600"; d="scan'208";a="159113417"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 06:13:08 -0700
IronPort-SDR: zrIignqasbltN5Op3TmlJVxNQ8uhP0zO5Ru/UqIYgVDDWZAo9STxYnEPmCqpDLhCEjwXFLsALb
 4vOJRHcIGI/g==
X-IronPort-AV: E=Sophos;i="5.76,426,1592895600"; d="scan'208";a="507136322"
Received: from matancoh-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.255.198.45])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 06:13:06 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 14 Sep 2020 14:12:49 +0100
Message-Id: <20200914131256.89465-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200914131256.89465-1-tvrtko.ursulin@linux.intel.com>
References: <20200914131256.89465-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/9] drm/i915: Update client name on context
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

v5:
 * Reuse ext_data local. (Chris)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c |   5 +
 drivers/gpu/drm/i915/i915_drm_client.c      | 110 +++++++++++++++++---
 drivers/gpu/drm/i915/i915_drm_client.h      |  10 +-
 3 files changed, 111 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index cf5ecbde9e06..5919cc5f8348 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -74,6 +74,7 @@
 #include "gt/intel_engine_user.h"
 #include "gt/intel_ring.h"
 
+#include "i915_drm_client.h"
 #include "i915_gem_context.h"
 #include "i915_globals.h"
 #include "i915_trace.h"
@@ -2388,6 +2389,10 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
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
index 137a5744f9c6..617509c2e887 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -7,6 +7,9 @@
 #include <linux/slab.h>
 #include <linux/types.h>
 
+#include <drm/drm_print.h>
+
+#include "i915_drv.h"
 #include "i915_drm_client.h"
 #include "i915_gem.h"
 #include "i915_utils.h"
@@ -22,10 +25,15 @@ show_client_name(struct device *kdev, struct device_attribute *attr, char *buf)
 {
 	struct i915_drm_client *client =
 		container_of(attr, typeof(*client), attr.name);
+	int ret;
+
+	rcu_read_lock();
+	ret = snprintf(buf, PAGE_SIZE,
+		       READ_ONCE(client->closed) ? "<%s>" : "%s",
+		       rcu_dereference(client->name));
+	rcu_read_unlock();
 
-	return snprintf(buf, PAGE_SIZE,
-			READ_ONCE(client->closed) ? "<%s>" : "%s",
-			client->name);
+	return ret;
 }
 
 static ssize_t
@@ -33,10 +41,15 @@ show_client_pid(struct device *kdev, struct device_attribute *attr, char *buf)
 {
 	struct i915_drm_client *client =
 		container_of(attr, typeof(*client), attr.pid);
+	int ret;
 
-	return snprintf(buf, PAGE_SIZE,
-			READ_ONCE(client->closed) ? "<%u>" : "%u",
-			pid_nr(client->pid));
+	rcu_read_lock();
+	ret = snprintf(buf, PAGE_SIZE,
+		       READ_ONCE(client->closed) ? "<%u>" : "%u",
+		       pid_nr(rcu_dereference(client->pid)));
+	rcu_read_unlock();
+
+	return ret;
 }
 
 static int
@@ -101,8 +114,8 @@ __i915_drm_client_register(struct i915_drm_client *client,
 	if (!name)
 		return -ENOMEM;
 
-	client->pid = get_task_pid(task, PIDTYPE_PID);
-	client->name = name;
+	rcu_assign_pointer(client->pid, get_task_pid(task, PIDTYPE_PID));
+	rcu_assign_pointer(client->name, name);
 
 	if (!clients->root)
 		return 0; /* intel_fbdev_init registers a client before sysfs */
@@ -114,8 +127,8 @@ __i915_drm_client_register(struct i915_drm_client *client,
 	return 0;
 
 err_sysfs:
-	put_pid(client->pid);
-	kfree(client->name);
+	put_pid(rcu_replace_pointer(client->pid, NULL, true));
+	kfree(rcu_replace_pointer(client->name, NULL, true));
 
 	return ret;
 }
@@ -125,8 +138,8 @@ __i915_drm_client_unregister(struct i915_drm_client *client)
 {
 	__client_unregister_sysfs(client);
 
-	put_pid(fetch_and_zero(&client->pid));
-	kfree(fetch_and_zero(&client->name));
+	put_pid(rcu_replace_pointer(client->pid, NULL, true));
+	kfree(rcu_replace_pointer(client->name, NULL, true));
 }
 
 struct i915_drm_client *
@@ -140,6 +153,7 @@ i915_drm_client_add(struct i915_drm_clients *clients, struct task_struct *task)
 		return ERR_PTR(-ENOMEM);
 
 	kref_init(&client->kref);
+	mutex_init(&client->update_lock);
 	client->clients = clients;
 
 	ret = xa_alloc_cyclic(&clients->xarray, &client->id, client,
@@ -177,3 +191,75 @@ void i915_drm_client_close(struct i915_drm_client *client)
 	WRITE_ONCE(client->closed, true);
 	i915_drm_client_put(client);
 }
+
+struct client_update_free {
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
+	if (pid == rcu_access_pointer(client->pid))
+		goto out_name;
+
+	name = kstrdup(task->comm, GFP_KERNEL);
+	if (!name) {
+		drm_notice(&i915->drm,
+			   "Failed to update client id=%u,name=%s,pid=%u! (%d)\n",
+			   client->id,
+			   client->name,
+			   pid_nr(rcu_access_pointer(client->pid)),
+			   ret);
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
index af6998c74d4c..11b48383881d 100644
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
@@ -26,9 +27,11 @@ struct i915_drm_client {
 
 	struct rcu_head rcu;
 
+	struct mutex update_lock; /* Serializes name and pid updates. */
+
 	unsigned int id;
-	struct pid *pid;
-	char *name;
+	struct pid __rcu *pid;
+	char __rcu *name;
 	bool closed;
 
 	struct i915_drm_clients *clients;
@@ -61,4 +64,7 @@ void i915_drm_client_close(struct i915_drm_client *client);
 struct i915_drm_client *i915_drm_client_add(struct i915_drm_clients *clients,
 					    struct task_struct *task);
 
+int i915_drm_client_update(struct i915_drm_client *client,
+			   struct task_struct *task);
+
 #endif /* !__I915_DRM_CLIENT_H__ */
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
