Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FC67D500A
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 14:42:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B86010E37D;
	Tue, 24 Oct 2023 12:42:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3218A10E37A
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 12:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698151329; x=1729687329;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9lEXDiOe2daz2cTpcQafCqCMhdRJTrHQIzAxyv9ARQ4=;
 b=RPiO60kYAD0+qVBUcC1PkrEnfS341cQBGAYUwWVGnHwF31lJW3xSDoJ4
 bNGI15qMnN/pQyFNgDDT7pvjuLXMKOgU7aLMMO5pWzpEIP6a7/n8+Y29e
 1Zt+tfYMfq6w1T27DLfbDhVjHbG+gFJhgI1lCP+giIwhoNTzCB1vAY2kd
 Mg2Rp9fWlOgyRq31LizkF7xUK9QIZDZ7pOnmVQ5g3LYy6JULQVOvbdE0Q
 KlMc/HKQW7Drax1ivXJWE9hKpxW0q4yfWjtzC62eV88SGdu0n+h2xYb9i
 z+ZWIpJEqdrlWFQmyU65Ft0yDWqfm/nTBpGeGgfzAgBec6Z29QwbhkTTw A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="386856699"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="386856699"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:42:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="758464479"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="758464479"
Received: from cpantea-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.63.253])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:42:06 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 15:41:02 +0300
Message-Id: <20231024124109.384973-17-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231024124109.384973-1-jouni.hogander@intel.com>
References: <20231024124109.384973-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 16/23] drm/i915/display: Move
 enable_dpcd_backlight module parameter under display
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
 drivers/gpu/drm/i915/display/intel_display_params.c   | 4 ++++
 drivers/gpu/drm/i915/display/intel_display_params.h   | 1 +
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 4 ++--
 drivers/gpu/drm/i915/i915_params.c                    | 4 ----
 drivers/gpu/drm/i915/i915_params.h                    | 1 -
 5 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index 70a475223512..190ca12ce64b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -72,6 +72,10 @@ intel_display_param_named_unsafe(edp_vswing, int, 0400,
 	"(0=use value from vbt [default], 1=low power swing(200mV),"
 	"2=default swing(400mV))");
 
+intel_display_param_named(enable_dpcd_backlight, int, 0400,
+	"Enable support for DPCD backlight control"
+	"(-1=use per-VBT LFP backlight type setting [default], 0=disabled, 1=enable, 2=force VESA interface, 3=force Intel interface)");
+
 intel_display_param_named_unsafe(enable_fbc, int, 0400,
 	"Enable frame buffer compression for power savings "
 	"(default: -1 (use per-chip default))");
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index 10c79ce23063..85d1128954e9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -35,6 +35,7 @@ struct drm_i915_private;
 	param(bool, enable_ips, true, 0600) \
 	param(int, invert_brightness, 0, 0600) \
 	param(int, edp_vswing, 0, 0400) \
+	param(int, enable_dpcd_backlight, -1, 0600) \
 	param(int, enable_fbc, -1, 0600) \
 	param(int, enable_psr, -1, 0600) \
 	param(bool, psr_safest_params, false, 0400) \
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 26ea7e9f1b89..4f58efdc688a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -146,7 +146,7 @@ intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
 	 * HDR static metadata we need to start maintaining table of
 	 * ranges for such panels.
 	 */
-	if (i915->params.enable_dpcd_backlight != INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL &&
+	if (i915->display.params.enable_dpcd_backlight != INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL &&
 	    !(connector->base.hdr_sink_metadata.hdmi_type1.metadata_type &
 	      BIT(HDMI_STATIC_METADATA_TYPE1))) {
 		drm_info(&i915->drm,
@@ -489,7 +489,7 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
 	/* Check the VBT and user's module parameters to figure out which
 	 * interfaces to probe
 	 */
-	switch (i915->params.enable_dpcd_backlight) {
+	switch (i915->display.params.enable_dpcd_backlight) {
 	case INTEL_DP_AUX_BACKLIGHT_OFF:
 		return -ENODEV;
 	case INTEL_DP_AUX_BACKLIGHT_AUTO:
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 6b9df9f9d842..e15cd8491c7f 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -140,10 +140,6 @@ i915_param_named_unsafe(inject_probe_failure, uint, 0400,
 	"Force an error after a number of failure check points (0:disabled (default), N:force failure at the Nth failure check point)");
 #endif
 
-i915_param_named(enable_dpcd_backlight, int, 0400,
-	"Enable support for DPCD backlight control"
-	"(-1=use per-VBT LFP backlight type setting [default], 0=disabled, 1=enable, 2=force VESA interface, 3=force Intel interface)");
-
 #if IS_ENABLED(CONFIG_DRM_I915_GVT)
 i915_param_named(enable_gvt, bool, 0400,
 	"Enable support for Intel GVT-g graphics virtualization host support(default:false)");
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index c33edaee5032..8169234338b1 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -57,7 +57,6 @@ struct drm_printer;
 	param(int, mmio_debug, -IS_ENABLED(CONFIG_DRM_I915_DEBUG_MMIO), 0600) \
 	param(unsigned int, reset, 3, 0600) \
 	param(unsigned int, inject_probe_failure, 0, 0) \
-	param(int, enable_dpcd_backlight, -1, 0600) \
 	param(char *, force_probe, CONFIG_DRM_I915_FORCE_PROBE, 0400) \
 	param(unsigned int, request_timeout_ms, CONFIG_DRM_I915_REQUEST_TIMEOUT, CONFIG_DRM_I915_REQUEST_TIMEOUT ? 0600 : 0) \
 	param(unsigned int, lmem_size, 0, 0400) \
-- 
2.34.1

