Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D33AAACECA3
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jun 2025 11:12:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59CC010E8C2;
	Thu,  5 Jun 2025 09:12:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hoJpJXXT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83B7110E98C;
 Thu,  5 Jun 2025 09:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749114742; x=1780650742;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dAAat+xO/WIW0fBGbtssNkO7Rqv2cuQuLwZJJxCL6S8=;
 b=hoJpJXXTHJu8M/43X0E+oF5jL1SHOAMSNjUd5IqUyapLz1mJCIQy7V8C
 RPsOZ/5sTnwtZyZqljiKoPhPrmUfAWGNR7xJz6BHAnF0apV3JmI8ovK3k
 jNwOXCnMPHkOEwwzHNDjBgS6YKECzdvVVNfd5Ppr4eQ3z92P7zgPjMGyu
 bHdBLRqHaMULVCxZs9TAo7raqGMUIOz0UlBYWwXvZ864gTh0x7YlvYsaR
 MKnWl+rjIQJzBZ/Ei7B1m6vRZPmKx6ufHQKAqge+Ie/5kqxupRlEMcnhi
 XD5SVOtJ7FIPbPDHPRHFBl0d6/243YCCs7ArPOyxZGn+T4uaZi7zAfD4g w==;
X-CSE-ConnectionGUID: iwygHZvRT92RjP+6ab96ZA==
X-CSE-MsgGUID: Jr37Ey/3Qm+ahqAXhk/zeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11454"; a="50462057"
X-IronPort-AV: E=Sophos;i="6.16,211,1744095600"; d="scan'208";a="50462057"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2025 02:12:22 -0700
X-CSE-ConnectionGUID: +JA6CERwQ0yAxepoC7fVSA==
X-CSE-MsgGUID: DcMMTBD9SxmmlurQOUx5fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,211,1744095600"; d="scan'208";a="182659844"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa001.jf.intel.com with ESMTP; 05 Jun 2025 02:12:21 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v2 1/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Date: Thu,  5 Jun 2025 11:12:58 +0200
Message-ID: <20250605091300.3739436-2-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250605091300.3739436-1-michal.grzelak@intel.com>
References: <20250605091300.3739436-1-michal.grzelak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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

There is no reason in debugfs why PSR has been disabled. Add
no_psr_reason field into struct intel_psr. Write the reason,
e.g. PSR setup timing not met, into proper PSR debugfs file.
Clean it when PSR is activated.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 38 ++++++++++++-------
 2 files changed, 26 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 7415564d058a..7d598357a702 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1653,6 +1653,8 @@ struct intel_psr {
 	bool link_ok;
 
 	u8 active_non_psr_pipes;
+
+	const char *no_psr_reason;
 };
 
 struct intel_dp {
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ccd66bbc72f7..2c8af2a10ee1 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1577,6 +1577,7 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 	if (entry_setup_frames >= 0) {
 		intel_dp->psr.entry_setup_frames = entry_setup_frames;
 	} else {
+		intel_dp->psr.no_psr_reason = "PSR setup timing not met";
 		drm_dbg_kms(display->drm,
 			    "PSR condition failed: PSR setup timing not met\n");
 		return false;
@@ -1812,6 +1813,7 @@ static void intel_psr_activate(struct intel_dp *intel_dp)
 		hsw_activate_psr1(intel_dp);
 
 	intel_dp->psr.active = true;
+	intel_dp->psr.no_psr_reason = NULL;
 }
 
 /*
@@ -2904,13 +2906,21 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 			 * - Region Early Transport changing
 			 * - Display WA #1136: skl, bxt
 			 */
-			if (intel_crtc_needs_modeset(new_crtc_state) ||
-			    !new_crtc_state->has_psr ||
-			    !new_crtc_state->active_planes ||
-			    new_crtc_state->has_sel_update != psr->sel_update_enabled ||
-			    new_crtc_state->enable_psr2_su_region_et != psr->su_region_et_enabled ||
-			    new_crtc_state->has_panel_replay != psr->panel_replay_enabled ||
-			    (DISPLAY_VER(display) < 11 && new_crtc_state->wm_level_disabled))
+			if (intel_crtc_needs_modeset(new_crtc_state))
+				psr->no_psr_reason = "New state needs modeset";
+			if (!new_crtc_state->has_psr)
+		                psr->no_psr_reason = "PSR disabled in new state";
+			if (!new_crtc_state->active_planes)
+		                psr->no_psr_reason = "All planes will go inactive";
+			if (new_crtc_state->has_sel_update != psr->sel_update_enabled)
+				psr->no_psr_reason = "Changing between PSR versions";
+			if (new_crtc_state->enable_psr2_su_region_et != psr->su_region_et_enabled)
+		                psr->no_psr_reason = "Region Early Transport changing";
+			if (new_crtc_state->has_panel_replay != psr->panel_replay_enabled)
+				psr->no_psr_reason = "Changing Panel Replay mode";
+			if (DISPLAY_VER(display) < 11 && new_crtc_state->wm_level_disabled)
+			        psr->no_psr_reason = "Bspec #21664 Display WA #1136: skl, bxt";
+			if (psr->no_psr_reason)
 				intel_psr_disable_locked(intel_dp);
 			else if (new_crtc_state->wm_level_disabled)
 				/* Wa_14015648006 */
@@ -3918,12 +3928,7 @@ static void intel_psr_print_mode(struct intel_dp *intel_dp,
 				 struct seq_file *m)
 {
 	struct intel_psr *psr = &intel_dp->psr;
-	const char *status, *mode, *region_et;
-
-	if (psr->enabled)
-		status = " enabled";
-	else
-		status = "disabled";
+	const char *mode, *region_et;
 
 	if (psr->panel_replay_enabled && psr->sel_update_enabled)
 		mode = "Panel Replay Selective Update";
@@ -3941,7 +3946,12 @@ static void intel_psr_print_mode(struct intel_dp *intel_dp,
 	else
 		region_et = "";
 
-	seq_printf(m, "PSR mode: %s%s%s\n", mode, status, region_et);
+	if (psr->enabled) {
+		seq_puts(m, "PSR enabled\n");
+		seq_printf(m, "PSR mode: %s%s\n", mode, region_et);
+	} else {
+		seq_printf(m, "PSR disabled: %s\n", psr->no_psr_reason);
+	}
 }
 
 static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
-- 
2.45.2

