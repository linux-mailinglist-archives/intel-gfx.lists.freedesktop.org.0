Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 257BC7B9AF6
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 07:45:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72B5210E1BA;
	Thu,  5 Oct 2023 05:45:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1BA310E1BA
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 05:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696484724; x=1728020724;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pj8adaWJ+ugN/66thvGnpxPNA+edNBvrxFOnqXUIRAQ=;
 b=Tskko4Ba/srAVvEWa7AdpAXEA3nA7Kk4MhK/o+eE57PXEr5H0O3iO/Qk
 fLcAPrBXq9RSJ5BcXLaZ/gjnSHrSnTE1axEHK/p+1GL8zep5u8MT+goUe
 wKnDSsbqpF4UbFoDBRs4o0WevtaynAFS1jqjMcP5L0Z2ytr4C2qc5cHYj
 lkKkc01hsLzcBVJwUiukVFBMm7+X1QA36cA93rdSxAwKsLbA7bOOm5UI9
 qOORa4MLxYcjyPOCMcqrdftpqnGculHs8RBodEjl3KXV3fR/HCjQivOkH
 x7hGqYP9digGFS3feDr1wQHgyw9z36UunfXcAvxCNrcO6hhNnOM8g7sTo Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="4971851"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; 
   d="scan'208";a="4971851"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 22:45:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="786821899"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="786821899"
Received: from jlmcclen-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.55.79])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 22:45:21 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Oct 2023 08:44:58 +0300
Message-Id: <20231005054500.2053070-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231005054500.2053070-1-jouni.hogander@intel.com>
References: <20231005054500.2053070-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 2/4] drm/i915/display: Dump also display
 parameters into GPU error dump
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
back to GPU error dump.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_params.c   | 52 +++++++++++++++++++
 .../drm/i915/display/intel_display_params.h   |  3 ++
 drivers/gpu/drm/i915/i915_gpu_error.c         |  3 ++
 drivers/gpu/drm/i915/i915_gpu_error.h         |  2 +
 4 files changed, 60 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index 530cc80d0928..c782cb7f11cb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -50,6 +50,58 @@ struct intel_display_params intel_display_modparams __read_mostly = {
  * debugfs mode to 0.
  */
 
+static void _param_print_bool(struct drm_printer *p, const char *driver_name,
+			      const char *name, bool val)
+{
+	drm_printf(p, "%s.%s=%s\n", driver_name, name, str_yes_no(val));
+}
+
+static void _param_print_int(struct drm_printer *p, const char *driver_name,
+			     const char *name, int val)
+{
+	drm_printf(p, "%s.%s=%d\n", driver_name, name, val);
+}
+
+static void _param_print_uint(struct drm_printer *p, const char *driver_name,
+			      const char *name, unsigned int val)
+{
+	drm_printf(p, "%s.%s=%u\n", driver_name, name, val);
+}
+
+static void _param_print_ulong(struct drm_printer *p, const char *driver_name,
+			       const char *name, unsigned long val)
+{
+	drm_printf(p, "%s.%s=%lu\n", driver_name, name, val);
+}
+
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
 static void _param_dup_charp(char **valp)
 {
 	*valp = kstrdup(*valp, GFP_ATOMIC);
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index 4c241f265c10..9bde1823da4c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -28,6 +28,7 @@
 #include <linux/cache.h> /* for __read_mostly */
 
 struct drm_printer;
+struct drm_i915_private;
 
 /*
  * Invoke param, a function-like macro, for each intel display param, with
@@ -51,6 +52,8 @@ struct intel_display_params {
 
 extern struct intel_display_params intel_display_modparams __read_mostly;
 
+void intel_display_params_dump(struct drm_i915_private *i915,
+			       struct drm_printer *p);
 void intel_display_params_copy(struct intel_display_params *dest,
 			       const struct intel_display_params *src);
 void intel_display_params_free(struct intel_display_params *params);
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index b4e31e59c799..084235e87904 100644
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
+	intel_display_params_copy(&error->display_params, &i915->display.params);
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

