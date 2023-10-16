Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F3E7CA66B
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Oct 2023 13:17:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C72710E1BD;
	Mon, 16 Oct 2023 11:17:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 353C510E1BB
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Oct 2023 11:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697455036; x=1728991036;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OBv70F7L3ITuDERkJzdO0xfMM4xAJmaoOFsHME0O9Zc=;
 b=BbztrOz71EEMsQfa4nKfNmN4TPHRmtCyBy4qPSqb8558u3xxVJTjrdj2
 ssaQ0t3HLcjK0Ya+fM4NldOiHaJWBOfCPnPgaKCmsNOi8NEvpvch0HidF
 naZj98hpFuUyTH/xkJbjuziouNs5o1NdvgXpFKjrCHZCe/Xm5T4/ktjNe
 Yj1z5PLfgs04MrKXwYvRTvXsUKlVU0zNAYqPSB5rMUnGsrIZtH55ww7+H
 I2NtaEjbRiQBz+BQ61ASZWP/5aHCIvAAMkl+cXxnep1cIMhDmbPi7wkBb
 NVgqiodn+5yliT8pjfNTko0imG1ZDaEecpEWGXRDqSBVM9esHK5Wqasew w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="385341337"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="385341337"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 04:17:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="821532522"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="821532522"
Received: from dleve-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.41.143])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 04:17:14 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Oct 2023 14:16:35 +0300
Message-Id: <20231016111658.3432581-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231016111658.3432581-1-jouni.hogander@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 01/24] drm/i915/display: Add framework to add
 parameters specific to display
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently all module parameters are handled by i915_param.c/h. This
is a problem for display parameters when Xe driver is used. Add
a mechanism to add parameters specific to the display. This is mainly
copied from i915_[debugfs]_params.[ch]. Parameters are not yet moved. This
is done by subsequent patches.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   2 +
 .../gpu/drm/i915/display/intel_display_core.h |   2 +
 .../drm/i915/display/intel_display_debugfs.c  |   2 +
 .../display/intel_display_debugfs_params.c    | 176 ++++++++++++++++++
 .../display/intel_display_debugfs_params.h    |  14 ++
 .../drm/i915/display/intel_display_device.c   |   8 +
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_params.c   |  71 +++++++
 .../drm/i915/display/intel_display_params.h   |  34 ++++
 drivers/gpu/drm/i915/i915_driver.c            |   2 +
 10 files changed, 312 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_debugfs_params.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_params.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_params.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 88b2bb005014..3b9dcb606fc1 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -95,6 +95,7 @@ i915-$(CONFIG_DEBUG_FS) += \
 	i915_debugfs.o \
 	i915_debugfs_params.o \
 	display/intel_display_debugfs.o \
+	display/intel_display_debugfs_params.o \
 	display/intel_pipe_crc.o
 i915-$(CONFIG_PERF_EVENTS) += i915_pmu.o
 
@@ -257,6 +258,7 @@ i915-y += \
 	display/intel_display.o \
 	display/intel_display_driver.o \
 	display/intel_display_irq.o \
+	display/intel_display_params.o \
 	display/intel_display_power.o \
 	display/intel_display_power_map.o \
 	display/intel_display_power_well.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index ccfe27630fb6..aa8be02c9e54 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -19,6 +19,7 @@
 #include "intel_cdclk.h"
 #include "intel_display_device.h"
 #include "intel_display_limits.h"
+#include "intel_display_params.h"
 #include "intel_display_power.h"
 #include "intel_dpll_mgr.h"
 #include "intel_fbc.h"
@@ -520,6 +521,7 @@ struct intel_display {
 	struct intel_hotplug hotplug;
 	struct intel_opregion opregion;
 	struct intel_overlay *overlay;
+	struct intel_display_params params;
 	struct intel_vbt_data vbt;
 	struct intel_wm wm;
 };
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index fbe75d47a165..e219034d9c3d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -17,6 +17,7 @@
 #include "intel_de.h"
 #include "intel_crtc_state_dump.h"
 #include "intel_display_debugfs.h"
+#include "intel_display_debugfs_params.h"
 #include "intel_display_power.h"
 #include "intel_display_power_well.h"
 #include "intel_display_types.h"
@@ -1098,6 +1099,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
 	intel_hpd_debugfs_register(i915);
 	intel_psr_debugfs_register(i915);
 	intel_wm_debugfs_register(i915);
+	intel_display_debugfs_params(i915);
 }
 
 static int i915_panel_show(struct seq_file *m, void *data)
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c b/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
new file mode 100644
index 000000000000..b7e68eb62452
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
@@ -0,0 +1,176 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#include <linux/kernel.h>
+
+#include <drm/drm_drv.h>
+
+#include "intel_display_debugfs_params.h"
+#include "i915_drv.h"
+#include "intel_display_params.h"
+
+/* int param */
+static int intel_display_param_int_show(struct seq_file *m, void *data)
+{
+	int *value = m->private;
+
+	seq_printf(m, "%d\n", *value);
+
+	return 0;
+}
+
+static int intel_display_param_int_open(struct inode *inode, struct file *file)
+{
+	return single_open(file, intel_display_param_int_show, inode->i_private);
+}
+
+static ssize_t intel_display_param_int_write(struct file *file,
+					     const char __user *ubuf, size_t len,
+					     loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	int *value = m->private;
+	int ret;
+
+	ret = kstrtoint_from_user(ubuf, len, 0, value);
+	if (ret) {
+		/* support boolean values too */
+		bool b;
+
+		ret = kstrtobool_from_user(ubuf, len, &b);
+		if (!ret)
+			*value = b;
+	}
+
+	return ret ?: len;
+}
+
+static const struct file_operations intel_display_param_int_fops = {
+	.owner = THIS_MODULE,
+	.open = intel_display_param_int_open,
+	.read = seq_read,
+	.write = intel_display_param_int_write,
+	.llseek = default_llseek,
+	.release = single_release,
+};
+
+static const struct file_operations intel_display_param_int_fops_ro = {
+	.owner = THIS_MODULE,
+	.open = intel_display_param_int_open,
+	.read = seq_read,
+	.llseek = default_llseek,
+	.release = single_release,
+};
+
+/* unsigned int param */
+static int intel_display_param_uint_show(struct seq_file *m, void *data)
+{
+	unsigned int *value = m->private;
+
+	seq_printf(m, "%u\n", *value);
+
+	return 0;
+}
+
+static int intel_display_param_uint_open(struct inode *inode, struct file *file)
+{
+	return single_open(file, intel_display_param_uint_show, inode->i_private);
+}
+
+static ssize_t intel_display_param_uint_write(struct file *file,
+					      const char __user *ubuf, size_t len,
+					      loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	unsigned int *value = m->private;
+	int ret;
+
+	ret = kstrtouint_from_user(ubuf, len, 0, value);
+	if (ret) {
+		/* support boolean values too */
+		bool b;
+
+		ret = kstrtobool_from_user(ubuf, len, &b);
+		if (!ret)
+			*value = b;
+	}
+
+	return ret ?: len;
+}
+
+static const struct file_operations intel_display_param_uint_fops = {
+	.owner = THIS_MODULE,
+	.open = intel_display_param_uint_open,
+	.read = seq_read,
+	.write = intel_display_param_uint_write,
+	.llseek = default_llseek,
+	.release = single_release,
+};
+
+static const struct file_operations intel_display_param_uint_fops_ro = {
+	.owner = THIS_MODULE,
+	.open = intel_display_param_uint_open,
+	.read = seq_read,
+	.llseek = default_llseek,
+	.release = single_release,
+};
+
+#define RO(mode) (((mode) & 0222) == 0)
+
+__maybe_unused static struct dentry *
+intel_display_debugfs_create_int(const char *name, umode_t mode,
+			struct dentry *parent, int *value)
+{
+	return debugfs_create_file_unsafe(name, mode, parent, value,
+					  RO(mode) ? &intel_display_param_int_fops_ro :
+					  &intel_display_param_int_fops);
+}
+
+__maybe_unused static struct dentry *
+intel_display_debugfs_create_uint(const char *name, umode_t mode,
+			 struct dentry *parent, unsigned int *value)
+{
+	return debugfs_create_file_unsafe(name, mode, parent, value,
+					  RO(mode) ? &intel_display_param_uint_fops_ro :
+					  &intel_display_param_uint_fops);
+}
+
+#define _intel_display_param_create_file(parent, name, mode, valp)	\
+	do {								\
+		if (mode)						\
+			_Generic(valp,					\
+				 bool * : debugfs_create_bool,		\
+				 int * : intel_display_debugfs_create_int, \
+				 unsigned int * : intel_display_debugfs_create_uint, \
+				 unsigned long * : debugfs_create_ulong, \
+				 char ** : debugfs_create_str) \
+				(name, mode, parent, valp);		\
+	} while (0)
+
+/* add a subdirectory with files for each intel display param */
+void intel_display_debugfs_params(struct drm_i915_private *i915)
+{
+	struct drm_minor *minor = i915->drm.primary;
+	struct dentry *dir;
+	char dirname[16];
+
+	snprintf(dirname, sizeof(dirname), "%s_params", i915->drm.driver->name);
+	dir = debugfs_lookup(dirname, minor->debugfs_root);
+	if (!dir)
+		dir = debugfs_create_dir(dirname, minor->debugfs_root);
+	if (IS_ERR(dir))
+		return;
+
+	/*
+	 * Note: We could create files for params needing special handling
+	 * here. Set mode in params to 0 to skip the generic create file, or
+	 * just let the generic create file fail silently with -EEXIST.
+	 */
+
+#define REGISTER(T, x, unused, mode, ...) _intel_display_param_create_file( \
+		dir, #x, mode, &i915->display.params.x);
+	INTEL_DISPLAY_PARAMS_FOR_EACH(REGISTER);
+#undef REGISTER
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs_params.h b/drivers/gpu/drm/i915/display/intel_display_debugfs_params.h
new file mode 100644
index 000000000000..0e33f4e90ddc
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs_params.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef __INTEL_DISPLAY_DEBUGFS_PARAMS__
+#define __INTEL_DISPLAY_DEBUGFS_PARAMS__
+
+struct dentry;
+struct drm_i915_private;
+
+void intel_display_debugfs_params(struct drm_i915_private *i915);
+
+#endif /* __INTEL_DISPLAY_DEBUGFS_PARAMS__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 2b1ec23ba9c3..e80842d1e7c7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -12,6 +12,7 @@
 #include "intel_de.h"
 #include "intel_display.h"
 #include "intel_display_device.h"
+#include "intel_display_params.h"
 #include "intel_display_power.h"
 #include "intel_display_reg_defs.h"
 #include "intel_fbc.h"
@@ -937,6 +938,13 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 		DISPLAY_RUNTIME_INFO(i915)->ip.rel = rel;
 		DISPLAY_RUNTIME_INFO(i915)->ip.step = step;
 	}
+
+	intel_display_params_copy(&i915->display.params);
+}
+
+void intel_display_device_remove(struct drm_i915_private *i915)
+{
+	intel_display_params_free(&i915->display.params);
 }
 
 static void __intel_display_device_info_runtime_init(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 5b5c0e53307f..4299cc452e05 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -161,6 +161,7 @@ struct intel_display_device_info {
 
 bool intel_display_device_enabled(struct drm_i915_private *i915);
 void intel_display_device_probe(struct drm_i915_private *i915);
+void intel_display_device_remove(struct drm_i915_private *i915);
 void intel_display_device_info_runtime_init(struct drm_i915_private *i915);
 
 void intel_display_device_info_print(const struct intel_display_device_info *info,
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
new file mode 100644
index 000000000000..91953ae27144
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -0,0 +1,71 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#include "intel_display_params.h"
+#include "i915_drv.h"
+
+#define intel_display_param_named(name, T, perm, desc) \
+	module_param_named(name, intel_display_modparams.name, T, perm); \
+	MODULE_PARM_DESC(name, desc)
+#define intel_display_param_named_unsafe(name, T, perm, desc) \
+	module_param_named_unsafe(name, intel_display_modparams.name, T, perm); \
+	MODULE_PARM_DESC(name, desc)
+
+static struct intel_display_params intel_display_modparams __read_mostly = {
+#define MEMBER(T, member, value, ...) .member = (value),
+	INTEL_DISPLAY_PARAMS_FOR_EACH(MEMBER)
+#undef MEMBER
+};
+/*
+ * Note: As a rule, keep module parameter sysfs permissions read-only
+ * 0400. Runtime changes are only supported through i915 debugfs.
+ *
+ * For any exceptions requiring write access and runtime changes through module
+ * parameter sysfs, prevent debugfs file creation by setting the parameter's
+ * debugfs mode to 0.
+ */
+
+__maybe_unused static void _param_dup_charp(char **valp)
+{
+	*valp = kstrdup(*valp ? *valp : "", GFP_ATOMIC);
+}
+
+__maybe_unused static void _param_nop(void *valp)
+{
+}
+
+#define _param_dup(valp)				\
+	_Generic(valp,					\
+		 char ** : _param_dup_charp,		\
+		 default : _param_nop)			\
+		(valp)
+
+void intel_display_params_copy(struct intel_display_params *dest)
+{
+	*dest = intel_display_modparams;
+#define DUP(T, x, ...) _param_dup(&dest->x);
+	INTEL_DISPLAY_PARAMS_FOR_EACH(DUP);
+#undef DUP
+}
+
+__maybe_unused static void _param_free_charp(char **valp)
+{
+	kfree(*valp);
+	*valp = NULL;
+}
+
+#define _param_free(valp)				\
+	_Generic(valp,					\
+		 char ** : _param_free_charp,		\
+		 default : _param_nop)			\
+		(valp)
+
+/* free the allocated members, *not* the passed in params itself */
+void intel_display_params_free(struct intel_display_params *params)
+{
+#define FREE(T, x, ...) _param_free(&params->x);
+	INTEL_DISPLAY_PARAMS_FOR_EACH(FREE);
+#undef FREE
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
new file mode 100644
index 000000000000..1b347365988c
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef _INTEL_DISPLAY_PARAMS_H_
+#define _INTEL_DISPLAY_PARAMS_H_
+
+struct drm_printer;
+
+/*
+ * Invoke param, a function-like macro, for each intel display param, with
+ * arguments:
+ *
+ * param(type, name, value, mode)
+ *
+ * type: parameter type, one of {bool, int, unsigned int, unsigned long, char *}
+ * name: name of the parameter
+ * value: initial/default value of the parameter
+ * mode: debugfs file permissions, one of {0400, 0600, 0}, use 0 to not create
+ *       debugfs file
+ */
+#define INTEL_DISPLAY_PARAMS_FOR_EACH(param)
+
+#define MEMBER(T, member, ...) T member;
+struct intel_display_params {
+	INTEL_DISPLAY_PARAMS_FOR_EACH(MEMBER);
+};
+#undef MEMBER
+
+void intel_display_params_copy(struct intel_display_params *dest);
+void intel_display_params_free(struct intel_display_params *params);
+
+#endif
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 8a0e2c745e1f..80e85cadb9a2 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -909,6 +909,8 @@ static void i915_driver_release(struct drm_device *dev)
 	intel_runtime_pm_driver_release(rpm);
 
 	i915_driver_late_release(dev_priv);
+
+	intel_display_device_remove(dev_priv);
 }
 
 static int i915_driver_open(struct drm_device *dev, struct drm_file *file)
-- 
2.34.1

