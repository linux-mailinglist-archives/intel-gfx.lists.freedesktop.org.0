Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DE6B05834
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jul 2025 12:55:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 414B510E371;
	Tue, 15 Jul 2025 10:55:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ez9UEQd/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A23610E371;
 Tue, 15 Jul 2025 10:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752576937; x=1784112937;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3WVzdpCPH5qQ4t7gKzEKJSbV4LcYXyuk8o8ugkMgarw=;
 b=ez9UEQd/lvbT8Q0w55EAmNA0o88i2CvcqahRjOxFJG38cwBd/yksrtIJ
 Mg7YujmESeTUYfEDamp+s94+f1O89s9gBn7XpGyRxycv1BcH6Drz23Bge
 Zxfh/vBV8KG6gQq7DqtH3o57ABz71kczdFbE40qpVSKOzLBhzsskNr1Wd
 zSHC0SEjBywKkuiPzEcX0wMJ+DJ0i7i6aRFGS+GrJzkBAj9pwThg2Kt5O
 OKhF36mgZBfujBgY5gWlIHd7O3WgjbqpkMj7JGCAcTZOLT795lAw5Sbx+
 XAZgZIHti94Mo04sHX0nqT8ZSGzWokaak/CglmPAgYvMCPkqNnW5q06zO w==;
X-CSE-ConnectionGUID: YenbdVShQZOxEhSy1D9eIQ==
X-CSE-MsgGUID: 0IAz0tkST7CFy7Sft0MgYQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="58598571"
X-IronPort-AV: E=Sophos;i="6.16,313,1744095600"; d="scan'208";a="58598571"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 03:55:37 -0700
X-CSE-ConnectionGUID: aXzV8dRqQVyHSzgBn//u+w==
X-CSE-MsgGUID: G+5WBK34T2mr7hjovgb9lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,313,1744095600"; d="scan'208";a="161509205"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.221])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 03:55:35 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 2/3] drm/i915/psr: Ignore enable_psr parameter on Panel
 Replay
Date: Tue, 15 Jul 2025 13:55:08 +0300
Message-ID: <20250715105509.4146806-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250715105509.4146806-1-jouni.hogander@intel.com>
References: <20250715105509.4146806-1-jouni.hogander@intel.com>
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

Currently we are disabling Panel Replay if enable_psr != -1. Lets ignore
enable_psr completely on Panel Replay.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 27 ++++++------------------
 1 file changed, 7 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index a2b5688f0c82..ee1f9a240283 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -233,16 +233,12 @@ bool intel_psr_needs_aux_io_power(struct intel_encoder *encoder,
 
 static bool psr_global_enabled(struct intel_dp *intel_dp)
 {
-	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = intel_dp->attached_connector;
 
 	switch (intel_dp->psr.debug & I915_PSR_DEBUG_MODE_MASK) {
 	case I915_PSR_DEBUG_DEFAULT:
-		if (display->params.enable_psr == -1)
-			return intel_dp_is_edp(intel_dp) ?
-				connector->panel.vbt.psr.enable :
-				true;
-		return display->params.enable_psr;
+		return intel_dp_is_edp(intel_dp) ?
+			connector->panel.vbt.psr.enable : true;
 	case I915_PSR_DEBUG_DISABLE:
 		return false;
 	default:
@@ -250,29 +246,20 @@ static bool psr_global_enabled(struct intel_dp *intel_dp)
 	}
 }
 
-static bool psr2_global_enabled(struct intel_dp *intel_dp)
+static bool sel_update_global_enabled(struct intel_dp *intel_dp)
 {
-	struct intel_display *display = to_intel_display(intel_dp);
-
 	switch (intel_dp->psr.debug & I915_PSR_DEBUG_MODE_MASK) {
 	case I915_PSR_DEBUG_DISABLE:
 	case I915_PSR_DEBUG_FORCE_PSR1:
 		return false;
 	default:
-		if (display->params.enable_psr == 1)
-			return false;
 		return true;
 	}
 }
 
 static bool panel_replay_global_enabled(struct intel_dp *intel_dp)
 {
-	struct intel_display *display = to_intel_display(intel_dp);
-
-	if ((display->params.enable_psr != -1) ||
-	    (intel_dp->psr.debug & I915_PSR_DEBUG_PANEL_REPLAY_DISABLE))
-		return false;
-	return true;
+	return !(intel_dp->psr.debug & I915_PSR_DEBUG_PANEL_REPLAY_DISABLE);
 }
 
 static u32 psr_irq_psr_error_bit_get(struct intel_dp *intel_dp)
@@ -1412,7 +1399,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 	int crtc_vdisplay = crtc_state->hw.adjusted_mode.crtc_vdisplay;
 	int psr_max_h = 0, psr_max_v = 0, max_bpp = 0;
 
-	if (!intel_dp->psr.sink_psr2_support)
+	if (!intel_dp->psr.sink_psr2_support || display->params.enable_psr == 1)
 		return false;
 
 	/* JSL and EHL only supports eDP 1.3 */
@@ -1517,7 +1504,7 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
 		goto unsupported;
 	}
 
-	if (!psr2_global_enabled(intel_dp)) {
+	if (!sel_update_global_enabled(intel_dp)) {
 		drm_dbg_kms(display->drm,
 			    "Selective update disabled by flag\n");
 		goto unsupported;
@@ -1565,7 +1552,7 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	int entry_setup_frames;
 
-	if (!CAN_PSR(intel_dp))
+	if (!CAN_PSR(intel_dp) || !display->params.enable_psr)
 		return false;
 
 	/*
-- 
2.43.0

