Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E718885D42
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Mar 2024 17:19:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E67F10EEEF;
	Thu, 21 Mar 2024 16:19:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kGUYTeLj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C4F010EEEB;
 Thu, 21 Mar 2024 16:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711037944; x=1742573944;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LHuI66m0vKbqcCZ1QWpJHyery1cTXJJGyS9lCHRisWw=;
 b=kGUYTeLjv1K3hwOI46jK0uWAL9NOaxkQeFSuwPf+uFhAUsMSo46UNyrw
 xHe6jx6CP6V5wZ3ySmIwRKBlYgTzOm3pE20awJnqMcdqoF32UgBuOOlT6
 q5ON9vf477/ozZuvXA2wj8s8f2jv8SDX26XJYAWeg26mwSk9Wa/e62i8b
 M6raciS7DnwJXb47uAtYbWVcjp/dfYKDmlCkYkxpZI59k/k2giBVL8Nkp
 Apb7Wt+OY7nUjil5xvHJx/bguNynfek1ZTICyL+/hZXknKIHQQEDzkQyF
 tctYXhSQ5LTtiSaoWpHnXz0bqkmYRKq4H9ik6gO1kRTDaBLPq9EvPaKs+ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="17484360"
X-IronPort-AV: E=Sophos;i="6.07,143,1708416000"; d="scan'208";a="17484360"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2024 09:19:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,143,1708416000"; d="scan'208";a="19275482"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2024 09:19:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/display: move dmc_firmware_path to display params
Date: Thu, 21 Mar 2024 18:18:56 +0200
Message-Id: <20240321161856.3517856-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

The dmc_firmware_path parameter is clearly a display parameter. Move it
there. This also cleans up the ugly member in struct xe_device.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_params.c | 3 +++
 drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
 drivers/gpu/drm/i915/display/intel_dmc.c            | 8 ++++----
 drivers/gpu/drm/i915/i915_params.c                  | 3 ---
 drivers/gpu/drm/i915/i915_params.h                  | 1 -
 drivers/gpu/drm/xe/xe_device_types.h                | 3 ---
 6 files changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index 11e03cfb774d..c8e3d6892e23 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -27,6 +27,9 @@ static struct intel_display_params intel_display_modparams __read_mostly = {
  * debugfs mode to 0.
  */
 
+intel_display_param_named_unsafe(dmc_firmware_path, charp, 0400,
+	"DMC firmware path to use instead of the default one");
+
 intel_display_param_named_unsafe(vbt_firmware, charp, 0400,
 	"Load VBT from specified file under /lib/firmware");
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index 6206cc51df04..f95a6f79904f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -24,6 +24,7 @@ struct drm_i915_private;
  *       debugfs file
  */
 #define INTEL_DISPLAY_PARAMS_FOR_EACH(param) \
+	param(char *, dmc_firmware_path, NULL, 0400) \
 	param(char *, vbt_firmware, NULL, 0400) \
 	param(int, lvds_channel_mode, 0, 0400) \
 	param(int, panel_use_ssc, -1, 0600) \
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 3fa851b5c7a6..b4e730882ce2 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -927,7 +927,7 @@ static void dmc_load_work_fn(struct work_struct *work)
 
 	err = request_firmware(&fw, dmc->fw_path, i915->drm.dev);
 
-	if (err == -ENOENT && !i915->params.dmc_firmware_path) {
+	if (err == -ENOENT && !i915->display.params.dmc_firmware_path) {
 		fallback_path = dmc_fallback_path(i915);
 		if (fallback_path) {
 			drm_dbg_kms(&i915->drm, "%s not found, falling back to %s\n",
@@ -1034,14 +1034,14 @@ void intel_dmc_init(struct drm_i915_private *i915)
 		dmc->max_fw_size = BXT_DMC_MAX_FW_SIZE;
 	}
 
-	if (i915->params.dmc_firmware_path) {
-		if (strlen(i915->params.dmc_firmware_path) == 0) {
+	if (i915->display.params.dmc_firmware_path) {
+		if (strlen(i915->display.params.dmc_firmware_path) == 0) {
 			drm_info(&i915->drm,
 				 "Disabling DMC firmware and runtime PM\n");
 			goto out;
 		}
 
-		dmc->fw_path = i915->params.dmc_firmware_path;
+		dmc->fw_path = i915->display.params.dmc_firmware_path;
 	}
 
 	if (!dmc->fw_path) {
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index de43048543e8..8c00169e3ab7 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -108,9 +108,6 @@ i915_param_named_unsafe(guc_firmware_path, charp, 0400,
 i915_param_named_unsafe(huc_firmware_path, charp, 0400,
 	"HuC firmware path to use instead of the default one");
 
-i915_param_named_unsafe(dmc_firmware_path, charp, 0400,
-	"DMC firmware path to use instead of the default one");
-
 i915_param_named_unsafe(gsc_firmware_path, charp, 0400,
 	"GSC firmware path to use instead of the default one");
 
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index 1315d7fac850..2eb3f2115ff2 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -51,7 +51,6 @@ struct drm_printer;
 	param(int, guc_log_level, -1, 0400) \
 	param(char *, guc_firmware_path, NULL, 0400) \
 	param(char *, huc_firmware_path, NULL, 0400) \
-	param(char *, dmc_firmware_path, NULL, 0400) \
 	param(char *, gsc_firmware_path, NULL, 0400) \
 	param(bool, memtest, false, 0400) \
 	param(int, mmio_debug, -IS_ENABLED(CONFIG_DRM_I915_DEBUG_MMIO), 0600) \
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index 9785eef2e5a4..eeab2002d6db 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -524,9 +524,6 @@ struct xe_device {
 		unsigned int fsb_freq, mem_freq, is_ddr3;
 		u8 vblank_enabled;
 	};
-	struct {
-		const char *dmc_firmware_path;
-	} params;
 
 	void *pxp;
 #endif
-- 
2.39.2

