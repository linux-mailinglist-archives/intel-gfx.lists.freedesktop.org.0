Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E6FA273E7
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 15:05:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D7E010E65A;
	Tue,  4 Feb 2025 14:05:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mxr/si5B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F24110E65A;
 Tue,  4 Feb 2025 14:05:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738677924; x=1770213924;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6g0M/B3rl19QZ/wsc262/2ERfFx15AvKbQjmq95U30c=;
 b=mxr/si5BYhIDg1bqhK1zV17GbKWat5ES2D+5IBpxu2jglhV0ezQmDHv3
 4xZMPt4222B1OprstqEHcJ6wf/5I/f81RkAhlBtT3+BCt0i4g68yQao16
 zGYjoUIPrfbK2/fGMx1PhNzZkDahxRE/wlkVB1hEp8Ce+WQX2zYqCyHNK
 jgaoNMbMC0WwBpYdJINJmdeUtLVHSLX/Xb2SI25tNOu/Z8hYvm2u4sDc0
 uP1ymyZ1APVIeE4eNdEAYje+KSMtw7g90OvSIo2KStcgU92ECHaX7QSmQ
 ozmYB8PWhZD4wy2akG2OTu3yJC+AXgNjmT2s/PtniOBK89MteDh/twnQG A==;
X-CSE-ConnectionGUID: oyP6mb5rRLKvdpgJSbknxw==
X-CSE-MsgGUID: 5g6qXT69Qri999TiE0O7Ow==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="38415759"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="38415759"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 06:05:24 -0800
X-CSE-ConnectionGUID: 8ZTujtCDRrSHNPDgfSvORg==
X-CSE-MsgGUID: 3ZXaU7gKR1ygG9l/3qgDGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="115226484"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.139])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 06:05:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2] drm/i915/psr: clarify intel_psr_pre_plane_update()
 conditions
Date: Tue,  4 Feb 2025 16:05:18 +0200
Message-Id: <20250204140518.2971530-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

Make the conditions easier to follow. We don't do anything for
!psr->enabled, so hoist psr->enabled check higher, avoiding all the
checks when !psr->enabled. Stop the bitwise OR abuse on booleans by
removing the temporary variable altogether.

v2: Rebase

Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com> # v1
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 46 +++++++++++-------------
 1 file changed, 21 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 2bdb6c9c2283..861e50ceef85 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2804,34 +2804,30 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 					     old_crtc_state->uapi.encoder_mask) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 		struct intel_psr *psr = &intel_dp->psr;
-		bool needs_to_disable = false;
 
 		mutex_lock(&psr->lock);
 
-		/*
-		 * Reasons to disable:
-		 * - PSR disabled in new state
-		 * - All planes will go inactive
-		 * - Changing between PSR versions
-		 * - Region Early Transport changing
-		 * - Display WA #1136: skl, bxt
-		 */
-		needs_to_disable |= intel_crtc_needs_modeset(new_crtc_state);
-		needs_to_disable |= !new_crtc_state->has_psr;
-		needs_to_disable |= !new_crtc_state->active_planes;
-		needs_to_disable |= new_crtc_state->has_sel_update != psr->sel_update_enabled;
-		needs_to_disable |= new_crtc_state->enable_psr2_su_region_et !=
-			psr->su_region_et_enabled;
-		needs_to_disable |= new_crtc_state->has_panel_replay !=
-			psr->panel_replay_enabled;
-		needs_to_disable |= DISPLAY_VER(i915) < 11 &&
-			new_crtc_state->wm_level_disabled;
-
-		if (psr->enabled && needs_to_disable)
-			intel_psr_disable_locked(intel_dp);
-		else if (psr->enabled && new_crtc_state->wm_level_disabled)
-			/* Wa_14015648006 */
-			wm_optimization_wa(intel_dp, new_crtc_state);
+		if (psr->enabled) {
+			/*
+			 * Reasons to disable:
+			 * - PSR disabled in new state
+			 * - All planes will go inactive
+			 * - Changing between PSR versions
+			 * - Region Early Transport changing
+			 * - Display WA #1136: skl, bxt
+			 */
+			if (intel_crtc_needs_modeset(new_crtc_state) ||
+			    !new_crtc_state->has_psr ||
+			    !new_crtc_state->active_planes ||
+			    new_crtc_state->has_sel_update != psr->sel_update_enabled ||
+			    new_crtc_state->enable_psr2_su_region_et != psr->su_region_et_enabled ||
+			    new_crtc_state->has_panel_replay != psr->panel_replay_enabled ||
+			    (DISPLAY_VER(i915) < 11 && new_crtc_state->wm_level_disabled))
+				intel_psr_disable_locked(intel_dp);
+			else if (new_crtc_state->wm_level_disabled)
+				/* Wa_14015648006 */
+				wm_optimization_wa(intel_dp, new_crtc_state);
+		}
 
 		mutex_unlock(&psr->lock);
 	}
-- 
2.39.5

