Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA88D7C5953
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 18:38:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E6E810E9B6;
	Wed, 11 Oct 2023 16:38:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F193E10E9B5
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 16:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697042324; x=1728578324;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AuXVW5HGXWjYL5Ejv7vDvZm9LKFWtN6wsIow9kkU6fw=;
 b=TmM3XcIus5uDlxBVBvfptn0TK/xoDQeR4kphR/KgdLMZRlgKNECi21Hu
 MScblnIl9qf0TkA+6eI7NUE6QgtmjGvr0cZ1YCniGFX+28GQmt8bPUjtC
 WDfd0zHSpRfkczsSZ2tOWkT88j7sw0TppOhWykzWDTOjddJRNtTs+RWzn
 H98Yet+2KQTN2ivQx5zaLuMRxHj06lBleJVsunaqfTxJLfwc4ZTFVT+kS
 KcgQQ6LE6PaZMrGHZKpY/KA4GCPVjASrLfnwXi92jytadvBRoT2F2XMlu
 Igi34Xaq5fRupjqXj8FQW6ZUKt6oVUjvJtfXO8a/g5ZCZ2XtzglSsrcO1 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="387558222"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="387558222"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 09:38:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="703813503"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="703813503"
Received: from lpaczyn-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.57.43])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 09:38:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Oct 2023 19:38:29 +0300
Message-Id: <20231011163830.1055517-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231011163830.1055517-1-jani.nikula@intel.com>
References: <20231011163830.1055517-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: move gpu error debugfs to
 i915_gpu_error.c
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hide gpu error specifics in i915_gpu_error.c. This is also cleaner wrt
conditional compilation, as i915_gpu_error.c is only built with
DRM_I915_CAPTURE_ERROR=y.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c   | 108 +------------------------
 drivers/gpu/drm/i915/i915_gpu_error.c | 111 +++++++++++++++++++++++++-
 drivers/gpu/drm/i915/i915_gpu_error.h |   8 +-
 3 files changed, 119 insertions(+), 108 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index e9b79c2c37d8..beffac46a5e2 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -49,6 +49,7 @@
 #include "i915_debugfs.h"
 #include "i915_debugfs_params.h"
 #include "i915_driver.h"
+#include "i915_gpu_error.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
 #include "i915_scheduler.h"
@@ -297,107 +298,6 @@ static int i915_gem_object_info(struct seq_file *m, void *data)
 	return 0;
 }
 
-#if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
-static ssize_t gpu_state_read(struct file *file, char __user *ubuf,
-			      size_t count, loff_t *pos)
-{
-	struct i915_gpu_coredump *error;
-	ssize_t ret;
-	void *buf;
-
-	error = file->private_data;
-	if (!error)
-		return 0;
-
-	/* Bounce buffer required because of kernfs __user API convenience. */
-	buf = kmalloc(count, GFP_KERNEL);
-	if (!buf)
-		return -ENOMEM;
-
-	ret = i915_gpu_coredump_copy_to_buffer(error, buf, *pos, count);
-	if (ret <= 0)
-		goto out;
-
-	if (!copy_to_user(ubuf, buf, ret))
-		*pos += ret;
-	else
-		ret = -EFAULT;
-
-out:
-	kfree(buf);
-	return ret;
-}
-
-static int gpu_state_release(struct inode *inode, struct file *file)
-{
-	i915_gpu_coredump_put(file->private_data);
-	return 0;
-}
-
-static int i915_gpu_info_open(struct inode *inode, struct file *file)
-{
-	struct drm_i915_private *i915 = inode->i_private;
-	struct i915_gpu_coredump *gpu;
-	intel_wakeref_t wakeref;
-
-	gpu = NULL;
-	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
-		gpu = i915_gpu_coredump(to_gt(i915), ALL_ENGINES, CORE_DUMP_FLAG_NONE);
-
-	if (IS_ERR(gpu))
-		return PTR_ERR(gpu);
-
-	file->private_data = gpu;
-	return 0;
-}
-
-static const struct file_operations i915_gpu_info_fops = {
-	.owner = THIS_MODULE,
-	.open = i915_gpu_info_open,
-	.read = gpu_state_read,
-	.llseek = default_llseek,
-	.release = gpu_state_release,
-};
-
-static ssize_t
-i915_error_state_write(struct file *filp,
-		       const char __user *ubuf,
-		       size_t cnt,
-		       loff_t *ppos)
-{
-	struct i915_gpu_coredump *error = filp->private_data;
-
-	if (!error)
-		return 0;
-
-	drm_dbg(&error->i915->drm, "Resetting error state\n");
-	i915_reset_error_state(error->i915);
-
-	return cnt;
-}
-
-static int i915_error_state_open(struct inode *inode, struct file *file)
-{
-	struct i915_gpu_coredump *error;
-
-	error = i915_first_error_state(inode->i_private);
-	if (IS_ERR(error))
-		return PTR_ERR(error);
-
-	file->private_data  = error;
-	return 0;
-}
-
-static const struct file_operations i915_error_state_fops = {
-	.owner = THIS_MODULE,
-	.open = i915_error_state_open,
-	.read = gpu_state_read,
-	.write = i915_error_state_write,
-	.llseek = default_llseek,
-	.release = gpu_state_release,
-};
-#endif
-
 static int i915_frequency_info(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *i915 = node_to_i915(m->private);
@@ -837,10 +737,6 @@ static const struct i915_debugfs_files {
 	{"i915_perf_noa_delay", &i915_perf_noa_delay_fops},
 	{"i915_wedged", &i915_wedged_fops},
 	{"i915_gem_drop_caches", &i915_drop_caches_fops},
-#if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
-	{"i915_error_state", &i915_error_state_fops},
-	{"i915_gpu_info", &i915_gpu_info_fops},
-#endif
 };
 
 void i915_debugfs_register(struct drm_i915_private *dev_priv)
@@ -863,4 +759,6 @@ void i915_debugfs_register(struct drm_i915_private *dev_priv)
 	drm_debugfs_create_files(i915_debugfs_list,
 				 ARRAY_SIZE(i915_debugfs_list),
 				 minor->debugfs_root, minor);
+
+	i915_gpu_error_debugfs_register(dev_priv);
 }
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index db7ac28c44e5..b4c8459deb7b 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -2137,7 +2137,7 @@ __i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask, u32 du
 	return error;
 }
 
-struct i915_gpu_coredump *
+static struct i915_gpu_coredump *
 i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask, u32 dump_flags)
 {
 	static DEFINE_MUTEX(capture_mutex);
@@ -2375,3 +2375,112 @@ void intel_klog_error_capture(struct intel_gt *gt,
 	drm_info(&i915->drm, "[Capture/%d.%d] Dumped %zd bytes\n", l_count, line++, pos_err);
 }
 #endif
+
+static ssize_t gpu_state_read(struct file *file, char __user *ubuf,
+			      size_t count, loff_t *pos)
+{
+	struct i915_gpu_coredump *error;
+	ssize_t ret;
+	void *buf;
+
+	error = file->private_data;
+	if (!error)
+		return 0;
+
+	/* Bounce buffer required because of kernfs __user API convenience. */
+	buf = kmalloc(count, GFP_KERNEL);
+	if (!buf)
+		return -ENOMEM;
+
+	ret = i915_gpu_coredump_copy_to_buffer(error, buf, *pos, count);
+	if (ret <= 0)
+		goto out;
+
+	if (!copy_to_user(ubuf, buf, ret))
+		*pos += ret;
+	else
+		ret = -EFAULT;
+
+out:
+	kfree(buf);
+	return ret;
+}
+
+static int gpu_state_release(struct inode *inode, struct file *file)
+{
+	i915_gpu_coredump_put(file->private_data);
+	return 0;
+}
+
+static int i915_gpu_info_open(struct inode *inode, struct file *file)
+{
+	struct drm_i915_private *i915 = inode->i_private;
+	struct i915_gpu_coredump *gpu;
+	intel_wakeref_t wakeref;
+
+	gpu = NULL;
+	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
+		gpu = i915_gpu_coredump(to_gt(i915), ALL_ENGINES, CORE_DUMP_FLAG_NONE);
+
+	if (IS_ERR(gpu))
+		return PTR_ERR(gpu);
+
+	file->private_data = gpu;
+	return 0;
+}
+
+static const struct file_operations i915_gpu_info_fops = {
+	.owner = THIS_MODULE,
+	.open = i915_gpu_info_open,
+	.read = gpu_state_read,
+	.llseek = default_llseek,
+	.release = gpu_state_release,
+};
+
+static ssize_t
+i915_error_state_write(struct file *filp,
+		       const char __user *ubuf,
+		       size_t cnt,
+		       loff_t *ppos)
+{
+	struct i915_gpu_coredump *error = filp->private_data;
+
+	if (!error)
+		return 0;
+
+	drm_dbg(&error->i915->drm, "Resetting error state\n");
+	i915_reset_error_state(error->i915);
+
+	return cnt;
+}
+
+static int i915_error_state_open(struct inode *inode, struct file *file)
+{
+	struct i915_gpu_coredump *error;
+
+	error = i915_first_error_state(inode->i_private);
+	if (IS_ERR(error))
+		return PTR_ERR(error);
+
+	file->private_data  = error;
+	return 0;
+}
+
+static const struct file_operations i915_error_state_fops = {
+	.owner = THIS_MODULE,
+	.open = i915_error_state_open,
+	.read = gpu_state_read,
+	.write = i915_error_state_write,
+	.llseek = default_llseek,
+	.release = gpu_state_release,
+};
+
+void i915_gpu_error_debugfs_register(struct drm_i915_private *i915)
+{
+	struct drm_minor *minor = i915->drm.primary;
+
+	debugfs_create_file("i915_error_state", 0644, minor->debugfs_root, i915,
+			    &i915_error_state_fops);
+	debugfs_create_file("i915_gpu_info", 0644, minor->debugfs_root, i915,
+			    &i915_gpu_info_fops);
+}
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index c982b162b7ff..a6f2a7518cf0 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -276,8 +276,6 @@ static inline void intel_klog_error_capture(struct intel_gt *gt,
 __printf(2, 3)
 void i915_error_printf(struct drm_i915_error_state_buf *e, const char *f, ...);
 
-struct i915_gpu_coredump *i915_gpu_coredump(struct intel_gt *gt,
-					    intel_engine_mask_t engine_mask, u32 dump_flags);
 void i915_capture_error_state(struct intel_gt *gt,
 			      intel_engine_mask_t engine_mask, u32 dump_flags);
 
@@ -329,6 +327,8 @@ struct i915_gpu_coredump *i915_first_error_state(struct drm_i915_private *i915);
 void i915_reset_error_state(struct drm_i915_private *i915);
 void i915_disable_error_state(struct drm_i915_private *i915, int err);
 
+void i915_gpu_error_debugfs_register(struct drm_i915_private *i915);
+
 #else
 
 __printf(2, 3)
@@ -411,6 +411,10 @@ static inline void i915_disable_error_state(struct drm_i915_private *i915,
 {
 }
 
+static inline void i915_gpu_error_debugfs_register(struct drm_i915_private *i915)
+{
+}
+
 #endif /* IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR) */
 
 #endif /* _I915_GPU_ERROR_H_ */
-- 
2.39.2

