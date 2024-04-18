Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0AB8A9D51
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Apr 2024 16:40:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AADF1113D16;
	Thu, 18 Apr 2024 14:40:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jRq43nw7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB3DB113D11;
 Thu, 18 Apr 2024 14:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713451228; x=1744987228;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KBrUB1Pd0XDgBedOsrTwaAUGgzO3ahtSPf3rsnQ2rgE=;
 b=jRq43nw7gwVIiYeLBLFkoVK33wKkIdiz/DdwAebWFOJTqvwDmLQ8F5Er
 Uk+wrx5fiv5LueT9LcXD7r64bm10y1Uk0fTDBpIaAgQqbNd7f1VlxPtMb
 GIPe6HYolvBELryGu4e8HzFhe7FIHH/wOv+//7HW3nzjrNlnd27FsLyh1
 Rzux1G8gUr5TtNLKGIrrR9RhrVTLg7Yxn67/d4fm9BzWHuTpnkav1fSVV
 TslhoQyMTcidT3e9z5+xrYfjjzxgd0rVvxrCJ7kQcolLWTQS/dxcqalg8
 sLghkATQm9MdjCNV8Bs0WPgT5Ho+xXMrdSCbs6Lle035+U1Je0KbLVbz/ w==;
X-CSE-ConnectionGUID: z3wWr1DfT56I6xDwMAnqZA==
X-CSE-MsgGUID: j2w9uho7RnC6U9ex1GQ7bA==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="9225101"
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; 
   d="scan'208";a="9225101"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 07:40:27 -0700
X-CSE-ConnectionGUID: ED0z0/SeTaWGomD4MWV8Vw==
X-CSE-MsgGUID: nb+94C2TQ/qxT/aX3iLLAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="27584755"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 07:40:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com,
	rodrigo.vivi@intel.com
Subject: [PATCH 5/5] drm/i915/display: move dmc_firmware_path to display params
Date: Thu, 18 Apr 2024 17:39:54 +0300
Message-Id: <f34afbeed83f7ab4b6e9bbeff27b1fc9ab9c92c2.1713450693.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1713450693.git.jani.nikula@intel.com>
References: <cover.1713450693.git.jani.nikula@intel.com>
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
there so it's available to both i915 and xe modules. This also cleans up
the ugly member in struct xe_device.

v2:
- New try with the NULL/"" param value issue resolved

Link: https://patchwork.freedesktop.org/patch/msgid/20240321161856.3517856-1-jani.nikula@intel.com
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_params.c | 4 ++++
 drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
 drivers/gpu/drm/i915/display/intel_dmc.c            | 2 +-
 drivers/gpu/drm/i915/i915_params.c                  | 4 ----
 drivers/gpu/drm/i915/i915_params.h                  | 1 -
 drivers/gpu/drm/xe/xe_device_types.h                | 3 ---
 6 files changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index f40b223cc8a1..ddce5a2c53d9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -27,6 +27,10 @@ static struct intel_display_params intel_display_modparams __read_mostly = {
  * debugfs mode to 0.
  */
 
+intel_display_param_named_unsafe(dmc_firmware_path, charp, 0400,
+	"DMC firmware path to use instead of the default one. "
+	"Use non-existent file to disable DMC and runtime PM.");
+
 intel_display_param_named_unsafe(vbt_firmware, charp, 0400,
 	"Load VBT from specified file under /lib/firmware");
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index bf8dbbdb20a1..1208a62c16d2 100644
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
index 3e510c2be1eb..175669f7d61d 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -75,7 +75,7 @@ static struct intel_dmc *i915_to_dmc(struct drm_i915_private *i915)
 
 static const char *dmc_firmware_param(struct drm_i915_private *i915)
 {
-	const char *p = i915->params.dmc_firmware_path;
+	const char *p = i915->display.params.dmc_firmware_path;
 
 	return p && *p ? p : NULL;
 }
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 9e7f2a9f6287..8c00169e3ab7 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -108,10 +108,6 @@ i915_param_named_unsafe(guc_firmware_path, charp, 0400,
 i915_param_named_unsafe(huc_firmware_path, charp, 0400,
 	"HuC firmware path to use instead of the default one");
 
-i915_param_named_unsafe(dmc_firmware_path, charp, 0400,
-	"DMC firmware path to use instead of the default one. "
-	"Use non-existent file to disable DMC and runtime PM.");
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
index 60ced5f90c2b..c70047762222 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -519,9 +519,6 @@ struct xe_device {
 		unsigned int czclk_freq;
 		unsigned int fsb_freq, mem_freq, is_ddr3;
 	};
-	struct {
-		const char *dmc_firmware_path;
-	} params;
 
 	void *pxp;
 #endif
-- 
2.39.2

