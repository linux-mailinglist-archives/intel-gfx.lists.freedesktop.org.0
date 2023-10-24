Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01DBF7D4DE6
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 12:33:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09FA310E33C;
	Tue, 24 Oct 2023 10:33:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6C7010E32C
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 10:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698143596; x=1729679596;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mAhH6USEvYddVFpTFP3cCN+ncwh/OGsLZkR4y18xao8=;
 b=F0+4aDyRhQN/U9k+bEbncNBmQ1IBEts1jme6p2Q8HTmT/8sangWMEsVA
 gyVCwY4qvO5f8Yr1im6zFgpANjXqugwaQ2tODDaLOwDlvzB5Q02Vd836H
 lwF7LUKqvUbIytzdSwBOi4xpWdsXW0UiQP/d6v5wyRhtnNi7jGILtK5fK
 Ykg2z3TCxrBhfcnIlyo8GUBQoHrRsQnXG0fVupqQHiQ63cs4se4LKKllF
 krXn9ENRDLmgGmh+4SHHeYE/3nYd13bjpKHJD1zv5YjxtX9mavXa80WWn
 rtUMYVmpRAL7bzFqQTyXWCuVbR/msltbuaLI6vh/aBoiODYGZKJWUGTte A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="386839588"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="386839588"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 03:33:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="793439525"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="793439525"
Received: from cpantea-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.63.253])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 03:33:14 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 13:32:16 +0300
Message-Id: <20231024103222.302256-18-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231024103222.302256-1-jouni.hogander@intel.com>
References: <20231024103222.302256-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 17/23] drm/i915/display: Move
 load_detect_test parameter under display
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
 drivers/gpu/drm/i915/display/intel_crt.c            | 4 ++--
 drivers/gpu/drm/i915/display/intel_display_params.c | 4 ++++
 drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
 drivers/gpu/drm/i915/i915_params.c                  | 4 ----
 drivers/gpu/drm/i915/i915_params.h                  | 1 -
 5 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 913e5d230a4d..0e33a0523a75 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -841,7 +841,7 @@ intel_crt_detect(struct drm_connector *connector,
 	if (!intel_display_device_enabled(dev_priv))
 		return connector_status_disconnected;
 
-	if (dev_priv->params.load_detect_test) {
+	if (dev_priv->display.params.load_detect_test) {
 		wakeref = intel_display_power_get(dev_priv,
 						  intel_encoder->power_domain);
 		goto load_detect;
@@ -901,7 +901,7 @@ intel_crt_detect(struct drm_connector *connector,
 		else if (DISPLAY_VER(dev_priv) < 4)
 			status = intel_crt_load_detect(crt,
 				to_intel_crtc(connector->state->crtc)->pipe);
-		else if (dev_priv->params.load_detect_test)
+		else if (dev_priv->display.params.load_detect_test)
 			status = connector_status_disconnected;
 		else
 			status = connector_status_unknown;
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index 190ca12ce64b..16a30f7b96b4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -76,6 +76,10 @@ intel_display_param_named(enable_dpcd_backlight, int, 0400,
 	"Enable support for DPCD backlight control"
 	"(-1=use per-VBT LFP backlight type setting [default], 0=disabled, 1=enable, 2=force VESA interface, 3=force Intel interface)");
 
+intel_display_param_named_unsafe(load_detect_test, bool, 0400,
+	"Force-enable the VGA load detect code for testing (default:false). "
+	"For developers only.");
+
 intel_display_param_named_unsafe(enable_fbc, int, 0400,
 	"Enable frame buffer compression for power savings "
 	"(default: -1 (use per-chip default))");
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index 85d1128954e9..558eecaa520a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -36,6 +36,7 @@ struct drm_i915_private;
 	param(int, invert_brightness, 0, 0600) \
 	param(int, edp_vswing, 0, 0400) \
 	param(int, enable_dpcd_backlight, -1, 0600) \
+	param(bool, load_detect_test, false, 0600) \
 	param(int, enable_fbc, -1, 0600) \
 	param(int, enable_psr, -1, 0600) \
 	param(bool, psr_safest_params, false, 0400) \
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index e15cd8491c7f..cb56973a2394 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -86,10 +86,6 @@ i915_param_named_unsafe(force_probe, charp, 0400,
 	"Force probe options for specified supported devices. "
 	"See CONFIG_DRM_I915_FORCE_PROBE for details.");
 
-i915_param_named_unsafe(load_detect_test, bool, 0400,
-	"Force-enable the VGA load detect code for testing (default:false). "
-	"For developers only.");
-
 i915_param_named_unsafe(force_reset_modeset_test, bool, 0400,
 	"Force a modeset during gpu reset for testing (default:false). "
 	"For developers only.");
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index 8169234338b1..cf5448bbc087 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -63,7 +63,6 @@ struct drm_printer;
 	param(unsigned int, lmem_bar_size, 0, 0400) \
 	/* leave bools at the end to not create holes */ \
 	param(bool, enable_hangcheck, true, 0600) \
-	param(bool, load_detect_test, false, 0600) \
 	param(bool, force_reset_modeset_test, false, 0600) \
 	param(bool, error_capture, true, IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR) ? 0600 : 0) \
 	param(bool, disable_display, false, 0400) \
-- 
2.34.1

