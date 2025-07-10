Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D8AB00C5E
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jul 2025 21:53:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4EB010E950;
	Thu, 10 Jul 2025 19:53:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H8lK2M/x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0269210E950;
 Thu, 10 Jul 2025 19:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752177204; x=1783713204;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+HyoOhYzNNB8xhl4W8p8A6ux9njYYo0tery4F6RAdw0=;
 b=H8lK2M/xGsg8nNGElcxmU3j5FqvKgEq+6v01W0XUofGKbyqUh/3VtmVF
 poVy1vnHSvYK+5UICE1GoZdKQG8tZCGVDAa7dNDhIajenzGFsLZh1EX7O
 cs06dWOcJF4wI6vQExLveMVgb2e0Zczdjm0gnvt2CjB8a/+vsgJMowzIi
 QIlSyAHQmwHUpvD/6LUzdPqE13L2ayD4Erb0vmeq05bpzkHg5o5XKKpWH
 ztawS5RfD6nf4Zh9DfSOa/340SOx9lKRcUMb+diI9l+JeoVmQ1ZRm+Md8
 0s1WA0fc3fV4q4kUddCbQMyYTraS/yiY2YMCUfN1EH1DSrq6wN9aJlVTs g==;
X-CSE-ConnectionGUID: 0QC1YNwPQdy0HM2EYyIiag==
X-CSE-MsgGUID: nv8FpD3cQi2TRtg7b5b1ZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="54597031"
X-IronPort-AV: E=Sophos;i="6.16,301,1744095600"; d="scan'208";a="54597031"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 12:53:23 -0700
X-CSE-ConnectionGUID: xoN94iHsRzKneDN4hWAAuw==
X-CSE-MsgGUID: 4uSy6nBLQ4mOmCDLBtufGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,301,1744095600"; d="scan'208";a="156898502"
Received: from abityuts-desk.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.189])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 12:53:22 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 2/2] drm/i915/psr: Do not disable Panel Replay if PSR2 is
 disabled
Date: Thu, 10 Jul 2025 22:53:10 +0300
Message-ID: <20250710195310.3153786-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250710195310.3153786-1-jouni.hogander@intel.com>
References: <20250710195310.3153786-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Currently disabling PSR2 via enable_psr module parameter causes Panel
Replay being disabled as well. This patch changes this by still allowing
Panel Replay even if PSR2 is disabled.

After this patch enable_psr module parameter values are:

-1 = PSR1 : yes, PSR2 = yes, Panel Replay : yes
 0 = PSR1 : no,  PSR2 = no,  Panel Replay : no
 1 = PSR1 : yes, PSR2 = no,  Panel Replay : yes
 2 = PSR1 : yes, PSR2 = yes, Panel Replay : no
 3 = PSR1 : yes, PSR2 = no,  Panel Replay : no

I.e. values different than -1 and 0 are handled as bitmasks where BIT0
disables PSR2 and BIT1 disables Panel Replay.

v3:
  - add definitions for disable bits
v2:
  - make it more clear that enable_psr is bitmask for disabling different
    PSR modes

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_params.c   |  6 ++---
 drivers/gpu/drm/i915/display/intel_psr.c      | 25 ++++++++++++++-----
 2 files changed, 22 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index 75316247ee8a..195af19ece5f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -116,9 +116,9 @@ intel_display_param_named_unsafe(enable_fbc, int, 0400,
 	"(default: -1 (use per-chip default))");
 
 intel_display_param_named_unsafe(enable_psr, int, 0400,
-	"Enable PSR "
-	"(0=disabled, 1=enable up to PSR1, 2=enable up to PSR2) "
-	"Default: -1 (use per-chip default)");
+	"Enable PSR (0=disabled, 1=disable PSR2 (BIT0), 2=disable Panel Replay (BIT1))."
+	"Values different from 0 and -1 are handled as bitmask to disable different PSR modes."
+	"E.g. value 3 disables both PSR2 and Panel Replay. Default: -1 (use per-chip default)");
 
 intel_display_param_named(psr_safest_params, bool, 0400,
 	"Replace PSR VBT parameters by the safest and not optimal ones. This "
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index a2b5688f0c82..0f1559982821 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -200,6 +200,9 @@
  *  enabled + panel_replay_enabled + sel_update_enabled:	Panel Replay SU
  */
 
+#define PSR_PARAM_DISABLE_PSR2		BIT(0)
+#define PSR_PARAM_DISABLE_PANEL_REPLAY	BIT(1)
+
 #define CAN_PSR(intel_dp) ((intel_dp)->psr.sink_support && \
 			   (intel_dp)->psr.source_support)
 
@@ -254,13 +257,16 @@ static bool psr2_global_enabled(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 
+	return display->params.enable_psr == -1 ||
+		!(display->params.enable_psr & PSR_PARAM_DISABLE_PSR2);
+}
+
+static bool sel_update_global_enabled(struct intel_dp *intel_dp)
+{
 	switch (intel_dp->psr.debug & I915_PSR_DEBUG_MODE_MASK) {
-	case I915_PSR_DEBUG_DISABLE:
 	case I915_PSR_DEBUG_FORCE_PSR1:
 		return false;
 	default:
-		if (display->params.enable_psr == 1)
-			return false;
 		return true;
 	}
 }
@@ -269,7 +275,8 @@ static bool panel_replay_global_enabled(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 
-	if ((display->params.enable_psr != -1) ||
+	if ((display->params.enable_psr != -1 &&
+	     display->params.enable_psr & PSR_PARAM_DISABLE_PANEL_REPLAY) ||
 	    (intel_dp->psr.debug & I915_PSR_DEBUG_PANEL_REPLAY_DISABLE))
 		return false;
 	return true;
@@ -1415,6 +1422,12 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 	if (!intel_dp->psr.sink_psr2_support)
 		return false;
 
+	if (!psr2_global_enabled(intel_dp)) {
+		drm_dbg_kms(display->drm,
+			    "PSR2 disabled by flag\n");
+		return false;
+	}
+
 	/* JSL and EHL only supports eDP 1.3 */
 	if (display->platform.jasperlake || display->platform.elkhartlake) {
 		drm_dbg_kms(display->drm, "PSR2 not supported by phy\n");
@@ -1517,7 +1530,7 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
 		goto unsupported;
 	}
 
-	if (!psr2_global_enabled(intel_dp)) {
+	if (!sel_update_global_enabled(intel_dp)) {
 		drm_dbg_kms(display->drm,
 			    "Selective update disabled by flag\n");
 		goto unsupported;
@@ -1664,7 +1677,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	u8 active_pipes = 0;
 
 	if (!psr_global_enabled(intel_dp)) {
-		drm_dbg_kms(display->drm, "PSR disabled by flag\n");
+		drm_dbg_kms(display->drm, "PSR/Panel Replay disabled by flag\n");
 		return;
 	}
 
-- 
2.43.0

