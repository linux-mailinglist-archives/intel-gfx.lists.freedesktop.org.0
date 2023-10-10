Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 989367BFA01
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 13:42:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A80610E075;
	Tue, 10 Oct 2023 11:42:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6ED910E075
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 11:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696938168; x=1728474168;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0AXVNMgxau5uKEFFpj2rc2qkstf278pvNkCI+2Qsgsw=;
 b=GIr2mmtHv2Q1c/QL2BtcCmPjllMX45zhouIONSVnuEFitCZrXXLm1OS7
 RPTf+Q+LAxhe87RQG+1QK3Yxr/gmjCnrZXv6cPRAsjhhevwLBL7WVZmzu
 XL1MQIA+Snu2RkRh1ZCsP3NAKdV1JFyiS9FU1yFR5SzUO/i3yKuPUXLWT
 DvfLcN9VNsWu0gOj0mq8j2ysAnaGBtQdDF4BmpTAOAz7ZeGhU5g/kzW4m
 rXpEwSS6J1gyCmCyaD8nwbJflhGt/7cELZGcRMI9vHyQ+3SXCEB9CO3cp
 k7m97rFZXxWPi+4PCJX71HMRfkT41UfC93I/EMaIdH+zbSuNhyUPzzvIS Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="470635424"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="470635424"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:42:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="869655275"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="869655275"
Received: from snutt-mobl1.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.57.138])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:42:46 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 14:40:57 +0300
Message-Id: <20231010114120.2504103-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231010114120.2504103-1-jouni.hogander@intel.com>
References: <20231010114120.2504103-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/25] drm/i915/display: Dump also display
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
 .../drm/i915/display/intel_display_params.c   | 57 +++++++++++++++++++
 .../drm/i915/display/intel_display_params.h   |  3 +
 drivers/gpu/drm/i915/i915_gpu_error.c         |  3 +
 drivers/gpu/drm/i915/i915_gpu_error.h         |  2 +
 4 files changed, 65 insertions(+)

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

