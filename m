Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F758126892
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 19:00:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB7856E39B;
	Thu, 19 Dec 2019 18:00:34 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E364C6E394
 for <Intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 18:00:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 10:00:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,332,1571727600"; d="scan'208";a="206283884"
Received: from dtriolet-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.84.191])
 by orsmga007.jf.intel.com with ESMTP; 19 Dec 2019 10:00:29 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 19 Dec 2019 18:00:14 +0000
Message-Id: <20191219180019.25562-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191219180019.25562-1-tvrtko.ursulin@linux.intel.com>
References: <20191219180019.25562-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 3/8] drm/i915: Expose list of clients in sysfs
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

Expose a list of clients with open file handles in sysfs.

This will be a basis for a top-like utility showing per-client and per-
engine GPU load.

Currently we only expose each client's pid and name under opaque numbered
directories in /sys/class/drm/card0/clients/.

For instance:

/sys/class/drm/card0/clients/3/name: Xorg
/sys/class/drm/card0/clients/3/pid: 5664

v2:
 Chris Wilson:
 * Enclose new members into dedicated structs.
 * Protect against failed sysfs registration.

v3:
 * sysfs_attr_init.

v4:
 * Fix for internal clients.

v5:
 * Use cyclic ida for client id. (Chris)
 * Do not leak pid reference. (Chris)
 * Tidy code with some locals.

v6:
 * Use xa_alloc_cyclic to simplify locking. (Chris)
 * No need to unregister individial sysfs files. (Chris)
 * Rebase on top of fpriv kref.
 * Track client closed status and reflect in sysfs.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h   |  20 +++++
 drivers/gpu/drm/i915/i915_gem.c   | 133 ++++++++++++++++++++++++++++--
 drivers/gpu/drm/i915/i915_sysfs.c |   8 ++
 3 files changed, 155 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6f13f0c619e9..e1d8361aafd7 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -188,6 +188,7 @@ struct i915_hotplug {
 struct drm_i915_private;
 struct i915_mm_struct;
 struct i915_mmu_object;
+struct i915_drm_clients;
 
 struct drm_i915_file_private {
 	struct kref kref;
@@ -226,6 +227,19 @@ struct drm_i915_file_private {
 	/** ban_score: Accumulated score of all ctx bans and fast hangs. */
 	atomic_t ban_score;
 	unsigned long hang_timestamp;
+
+	struct i915_drm_client {
+		unsigned int id;
+		struct pid *pid;
+		char *name;
+		bool closed;
+
+		struct kobject *root;
+		struct {
+			struct device_attribute pid;
+			struct device_attribute name;
+		} attr;
+	} client;
 };
 
 /* Interface history:
@@ -1280,6 +1294,12 @@ struct drm_i915_private {
 
 	struct i915_pmu pmu;
 
+	struct i915_drm_clients {
+		struct xarray xarray;
+
+		struct kobject *root;
+	} clients;
+
 	struct i915_hdcp_comp_master *hdcp_master;
 	bool hdcp_comp_added;
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index a52fdae95f58..f2d285388b8c 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1457,11 +1457,13 @@ static void i915_gem_init__mm(struct drm_i915_private *i915)
 	i915_gem_init__objects(i915);
 }
 
-void i915_gem_init_early(struct drm_i915_private *dev_priv)
+void i915_gem_init_early(struct drm_i915_private *i915)
 {
-	i915_gem_init__mm(dev_priv);
+	i915_gem_init__mm(i915);
 
-	spin_lock_init(&dev_priv->fb_tracking.lock);
+	spin_lock_init(&i915->fb_tracking.lock);
+
+	xa_init_flags(&i915->clients.xarray, XA_FLAGS_ALLOC);
 }
 
 void i915_gem_cleanup_early(struct drm_i915_private *dev_priv)
@@ -1470,6 +1472,8 @@ void i915_gem_cleanup_early(struct drm_i915_private *dev_priv)
 	GEM_BUG_ON(!llist_empty(&dev_priv->mm.free_list));
 	GEM_BUG_ON(atomic_read(&dev_priv->mm.free_count));
 	WARN_ON(dev_priv->mm.shrink_count);
+	WARN_ON(!xa_empty(&dev_priv->clients.xarray));
+	xa_destroy(&dev_priv->clients.xarray);
 }
 
 int i915_gem_freeze(struct drm_i915_private *dev_priv)
@@ -1518,17 +1522,110 @@ int i915_gem_freeze_late(struct drm_i915_private *i915)
 	return 0;
 }
 
+static ssize_t
+show_client_name(struct device *kdev, struct device_attribute *attr, char *buf)
+{
+	struct i915_drm_client *client =
+		container_of(attr, typeof(*client), attr.name);
+
+	return snprintf(buf, PAGE_SIZE, "%s%s%s",
+			client->closed ? "<" : "",
+			client->name,
+			client->closed ? ">" : "");
+}
+
+static ssize_t
+show_client_pid(struct device *kdev, struct device_attribute *attr, char *buf)
+{
+	struct i915_drm_client *client =
+		container_of(attr, typeof(*client), attr.pid);
+
+	if (!client->closed)
+		return snprintf(buf, PAGE_SIZE, "%u", pid_nr(client->pid));
+	else
+		return snprintf(buf, PAGE_SIZE, "-");
+}
+
+static int
+__i915_gem_register_client(struct i915_drm_clients *clients,
+			   struct i915_drm_client *client,
+			   struct task_struct *task)
+{
+	struct device_attribute *attr;
+	int ret = -ENOMEM;
+	char idstr[32];
+
+	if (!clients->root)
+		return 0; /* intel_fbdev_init registers a client before sysfs */
+
+	client->name = kstrdup(task->comm, GFP_KERNEL);
+	if (!client->name)
+		goto err_name;
+
+	snprintf(idstr, sizeof(idstr), "%u", client->id);
+	client->root = kobject_create_and_add(idstr, clients->root);
+	if (!client->root)
+		goto err_client;
+
+	attr = &client->attr.name;
+	sysfs_attr_init(&attr->attr);
+	attr->attr.name = "name";
+	attr->attr.mode = 0444;
+	attr->show = show_client_name;
+
+	ret = sysfs_create_file(client->root, (struct attribute *)attr);
+	if (ret)
+		goto err_attr;
+
+	attr = &client->attr.pid;
+	sysfs_attr_init(&attr->attr);
+	attr->attr.name = "pid";
+	attr->attr.mode = 0444;
+	attr->show = show_client_pid;
+
+	ret = sysfs_create_file(client->root, (struct attribute *)attr);
+	if (ret)
+		goto err_attr;
+
+	client->pid = get_task_pid(task, PIDTYPE_PID);
+
+	return 0;
+
+err_attr:
+	kobject_put(client->root);
+err_client:
+	kfree(client->name);
+err_name:
+	return ret;
+}
+
+static void __i915_gem_unregister_client(struct i915_drm_client *client)
+{
+	struct drm_i915_file_private *fpriv =
+		container_of(client, typeof(*fpriv), client);
+
+	if (!client->name)
+		return; /* intel_fbdev_init registers a client before sysfs */
+
+	kobject_put(fetch_and_zero(&client->root));
+	put_pid(fetch_and_zero(&client->pid));
+	kfree(fetch_and_zero(&client->name));
+}
+
 static void gem_release(struct kref *kref)
 {
 	struct drm_i915_file_private *fpriv =
 		container_of(kref, typeof(*fpriv), kref);
 
+	__i915_gem_unregister_client(&fpriv->client);
+	xa_erase(&fpriv->i915->clients.xarray, fpriv->client.id);
 	kfree_rcu(fpriv, rcu);
 }
 
 void i915_gem_release(struct drm_device *dev, struct drm_file *file)
 {
 	struct drm_i915_file_private *file_priv = file->driver_priv;
+	struct i915_drm_client *client = &file_priv->client;
 	struct i915_request *request;
 
 	/* Clean up our request list when the client is going away, so that
@@ -1540,19 +1637,34 @@ void i915_gem_release(struct drm_device *dev, struct drm_file *file)
 		request->file_priv = NULL;
 	spin_unlock(&file_priv->mm.lock);
 
+	GEM_BUG_ON(client->closed);
+	client->closed = true;
 	kref_put(&file_priv->kref, gem_release);
 }
 
 int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file)
 {
+	struct i915_drm_clients *clients = &i915->clients;
 	struct drm_i915_file_private *file_priv;
-	int ret;
+	struct i915_drm_client *client;
+	int ret = -ENOMEM;
+	u32 next = 0;
 
 	DRM_DEBUG("\n");
 
 	file_priv = kzalloc(sizeof(*file_priv), GFP_KERNEL);
 	if (!file_priv)
-		return -ENOMEM;
+		goto err_alloc;
+
+	client = &file_priv->client;
+	ret = xa_alloc_cyclic(&clients->xarray, &client->id, file_priv,
+			      xa_limit_32b, &next, GFP_KERNEL);
+	if (ret)
+		goto err_id;
+
+	ret = __i915_gem_register_client(clients, client, current);
+	if (ret)
+		goto err_add;
 
 	kref_init(&file_priv->kref);
 
@@ -1568,8 +1680,17 @@ int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file)
 
 	ret = i915_gem_context_open(i915, file);
 	if (ret)
-		kfree(file_priv);
+		goto err_context;
 
+	return 0;
+
+err_context:
+	__i915_gem_unregister_client(client);
+err_add:
+	xa_erase(&clients->xarray, client->id);
+err_id:
+	kfree(file_priv);
+err_alloc:
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
index ad2b1b833d7b..3ab50e29fddf 100644
--- a/drivers/gpu/drm/i915/i915_sysfs.c
+++ b/drivers/gpu/drm/i915/i915_sysfs.c
@@ -559,6 +559,11 @@ void i915_setup_sysfs(struct drm_i915_private *dev_priv)
 	struct device *kdev = dev_priv->drm.primary->kdev;
 	int ret;
 
+	dev_priv->clients.root =
+		kobject_create_and_add("clients", &kdev->kobj);
+	if (!dev_priv->clients.root)
+		DRM_ERROR("Per-client sysfs setup failed\n");
+
 #ifdef CONFIG_PM
 	if (HAS_RC6(dev_priv)) {
 		ret = sysfs_merge_group(&kdev->kobj,
@@ -619,4 +624,7 @@ void i915_teardown_sysfs(struct drm_i915_private *dev_priv)
 	sysfs_unmerge_group(&kdev->kobj, &rc6_attr_group);
 	sysfs_unmerge_group(&kdev->kobj, &rc6p_attr_group);
 #endif
+
+	if (dev_priv->clients.root)
+		kobject_put(dev_priv->clients.root);
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
