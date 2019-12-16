Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4936B1204E5
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 13:07:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE6C589F2A;
	Mon, 16 Dec 2019 12:07:16 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1AE289EAE
 for <Intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 12:07:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 04:07:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,321,1571727600"; d="scan'208";a="416414002"
Received: from dtriolet-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.84.191])
 by fmsmga006.fm.intel.com with ESMTP; 16 Dec 2019 04:07:14 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 16 Dec 2019 12:07:01 +0000
Message-Id: <20191216120704.958-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191216120704.958-1-tvrtko.ursulin@linux.intel.com>
References: <20191216120704.958-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915: Expose list of clients in sysfs
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

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h   |  21 +++++
 drivers/gpu/drm/i915/i915_gem.c   | 148 ++++++++++++++++++++++++++++--
 drivers/gpu/drm/i915/i915_sysfs.c |   8 ++
 3 files changed, 167 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 0781b6326b8c..9fcbcb6d6f76 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -224,6 +224,20 @@ struct drm_i915_file_private {
 	/** ban_score: Accumulated score of all ctx bans and fast hangs. */
 	atomic_t ban_score;
 	unsigned long hang_timestamp;
+
+	struct i915_drm_client {
+		unsigned int id;
+
+		struct pid *pid;
+		char *name;
+
+		struct kobject *root;
+
+		struct {
+			struct device_attribute pid;
+			struct device_attribute name;
+		} attr;
+	} client;
 };
 
 /* Interface history:
@@ -1278,6 +1292,13 @@ struct drm_i915_private {
 
 	struct i915_pmu pmu;
 
+	struct i915_drm_clients {
+		spinlock_t idr_lock;
+		struct idr idr;
+
+		struct kobject *root;
+	} clients;
+
 	struct i915_hdcp_comp_master *hdcp_master;
 	bool hdcp_comp_added;
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 5eeef1ef7448..a65cd7e1ce7b 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1457,11 +1457,14 @@ static void i915_gem_init__mm(struct drm_i915_private *i915)
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
+	spin_lock_init(&i915->clients.idr_lock);
+	idr_init(&i915->clients.idr);
 }
 
 void i915_gem_cleanup_early(struct drm_i915_private *dev_priv)
@@ -1518,6 +1521,106 @@ int i915_gem_freeze_late(struct drm_i915_private *i915)
 	return 0;
 }
 
+static ssize_t
+show_client_name(struct device *kdev, struct device_attribute *attr, char *buf)
+{
+	struct drm_i915_file_private *file_priv =
+		container_of(attr, struct drm_i915_file_private,
+			     client.attr.name);
+
+	return snprintf(buf, PAGE_SIZE, "%s", file_priv->client.name);
+}
+
+static ssize_t
+show_client_pid(struct device *kdev, struct device_attribute *attr, char *buf)
+{
+	struct drm_i915_file_private *file_priv =
+		container_of(attr, struct drm_i915_file_private,
+			     client.attr.pid);
+
+	return snprintf(buf, PAGE_SIZE, "%u", pid_nr(file_priv->client.pid));
+}
+
+static int
+i915_gem_add_client(struct drm_i915_private *i915,
+		struct drm_i915_file_private *file_priv,
+		struct task_struct *task,
+		unsigned int serial)
+{
+	struct i915_drm_client *client = &file_priv->client;
+	struct i915_drm_clients *clients = &i915->clients;
+	struct device_attribute *attr;
+	int ret = -ENOMEM;
+	char id[32];
+
+	if (!clients->root)
+		return 0; /* intel_fbdev_init registers a client before sysfs */
+
+	client->name = kstrdup(task->comm, GFP_KERNEL);
+	if (!client->name)
+		goto err_name;
+
+	snprintf(id, sizeof(id), "%u", serial);
+	client->root = kobject_create_and_add(id, clients->root);
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
+		goto err_attr_name;
+
+	attr = &client->attr.pid;
+	sysfs_attr_init(&attr->attr);
+	attr->attr.name = "pid";
+	attr->attr.mode = 0444;
+	attr->show = show_client_pid;
+
+	ret = sysfs_create_file(client->root, (struct attribute *)attr);
+	if (ret)
+		goto err_attr_pid;
+
+	client->id = serial;
+	client->pid = get_task_pid(task, PIDTYPE_PID);
+
+	return 0;
+
+err_attr_pid:
+	sysfs_remove_file(client->root, (struct attribute *)&client->attr.name);
+err_attr_name:
+	kobject_put(client->root);
+err_client:
+	kfree(client->name);
+err_name:
+	return ret;
+}
+
+static void i915_gem_remove_client(struct drm_i915_file_private *file_priv)
+{
+	struct i915_drm_clients *clients = &file_priv->dev_priv->clients;
+	struct i915_drm_client *client = &file_priv->client;
+
+	if (!client->name)
+		return; /* intel_fbdev_init registers a client before sysfs */
+
+	sysfs_remove_file(client->root, (struct attribute *)&client->attr.pid);
+	sysfs_remove_file(client->root, (struct attribute *)&client->attr.name);
+	kobject_put(client->root);
+
+	spin_lock(&clients->idr_lock);
+	idr_remove(&clients->idr, client->id);
+	spin_unlock(&clients->idr_lock);
+
+	put_pid(client->pid);
+
+	kfree(client->name);
+}
+
 void i915_gem_release(struct drm_device *dev, struct drm_file *file)
 {
 	struct drm_i915_file_private *file_priv = file->driver_priv;
@@ -1531,33 +1634,58 @@ void i915_gem_release(struct drm_device *dev, struct drm_file *file)
 	list_for_each_entry(request, &file_priv->mm.request_list, client_link)
 		request->file_priv = NULL;
 	spin_unlock(&file_priv->mm.lock);
+
+	i915_gem_remove_client(file_priv);
 }
 
 int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file)
 {
+	struct i915_drm_clients *clients = &i915->clients;
 	struct drm_i915_file_private *file_priv;
-	int ret;
+	int ret = -ENOMEM;
+	int id;
 
 	DRM_DEBUG("\n");
 
 	file_priv = kzalloc(sizeof(*file_priv), GFP_KERNEL);
 	if (!file_priv)
-		return -ENOMEM;
+		goto err_alloc;
+
+	spin_lock(&clients->idr_lock);
+	id = idr_alloc_cyclic(&clients->idr, file_priv, 0, -1, GFP_KERNEL);
+	spin_unlock(&clients->idr_lock);
+	if (id < 0)
+		goto err_alloc;
+
+	ret = i915_gem_add_client(i915, file_priv, current, id);
+	if (ret)
+		goto err_client;
 
 	file->driver_priv = file_priv;
+	ret = i915_gem_context_open(i915, file);
+	if (ret)
+		goto err_context;
+
 	file_priv->dev_priv = i915;
 	file_priv->file = file;
+	file_priv->bsd_engine = -1;
+	file_priv->hang_timestamp = jiffies;
 
 	spin_lock_init(&file_priv->mm.lock);
 	INIT_LIST_HEAD(&file_priv->mm.request_list);
 
-	file_priv->bsd_engine = -1;
-	file_priv->hang_timestamp = jiffies;
+	return 0;
 
-	ret = i915_gem_context_open(i915, file);
-	if (ret)
-		kfree(file_priv);
+err_context:
+	i915_gem_remove_client(file_priv);
+
+err_client:
+	spin_lock(&clients->idr_lock);
+	idr_remove(&clients->idr, id);
+	spin_unlock(&clients->idr_lock);
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
