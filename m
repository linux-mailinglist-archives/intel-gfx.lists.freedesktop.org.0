Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA659B4860
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 12:33:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C5CF10E638;
	Tue, 29 Oct 2024 11:33:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FeHlVPUa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51AC310E638;
 Tue, 29 Oct 2024 11:33:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730201593; x=1761737593;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oSgxdArGT1jwZfCiC5Xv7S4xU6wwGT+rhvnWWccLchs=;
 b=FeHlVPUaeE0nmUC4BTa61228TB+3yHwZyTnoFxlYFW+N/uCStvP3O0Mr
 dobcdwXgID4zsloTl+xZNG0PF/Yr4wgEmYdmW4egE7xCM+2too6UIZR0t
 8DuxnpNL3RpDAkNH+HUce5tppanH9b6nnjSqptuVOPw5SpmxWq2w9vjKR
 rIl3Ci/RF1Fs5caohpY+xvMQ13rHLKzoTPiXx2hc9VS9VuSEmH+LbOYq5
 bohPXac7fNfq8HOyVIegZqn54gsD0HMX4ten1zs7iJPFNxfYEY8XoZ2xM
 VV1F+5TXbMU1WJEwR2wn8gqIr7CCv+g5RyfrswbrwemHrM/H15KJ0C/7T Q==;
X-CSE-ConnectionGUID: hZVqznq3TROoZbu5s0oOAA==
X-CSE-MsgGUID: 8kXwFpY6SrGSDWV0fzVqGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40934532"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40934532"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 04:33:12 -0700
X-CSE-ConnectionGUID: 0VnKeAi4QI2qg2MqsMQE/A==
X-CSE-MsgGUID: AUAsswVpRjK6WFHM7oGPwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="112736835"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.69])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 04:33:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 3/3] drm/i915/psr: clarify intel_psr_pre_plane_update()
 conditions
Date: Tue, 29 Oct 2024 13:32:50 +0200
Message-Id: <dc99ed97363524c869c83dac8d9773a81984a10c.1730201504.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1730201504.git.jani.nikula@intel.com>
References: <cover.1730201504.git.jani.nikula@intel.com>
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

Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 45 ++++++++++++------------
 1 file changed, 22 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 02f31c7b254b..80485828729f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2766,32 +2766,31 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
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
+			    new_crtc_state->enable_psr2_su_region_et !=
+			    psr->su_region_et_enabled ||
+			    (DISPLAY_VER(i915) < 11 && new_crtc_state->wm_level_disabled)) {
+				intel_psr_disable_locked(intel_dp);
+			} else if (new_crtc_state->wm_level_disabled) {
+				/* Wa_14015648006 */
+				wm_optimization_wa(intel_dp, new_crtc_state);
+			}
+		}
 
 		mutex_unlock(&psr->lock);
 	}
-- 
2.39.5

