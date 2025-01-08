Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2056A05892
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 11:47:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BD3F10E85D;
	Wed,  8 Jan 2025 10:47:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a7WNUuog";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C0A910E833;
 Wed,  8 Jan 2025 10:47:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736333248; x=1767869248;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UYkT1enFpO7mOMVQy+m7NlV2Znva4vW2+Ls1J4MKFK4=;
 b=a7WNUuogf14OyBbq1i3Wt9UxfqKTW23X1TblOXj3STxWUmt0pbdpPMpO
 ThGo/A1MH+QFs5O5MvnwZCofm8zWdtfe+T9vXd0XPuzBa8LAh2FqzuP7P
 GOgD6VaHmvvXBuT9Q9gETpZsDOcitDWYL0kUNj62qUO4mAIet+UQQFrbl
 9JzwqqDemwqFCKlXGBfWuRw6kL5k30hBKcs62/WoF1j56FkwOK7pmwiin
 Wd7aNNs08935TDf9ZdU6G4uy9O0Ka55rP+40tHINQmJZkCFWBuqGOx5R3
 i7R0ORbx3aiB39IQQa68wLv0riguLJRLE6PSykczOT45L67tj7x41xGw/ w==;
X-CSE-ConnectionGUID: m+R55dEpSe2rtot5c42wqA==
X-CSE-MsgGUID: G2u8LsYySqi2C9qhxNx6dg==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="24157242"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="24157242"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 02:47:27 -0800
X-CSE-ConnectionGUID: IhAAaU0dTqm0dDUhxu5K7g==
X-CSE-MsgGUID: b1HAhn/aR1SAu9tRp6/VKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="102861966"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.152])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 02:47:25 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/psr: clarify intel_psr_pre_plane_update() conditions
Date: Wed,  8 Jan 2025 12:47:21 +0200
Message-Id: <20250108104721.2278220-1-jani.nikula@intel.com>
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

Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

I never ended up merging this, because I thought there were conflicting
changes coming up, but I guess not.
---
 drivers/gpu/drm/i915/display/intel_psr.c | 45 ++++++++++++------------
 1 file changed, 22 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 0b021acb330f..8e886865fbbe 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2790,32 +2790,31 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
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

