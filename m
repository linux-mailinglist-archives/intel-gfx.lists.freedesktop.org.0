Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3781204E8
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 13:07:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 465FD89F45;
	Mon, 16 Dec 2019 12:07:23 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF36389F2E
 for <Intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 12:07:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 04:07:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,321,1571727600"; d="scan'208";a="416414011"
Received: from dtriolet-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.84.191])
 by fmsmga006.fm.intel.com with ESMTP; 16 Dec 2019 04:07:15 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 16 Dec 2019 12:07:02 +0000
Message-Id: <20191216120704.958-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191216120704.958-1-tvrtko.ursulin@linux.intel.com>
References: <20191216120704.958-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915: Update client name on context
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

v2:
 * Do not leak the pid reference and borrow context idr_lock. (Chris)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 24 ++++++++++++++++++---
 drivers/gpu/drm/i915/i915_drv.h             |  7 ++++++
 drivers/gpu/drm/i915/i915_gem.c             |  4 ++--
 3 files changed, 30 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 46b4d1d643f8..cd4ba6486f35 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -2178,7 +2178,9 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 {
 	struct drm_i915_private *i915 = to_i915(dev);
 	struct drm_i915_gem_context_create_ext *args = data;
+	struct drm_i915_file_private *file_priv = file->driver_priv;
 	struct create_ext ext_data;
+	struct pid *pid;
 	int ret;
 
 	if (!DRIVER_CAPS(i915)->has_logical_contexts)
@@ -2191,14 +2193,30 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 	if (ret)
 		return ret;
 
-	ext_data.fpriv = file->driver_priv;
+	ext_data.fpriv = file_priv;
+	pid = get_task_pid(current, PIDTYPE_PID);
 	if (client_is_banned(ext_data.fpriv)) {
 		DRM_DEBUG("client %s[%d] banned from creating ctx\n",
-			  current->comm,
-			  pid_nr(get_task_pid(current, PIDTYPE_PID)));
+			  current->comm, pid_nr(pid));
+		put_pid(pid);
 		return -EIO;
 	}
 
+	/*
+	 * Borrow the context idr_lock to protect the client remove-add cycle.
+	 */
+	if (mutex_lock_interruptible(&file_priv->context_idr_lock))
+		return -EINTR;
+	if (pid_nr(file_priv->client.pid) != pid_nr(pid)) {
+		i915_gem_remove_client(file_priv);
+		ret = i915_gem_add_client(i915, file_priv, current,
+					  file_priv->client.id);
+	}
+	mutex_unlock(&file_priv->context_idr_lock);
+	put_pid(pid);
+	if (ret)
+		return ret;
+
 	ext_data.ctx = i915_gem_create_context(i915, args->flags);
 	if (IS_ERR(ext_data.ctx))
 		return PTR_ERR(ext_data.ctx);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 9fcbcb6d6f76..1740ce54cb48 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1899,6 +1899,13 @@ void i915_gem_suspend(struct drm_i915_private *dev_priv);
 void i915_gem_suspend_late(struct drm_i915_private *dev_priv);
 void i915_gem_resume(struct drm_i915_private *dev_priv);
 
+int
+i915_gem_add_client(struct drm_i915_private *i915,
+		struct drm_i915_file_private *file_priv,
+		struct task_struct *task,
+		unsigned int serial);
+void i915_gem_remove_client(struct drm_i915_file_private *file_priv);
+
 int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file);
 void i915_gem_release(struct drm_device *dev, struct drm_file *file);
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index a65cd7e1ce7b..59c160534838 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1541,7 +1541,7 @@ show_client_pid(struct device *kdev, struct device_attribute *attr, char *buf)
 	return snprintf(buf, PAGE_SIZE, "%u", pid_nr(file_priv->client.pid));
 }
 
-static int
+int
 i915_gem_add_client(struct drm_i915_private *i915,
 		struct drm_i915_file_private *file_priv,
 		struct task_struct *task,
@@ -1600,7 +1600,7 @@ i915_gem_add_client(struct drm_i915_private *i915,
 	return ret;
 }
 
-static void i915_gem_remove_client(struct drm_i915_file_private *file_priv)
+void i915_gem_remove_client(struct drm_i915_file_private *file_priv)
 {
 	struct i915_drm_clients *clients = &file_priv->dev_priv->clients;
 	struct i915_drm_client *client = &file_priv->client;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
