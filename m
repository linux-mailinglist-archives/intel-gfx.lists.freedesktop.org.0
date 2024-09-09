Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF12971B27
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 15:33:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B09410E57E;
	Mon,  9 Sep 2024 13:33:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V6GYCPgg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B86A10E57C;
 Mon,  9 Sep 2024 13:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725888800; x=1757424800;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iTjF7Tqf0SUuq74Ouhyg3Xs0pKVmRhXv2MewrCf3ADU=;
 b=V6GYCPggr/ypmZgE1rGkmgMm52dYItomeO/r6oHDuy6pICgWOZ52poHW
 VlzfGQ7Nd3qh/D91tN3pZnP99rlySZLljxbDwuMoJafv/mZAboepw+CI9
 2Xe1YZ6Ut7deyt+cykgb4I0PQ4QRDo479wuxw0jZFcxPHPCOCvo7VGSMO
 lg9Dl6sjJy6xGiaVB/H6+cwAnAS9VHIhHDtyQNShUHIj4Ut9X99Wnt4hs
 euys8Pwmn1pCnpeaAkO4myYxx0K8xB57eKEF/sIcGodsyTrvTGDVEQkcG
 /3QVAbLTcmugNn05DuFAGlD2x8x4S+E4RgVtDiy2/PIKlrShilLNxrMih w==;
X-CSE-ConnectionGUID: LBog+TlLQCKHP0L54B2Uqw==
X-CSE-MsgGUID: qhx2LcNVQduZ+ClTNf32Kg==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24527072"
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="24527072"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 06:33:20 -0700
X-CSE-ConnectionGUID: O/Y2TyweRoSH3rUfg8yp9A==
X-CSE-MsgGUID: cfeDSu9nQuuYUl86CQAiOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="89961540"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 06:33:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, rodrigo.vivi@intel.com,
 jani.nikula@intel.com
Subject: [PATCH v2 3/4] drm/i915/display: move device info and params handling
 to snapshot
Date: Mon,  9 Sep 2024 16:32:58 +0300
Message-Id: <8e70a674bf83ad04c13484f5101f8ce3e2a1ebff.1725888718.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725888718.git.jani.nikula@intel.com>
References: <cover.1725888718.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Snapshot display device and runtime info as well as display parameters
in display snapshot.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_snapshot.c | 25 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_gpu_error.c         | 10 --------
 drivers/gpu/drm/i915/i915_gpu_error.h         |  5 ----
 3 files changed, 25 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_snapshot.c b/drivers/gpu/drm/i915/display/intel_display_snapshot.c
index 78b019dcd41d..a61ff0f81397 100644
--- a/drivers/gpu/drm/i915/display/intel_display_snapshot.c
+++ b/drivers/gpu/drm/i915/display/intel_display_snapshot.c
@@ -3,10 +3,18 @@
 
 #include <linux/slab.h>
 
+#include "i915_drv.h"
+#include "intel_display_device.h"
+#include "intel_display_params.h"
 #include "intel_display_snapshot.h"
 #include "intel_overlay.h"
 
 struct intel_display_snapshot {
+	struct intel_display *display;
+
+	struct intel_display_device_info info;
+	struct intel_display_runtime_info runtime_info;
+	struct intel_display_params params;
 	struct intel_overlay_snapshot *overlay;
 };
 
@@ -18,6 +26,14 @@ struct intel_display_snapshot *intel_display_snapshot_capture(struct intel_displ
 	if (!snapshot)
 		return NULL;
 
+	snapshot->display = display;
+
+	memcpy(&snapshot->info, DISPLAY_INFO(display), sizeof(snapshot->info));
+	memcpy(&snapshot->runtime_info, DISPLAY_RUNTIME_INFO(display),
+	       sizeof(snapshot->runtime_info));
+
+	intel_display_params_copy(&snapshot->params);
+
 	snapshot->overlay = intel_overlay_snapshot_capture(display);
 
 	return snapshot;
@@ -26,9 +42,16 @@ struct intel_display_snapshot *intel_display_snapshot_capture(struct intel_displ
 void intel_display_snapshot_print(const struct intel_display_snapshot *snapshot,
 				  struct drm_printer *p)
 {
+	struct intel_display *display;
+
 	if (!snapshot)
 		return;
 
+	display = snapshot->display;
+
+	intel_display_device_info_print(&snapshot->info, &snapshot->runtime_info, p);
+	intel_display_params_dump(&snapshot->params, display->drm->driver->name, p);
+
 	intel_overlay_snapshot_print(snapshot->overlay, p);
 }
 
@@ -37,6 +60,8 @@ void intel_display_snapshot_free(struct intel_display_snapshot *snapshot)
 	if (!snapshot)
 		return;
 
+	intel_display_params_free(&snapshot->params);
+
 	kfree(snapshot->overlay);
 	kfree(snapshot);
 }
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index b047b24a90d5..15d57206b281 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -651,8 +651,6 @@ static void err_print_capabilities(struct drm_i915_error_state_buf *m,
 	struct drm_printer p = i915_error_printer(m);
 
 	intel_device_info_print(&error->device_info, &error->runtime_info, &p);
-	intel_display_device_info_print(&error->display_device_info,
-					&error->display_runtime_info, &p);
 	intel_driver_caps_print(&error->driver_caps, &p);
 }
 
@@ -660,10 +658,8 @@ static void err_print_params(struct drm_i915_error_state_buf *m,
 			     const struct i915_params *params)
 {
 	struct drm_printer p = i915_error_printer(m);
-	struct intel_display *display = &m->i915->display;
 
 	i915_params_dump(params, &p);
-	intel_display_params_dump(&display->params, display->drm->driver->name, &p);
 }
 
 static void err_print_pciid(struct drm_i915_error_state_buf *m,
@@ -1031,7 +1027,6 @@ static void i915_vma_coredump_free(struct i915_vma_coredump *vma)
 static void cleanup_params(struct i915_gpu_coredump *error)
 {
 	i915_params_free(&error->params);
-	intel_display_params_free(&error->display_params);
 }
 
 static void cleanup_uc(struct intel_uc_coredump *uc)
@@ -1992,17 +1987,12 @@ static void capture_gen(struct i915_gpu_coredump *error)
 	error->suspend_count = i915->suspend_count;
 
 	i915_params_copy(&error->params, &i915->params);
-	intel_display_params_copy(&error->display_params);
 	memcpy(&error->device_info,
 	       INTEL_INFO(i915),
 	       sizeof(error->device_info));
 	memcpy(&error->runtime_info,
 	       RUNTIME_INFO(i915),
 	       sizeof(error->runtime_info));
-	memcpy(&error->display_device_info, DISPLAY_INFO(i915),
-	       sizeof(error->display_device_info));
-	memcpy(&error->display_runtime_info, DISPLAY_RUNTIME_INFO(i915),
-	       sizeof(error->display_runtime_info));
 	error->driver_caps = i915->caps;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index 1a11942d7800..78a8928562a9 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -14,8 +14,6 @@
 
 #include <drm/drm_mm.h>
 
-#include "display/intel_display_device.h"
-#include "display/intel_display_params.h"
 #include "gt/intel_engine.h"
 #include "gt/intel_engine_types.h"
 #include "gt/intel_gt_types.h"
@@ -212,11 +210,8 @@ struct i915_gpu_coredump {
 
 	struct intel_device_info device_info;
 	struct intel_runtime_info runtime_info;
-	struct intel_display_device_info display_device_info;
-	struct intel_display_runtime_info display_runtime_info;
 	struct intel_driver_caps driver_caps;
 	struct i915_params params;
-	struct intel_display_params display_params;
 
 	struct scatterlist *sgl, *fit;
 
-- 
2.39.2

