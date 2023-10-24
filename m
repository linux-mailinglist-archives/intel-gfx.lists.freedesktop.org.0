Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8BD07D4DD4
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 12:32:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3788810E32B;
	Tue, 24 Oct 2023 10:32:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68AB910E32A
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 10:32:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698143570; x=1729679570;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qTLqlBGvGFolTvB5olqUotYuLB5SKNnGRorbis0RgH4=;
 b=QN5m2RCflNcpnz5YWHroDv5tw2NCwtQMwQ7nl/oSqm1VV4HB3ZyqVzhb
 7x47j78dX+qI4LDWPr85Rt12Y4nM1+EBS34ZGieHD5dL7i0ke+cnilCj7
 0yXyWxvVfvhg4PsWPlgR0J/lxrXFMbEi7neL9lkSYR5VYXjq3tYM45B90
 4VUqovj+e/Q6rnKVasybYHhvK9WDCLrJFIqZ6ouLzeaIqTvlhwXgHHcws
 qsnHf+zxufGwaFYBT4/v+wOZ3Q6L0znhfs/Z48GVmlm2xKr1j8geHfI90
 LcdO/72YG4nOj33fGIROJQk0/Zdo5ZBDccmTcCBfAY+TrEJw+KTp4aa72 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="386839456"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="386839456"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 03:32:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="793439345"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="793439345"
Received: from cpantea-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.63.253])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 03:32:47 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 13:32:03 +0300
Message-Id: <20231024103222.302256-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231024103222.302256-1-jouni.hogander@intel.com>
References: <20231024103222.302256-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 04/23] drm/i915/display: Move psr related
 module parameters under display
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

Move psr related module parameters under display. Also fix error in
enable_psr2_sel_fetch module parameter descrtiption. It was saying disabled
by default while it's vice versa. Also psr_safest_params was missing
default value in description. This is now added.

v2:
  - Fix enable_psr2_sel_fetch description.
  - Add default value into psr_safest_params description.

Cc: Luca Coelho <luca@coelho.fi>

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../gpu/drm/i915/display/intel_display_params.c  | 16 ++++++++++++++++
 .../gpu/drm/i915/display/intel_display_params.h  |  5 +++++
 drivers/gpu/drm/i915/display/intel_psr.c         | 14 +++++++-------
 drivers/gpu/drm/i915/i915_params.c               | 15 ---------------
 drivers/gpu/drm/i915/i915_params.h               |  3 ---
 5 files changed, 28 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index 330613cd64db..0e86d0d10bfa 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -31,6 +31,22 @@ intel_display_param_named_unsafe(enable_fbc, int, 0400,
 	"Enable frame buffer compression for power savings "
 	"(default: -1 (use per-chip default))");
 
+intel_display_param_named_unsafe(enable_psr, int, 0400,
+	"Enable PSR "
+	"(0=disabled, 1=enable up to PSR1, 2=enable up to PSR2) "
+	"Default: -1 (use per-chip default)");
+
+intel_display_param_named(psr_safest_params, bool, 0400,
+	"Replace PSR VBT parameters by the safest and not optimal ones. This "
+	"is helpful to detect if PSR issues are related to bad values set in "
+	" VBT. (0=use VBT parameters, 1=use safest parameters)"
+	"Default: 0");
+
+intel_display_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
+	"Enable PSR2 selective fetch "
+	"(0=disabled, 1=enabled) "
+	"Default: 1");
+
 __maybe_unused
 static void _param_print_bool(struct drm_printer *p, const char *driver_name,
 			      const char *name, bool val)
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index 198b03da8055..45a4d38d13e7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -6,6 +6,8 @@
 #ifndef _INTEL_DISPLAY_PARAMS_H_
 #define _INTEL_DISPLAY_PARAMS_H_
 
+#include <linux/types.h>
+
 struct drm_printer;
 struct drm_i915_private;
 
@@ -23,6 +25,9 @@ struct drm_i915_private;
  */
 #define INTEL_DISPLAY_PARAMS_FOR_EACH(param) \
 	param(int, enable_fbc, -1, 0600) \
+	param(int, enable_psr, -1, 0600) \
+	param(bool, psr_safest_params, false, 0400) \
+	param(bool, enable_psr2_sel_fetch, true, 0400) \
 
 #define MEMBER(T, member, ...) T member;
 struct intel_display_params {
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4f1f31fc9529..ecd24a0b86cb 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -179,9 +179,9 @@ static bool psr_global_enabled(struct intel_dp *intel_dp)
 
 	switch (intel_dp->psr.debug & I915_PSR_DEBUG_MODE_MASK) {
 	case I915_PSR_DEBUG_DEFAULT:
-		if (i915->params.enable_psr == -1)
+		if (i915->display.params.enable_psr == -1)
 			return connector->panel.vbt.psr.enable;
-		return i915->params.enable_psr;
+		return i915->display.params.enable_psr;
 	case I915_PSR_DEBUG_DISABLE:
 		return false;
 	default:
@@ -198,7 +198,7 @@ static bool psr2_global_enabled(struct intel_dp *intel_dp)
 	case I915_PSR_DEBUG_FORCE_PSR1:
 		return false;
 	default:
-		if (i915->params.enable_psr == 1)
+		if (i915->display.params.enable_psr == 1)
 			return false;
 		return true;
 	}
@@ -606,7 +606,7 @@ static u32 intel_psr1_get_tp_time(struct intel_dp *intel_dp)
 	if (DISPLAY_VER(dev_priv) >= 11)
 		val |= EDP_PSR_TP4_TIME_0us;
 
-	if (dev_priv->params.psr_safest_params) {
+	if (dev_priv->display.params.psr_safest_params) {
 		val |= EDP_PSR_TP1_TIME_2500us;
 		val |= EDP_PSR_TP2_TP3_TIME_2500us;
 		goto check_tp3_sel;
@@ -700,7 +700,7 @@ static u32 intel_psr2_get_tp_time(struct intel_dp *intel_dp)
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	u32 val = 0;
 
-	if (dev_priv->params.psr_safest_params)
+	if (dev_priv->display.params.psr_safest_params)
 		return EDP_PSR2_TP2_TIME_2500us;
 
 	if (connector->panel.vbt.psr.psr2_tp2_tp3_wakeup_time_us >= 0 &&
@@ -943,7 +943,7 @@ static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
-	if (!dev_priv->params.enable_psr2_sel_fetch &&
+	if (!dev_priv->display.params.enable_psr2_sel_fetch &&
 	    intel_dp->psr.debug != I915_PSR_DEBUG_ENABLE_SEL_FETCH) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "PSR2 sel fetch not enabled, disabled by parameter\n");
@@ -1056,7 +1056,7 @@ static bool _compute_psr2_wake_times(struct intel_dp *intel_dp,
 	    fast_wake_lines > max_wake_lines)
 		return false;
 
-	if (i915->params.psr_safest_params)
+	if (i915->display.params.psr_safest_params)
 		io_wake_lines = fast_wake_lines = max_wake_lines;
 
 	/* According to Bspec lower limit should be set as 7 lines. */
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 42700b854b79..c65e3314ae48 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -102,21 +102,6 @@ i915_param_named_unsafe(enable_hangcheck, bool, 0400,
 	"WARNING: Disabling this can cause system wide hangs. "
 	"(default: true)");
 
-i915_param_named_unsafe(enable_psr, int, 0400,
-	"Enable PSR "
-	"(0=disabled, 1=enable up to PSR1, 2=enable up to PSR2) "
-	"Default: -1 (use per-chip default)");
-
-i915_param_named(psr_safest_params, bool, 0400,
-	"Replace PSR VBT parameters by the safest and not optimal ones. This "
-	"is helpful to detect if PSR issues are related to bad values set in "
-	" VBT. (0=use VBT parameters, 1=use safest parameters)");
-
-i915_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
-	"Enable PSR2 selective fetch "
-	"(0=disabled, 1=enabled) "
-	"Default: 0");
-
 i915_param_named_unsafe(enable_sagv, bool, 0600,
 	"Enable system agent voltage/frequency scaling (SAGV) (default: true)");
 
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index e674de29f92c..47a05c4a8e89 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -52,10 +52,7 @@ struct drm_printer;
 	param(int, panel_use_ssc, -1, 0600) \
 	param(int, vbt_sdvo_panel_type, -1, 0400) \
 	param(int, enable_dc, -1, 0400) \
-	param(int, enable_psr, -1, 0600) \
 	param(bool, enable_dpt, true, 0400) \
-	param(bool, psr_safest_params, false, 0400) \
-	param(bool, enable_psr2_sel_fetch, true, 0400) \
 	param(bool, enable_sagv, true, 0600) \
 	param(int, disable_power_well, -1, 0400) \
 	param(int, enable_ips, 1, 0600) \
-- 
2.34.1

