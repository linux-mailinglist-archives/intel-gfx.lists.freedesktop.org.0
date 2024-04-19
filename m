Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 373DB8AABA8
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 11:42:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB07210E8B4;
	Fri, 19 Apr 2024 09:42:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BQFalzc4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6FF910E8B4;
 Fri, 19 Apr 2024 09:42:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713519754; x=1745055754;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ez/cbpCKB7QUPmcxIKltHRxl3CnXAMdd7bP2Jf3qWG4=;
 b=BQFalzc4E0w1Tp7Gsi9CVEI8rOyU9P3nUJWHA7ZSlTWIrCu+EMOofuX+
 7j6zy0NNKnYL4GMlc0JZia68GOk4vpxbp4CbGU8Wv0BQ8BX3UlcbZZaPu
 8Xk2HVSJ377Cl5lpDu+UTtnlXxkxzZm6FC0GPK6zELeboeK3wyiKNBHBJ
 sp+rX/CZ8oJxVnJ0AP8paQw6PyG9yRZZ/DvLxEuKUr0Gr0zbWmoEChrT/
 0FM6mwaGorBwPaGaDHxqRO1e6PKJUAEYKMZyqNQN21xW1Ji9JKcyVAobm
 /2hEUsNUq2efboppc/B0w7PK3SaP611WKQ36Un0BC5DFTK2ldL6Hkjtl4 Q==;
X-CSE-ConnectionGUID: K93IaH7BS+KQOdtmQasaBg==
X-CSE-MsgGUID: FXprqWadQjGSSLrD1P9+Gw==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="19809320"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="19809320"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 02:42:34 -0700
X-CSE-ConnectionGUID: GtJivm+EREuzw/xnu80WAQ==
X-CSE-MsgGUID: CllMdp6fTAi3h5LsBxZFvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="23785877"
Received: from agherasi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.46.119])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 02:42:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: lucas.demarchi@intel.com, Gustavo Sousa <gustavo.sousa@intel.com>,
 jani.nikula@intel.com
Subject: [PATCH v2 5/5] drm/i915/display: move dmc_firmware_path to display
 params
Date: Fri, 19 Apr 2024 12:41:58 +0300
Message-Id: <7c8223b68fdafbc72bee0bf5afdb2ab15261cf00.1713519628.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1713519628.git.jani.nikula@intel.com>
References: <cover.1713519628.git.jani.nikula@intel.com>
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

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
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
index f40b223cc8a1..1799a6643128 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -27,6 +27,10 @@ static struct intel_display_params intel_display_modparams __read_mostly = {
  * debugfs mode to 0.
  */
 
+intel_display_param_named_unsafe(dmc_firmware_path, charp, 0400,
+	"DMC firmware path to use instead of the default one. "
+	"Use /dev/null to disable DMC and runtime PM.");
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
index 7dabfaa636e4..36c361cf72fc 100644
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
index edfd1f54a882..8c00169e3ab7 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -108,10 +108,6 @@ i915_param_named_unsafe(guc_firmware_path, charp, 0400,
 i915_param_named_unsafe(huc_firmware_path, charp, 0400,
 	"HuC firmware path to use instead of the default one");
 
-i915_param_named_unsafe(dmc_firmware_path, charp, 0400,
-	"DMC firmware path to use instead of the default one. "
-	"Use /dev/null to disable DMC and runtime PM.");
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

