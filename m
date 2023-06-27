Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2404373FF6A
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 17:14:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0D3010E30B;
	Tue, 27 Jun 2023 15:14:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50AE310E30B
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jun 2023 15:14:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687878879; x=1719414879;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=imZhV+FUkJu7r06RtQXmg01Py9Zabe4wshhwPsGjR6s=;
 b=PtOJEKfay39opRY9ukHc6Olr4LhEMCHYL+1d9QXuIk8ygfPHSVzsS22q
 OJODlfF/R+vIfDF6UFVSuuUpgVKGOyIc8n7iZ1c9sB4lvLVHqeL11E9g/
 JDktkBklL81IlXVOi3IlMbd2qQV+HmprzgRHACZVq6GL3Q8lLOUphlhxI
 LoJPCOYanGT6qWa5UdjAbyeEee3781JMMblYLAnELCoS027cqECQEpS3Z
 3ZGvofHGW4bhHT6U0Oo/nnrIS9AxNPDjH0Pv0oqtjTst0YMwFda8eNo5z
 ROycX6+235+bzyTaRFRwU6ElVidUmZ/DlxSQXc4NARoVrH+GvYHrAPL8Q Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="361635441"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="361635441"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 08:14:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="716584657"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="716584657"
Received: from jwerner6-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.39.48])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 08:14:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Jun 2023 18:14:00 +0300
Message-Id: <30d4f93c58839bc9312b43423cd43bc0ef655a35.1687878757.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1687878757.git.jani.nikula@intel.com>
References: <cover.1687878757.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/6] drm/i915: separate display info printing
 from the rest
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add new function intel_display_device_info_print() and print the display
device info there instead of intel_device_info_print(). This also fixes
the display runtime info printing to use the actual runtime info instead
of the static defaults.

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.c   | 21 +++++++++++++++++++
 .../drm/i915/display/intel_display_device.h   |  5 +++++
 drivers/gpu/drm/i915/i915_debugfs.c           |  1 +
 drivers/gpu/drm/i915/i915_driver.c            |  2 ++
 drivers/gpu/drm/i915/i915_gpu_error.c         |  6 ++++++
 drivers/gpu/drm/i915/i915_gpu_error.h         |  3 +++
 drivers/gpu/drm/i915/intel_device_info.c      | 20 ------------------
 7 files changed, 38 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index f87470da25d0..e4afa7334c82 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -981,3 +981,24 @@ void intel_display_device_info_runtime_init(struct drm_i915_private *i915)
 display_fused_off:
 	memset(display_runtime, 0, sizeof(*display_runtime));
 }
+
+void intel_display_device_info_print(const struct intel_display_device_info *info,
+				     const struct intel_display_runtime_info *runtime,
+				     struct drm_printer *p)
+{
+	if (runtime->ip.rel)
+		drm_printf(p, "display version: %u.%02u\n",
+			   runtime->ip.ver,
+			   runtime->ip.rel);
+	else
+		drm_printf(p, "display version: %u\n",
+			   runtime->ip.ver);
+
+#define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->name))
+	DEV_INFO_DISPLAY_FOR_EACH_FLAG(PRINT_FLAG);
+#undef PRINT_FLAG
+
+	drm_printf(p, "has_hdcp: %s\n", str_yes_no(runtime->has_hdcp));
+	drm_printf(p, "has_dmc: %s\n", str_yes_no(runtime->has_dmc));
+	drm_printf(p, "has_dsc: %s\n", str_yes_no(runtime->has_dsc));
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 5b8a46114439..3324bd453ca7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -11,6 +11,7 @@
 #include "intel_display_limits.h"
 
 struct drm_i915_private;
+struct drm_printer;
 
 #define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
 	/* Keep in alphabetical order */ \
@@ -127,4 +128,8 @@ intel_display_device_probe(struct drm_i915_private *i915, bool has_gmdid,
 			   u16 *ver, u16 *rel, u16 *step);
 void intel_display_device_info_runtime_init(struct drm_i915_private *i915);
 
+void intel_display_device_info_print(const struct intel_display_device_info *info,
+				     const struct intel_display_runtime_info *runtime,
+				     struct drm_printer *p);
+
 #endif
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 76ccd4e03e31..4de44cf1026d 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -67,6 +67,7 @@ static int i915_capabilities(struct seq_file *m, void *data)
 	seq_printf(m, "pch: %d\n", INTEL_PCH_TYPE(i915));
 
 	intel_device_info_print(INTEL_INFO(i915), RUNTIME_INFO(i915), &p);
+	intel_display_device_info_print(DISPLAY_INFO(i915), DISPLAY_RUNTIME_INFO(i915), &p);
 	i915_print_iommu_status(i915, &p);
 	intel_gt_info_print(&to_gt(i915)->info, &p);
 	intel_driver_caps_print(&i915->caps, &p);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 222d0a1f3b55..294b022de22b 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -711,6 +711,8 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
 
 		intel_device_info_print(INTEL_INFO(dev_priv),
 					RUNTIME_INFO(dev_priv), &p);
+		intel_display_device_info_print(DISPLAY_INFO(dev_priv),
+						DISPLAY_RUNTIME_INFO(dev_priv), &p);
 		i915_print_iommu_status(dev_priv, &p);
 		for_each_gt(gt, dev_priv, i)
 			intel_gt_info_print(&gt->info, &p);
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 4749f99e6320..92ca81f9feab 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -649,6 +649,8 @@ static void err_print_capabilities(struct drm_i915_error_state_buf *m,
 	struct drm_printer p = i915_error_printer(m);
 
 	intel_device_info_print(&error->device_info, &error->runtime_info, &p);
+	intel_display_device_info_print(&error->display_device_info,
+					&error->display_runtime_info, &p);
 	intel_driver_caps_print(&error->driver_caps, &p);
 }
 
@@ -1983,6 +1985,10 @@ static void capture_gen(struct i915_gpu_coredump *error)
 	memcpy(&error->runtime_info,
 	       RUNTIME_INFO(i915),
 	       sizeof(error->runtime_info));
+	memcpy(&error->display_device_info, DISPLAY_INFO(i915),
+	       sizeof(error->display_device_info));
+	memcpy(&error->display_runtime_info, DISPLAY_RUNTIME_INFO(i915),
+	       sizeof(error->display_runtime_info));
 	error->driver_caps = i915->caps;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index a78c061ce26f..9f5971f5e980 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -14,6 +14,7 @@
 
 #include <drm/drm_mm.h>
 
+#include "display/intel_display_device.h"
 #include "gt/intel_engine.h"
 #include "gt/intel_gt_types.h"
 #include "gt/uc/intel_uc_fw.h"
@@ -209,6 +210,8 @@ struct i915_gpu_coredump {
 
 	struct intel_device_info device_info;
 	struct intel_runtime_info runtime_info;
+	struct intel_display_device_info display_device_info;
+	struct intel_display_runtime_info display_runtime_info;
 	struct intel_driver_caps driver_caps;
 	struct i915_params params;
 
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 9e7e33fbca6e..b93ef5fc26f1 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -93,9 +93,6 @@ void intel_device_info_print(const struct intel_device_info *info,
 			     const struct intel_runtime_info *runtime,
 			     struct drm_printer *p)
 {
-	const struct intel_display_runtime_info *display_runtime =
-		&info->display->__runtime_defaults;
-
 	if (runtime->graphics.ip.rel)
 		drm_printf(p, "graphics version: %u.%02u\n",
 			   runtime->graphics.ip.ver,
@@ -112,14 +109,6 @@ void intel_device_info_print(const struct intel_device_info *info,
 		drm_printf(p, "media version: %u\n",
 			   runtime->media.ip.ver);
 
-	if (display_runtime->ip.rel)
-		drm_printf(p, "display version: %u.%02u\n",
-			   display_runtime->ip.ver,
-			   display_runtime->ip.rel);
-	else
-		drm_printf(p, "display version: %u\n",
-			   display_runtime->ip.ver);
-
 	drm_printf(p, "graphics stepping: %s\n", intel_step_name(runtime->step.graphics_step));
 	drm_printf(p, "media stepping: %s\n", intel_step_name(runtime->step.media_step));
 	drm_printf(p, "display stepping: %s\n", intel_step_name(runtime->step.display_step));
@@ -138,15 +127,6 @@ void intel_device_info_print(const struct intel_device_info *info,
 #undef PRINT_FLAG
 
 	drm_printf(p, "has_pooled_eu: %s\n", str_yes_no(runtime->has_pooled_eu));
-
-#define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->display->name))
-	DEV_INFO_DISPLAY_FOR_EACH_FLAG(PRINT_FLAG);
-#undef PRINT_FLAG
-
-	drm_printf(p, "has_hdcp: %s\n", str_yes_no(display_runtime->has_hdcp));
-	drm_printf(p, "has_dmc: %s\n", str_yes_no(display_runtime->has_dmc));
-	drm_printf(p, "has_dsc: %s\n", str_yes_no(display_runtime->has_dsc));
-
 	drm_printf(p, "rawclk rate: %u kHz\n", runtime->rawclk_freq);
 }
 
-- 
2.39.2

