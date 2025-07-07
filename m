Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D38D6AFB195
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jul 2025 12:47:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0663510E442;
	Mon,  7 Jul 2025 10:47:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TGLuQGzJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB59010E440;
 Mon,  7 Jul 2025 10:47:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751885268; x=1783421268;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S5omyh2U+ULQUfbBp5+BTK5iCaXe0rJmWmxdhysrcwE=;
 b=TGLuQGzJyyiIA/VuqKGxwpsjfTBQb/pDaE2Fop/IM49Ogtw4mzH0aL71
 Yg/dneQe6CJE9YcSw0N1/Z+cAenahc3Y7NA1wajJCx6whWs3uEkSFWigg
 yuuS7Cy1RCKwmLIZqd4m8jrOpeQ1pqbqTV7Yu+4pfPeeQUFh++fQt8t2T
 7Hzd7HxYWUBH/bz3jT+ieLCNy1YAQPVTRf/+Mkn2ab+GjZW5Ly4GQ5viP
 0vLehisKIcwT9m7Qzl9jtepG8KJR1v3vR++ESKt0FPNWxFjP0mU5a4az8
 87eRCmIcU5TkvwBqxTL8uYL5Dn/t42CBvq4qm5e26uM095k222gT0DkOS A==;
X-CSE-ConnectionGUID: DmX6t2dvT6yhMBPK4OjwPw==
X-CSE-MsgGUID: Y7+YDP7YSem0Te2CHRo61w==
X-IronPort-AV: E=McAfee;i="6800,10657,11486"; a="76652654"
X-IronPort-AV: E=Sophos;i="6.16,294,1744095600"; d="scan'208";a="76652654"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 03:47:48 -0700
X-CSE-ConnectionGUID: mfIziDoVQOCPDYPk1eUnVg==
X-CSE-MsgGUID: W8R0YigeTVmzc08S3kg1wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,294,1744095600"; d="scan'208";a="159216973"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.92])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 03:47:46 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 2/2] drm/i915/psr: Do not disable Panel Replay if PSR2 is
 disabled
Date: Mon,  7 Jul 2025 13:47:33 +0300
Message-ID: <20250707104733.1874797-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250707104733.1874797-1-jouni.hogander@intel.com>
References: <20250707104733.1874797-1-jouni.hogander@intel.com>
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

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_params.c   |  3 +--
 drivers/gpu/drm/i915/display/intel_psr.c      | 20 +++++++++++++------
 2 files changed, 15 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index 75316247ee8a..1ba17ea40bba 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -116,8 +116,7 @@ intel_display_param_named_unsafe(enable_fbc, int, 0400,
 	"(default: -1 (use per-chip default))");
 
 intel_display_param_named_unsafe(enable_psr, int, 0400,
-	"Enable PSR "
-	"(0=disabled, 1=enable up to PSR1, 2=enable up to PSR2) "
+	"Enable PSR (0=disabled, 1=disable PSR2, 2=disable Panel Replay)"
 	"Default: -1 (use per-chip default)");
 
 intel_display_param_named(psr_safest_params, bool, 0400,
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index a2b5688f0c82..3215a11baa66 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -254,13 +254,15 @@ static bool psr2_global_enabled(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 
+	return display->params.enable_psr != 1;
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
@@ -269,7 +271,7 @@ static bool panel_replay_global_enabled(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 
-	if ((display->params.enable_psr != -1) ||
+	if (display->params.enable_psr == 2 ||
 	    (intel_dp->psr.debug & I915_PSR_DEBUG_PANEL_REPLAY_DISABLE))
 		return false;
 	return true;
@@ -1415,6 +1417,12 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
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
@@ -1517,7 +1525,7 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
 		goto unsupported;
 	}
 
-	if (!psr2_global_enabled(intel_dp)) {
+	if (!sel_update_global_enabled(intel_dp)) {
 		drm_dbg_kms(display->drm,
 			    "Selective update disabled by flag\n");
 		goto unsupported;
@@ -1664,7 +1672,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	u8 active_pipes = 0;
 
 	if (!psr_global_enabled(intel_dp)) {
-		drm_dbg_kms(display->drm, "PSR disabled by flag\n");
+		drm_dbg_kms(display->drm, "PSR/Panel Replay disabled by flag\n");
 		return;
 	}
 
-- 
2.43.0

