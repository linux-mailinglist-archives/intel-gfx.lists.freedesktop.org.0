Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F3FB0450D
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jul 2025 18:08:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF3CC10E4D0;
	Mon, 14 Jul 2025 16:08:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MIsl59VD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 330DD10E4CD;
 Mon, 14 Jul 2025 16:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752509304; x=1784045304;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U4XcD4emQ0R/60vy0s8UeFdK9BOyi7LdB3oSdFWnVck=;
 b=MIsl59VDTFpYjFwUkotQtVArPFCurNEDZTTZgi+EBpUXjtrSO5QLsWPr
 pwtSdqYw5qsDRg9nBKy1fWXyfqa3MoGumT+XIGswuI2BJ1F9w+8qidk+v
 z+jMJa3ZTmXaIYlir25g3V2FlkNaARUFFMr9zMrHNxaIlL7D6pgcdEd7n
 ErrDqudugNEOXEgRQhCGRhiWxy+fr+7pQWV2Wa1ZuWgA31Sn/NmsMzbKG
 Th9hXpow7nRZeJ87M0iZW5IDQ/VKu8UYZr3fM8oBH2fCCDtzCV3EVFOjm
 Nw96yTH8O2GfrqSVGv68MjwjIL/0EH8dUjN4P2mhVupWfsucCWramCleR A==;
X-CSE-ConnectionGUID: KGYMMxrXR7u1yN3OXxA3Jg==
X-CSE-MsgGUID: ImOtrgF6TeuQMlPJpgRXFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="54855204"
X-IronPort-AV: E=Sophos;i="6.16,311,1744095600"; d="scan'208";a="54855204"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 09:08:24 -0700
X-CSE-ConnectionGUID: Tvx4wX65S8eLaV8UBcko6w==
X-CSE-MsgGUID: phFkrovfS7i5mLQ94G9Yjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,311,1744095600"; d="scan'208";a="156385661"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa010.jf.intel.com with ESMTP; 14 Jul 2025 09:08:23 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v5 1/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Date: Mon, 14 Jul 2025 18:09:31 +0200
Message-ID: <20250714160931.821383-2-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250714160931.821383-1-michal.grzelak@intel.com>
References: <20250714160931.821383-1-michal.grzelak@intel.com>
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
index ce45261c4a8f..bcff1a21f2be 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1685,6 +1685,8 @@ struct intel_psr {
 	bool link_ok;
 
 	u8 active_non_psr_pipes;
+
+	const char *no_psr_reason;
 };
 
 struct intel_dp {
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ae9053919211..ef6c548b892e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1590,6 +1590,7 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 	if (entry_setup_frames >= 0) {
 		intel_dp->psr.entry_setup_frames = entry_setup_frames;
 	} else {
+		intel_dp->psr.no_psr_reason = "PSR setup timing not met";
 		drm_dbg_kms(display->drm,
 			    "PSR condition failed: PSR setup timing not met\n");
 		return false;
@@ -1819,6 +1820,7 @@ static void intel_psr_activate(struct intel_dp *intel_dp)
 		hsw_activate_psr1(intel_dp);
 
 	intel_dp->psr.active = true;
+	intel_dp->psr.no_psr_reason = NULL;
 }
 
 /*
@@ -2937,13 +2939,21 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
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
+				psr->no_psr_reason = "CRTC needs modeset";
+			if (!new_crtc_state->has_psr)
+				psr->no_psr_reason = "PSR disabled";
+			if (!new_crtc_state->active_planes)
+				psr->no_psr_reason = "All planes inactive";
+			if (new_crtc_state->has_sel_update != psr->sel_update_enabled)
+				psr->no_psr_reason = "Changing between PSR versions";
+			if (new_crtc_state->enable_psr2_su_region_et != psr->su_region_et_enabled)
+				psr->no_psr_reason = "Changing Region Early Transport";
+			if (new_crtc_state->has_panel_replay != psr->panel_replay_enabled)
+				psr->no_psr_reason = "Changing Panel Replay mode";
+			if (DISPLAY_VER(display) < 11 && new_crtc_state->wm_level_disabled)
+				psr->no_psr_reason = "Wa_1136";
+			if (psr->no_psr_reason)
 				intel_psr_disable_locked(intel_dp);
 			else if (new_crtc_state->wm_level_disabled)
 				/* Wa_14015648006 */
@@ -3949,12 +3959,7 @@ static void intel_psr_print_mode(struct intel_dp *intel_dp,
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
@@ -3972,7 +3977,12 @@ static void intel_psr_print_mode(struct intel_dp *intel_dp,
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

