Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA94B7CA679
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Oct 2023 13:17:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9CAF10E1CF;
	Mon, 16 Oct 2023 11:17:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 407FD10E1BB
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Oct 2023 11:17:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697455055; x=1728991055;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lgWyYTt89zKBQTe2feM5EUoi0zF1fu37F+9702Gv/7o=;
 b=G8JacKz7Vo075lM2O3ZXi2rLP0AqqdFLemiw/Gl/uHhor1tl8RUbU/di
 oHz1yDvzJmSv/2ZKmQ7a67UILjrOKsRPsnul9wV7naZ0KR/Fk+y0Bgiip
 1WLuFbdjbzeKV3NqKHLgMRtuoppKkFG6T4jOlIke7CrYjTJKy+X0K+B3y
 4wUxJy9IPauek3TPy96sRta34ItcYWsUez84/TzrMo3Sbj3rW4IaIfWk7
 pRg/7Ihz04D+eGFlqdHoL6lcBVLj3mk/PPgfTsAFwa3oYfg9LcMkE1IQY
 m67na8CFH3Ywmx6gtSC7HuQe43Ci77nO63RAW0g5mg/LW/4Adv2C6FhoA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="385341371"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="385341371"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 04:17:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="821532639"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="821532639"
Received: from dleve-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.41.143])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 04:17:33 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Oct 2023 14:16:48 +0300
Message-Id: <20231016111658.3432581-15-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231016111658.3432581-1-jouni.hogander@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 14/24] drm/i915/display: Move
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_backlight.c      | 9 +++++----
 drivers/gpu/drm/i915/display/intel_display_params.c | 9 ++++++++-
 drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
 drivers/gpu/drm/i915/i915_params.c                  | 7 -------
 drivers/gpu/drm/i915/i915_params.h                  | 1 -
 5 files changed, 14 insertions(+), 13 deletions(-)

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
index c2399e11203c..8d8050a22bf7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -57,7 +57,14 @@ intel_display_param_named_unsafe(disable_power_well, int, 0400,
 	"Disable display power wells when possible "
 	"(-1=auto [default], 0=power wells always on, 1=power wells disabled when possible)");
 
-i915_param_named_unsafe(enable_ips, int, 0400, "Enable IPS (default: true)");
+intel_display_param_named_unsafe(enable_ips, int, 0400, "Enable IPS (default: true)");
+
+intel_display_param_named_unsafe(invert_brightness, int, 0400,
+	"Invert backlight brightness "
+	"(-1 force normal, 0 machine defaults, 1 force inversion), please "
+	"report PCI device ID, subsystem vendor and subsystem device ID "
+	"to dri-devel@lists.freedesktop.org, if your machine needs it. "
+	"It will then be included in an upcoming module version.");
 
 intel_display_param_named_unsafe(enable_fbc, int, 0400,
 	"Enable frame buffer compression for power savings "
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index 11c21a3a3124..23fa03ea38c9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -33,6 +33,7 @@ struct drm_i915_private;
 	param(bool, enable_sagv, true, 0600) \
 	param(int, disable_power_well, -1, 0400) \
 	param(int, enable_ips, 1, 0600) \
+	param(int, invert_brightness, 0, 0600) \
 	param(int, enable_fbc, -1, 0600)	\
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

