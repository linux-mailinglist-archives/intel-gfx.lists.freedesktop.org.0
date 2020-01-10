Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF51136E0F
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 14:31:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A2546EA08;
	Fri, 10 Jan 2020 13:30:57 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68ED46EA08
 for <Intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 13:30:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 05:30:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,417,1571727600"; d="scan'208";a="216666311"
Received: from kumarjai-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.83.12])
 by orsmga008.jf.intel.com with ESMTP; 10 Jan 2020 05:30:54 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jan 2020 13:30:43 +0000
Message-Id: <20200110133049.2705-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200110133049.2705-1-tvrtko.ursulin@linux.intel.com>
References: <20200110133049.2705-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 2/8] drm/i915: Update client name on context create
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
Cc: kui.wen@intel.com
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
 drivers/gpu/drm/i915/i915_drm_client.c      |  4 +--
 drivers/gpu/drm/i915/i915_drm_client.h      |  4 +++
 3 files changed, 37 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index a2e57e62af30..ba3c29a01535 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -77,6 +77,7 @@
 #include "gt/intel_lrc_reg.h"
 #include "gt/intel_ring.h"
 
+#include "i915_drm_client.h"
 #include "i915_gem_context.h"
 #include "i915_globals.h"
 #include "i915_trace.h"
@@ -2181,7 +2182,10 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 {
 	struct drm_i915_private *i915 = to_i915(dev);
 	struct drm_i915_gem_context_create_ext *args = data;
+	struct drm_i915_file_private *file_priv = file->driver_priv;
+	struct i915_drm_client *client = file_priv->client;
 	struct create_ext ext_data;
+	struct pid *pid;
 	int ret;
 	u32 id;
 
@@ -2195,16 +2199,35 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
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
+		__i915_drm_client_unregister(client);
+		ret = __i915_drm_client_register(client, current);
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
@@ -2226,6 +2249,9 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 
 err_ctx:
 	context_close(ext_data.ctx);
+err_pid:
+	put_pid(pid);
+
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
index 02356f48d85b..666ec67c77e9 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -36,7 +36,7 @@ show_client_pid(struct device *kdev, struct device_attribute *attr, char *buf)
 			client->closed ? ">" : "");
 }
 
-static int
+int
 __i915_drm_client_register(struct i915_drm_client *client,
 			   struct task_struct *task)
 {
@@ -89,7 +89,7 @@ __i915_drm_client_register(struct i915_drm_client *client,
 	return ret;
 }
 
-static void __i915_drm_client_unregister(struct i915_drm_client *client)
+void __i915_drm_client_unregister(struct i915_drm_client *client)
 {
 	if (!client->name)
 		return; /* fbdev client or error during drm open */
diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i915/i915_drm_client.h
index 8b261dc4a1f3..2c692345bc4e 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.h
+++ b/drivers/gpu/drm/i915/i915_drm_client.h
@@ -58,4 +58,8 @@ void i915_drm_client_close(struct i915_drm_client *client);
 struct i915_drm_client *i915_drm_client_add(struct i915_drm_clients *clients,
 					    struct task_struct *task);
 
+int __i915_drm_client_register(struct i915_drm_client *client,
+			       struct task_struct *task);
+void __i915_drm_client_unregister(struct i915_drm_client *client);
+
 #endif /* !__I915_DRM_CLIENT_H__ */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
