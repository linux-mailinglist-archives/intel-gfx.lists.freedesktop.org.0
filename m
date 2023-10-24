Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 263F27D4DD5
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 12:32:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7140A10E327;
	Tue, 24 Oct 2023 10:32:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3C5010E32A
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 10:32:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698143572; x=1729679572;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cHO1/9usiEsFHaCllm4MjHc60k/C9T+D9hb1j3wVu90=;
 b=cpkB8bjE+1RApiY7SAlv1RszEjMFw806IgIVuuq+2rhqh2V/y0OAJ0Kh
 AXyyYmuZ8p8q5z2fWF8BMemArb20r3PfV1huGHOWN50X2EYtx0lV9Yu8j
 QWfqL21faFoopLK2L6t6Rv8+zgWClx+YC+/e4GBgrXednnHYeOxjYoOzB
 TDtE/+4jPqFtGzBCw+fL38/gyyfmN7oSe7XjqrYS8CC10L9O75IezIyhu
 Y4+pzA5RFRA6quq0PGcn1CCCQ4nU1Kp7ZnxqhfnVpT+giUyAe2V8hSd9p
 /zkKCzVrwy8meLR0TvUXATs114dAgukEFfOTvvYHrFKnXn4UGLgdhJUfN g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="386839477"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="386839477"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 03:32:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="793439358"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="793439358"
Received: from cpantea-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.63.253])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 03:32:49 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 13:32:04 +0300
Message-Id: <20231024103222.302256-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231024103222.302256-1-jouni.hogander@intel.com>
References: <20231024103222.302256-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 05/23] drm/i915/display: Move vbt_firmware
 module parameter under display
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
Cc: Luca Coelho <luciano.coelho@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_params.c | 3 +++
 drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
 drivers/gpu/drm/i915/display/intel_opregion.c       | 2 +-
 drivers/gpu/drm/i915/i915_params.c                  | 3 ---
 drivers/gpu/drm/i915/i915_params.h                  | 1 -
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index 0e86d0d10bfa..d00ea5cda432 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -27,6 +27,9 @@ static struct intel_display_params intel_display_modparams __read_mostly = {
  * debugfs mode to 0.
  */
 
+intel_display_param_named_unsafe(vbt_firmware, charp, 0400,
+	"Load VBT from specified file under /lib/firmware");
+
 intel_display_param_named_unsafe(enable_fbc, int, 0400,
 	"Enable frame buffer compression for power savings "
 	"(default: -1 (use per-chip default))");
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index 45a4d38d13e7..e51e8a1960eb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -24,6 +24,7 @@ struct drm_i915_private;
  *       debugfs file
  */
 #define INTEL_DISPLAY_PARAMS_FOR_EACH(param) \
+	param(char *, vbt_firmware, NULL, 0400) \
 	param(int, enable_fbc, -1, 0600) \
 	param(int, enable_psr, -1, 0600) \
 	param(bool, psr_safest_params, false, 0400) \
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 84078fb82b2f..1ce785db6a5e 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -841,7 +841,7 @@ static int intel_load_vbt_firmware(struct drm_i915_private *dev_priv)
 {
 	struct intel_opregion *opregion = &dev_priv->display.opregion;
 	const struct firmware *fw = NULL;
-	const char *name = dev_priv->params.vbt_firmware;
+	const char *name = dev_priv->display.params.vbt_firmware;
 	int ret;
 
 	if (!name || !*name)
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index c65e3314ae48..9d0535d774c9 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -87,9 +87,6 @@ i915_param_named_unsafe(vbt_sdvo_panel_type, int, 0400,
 i915_param_named_unsafe(reset, uint, 0400,
 	"Attempt GPU resets (0=disabled, 1=full gpu reset, 2=engine reset [default])");
 
-i915_param_named_unsafe(vbt_firmware, charp, 0400,
-	"Load VBT from specified file under /lib/firmware");
-
 #if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
 i915_param_named(error_capture, bool, 0400,
 	"Record the GPU state following a hang. "
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index 47a05c4a8e89..37a1d31a233c 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -46,7 +46,6 @@ struct drm_printer;
  *       debugfs file
  */
 #define I915_PARAMS_FOR_EACH(param) \
-	param(char *, vbt_firmware, NULL, 0400) \
 	param(int, modeset, -1, 0400) \
 	param(int, lvds_channel_mode, 0, 0400) \
 	param(int, panel_use_ssc, -1, 0600) \
-- 
2.34.1

