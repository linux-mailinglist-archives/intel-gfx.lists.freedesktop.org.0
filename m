Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50478B57EA4
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Sep 2025 16:17:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F03B10E4CE;
	Mon, 15 Sep 2025 14:17:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FwOGZvWT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF56910E303;
 Mon, 15 Sep 2025 14:17:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757945851; x=1789481851;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H87/LOV2yRe64STDsOZW4In32OFjj63kCSN2F6mBrw4=;
 b=FwOGZvWTVIqSa7Fg19Buy7kSbl0rXr5GwzQjUWDXqWIbaKyfyqLRrbNB
 r+Tim+jDjymyG+UAkXewNi8iwdHa58MlEviEU+BycjE8X/Iehi3GGEtGd
 GPst2OPa8ixSVGZNFrk8I1j874KM9ZrBw2QI10miNtsntvoOjc8XfnfzG
 AN9oo7AdxyMoTt+hEhq+baHuR8WPq1A76S0+WVjiHRdnMG+Bxgjy0f5Te
 3omEhFn5R6+f6iaP7rlFYJBu/GK96fqyqUnfRUgLcMW82Q2e5TSYOzO2A
 CVMfI8GQLxB+okaexOSoArncZk8FZSOpf1uyl0gdpBNVf2rae28zb0GIG w==;
X-CSE-ConnectionGUID: z/lwjbP6RsmEIJ8tsZiA9g==
X-CSE-MsgGUID: rK97a/9MQXy8N354IJ1ZYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="77809453"
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="77809453"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 07:17:28 -0700
X-CSE-ConnectionGUID: WyWbIJRxRfCeLO3hNTdDAA==
X-CSE-MsgGUID: /Xfsl4puTsS635gt0+mBTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="175440708"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa010.fm.intel.com with ESMTP; 15 Sep 2025 07:17:26 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: jouni.hogander@intel.com, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: sebastian.brzezinka@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v11 1/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Date: Mon, 15 Sep 2025 16:19:13 +0200
Message-ID: <20250915141913.939152-2-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250915141913.939152-1-michal.grzelak@intel.com>
References: <20250915141913.939152-1-michal.grzelak@intel.com>
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
the reason from new_crtc_state in intel_psr_pre_plane_update. Extend
format of debugfs file to have reason when it is non-NULL. Clean the
reason when PSR is activated.

Refactor intel_psr_post_plane_update to use no_psr_reason along
keep_disabled.

Changelog:
v10->v11
- update the reason from new_crtc_state instead of old_crtc_state [Jouni]

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
index 358ab922d7a7..8e930ec197ab 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1127,6 +1127,7 @@ struct intel_crtc_state {
 	u32 dc3co_exitline;
 	u16 su_y_granularity;
 	u8 active_non_psr_pipes;
+	const char *no_psr_reason;
 
 	/*
 	 * Frequency the dpll for the port should run at. Differs from the
@@ -1689,6 +1690,8 @@ struct intel_psr {
 	bool pkg_c_latency_used;
 
 	u8 active_non_psr_pipes;
+
+	const char *no_psr_reason;
 };
 
 struct intel_dp {
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 01bf304c705f..a1faf8a8d184 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1582,6 +1582,7 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 	if (entry_setup_frames >= 0) {
 		intel_dp->psr.entry_setup_frames = entry_setup_frames;
 	} else {
+		crtc_state->no_psr_reason = "PSR setup timing not met";
 		drm_dbg_kms(display->drm,
 			    "PSR condition failed: PSR setup timing not met\n");
 		return false;
@@ -1813,6 +1814,7 @@ static void intel_psr_activate(struct intel_dp *intel_dp)
 		hsw_activate_psr1(intel_dp);
 
 	intel_dp->psr.active = true;
+	intel_dp->psr.no_psr_reason = NULL;
 }
 
 /*
@@ -2925,6 +2927,9 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 
 		mutex_lock(&psr->lock);
 
+		if (!new_crtc_state->has_psr)
+			psr->no_psr_reason = new_crtc_state->no_psr_reason;
+
 		if (psr->enabled) {
 			/*
 			 * Reasons to disable:
@@ -2973,12 +2978,19 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
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
@@ -4017,6 +4029,8 @@ static void intel_psr_print_mode(struct intel_dp *intel_dp,
 		region_et = "";
 
 	seq_printf(m, "PSR mode: %s%s%s\n", mode, status, region_et);
+	if (psr->no_psr_reason)
+		seq_printf(m, "  %s\n", psr->no_psr_reason);
 }
 
 static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
-- 
2.45.2

