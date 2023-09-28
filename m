Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AEF27B24E1
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 20:09:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB58D10E6AB;
	Thu, 28 Sep 2023 18:09:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60D5C10E6AC
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 18:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695924573; x=1727460573;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gwTPOQNaJKzmi5Yytm0AaX7b0uYLk1cEyZxuZGPMaE8=;
 b=ibtee8njIFWtHJgE6Ot97gtITQI1/MyjAzcIdQFXux9atwaPahLwn+Tg
 Q+GdAS3cU9RPjEsOyPTx8YMgNf1oc/bHmdRTjqJjMkKdE2QfBoxbehkvw
 nf+TLaiIHSGSMMPjFlv+LwfbwNplPFUAGq/TLs/I1o0tUQcRuOPF9Bgv8
 VKPGbq2WO+d5CozBRxETSAr5zcUxLeCbdR8JmqVRk/bGjjuhTfEhHOc+4
 4QBC8dfrsUx5mQy7aWZOHKIanKNvMOObisA+8knl+syzaDH/GP7IsxkNs
 mGuhSVfTLCHFQgGavD7YSYPrhwLhUdmsKvuVY7ECOXU5pULHgy80ur/xM w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="384949757"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="384949757"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 11:09:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="873357086"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="873357086"
Received: from danielba-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.53.20])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 11:09:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Sep 2023 21:08:51 +0300
Message-Id: <117f3b9f939bd5254cfb49bfcc5742f96eb587ae.1695924021.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1695924021.git.jani.nikula@intel.com>
References: <cover.1695924021.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/15] drm/i915: move gpu error sysfs to
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

With this, we can also make i915_first_error_state() static.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 75 ++++++++++++++++++++++++-
 drivers/gpu/drm/i915/i915_gpu_error.h | 17 +++---
 drivers/gpu/drm/i915/i915_sysfs.c     | 79 +--------------------------
 3 files changed, 86 insertions(+), 85 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 71dacd6e5360..17699b20694c 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -57,6 +57,7 @@
 #include "i915_memcpy.h"
 #include "i915_reg.h"
 #include "i915_scatterlist.h"
+#include "i915_sysfs.h"
 #include "i915_utils.h"
 
 #define ALLOW_FAIL (__GFP_KSWAPD_RECLAIM | __GFP_RETRY_MAYFAIL | __GFP_NOWARN)
@@ -2199,7 +2200,7 @@ void i915_capture_error_state(struct intel_gt *gt,
 	i915_gpu_coredump_put(error);
 }
 
-struct i915_gpu_coredump *
+static struct i915_gpu_coredump *
 i915_first_error_state(struct drm_i915_private *i915)
 {
 	struct i915_gpu_coredump *error;
@@ -2475,3 +2476,75 @@ void i915_gpu_error_debugfs_register(struct drm_i915_private *i915)
 	debugfs_create_file("i915_gpu_info", 0644, minor->debugfs_root, i915,
 			    &i915_gpu_info_fops);
 }
+
+static ssize_t error_state_read(struct file *filp, struct kobject *kobj,
+				struct bin_attribute *attr, char *buf,
+				loff_t off, size_t count)
+{
+
+	struct device *kdev = kobj_to_dev(kobj);
+	struct drm_i915_private *i915 = kdev_minor_to_i915(kdev);
+	struct i915_gpu_coredump *gpu;
+	ssize_t ret = 0;
+
+	/*
+	 * FIXME: Concurrent clients triggering resets and reading + clearing
+	 * dumps can cause inconsistent sysfs reads when a user calls in with a
+	 * non-zero offset to complete a prior partial read but the
+	 * gpu_coredump has been cleared or replaced.
+	 */
+
+	gpu = i915_first_error_state(i915);
+	if (IS_ERR(gpu)) {
+		ret = PTR_ERR(gpu);
+	} else if (gpu) {
+		ret = i915_gpu_coredump_copy_to_buffer(gpu, buf, off, count);
+		i915_gpu_coredump_put(gpu);
+	} else {
+		const char *str = "No error state collected\n";
+		size_t len = strlen(str);
+
+		if (off < len) {
+			ret = min_t(size_t, count, len - off);
+			memcpy(buf, str + off, ret);
+		}
+	}
+
+	return ret;
+}
+
+static ssize_t error_state_write(struct file *file, struct kobject *kobj,
+				 struct bin_attribute *attr, char *buf,
+				 loff_t off, size_t count)
+{
+	struct device *kdev = kobj_to_dev(kobj);
+	struct drm_i915_private *dev_priv = kdev_minor_to_i915(kdev);
+
+	drm_dbg(&dev_priv->drm, "Resetting error state\n");
+	i915_reset_error_state(dev_priv);
+
+	return count;
+}
+
+static const struct bin_attribute error_state_attr = {
+	.attr.name = "error",
+	.attr.mode = S_IRUSR | S_IWUSR,
+	.size = 0,
+	.read = error_state_read,
+	.write = error_state_write,
+};
+
+void i915_gpu_error_sysfs_setup(struct drm_i915_private *i915)
+{
+	struct device *kdev = i915->drm.primary->kdev;
+
+	if (sysfs_create_bin_file(&kdev->kobj, &error_state_attr))
+		drm_err(&i915->drm, "error_state sysfs setup failed\n");
+}
+
+void i915_gpu_error_sysfs_teardown(struct drm_i915_private *i915)
+{
+	struct device *kdev = i915->drm.primary->kdev;
+
+	sysfs_remove_bin_file(&kdev->kobj, &error_state_attr);
+}
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index a6f2a7518cf0..68c964d6720a 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -323,11 +323,12 @@ static inline void i915_gpu_coredump_put(struct i915_gpu_coredump *gpu)
 		kref_put(&gpu->ref, __i915_gpu_coredump_free);
 }
 
-struct i915_gpu_coredump *i915_first_error_state(struct drm_i915_private *i915);
 void i915_reset_error_state(struct drm_i915_private *i915);
 void i915_disable_error_state(struct drm_i915_private *i915, int err);
 
 void i915_gpu_error_debugfs_register(struct drm_i915_private *i915);
+void i915_gpu_error_sysfs_setup(struct drm_i915_private *i915);
+void i915_gpu_error_sysfs_teardown(struct drm_i915_private *i915);
 
 #else
 
@@ -396,12 +397,6 @@ static inline void i915_gpu_coredump_put(struct i915_gpu_coredump *gpu)
 {
 }
 
-static inline struct i915_gpu_coredump *
-i915_first_error_state(struct drm_i915_private *i915)
-{
-	return ERR_PTR(-ENODEV);
-}
-
 static inline void i915_reset_error_state(struct drm_i915_private *i915)
 {
 }
@@ -415,6 +410,14 @@ static inline void i915_gpu_error_debugfs_register(struct drm_i915_private *i915
 {
 }
 
+static inline void i915_gpu_error_sysfs_setup(struct drm_i915_private *i915)
+{
+}
+
+static inline void i915_gpu_error_sysfs_teardown(struct drm_i915_private *i915)
+{
+}
+
 #endif /* IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR) */
 
 #endif /* _I915_GPU_ERROR_H_ */
diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
index e88bb4f04305..613decd47760 100644
--- a/drivers/gpu/drm/i915/i915_sysfs.c
+++ b/drivers/gpu/drm/i915/i915_sysfs.c
@@ -155,81 +155,6 @@ static const struct bin_attribute dpf_attrs_1 = {
 	.private = (void *)1
 };
 
-#if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
-
-static ssize_t error_state_read(struct file *filp, struct kobject *kobj,
-				struct bin_attribute *attr, char *buf,
-				loff_t off, size_t count)
-{
-
-	struct device *kdev = kobj_to_dev(kobj);
-	struct drm_i915_private *i915 = kdev_minor_to_i915(kdev);
-	struct i915_gpu_coredump *gpu;
-	ssize_t ret = 0;
-
-	/*
-	 * FIXME: Concurrent clients triggering resets and reading + clearing
-	 * dumps can cause inconsistent sysfs reads when a user calls in with a
-	 * non-zero offset to complete a prior partial read but the
-	 * gpu_coredump has been cleared or replaced.
-	 */
-
-	gpu = i915_first_error_state(i915);
-	if (IS_ERR(gpu)) {
-		ret = PTR_ERR(gpu);
-	} else if (gpu) {
-		ret = i915_gpu_coredump_copy_to_buffer(gpu, buf, off, count);
-		i915_gpu_coredump_put(gpu);
-	} else {
-		const char *str = "No error state collected\n";
-		size_t len = strlen(str);
-
-		if (off < len) {
-			ret = min_t(size_t, count, len - off);
-			memcpy(buf, str + off, ret);
-		}
-	}
-
-	return ret;
-}
-
-static ssize_t error_state_write(struct file *file, struct kobject *kobj,
-				 struct bin_attribute *attr, char *buf,
-				 loff_t off, size_t count)
-{
-	struct device *kdev = kobj_to_dev(kobj);
-	struct drm_i915_private *dev_priv = kdev_minor_to_i915(kdev);
-
-	drm_dbg(&dev_priv->drm, "Resetting error state\n");
-	i915_reset_error_state(dev_priv);
-
-	return count;
-}
-
-static const struct bin_attribute error_state_attr = {
-	.attr.name = "error",
-	.attr.mode = S_IRUSR | S_IWUSR,
-	.size = 0,
-	.read = error_state_read,
-	.write = error_state_write,
-};
-
-static void i915_setup_error_capture(struct device *kdev)
-{
-	if (sysfs_create_bin_file(&kdev->kobj, &error_state_attr))
-		drm_err(&kdev_minor_to_i915(kdev)->drm,
-			"error_state sysfs setup failed\n");
-}
-
-static void i915_teardown_error_capture(struct device *kdev)
-{
-	sysfs_remove_bin_file(&kdev->kobj, &error_state_attr);
-}
-#else
-static void i915_setup_error_capture(struct device *kdev) {}
-static void i915_teardown_error_capture(struct device *kdev) {}
-#endif
-
 void i915_setup_sysfs(struct drm_i915_private *dev_priv)
 {
 	struct device *kdev = dev_priv->drm.primary->kdev;
@@ -255,7 +180,7 @@ void i915_setup_sysfs(struct drm_i915_private *dev_priv)
 		drm_warn(&dev_priv->drm,
 			 "failed to register GT sysfs directory\n");
 
-	i915_setup_error_capture(kdev);
+	i915_gpu_error_sysfs_setup(dev_priv);
 
 	intel_engines_add_sysfs(dev_priv);
 }
@@ -264,7 +189,7 @@ void i915_teardown_sysfs(struct drm_i915_private *dev_priv)
 {
 	struct device *kdev = dev_priv->drm.primary->kdev;
 
-	i915_teardown_error_capture(kdev);
+	i915_gpu_error_sysfs_teardown(dev_priv);
 
 	device_remove_bin_file(kdev,  &dpf_attrs_1);
 	device_remove_bin_file(kdev,  &dpf_attrs);
-- 
2.39.2

