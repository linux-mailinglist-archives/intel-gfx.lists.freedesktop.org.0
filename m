Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 901557BFA13
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 13:43:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC75510E33E;
	Tue, 10 Oct 2023 11:43:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CDC810E33E
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 11:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696938195; x=1728474195;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KTWBuvltq4C0n+alD7UVxBoULfjT2NfFigHv4hkq/vE=;
 b=gLf+DEoI0hD5nNhqQao7v1tzaKuMUPT04roZvZLDV/nHsv6PktQGs5AN
 DtTeOmkqI/Rw/ovfPac6L7dLYPVOvuKbSVpLxmFgARO0n6YLzrQXiRSNi
 IMXs/OrqBmEou26DtlrLhSt/E7nyM42+vIhVSIF8/JfAgh/2r6NO/2AWw
 COLqhIMKoTJfHdzRnW2Q4UDkEUIFTTr7lZC0YidxxbOdkqXJxHE51hpxu
 UhEeTW9pwx3n+UX50fKudBjMgY3nTPZfyljxn9OWcV1Z7Hs4mQuv4depq
 1AE8H/wsiL7qZnJgZPlcMMQm0mHGMrZK1/YTrQxgehUuUdhbCssNXB2Xv A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="470635470"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="470635470"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:43:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="869655393"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="869655393"
Received: from snutt-mobl1.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.57.138])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:43:13 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 14:41:13 +0300
Message-Id: <20231010114120.2504103-19-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231010114120.2504103-1-jouni.hogander@intel.com>
References: <20231010114120.2504103-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 18/25] drm/i915/display: Move load_detect_test
 parameter under display
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
index 2ce7cbfc1bb0..0f98f6e56e17 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -81,6 +81,10 @@ intel_display_param_named(enable_dpcd_backlight, int, 0400,
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
index 44b0f8a3fc72..56af1bf98718 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -37,6 +37,7 @@ struct drm_i915_private;
 	param(int, edp_vswing, 0, 0400) \
 	param(int, fastboot, -1, 0600)	\
 	param(int, enable_dpcd_backlight, -1, 0600) \
+	param(bool, load_detect_test, false, 0600) \
 	param(int, enable_fbc, -1, 0600)	\
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

