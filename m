Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 353597CA66F
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Oct 2023 13:17:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DC1410E1C5;
	Mon, 16 Oct 2023 11:17:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 475AC10E1BE
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Oct 2023 11:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697455042; x=1728991042;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SDxvwPaqSR2l3IiS9JjpXzHl9ScxpDMr/wjxi6Y/7H0=;
 b=h/rvXqNdckmrK8+FADsYVLNBI97FaRVHypW2ihUhMQTfppB4vPx+BpiV
 WDlJSnNF6N7gHw2+wNDJPR/tkT93rGTusHxfF9WRS08aGHKKwopAfozL3
 bXbFrzyHG2B12Cyx9HEUCF0Zj52CLoBuOY5U8uDbQZ+bG5WjP+4pJE9wg
 R4Vt3Wz82Xf8Y6YJRvU4kDzdVrRFJMJ3Fu8btAFDuP2f6zduiki7g0quf
 9Q+bTS8UXladglI4CWs5He9byP8Hotx+gH+CBXFwzqkBXCNV9Lnu/LU6R
 npeyKgQb0qjYnEDbf5hqap9Iah+Fnq7OrvvQdRQyTqdVXGW69Ia1sQxAn Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="385341353"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="385341353"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 04:17:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="821532564"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="821532564"
Received: from dleve-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.41.143])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 04:17:20 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Oct 2023 14:16:39 +0300
Message-Id: <20231016111658.3432581-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231016111658.3432581-1-jouni.hogander@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 05/24] drm/i915/display: Move vbt_firmware
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_params.c | 3 +++
 drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
 drivers/gpu/drm/i915/display/intel_opregion.c       | 2 +-
 drivers/gpu/drm/i915/i915_params.c                  | 3 ---
 drivers/gpu/drm/i915/i915_params.h                  | 1 -
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index eac82deede4c..72f1782e27fe 100644
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
index 99b79bed9363..a6f37c55523d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -24,6 +24,7 @@ struct drm_i915_private;
  *       debugfs file
  */
 #define INTEL_DISPLAY_PARAMS_FOR_EACH(param) \
+	param(char *, vbt_firmware, NULL, 0400) \
 	param(int, enable_fbc, -1, 0600)     \
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

