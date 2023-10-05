Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6867B9AF5
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 07:45:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8EF410E1B5;
	Thu,  5 Oct 2023 05:45:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F6D410E1B5
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 05:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696484721; x=1728020721;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yzhEyBzOEi5CeE0kmlzu/q1DWj0KlnwXFwJgvV23n1U=;
 b=MvfEEc5iusnPgViXY4j10IFj7V4NhIHxH6FAj8dI2yE4tzeP0hGbj1Lz
 fZo8ddWgreEnapiURJHv1cQbmwiWJkjK8sMrdSOEAsA7QLPh1Ay2j07Jk
 C85zfdbv4PLeT1/agx0/zABmcKRS5lzygV3yRovjei1LxyW0kNF9yMVqP
 B1KVblqKF36/b5pWovEKeEI9Jxb8s0PvQ41Ne49cgji/nEz8pQStYXSIa
 +tU5dnyzvrFmWLUwkA+qP4ZY/xyUIIWfeJpi0ZMcHZyU+mbkuZ3Qgl4Rr
 RJcZbS3tunKdsHOvh7fXhEMnEltgd2zBhmcR90jqzfYd4LgAsmUxpBZbi w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="4971847"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; 
   d="scan'208";a="4971847"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 22:45:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="786821891"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="786821891"
Received: from jlmcclen-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.55.79])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 22:45:16 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Oct 2023 08:44:57 +0300
Message-Id: <20231005054500.2053070-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231005054500.2053070-1-jouni.hogander@intel.com>
References: <20231005054500.2053070-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 1/4] drm/i915/display: Add framework to add
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
 .../display/intel_display_debugfs_params.c    | 239 ++++++++++++++++++
 .../display/intel_display_debugfs_params.h    |  14 +
 .../drm/i915/display/intel_display_device.c   |   8 +
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_params.c   |  95 +++++++
 .../drm/i915/display/intel_display_params.h   |  58 +++++
 drivers/gpu/drm/i915/i915_driver.c            |   2 +
 10 files changed, 423 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_debugfs_params.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_params.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_params.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index dec78efa452a..3c26e9ae3722 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -85,6 +85,7 @@ i915-$(CONFIG_DEBUG_FS) += \
 	i915_debugfs.o \
 	i915_debugfs_params.o \
 	display/intel_display_debugfs.o \
+	display/intel_display_debugfs_params.o \
 	display/intel_pipe_crc.o
 i915-$(CONFIG_PERF_EVENTS) += i915_pmu.o
 
@@ -247,6 +248,7 @@ i915-y += \
 	display/intel_display.o \
 	display/intel_display_driver.o \
 	display/intel_display_irq.o \
+	display/intel_display_params.o \
 	display/intel_display_power.o \
 	display/intel_display_power_map.o \
 	display/intel_display_power_well.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 53e5c33e08c3..f2c84ae52217 100644
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
@@ -517,6 +518,7 @@ struct intel_display {
 	struct intel_hotplug hotplug;
 	struct intel_opregion opregion;
 	struct intel_overlay *overlay;
+	struct intel_display_params params;
 	struct intel_vbt_data vbt;
 	struct intel_wm wm;
 };
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index f05b52381a83..e929a8bf0555 100644
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
@@ -1100,6 +1101,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
 	intel_hpd_debugfs_register(i915);
 	intel_psr_debugfs_register(i915);
 	intel_wm_debugfs_register(i915);
+	intel_display_debugfs_params(i915);
 }
 
 static int i915_panel_show(struct seq_file *m, void *data)
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c b/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
new file mode 100644
index 000000000000..62bd61e8ea37
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
@@ -0,0 +1,239 @@
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
+				     const char __user *ubuf, size_t len,
+				     loff_t *offp)
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
+/* char * param */
+static int intel_display_param_charp_show(struct seq_file *m, void *data)
+{
+	const char **s = m->private;
+
+	seq_printf(m, "%s\n", *s);
+
+	return 0;
+}
+
+static int intel_display_param_charp_open(struct inode *inode, struct file *file)
+{
+	return single_open(file, intel_display_param_charp_show, inode->i_private);
+}
+
+static ssize_t intel_display_param_charp_write(struct file *file,
+				      const char __user *ubuf, size_t len,
+				      loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	char **s = m->private;
+	char *new, *old;
+
+	old = *s;
+	new = strndup_user(ubuf, PAGE_SIZE);
+	if (IS_ERR(new)) {
+		len = PTR_ERR(new);
+		goto out;
+	}
+
+	*s = new;
+
+	kfree(old);
+out:
+	return len;
+}
+
+static const struct file_operations intel_display_param_charp_fops = {
+	.owner = THIS_MODULE,
+	.open = intel_display_param_charp_open,
+	.read = seq_read,
+	.write = intel_display_param_charp_write,
+	.llseek = default_llseek,
+	.release = single_release,
+};
+
+static const struct file_operations intel_display_param_charp_fops_ro = {
+	.owner = THIS_MODULE,
+	.open = intel_display_param_charp_open,
+	.read = seq_read,
+	.llseek = default_llseek,
+	.release = single_release,
+};
+
+#define RO(mode) (((mode) & 0222) == 0)
+
+static struct dentry *
+intel_display_debugfs_create_int(const char *name, umode_t mode,
+			struct dentry *parent, int *value)
+{
+	return debugfs_create_file_unsafe(name, mode, parent, value,
+					  RO(mode) ? &intel_display_param_int_fops_ro :
+					  &intel_display_param_int_fops);
+}
+
+static struct dentry *
+intel_display_debugfs_create_uint(const char *name, umode_t mode,
+			 struct dentry *parent, unsigned int *value)
+{
+	return debugfs_create_file_unsafe(name, mode, parent, value,
+					  RO(mode) ? &intel_display_param_uint_fops_ro :
+					  &intel_display_param_uint_fops);
+}
+
+static struct dentry *
+intel_display_debugfs_create_charp(const char *name, umode_t mode,
+			  struct dentry *parent, char **value)
+{
+	return debugfs_create_file(name, mode, parent, value,
+				   RO(mode) ? &intel_display_param_charp_fops_ro :
+				   &intel_display_param_charp_fops);
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
+				 char ** : intel_display_debugfs_create_charp) \
+				(name, mode, parent, valp);		\
+	} while (0)
+
+/* add a subdirectory with files for each intel display param */
+void intel_display_debugfs_params(struct drm_i915_private *i915)
+{
+	struct drm_minor *minor = i915->drm.primary;
+	struct intel_display_params *params = &i915->display.params;
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
+#define REGISTER(T, x, unused, mode, ...) _intel_display_param_create_file(dir, #x, mode, &params->x);
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
index a6a18eae7ae8..7b7d8e41e5be 100644
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
+	intel_display_params_copy(&i915->display.params, &intel_display_modparams);
+}
+
+void intel_display_device_remove(struct drm_i915_private *i915)
+{
+	intel_display_params_free(&i915->display.params);
 }
 
 void intel_display_device_info_runtime_init(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 44733c9d5812..f5a614a553a2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -151,6 +151,7 @@ struct intel_display_device_info {
 };
 
 void intel_display_device_probe(struct drm_i915_private *i915);
+void intel_display_device_remove(struct drm_i915_private *i915);
 void intel_display_device_info_runtime_init(struct drm_i915_private *i915);
 
 void intel_display_device_info_print(const struct intel_display_device_info *info,
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
new file mode 100644
index 000000000000..530cc80d0928
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -0,0 +1,95 @@
+/*
+ * Copyright © 2023 Intel Corporation
+ *
+ * Permission is hereby granted, free of charge, to any person obtaining a
+ * copy of this software and associated documentation files (the
+ * "Software"), to deal in the Software without restriction, including
+ * without limitation the rights to use, copy, modify, merge, publish,
+ * distribute, sub license, and/or sell copies of the Software, and to
+ * permit persons to whom the Software is furnished to do so, subject to
+ * the following conditions:
+ *
+ * The above copyright notice and this permission notice (including the
+ * next paragraph) shall be included in all copies or substantial portions
+ * of the Software.
+ *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
+ * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+ * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+ * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
+ * IN THE SOFTWARE.
+ */
+
+#include <linux/string_helpers.h>
+
+#include <drm/drm_print.h>
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
+struct intel_display_params intel_display_modparams __read_mostly = {
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
+static void _param_dup_charp(char **valp)
+{
+	*valp = kstrdup(*valp, GFP_ATOMIC);
+}
+
+static void _param_nop(void *valp)
+{
+}
+
+#define _param_dup(valp)				\
+	_Generic(valp,					\
+		 char ** : _param_dup_charp,		\
+		 default : _param_nop)			\
+		(valp)
+
+void intel_display_params_copy(struct intel_display_params *dest,
+		      const struct intel_display_params *src)
+{
+	*dest = *src;
+#define DUP(T, x, ...) _param_dup(&dest->x);
+	INTEL_DISPLAY_PARAMS_FOR_EACH(DUP);
+#undef DUP
+}
+
+static void _param_free_charp(char **valp)
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
index 000000000000..4c241f265c10
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -0,0 +1,58 @@
+/*
+ * Copyright © 2023 Intel Corporation
+ *
+ * Permission is hereby granted, free of charge, to any person obtaining a
+ * copy of this software and associated documentation files (the "Software"),
+ * to deal in the Software without restriction, including without limitation
+ * the rights to use, copy, modify, merge, publish, distribute, sublicense,
+ * and/or sell copies of the Software, and to permit persons to whom the
+ * Software is furnished to do so, subject to the following conditions:
+ *
+ * The above copyright notice and this permission notice (including the next
+ * paragraph) shall be included in all copies or substantial portions of the
+ * Software.
+ *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
+ * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+ * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+ * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
+ * DEALINGS IN THE SOFTWARE.
+ */
+
+#ifndef _INTEL_DISPLAY_PARAMS_H_
+#define _INTEL_DISPLAY_PARAMS_H_
+
+#include <linux/types.h>
+#include <linux/cache.h> /* for __read_mostly */
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
+extern struct intel_display_params intel_display_modparams __read_mostly;
+
+void intel_display_params_copy(struct intel_display_params *dest,
+			       const struct intel_display_params *src);
+void intel_display_params_free(struct intel_display_params *params);
+
+#endif
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 78501a83ba10..a86b10093dc4 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -907,6 +907,8 @@ static void i915_driver_release(struct drm_device *dev)
 	intel_runtime_pm_driver_release(rpm);
 
 	i915_driver_late_release(dev_priv);
+
+	intel_display_device_remove(dev_priv);
 }
 
 static int i915_driver_open(struct drm_device *dev, struct drm_file *file)
-- 
2.34.1

