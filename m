Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 159E07CA66C
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Oct 2023 13:17:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0966110E1C0;
	Mon, 16 Oct 2023 11:17:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97AC010E1BB
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Oct 2023 11:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697455037; x=1728991037;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GBOuevl734UvKKJN9KBC1YzPIXkp0IxgxvMU7JjyfOY=;
 b=fdj6Vht7IE5PUlMdKsIYmj0HT+Ukjq/UQC2LCpxAy8FR4UJqN4necuve
 SCNcHDgX5p/lkX6zEubrAIHXpjfSExHITGcHw/FP0zc2A30mA8vHrVOqI
 wcFizI5B8Oyis4gYGlgijNome1t9w5xS5/8PLr5Vx7xHJBMNO+cJPEnC8
 T7aPqopLHJG8W1w/awVGpVltSi1VL/aS0JFSfvhZ8wCSHxzjQXQURs3+9
 TsLo2N332kmwFb1279drTIE4be4D3FFwPlkxyXqKvFOKYEfrvn87zBssA
 tDKdkd6zXq+OglgyB+EeXr7ZYKRN6YJqTTXLgic2kbHsuAfHaeVkjks5K A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="385341340"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="385341340"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 04:17:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="821532531"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="821532531"
Received: from dleve-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.41.143])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 04:17:16 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Oct 2023 14:16:36 +0300
Message-Id: <20231016111658.3432581-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231016111658.3432581-1-jouni.hogander@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 02/24] drm/i915/display: Dump also display
 parameters
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

GPU error dump contained all module parameters. If we are moving
display parameters to intel_display_params.[ch] they are not dumped
into GPU error dump. This patch is adding moved display parameters
back to GPU error dump. Display parameters are also included in
i915_capabilities

v2: Add parameters to i915_capabilities as well

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_params.c   | 57 +++++++++++++++++++
 .../drm/i915/display/intel_display_params.h   |  3 +
 drivers/gpu/drm/i915/i915_debugfs.c           |  3 +
 drivers/gpu/drm/i915/i915_gpu_error.c         |  3 +
 drivers/gpu/drm/i915/i915_gpu_error.h         |  2 +
 5 files changed, 68 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index 91953ae27144..11ee73a98b5b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -27,6 +27,63 @@ static struct intel_display_params intel_display_modparams __read_mostly = {
  * debugfs mode to 0.
  */
 
+__maybe_unused
+static void _param_print_bool(struct drm_printer *p, const char *driver_name,
+			      const char *name, bool val)
+{
+	drm_printf(p, "%s.%s=%s\n", driver_name, name, str_yes_no(val));
+}
+
+__maybe_unused
+static void _param_print_int(struct drm_printer *p, const char *driver_name,
+			     const char *name, int val)
+{
+	drm_printf(p, "%s.%s=%d\n", driver_name, name, val);
+}
+
+__maybe_unused
+static void _param_print_uint(struct drm_printer *p, const char *driver_name,
+			      const char *name, unsigned int val)
+{
+	drm_printf(p, "%s.%s=%u\n", driver_name, name, val);
+}
+
+__maybe_unused
+static void _param_print_ulong(struct drm_printer *p, const char *driver_name,
+			       const char *name, unsigned long val)
+{
+	drm_printf(p, "%s.%s=%lu\n", driver_name, name, val);
+}
+
+__maybe_unused
+static void _param_print_charp(struct drm_printer *p, const char *driver_name,
+			       const char *name, const char *val)
+{
+	drm_printf(p, "%s.%s=%s\n", driver_name, name, val);
+}
+
+#define _param_print(p, driver_name, name, val)			\
+	_Generic(val,						\
+		 bool : _param_print_bool,			\
+		 int : _param_print_int,			\
+		 unsigned int : _param_print_uint,		\
+		 unsigned long : _param_print_ulong,		\
+		 char * : _param_print_charp)(p, driver_name, name, val)
+
+/**
+ * intel_display_params_dump - dump intel display modparams
+ * @i915: i915 device
+ * @p: the &drm_printer
+ *
+ * Pretty printer for i915 modparams.
+ */
+void intel_display_params_dump(struct drm_i915_private *i915, struct drm_printer *p)
+{
+#define PRINT(T, x, ...) _param_print(p, i915->drm.driver->name, #x, i915->display.params.x);
+	INTEL_DISPLAY_PARAMS_FOR_EACH(PRINT);
+#undef PRINT
+}
+
 __maybe_unused static void _param_dup_charp(char **valp)
 {
 	*valp = kstrdup(*valp ? *valp : "", GFP_ATOMIC);
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index 1b347365988c..a0fb3e1aa2f5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -7,6 +7,7 @@
 #define _INTEL_DISPLAY_PARAMS_H_
 
 struct drm_printer;
+struct drm_i915_private;
 
 /*
  * Invoke param, a function-like macro, for each intel display param, with
@@ -28,6 +29,8 @@ struct intel_display_params {
 };
 #undef MEMBER
 
+void intel_display_params_dump(struct drm_i915_private *i915,
+			       struct drm_printer *p);
 void intel_display_params_copy(struct intel_display_params *dest);
 void intel_display_params_free(struct intel_display_params *params);
 
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index e9b79c2c37d8..af0077f6a6d0 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -32,6 +32,8 @@
 
 #include <drm/drm_debugfs.h>
 
+#include "display/intel_display_params.h"
+
 #include "gem/i915_gem_context.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_buffer_pool.h"
@@ -74,6 +76,7 @@ static int i915_capabilities(struct seq_file *m, void *data)
 
 	kernel_param_lock(THIS_MODULE);
 	i915_params_dump(&i915->params, &p);
+	intel_display_params_dump(i915, &p);
 	kernel_param_unlock(THIS_MODULE);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index b4e31e59c799..8275f9b6a47d 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -660,6 +660,7 @@ static void err_print_params(struct drm_i915_error_state_buf *m,
 	struct drm_printer p = i915_error_printer(m);
 
 	i915_params_dump(params, &p);
+	intel_display_params_dump(m->i915, &p);
 }
 
 static void err_print_pciid(struct drm_i915_error_state_buf *m,
@@ -1027,6 +1028,7 @@ static void i915_vma_coredump_free(struct i915_vma_coredump *vma)
 static void cleanup_params(struct i915_gpu_coredump *error)
 {
 	i915_params_free(&error->params);
+	intel_display_params_free(&error->display_params);
 }
 
 static void cleanup_uc(struct intel_uc_coredump *uc)
@@ -1988,6 +1990,7 @@ static void capture_gen(struct i915_gpu_coredump *error)
 	error->suspend_count = i915->suspend_count;
 
 	i915_params_copy(&error->params, &i915->params);
+	intel_display_params_copy(&error->display_params);
 	memcpy(&error->device_info,
 	       INTEL_INFO(i915),
 	       sizeof(error->device_info));
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index 9f5971f5e980..4ce227f7e1e1 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -15,6 +15,7 @@
 #include <drm/drm_mm.h>
 
 #include "display/intel_display_device.h"
+#include "display/intel_display_params.h"
 #include "gt/intel_engine.h"
 #include "gt/intel_gt_types.h"
 #include "gt/uc/intel_uc_fw.h"
@@ -214,6 +215,7 @@ struct i915_gpu_coredump {
 	struct intel_display_runtime_info display_runtime_info;
 	struct intel_driver_caps driver_caps;
 	struct i915_params params;
+	struct intel_display_params display_params;
 
 	struct intel_overlay_error_state *overlay;
 
-- 
2.34.1

