Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31090B41BDE
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 12:30:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A340410E208;
	Wed,  3 Sep 2025 10:30:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fFVzIGe5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF7C410E201;
 Wed,  3 Sep 2025 10:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756895451; x=1788431451;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UqgBgmOCzkuLapTrYWWDd2BoUpgp8oR5XcekdZzbK3s=;
 b=fFVzIGe5Z9sfubli5cEXCGfj5u5mrefVrTnlAJZdLP6t3H+3XAvUwIGM
 7hLqc7LYmYGoQYkzQ2ZrPwmR/COIOsNkvqxIVZtw/cqMpTUTKJgEkfyd2
 vSYIrsHYQqYn7UWLfFsIbgk28yuk5qY+2V/a2UBW37MDSNK6JsQIaWS91
 f3xO6AhZlVg3ahk8lAa3M9dNJdQ0+quEwLcIEm5lrtkcnvK7xXKiirE3x
 SpRSxWNaZPMHdhZw8Yf6TbzNRBHjHIDJAWijg5FPgBz7WTj8D88DW4U5q
 74zBdZhhN+s43yLPIH34MMUXerBL9f40rI2SecCHXzzsLCf0t9NOfkn/c Q==;
X-CSE-ConnectionGUID: pAr3+EluTnGExdKqP86B7A==
X-CSE-MsgGUID: n6Jm2rNhQFmpjAG92iF2nQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="59318756"
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="59318756"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 03:30:51 -0700
X-CSE-ConnectionGUID: PM29pVWOSxWrW+WR9UVD5Q==
X-CSE-MsgGUID: L38AfZO/SLyCaEH43lvxoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="195181760"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa002.fm.intel.com with ESMTP; 03 Sep 2025 03:30:49 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, sebastian.brzezinka@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v10 1/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Date: Wed,  3 Sep 2025 12:31:52 +0200
Message-ID: <20250903103152.2440348-2-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250903103152.2440348-1-michal.grzelak@intel.com>
References: <20250903103152.2440348-1-michal.grzelak@intel.com>
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

There is no reason in debugfs why PSR has been disabled. Currently,
without this information, IGT tests cannot decide whether PSR has
been disabled on purpose or was it abnormal behavior. Because of it,
the status of the test cannot be decided correctly.

Add no_psr_reason field into struct intel_psr. Add no_psr_reason
into struct intel_crtc_state to prevent staying out of sync when
_psr_compute_config is not using computed state. Write the reason,
e.g. PSR setup timing not met, into proper PSR debugfs file. Update
the reason from old_crtc_state in intel_psr_pre_plane_update. Extend
format of debugfs file to have reason when it is non-NULL. Clean the
reason when PSR is activated.

Refactor intel_psr_post_plane_update to use no_psr_reason along
keep_disabled.

Changelog:
v9->v10
- log reason into intel_crtc_state instead of intel_dp->psr [Jouni]
- remove clearing no_psr_reason in intel_psr_compute_config [Jouni]
- change update of no_psr_reason into more readable form [Jouni]

v8->v9
- add no_psr_reason into struct intel_crtc_state [Jouni]
- update the reason in intel_psr_pre_plane_update [Jouni]
- elaborate on motivation of the feature in commit message [Sebastian]
- copy changelog to commit message [Sebastian]

v7->v8
- reset no_psr_reason at the begin of intel_psr_compute_config [Jouni]
- restore keep_disabled [Jouni]
- drop setting "Sink not reliable" [Jouni]
- add WA number [Jouni]
- if non-NULL, write no_psr_reason after PSR mode [Jouni]

v6->v7
- rebase onto new drm-tip

v5->v6
- move setting no_psr_reason to intel_psr_post_plane_update [Jouni]
- remove setting no_psr_reason when disabling PSR is temporary [Jouni]

v4->v5
- fix indentation errors from checkpatch

v3->v4
- change format of logging workaround #1136

v2->v3
- change reason description to be more specific [Mika]
- remove BSpecs number & WA number from being written into no_psr_reason
- replace spaces with tabs

v1->v2
- set other reasons than "PSR setup timing not met"
- clear no_psr_reason when activating PSR.

Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  3 +++
 drivers/gpu/drm/i915/display/intel_psr.c      | 22 +++++++++++++++----
 2 files changed, 21 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index fd9d2527889b..e165a471aa6d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1125,6 +1125,7 @@ struct intel_crtc_state {
 	u32 dc3co_exitline;
 	u16 su_y_granularity;
 	u8 active_non_psr_pipes;
+	const char *no_psr_reason;
 
 	/*
 	 * Frequency the dpll for the port should run at. Differs from the
@@ -1687,6 +1688,8 @@ struct intel_psr {
 	bool pkg_c_latency_used;
 
 	u8 active_non_psr_pipes;
+
+	const char *no_psr_reason;
 };
 
 struct intel_dp {
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 22433fe2ee14..ebc56fd958ac 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1579,6 +1579,7 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 	if (entry_setup_frames >= 0) {
 		intel_dp->psr.entry_setup_frames = entry_setup_frames;
 	} else {
+		crtc_state->no_psr_reason = "PSR setup timing not met";
 		drm_dbg_kms(display->drm,
 			    "PSR condition failed: PSR setup timing not met\n");
 		return false;
@@ -1810,6 +1811,7 @@ static void intel_psr_activate(struct intel_dp *intel_dp)
 		hsw_activate_psr1(intel_dp);
 
 	intel_dp->psr.active = true;
+	intel_dp->psr.no_psr_reason = NULL;
 }
 
 /*
@@ -2922,6 +2924,9 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 
 		mutex_lock(&psr->lock);
 
+		if (!new_crtc_state->has_psr)
+			psr->no_psr_reason = old_crtc_state->no_psr_reason;
+
 		if (psr->enabled) {
 			/*
 			 * Reasons to disable:
@@ -2970,12 +2975,19 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
 		drm_WARN_ON(display->drm,
 			    psr->enabled && !crtc_state->active_planes);
 
-		keep_disabled |= psr->sink_not_reliable;
-		keep_disabled |= !crtc_state->active_planes;
+		if (psr->sink_not_reliable)
+			keep_disabled = true;
+
+		if (!crtc_state->active_planes) {
+			psr->no_psr_reason = "All planes inactive";
+			keep_disabled = true;
+		}
 
 		/* Display WA #1136: skl, bxt */
-		keep_disabled |= DISPLAY_VER(display) < 11 &&
-			crtc_state->wm_level_disabled;
+		if (DISPLAY_VER(display) < 11 && crtc_state->wm_level_disabled) {
+			psr->no_psr_reason = "Workaround #1136 for skl, bxt";
+			keep_disabled = true;
+		}
 
 		if (!psr->enabled && !keep_disabled)
 			intel_psr_enable_locked(intel_dp, crtc_state);
@@ -3978,6 +3990,8 @@ static void intel_psr_print_mode(struct intel_dp *intel_dp,
 		region_et = "";
 
 	seq_printf(m, "PSR mode: %s%s%s\n", mode, status, region_et);
+	if (psr->no_psr_reason)
+		seq_printf(m, "  %s\n", psr->no_psr_reason);
 }
 
 static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
-- 
2.45.2

