Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D89E5A07360
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 11:35:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7893E10ED59;
	Thu,  9 Jan 2025 10:35:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XXWIxHLy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E15410ED59;
 Thu,  9 Jan 2025 10:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736418953; x=1767954953;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FBXqk+wD31EZZsGUXH8dTqD60lGlgdE/RNhvtE2bd8o=;
 b=XXWIxHLymHKuOTcS0P2xB7O/s+XbJ0cFyBWvBqOKLYHRgAI5q4P2zm46
 ALS5M7L/Mcy6bPcWcNx6K2kvmgvZKoDmuGHIImG+jTKHe/Q6Gn5Hn8OAE
 xHZoVdcKqkD3lW3a4aEHre8CLxirfWOrVk1I4XBeSwqMwq5df416zEYxP
 TmK3E8y+ZX7cUvC06OjQzA2DPau19fyZDjnBvT+tPjuzJ0jdrFXjFSGkE
 MkpN1i9+97esm07iohtBb1ODTEblh0e0ApDLYpLeulgWQGCrKdlFOtIw3
 6hxQc/mKh7e5SpEwGp8U0bn02xDpSWWxGMUiaCG12CwG6jpy1y6pwx7U5 w==;
X-CSE-ConnectionGUID: xiParz0RTSq9G5FCrStcuA==
X-CSE-MsgGUID: /3ky0JYWQ6uQ/9sW9JU3pQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="48034991"
X-IronPort-AV: E=Sophos;i="6.12,301,1728975600"; d="scan'208";a="48034991"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 02:35:53 -0800
X-CSE-ConnectionGUID: MSmil3ymT1y2xPhOoabKvA==
X-CSE-MsgGUID: 4kMbUslnSPi/ijyxfAfyPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,301,1728975600"; d="scan'208";a="103333036"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.185])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 02:35:51 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 4/4] drm/i915/psr: Allow changing Panel Replay mode without
 full modeset
Date: Thu,  9 Jan 2025 12:35:32 +0200
Message-ID: <20250109103532.2093356-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250109103532.2093356-1-jouni.hogander@intel.com>
References: <20250109103532.2093356-1-jouni.hogander@intel.com>
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

Currently we are forcing full modeset if Panel Replay mode is changed. This
is not necessary as long as we are not changing sink PANEL REPLAY ENABLE
bit in PANEL REPLAY ENABLE AND CONFIGURATION 1 register. This can be
achieved by entering Panel Replay inactive mode (Live Frame mode) when
Panel Replay is disabled and keep PANEL REPLAY ENABLE bit in PANEL REPLAY
ENABLE AND CONFIGURATION 1 enabled always if panel is just supporting Panel
Replay.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 14 -----------
 drivers/gpu/drm/i915/display/intel_psr.c     | 25 +++++++++++++-------
 2 files changed, 17 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 21319f753a34..35499eb296b3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5638,20 +5638,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_CSC(output_csc);
 	}
 
-	/*
-	 * Panel replay has to be enabled before link training. PSR doesn't have
-	 * this requirement -> check these only if using panel replay
-	 */
-	if (current_config->active_planes &&
-	    (current_config->has_panel_replay ||
-	     pipe_config->has_panel_replay)) {
-		PIPE_CONF_CHECK_BOOL(has_psr);
-		PIPE_CONF_CHECK_BOOL(has_sel_update);
-		PIPE_CONF_CHECK_BOOL(enable_psr2_sel_fetch);
-		PIPE_CONF_CHECK_BOOL(enable_psr2_su_region_et);
-		PIPE_CONF_CHECK_BOOL(has_panel_replay);
-	}
-
 	PIPE_CONF_CHECK_BOOL(double_wide);
 
 	if (dev_priv->display.dpll.mgr)
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index f969abc56256..3494620d1c44 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1998,18 +1998,25 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 	if (!psr_interrupt_error_check(intel_dp))
 		return;
 
-	if (intel_dp->psr.panel_replay_enabled) {
+	if (intel_dp->psr.panel_replay_enabled)
 		drm_dbg_kms(display->drm, "Enabling Panel Replay\n");
-	} else {
+	else
 		drm_dbg_kms(display->drm, "Enabling PSR%s\n",
 			    intel_dp->psr.sel_update_enabled ? "2" : "1");
 
-		/*
-		 * Panel replay has to be enabled before link training: doing it
-		 * only for PSR here.
-		 */
-		intel_psr_enable_sink(intel_dp, crtc_state);
-	}
+	/*
+	 * Enabling here only for PSR. Panel Replay enable bit is already
+	 * written at this point. See
+	 * intel_psr_panel_replay_enable_sink. Modifiers/options:
+	 *  - Selective Update
+	 *  - Region Early Transport
+	 *  - Selective Update Region Scanline Capture
+	 *  - VSC_SDP_CRC
+	 *  - HPD on different Errors
+	 *  - CRC verification
+	 * are written for PSR and Panel Replay here.
+	 */
+	intel_psr_enable_sink(intel_dp, crtc_state);
 
 	if (intel_dp_is_edp(intel_dp))
 		intel_snps_phy_update_psr_power_state(&dig_port->base, true);
@@ -2815,6 +2822,8 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 		needs_to_disable |= new_crtc_state->has_sel_update != psr->sel_update_enabled;
 		needs_to_disable |= new_crtc_state->enable_psr2_su_region_et !=
 			psr->su_region_et_enabled;
+		needs_to_disable |= new_crtc_state->has_panel_replay !=
+			psr->panel_replay_enabled;
 		needs_to_disable |= DISPLAY_VER(i915) < 11 &&
 			new_crtc_state->wm_level_disabled;
 
-- 
2.34.1

