Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA0E126899
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 19:00:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF6DC6E3A8;
	Thu, 19 Dec 2019 18:00:37 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECA506E39C
 for <Intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 18:00:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 10:00:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,332,1571727600"; d="scan'208";a="206283897"
Received: from dtriolet-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.84.191])
 by orsmga007.jf.intel.com with ESMTP; 19 Dec 2019 10:00:30 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 19 Dec 2019 18:00:15 +0000
Message-Id: <20191219180019.25562-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191219180019.25562-1-tvrtko.ursulin@linux.intel.com>
References: <20191219180019.25562-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 4/8] drm/i915: Update client name on context create
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

v2:
 * Do not leak the pid reference and borrow context idr_lock. (Chris)

v3:
 * More avoiding leaks. (Chris)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 36 ++++++++++++++++++---
 drivers/gpu/drm/i915/i915_drv.h             |  6 ++++
 drivers/gpu/drm/i915/i915_gem.c             |  4 +--
 3 files changed, 39 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index b482b2e5f31f..dc3a7856ae22 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -2170,7 +2170,10 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 {
 	struct drm_i915_private *i915 = to_i915(dev);
 	struct drm_i915_gem_context_create_ext *args = data;
+	struct drm_i915_file_private *file_priv = file->driver_priv;
+	struct i915_drm_client *client = &file_priv->client;
 	struct create_ext ext_data;
+	struct pid *pid;
 	int ret;
 	u32 id;
 
@@ -2184,16 +2187,36 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 	if (ret)
 		return ret;
 
-	ext_data.fpriv = file->driver_priv;
+	pid = get_task_pid(current, PIDTYPE_PID);
+
+	ext_data.fpriv = file_priv;
 	if (client_is_banned(ext_data.fpriv)) {
 		DRM_DEBUG("client %s[%d] banned from creating ctx\n",
-			  current->comm, task_pid_nr(current));
-		return -EIO;
+			  current->comm, pid_nr(pid));
+		ret = -EIO;
+		goto err_pid;
+	}
+
+	/*
+	 * Borrow struct_mutex to protect the client remove-add cycle.
+	 */
+	ret = mutex_lock_interruptible(&dev->struct_mutex);
+	if (ret)
+		goto err_pid;
+	if (client->pid != pid) {
+		__i915_gem_unregister_client(client);
+		ret = __i915_gem_register_client(&i915->clients, client,
+						 current);
 	}
+	mutex_unlock(&dev->struct_mutex);
+	if (ret)
+		goto err_pid;
 
 	ext_data.ctx = i915_gem_create_context(i915, args->flags);
-	if (IS_ERR(ext_data.ctx))
-		return PTR_ERR(ext_data.ctx);
+	if (IS_ERR(ext_data.ctx)) {
+		ret = PTR_ERR(ext_data.ctx);
+		goto err_pid;
+	}
 
 	if (args->flags & I915_CONTEXT_CREATE_FLAGS_USE_EXTENSIONS) {
 		ret = i915_user_extensions(u64_to_user_ptr(args->extensions),
@@ -2215,6 +2238,9 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 
 err_ctx:
 	context_close(ext_data.ctx);
+err_pid:
+	put_pid(pid);
+
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index e1d8361aafd7..514d7d630fce 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1900,6 +1900,12 @@ void i915_gem_suspend(struct drm_i915_private *dev_priv);
 void i915_gem_suspend_late(struct drm_i915_private *dev_priv);
 void i915_gem_resume(struct drm_i915_private *dev_priv);
 
+int
+__i915_gem_register_client(struct i915_drm_clients *clients,
+			   struct i915_drm_client *client,
+			   struct task_struct *task);
+void __i915_gem_unregister_client(struct i915_drm_client *client);
+
 int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file);
 void i915_gem_release(struct drm_device *dev, struct drm_file *file);
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index f2d285388b8c..f953d4e20e33 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1546,7 +1546,7 @@ show_client_pid(struct device *kdev, struct device_attribute *attr, char *buf)
 		return snprintf(buf, PAGE_SIZE, "-");
 }
 
-static int
+int
 __i915_gem_register_client(struct i915_drm_clients *clients,
 			   struct i915_drm_client *client,
 			   struct task_struct *task)
@@ -1599,7 +1599,7 @@ __i915_gem_register_client(struct i915_drm_clients *clients,
 	return ret;
 }
 
-static void __i915_gem_unregister_client(struct i915_drm_client *client)
+void __i915_gem_unregister_client(struct i915_drm_client *client)
 {
 	struct drm_i915_file_private *fpriv =
 		container_of(client, typeof(*fpriv), client);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
