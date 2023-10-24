Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D25DE7D5006
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 14:42:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EADA410E375;
	Tue, 24 Oct 2023 12:42:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F211410E379
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 12:42:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698151324; x=1729687324;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YPZNDDD3sVo8KUNtNKoZxuaXEjD6jto5chCGVm6uBN4=;
 b=WW6aTFYkXXBQqkHVYn7xRK+N1hgup4USbkRUlTF9GQJEJSUZ1bLijRHS
 iAIcXO9qToqmnaEyM4v7OFgKqj7ZCsfEmBpwJsCCRaNqbwED1uNhGCOtA
 usRuxUem+Xxg72Pjoj6/XuImDl2CHVecXGRtvO2LPmcdfVzFiT4yOeSD4
 1AIBBPT5uc29MLXFJVGP29ZngMnl+U38f15Lbfbpj/Y65SswGnS1CfQks
 +Fwv+R2uAO+PKmRC9UdY/Al54/dRQEvr2t/5OYwqQmAkTUAVvGu9lywD6
 eQqfbVoSwm2mSKEmSIHRccGiZIopS/F0+cnPySpAKpmHT3xAxSSDS646m A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="386856677"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="386856677"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:42:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="758464465"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="758464465"
Received: from cpantea-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.63.253])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:42:02 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 15:41:00 +0300
Message-Id: <20231024124109.384973-15-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231024124109.384973-1-jouni.hogander@intel.com>
References: <20231024124109.384973-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 14/23] drm/i915/display: Move
 invert_brightness module parameter under display
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
 drivers/gpu/drm/i915/display/intel_backlight.c      | 9 +++++----
 drivers/gpu/drm/i915/display/intel_display_params.c | 7 +++++++
 drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
 drivers/gpu/drm/i915/i915_params.c                  | 7 -------
 drivers/gpu/drm/i915/i915_params.h                  | 1 -
 5 files changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 2e8f17c04522..612d4cd9dacb 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -88,10 +88,10 @@ u32 intel_backlight_invert_pwm_level(struct intel_connector *connector, u32 val)
 
 	drm_WARN_ON(&i915->drm, panel->backlight.pwm_level_max == 0);
 
-	if (i915->params.invert_brightness < 0)
+	if (i915->display.params.invert_brightness < 0)
 		return val;
 
-	if (i915->params.invert_brightness > 0 ||
+	if (i915->display.params.invert_brightness > 0 ||
 	    intel_has_quirk(i915, QUIRK_INVERT_BRIGHTNESS)) {
 		return panel->backlight.pwm_level_max - val + panel->backlight.pwm_level_min;
 	}
@@ -132,8 +132,9 @@ u32 intel_backlight_level_from_pwm(struct intel_connector *connector, u32 val)
 	drm_WARN_ON_ONCE(&i915->drm,
 			 panel->backlight.max == 0 || panel->backlight.pwm_level_max == 0);
 
-	if (i915->params.invert_brightness > 0 ||
-	    (i915->params.invert_brightness == 0 && intel_has_quirk(i915, QUIRK_INVERT_BRIGHTNESS)))
+	if (i915->display.params.invert_brightness > 0 ||
+	    (i915->display.params.invert_brightness == 0 &&
+	     intel_has_quirk(i915, QUIRK_INVERT_BRIGHTNESS)))
 		val = panel->backlight.pwm_level_max - (val - panel->backlight.pwm_level_min);
 
 	return scale(val, panel->backlight.pwm_level_min, panel->backlight.pwm_level_max,
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index ce991ad20006..2d721afaba30 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -59,6 +59,13 @@ intel_display_param_named_unsafe(disable_power_well, int, 0400,
 
 intel_display_param_named_unsafe(enable_ips, bool, 0400, "Enable IPS (default: true)");
 
+intel_display_param_named_unsafe(invert_brightness, int, 0400,
+	"Invert backlight brightness "
+	"(-1 force normal, 0 machine defaults, 1 force inversion), please "
+	"report PCI device ID, subsystem vendor and subsystem device ID "
+	"to dri-devel@lists.freedesktop.org, if your machine needs it. "
+	"It will then be included in an upcoming module version.");
+
 intel_display_param_named_unsafe(enable_fbc, int, 0400,
 	"Enable frame buffer compression for power savings "
 	"(default: -1 (use per-chip default))");
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index 8d51488e3b3e..4723b4522413 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -33,6 +33,7 @@ struct drm_i915_private;
 	param(bool, enable_sagv, true, 0600) \
 	param(int, disable_power_well, -1, 0400) \
 	param(bool, enable_ips, true, 0600) \
+	param(int, invert_brightness, 0, 0600) \
 	param(int, enable_fbc, -1, 0600) \
 	param(int, enable_psr, -1, 0600) \
 	param(bool, psr_safest_params, false, 0400) \
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 54dcce97da2a..423fe54484e1 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -94,13 +94,6 @@ i915_param_named_unsafe(force_reset_modeset_test, bool, 0400,
 	"Force a modeset during gpu reset for testing (default:false). "
 	"For developers only.");
 
-i915_param_named_unsafe(invert_brightness, int, 0400,
-	"Invert backlight brightness "
-	"(-1 force normal, 0 machine defaults, 1 force inversion), please "
-	"report PCI device ID, subsystem vendor and subsystem device ID "
-	"to dri-devel@lists.freedesktop.org, if your machine needs it. "
-	"It will then be included in an upcoming module version.");
-
 i915_param_named(disable_display, bool, 0400,
 	"Disable display (default: false)");
 
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index 18bb8a93e0e8..ae0873443a65 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -47,7 +47,6 @@ struct drm_printer;
  */
 #define I915_PARAMS_FOR_EACH(param) \
 	param(int, modeset, -1, 0400) \
-	param(int, invert_brightness, 0, 0600) \
 	param(int, enable_guc, -1, 0400) \
 	param(int, guc_log_level, -1, 0400) \
 	param(char *, guc_firmware_path, NULL, 0400) \
-- 
2.34.1

