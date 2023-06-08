Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D448E728355
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 17:12:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33BC110E5D8;
	Thu,  8 Jun 2023 15:12:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAB6410E5CC
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 15:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686237124; x=1717773124;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xCVn1Ndo7HuMjCkYZH+dfvxp5QUO7yQDxXXsBXJ0LzY=;
 b=MTG+k8PiNGI3QzSSz6U/TmtyeMZicfBxp6uc+O9jCNMrZLYRZz6Y5D/1
 hMhy2fvVKXRWP0qL6gZg3GS9HfMlwqReHxgaLrpFjiUsQrUj0tUSZcgHZ
 ly5m/tZToBrz2LlOptnfY6cuOnqMhVcXCEsk5iD3/8f10oUhEwQg8wrTH
 9p/jhpXBtvsN+s9r5oSfMjLaMUGvbTZcNTbcBVk8iE232ERV5gvLlTGxW
 rLrRVQoW7J0Ikqkuy0LusAy1N7nqsdQxX64q8roG72peA3qlCVjKsu/Yb
 aAawn6jFT7ptEC7c2Qo1e08MPWwsw/hS94bay1agKMHLiiwNTdqGAA3Pt A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="423201577"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="423201577"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 08:09:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="956751483"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="956751483"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 08:09:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jun 2023 18:09:02 +0300
Message-Id: <2f2829dbcd9c08553306b7610555e75ed23802a1.1686236840.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1686236840.git.jani.nikula@intel.com>
References: <cover.1686236840.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: separate display info printing
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
index 3fd30e7f0062..60cfe52c0bb7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -915,3 +915,24 @@ void intel_display_device_info_runtime_init(struct drm_i915_private *i915)
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
index 706ff2aa1f55..d137e62666e0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -11,6 +11,7 @@
 #include "intel_display_limits.h"
 
 struct drm_i915_private;
+struct drm_printer;
 
 #define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
 	/* Keep in alphabetical order */ \
@@ -126,4 +127,8 @@ intel_display_device_probe(struct drm_i915_private *i915, bool has_gmdid,
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
index ace8534b6cc5..51a1fc2a6f58 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -698,6 +698,8 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
 
 		intel_device_info_print(INTEL_INFO(dev_priv),
 					RUNTIME_INFO(dev_priv), &p);
+		intel_display_device_info_print(DISPLAY_INFO(dev_priv),
+						DISPLAY_RUNTIME_INFO(dev_priv), &p);
 		i915_print_iommu_status(dev_priv, &p);
 		for_each_gt(gt, dev_priv, i)
 			intel_gt_info_print(&gt->info, &p);
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index ec368e700235..f109656cb1cc 100644
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
index 6e49caf241a5..53d316804071 100644
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

