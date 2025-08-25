Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED029B33CD2
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Aug 2025 12:31:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C8CE10E439;
	Mon, 25 Aug 2025 10:31:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mZQPkuhd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EB2710E42D;
 Mon, 25 Aug 2025 10:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756117913; x=1787653913;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/3WU29a3M5AjaIiv3vigzL1RdmrRmwUbvl/UT9xkMRI=;
 b=mZQPkuhdu/7H1W8JPQCciY6pVvSk9RL65YzvqIojN53blRifFkIzyN0B
 mAWnNyQiXic28XoyiDJhFehnmLCAVO4x/ynMoY3DTg+N2wqiZom51X65B
 hMww/vRGNhuPlRQdI3SaUPzm/OcVVQ46OE+twD99ECO4SH1OJbyHQdDkx
 2yOemefDoHdhmJdN2JaX33QeKCyCkqnruh45XIDPxnCSPR+ozuwq85zxp
 asyL4F0R82wk0bWuAWPg0XypB+Ui3Oj3/s5Y//AojCu2wi0K7D9WcmC9n
 mwU2zVM4yCNwxESTStzDXtZ5985KKdaqjhfUJATwYLJsBnOfFNgqAT9R/ A==;
X-CSE-ConnectionGUID: L4wHdPAHQ6adwpvLhy2KgA==
X-CSE-MsgGUID: GodkM5mpSoSeAEOl2oFs1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11532"; a="69700870"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="69700870"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2025 03:31:53 -0700
X-CSE-ConnectionGUID: f+sTUUc7QGmkb+2UcUXW/g==
X-CSE-MsgGUID: ci+4qyJqRQi6AKpOWXF1Eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="170091121"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa010.fm.intel.com with ESMTP; 25 Aug 2025 03:31:52 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v7 1/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Date: Mon, 25 Aug 2025 12:33:31 +0200
Message-ID: <20250825103332.885420-2-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250825103332.885420-1-michal.grzelak@intel.com>
References: <20250825103332.885420-1-michal.grzelak@intel.com>
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

Refactor intel_psr_post_plane_update by using no_psr_reason
instead of boolean keep_disabled.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_psr.c      | 31 ++++++++++---------
 2 files changed, 19 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index fd9d2527889b..0f8332ce1aa0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1687,6 +1687,8 @@ struct intel_psr {
 	bool pkg_c_latency_used;
 
 	u8 active_non_psr_pipes;
+
+	const char *no_psr_reason;
 };
 
 struct intel_dp {
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index eec4f7dc2d66..4143dfc0c27c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1579,6 +1579,7 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 	if (entry_setup_frames >= 0) {
 		intel_dp->psr.entry_setup_frames = entry_setup_frames;
 	} else {
+		intel_dp->psr.no_psr_reason = "PSR setup timing not met";
 		drm_dbg_kms(display->drm,
 			    "PSR condition failed: PSR setup timing not met\n");
 		return false;
@@ -1810,6 +1811,7 @@ static void intel_psr_activate(struct intel_dp *intel_dp)
 		hsw_activate_psr1(intel_dp);
 
 	intel_dp->psr.active = true;
+	intel_dp->psr.no_psr_reason = NULL;
 }
 
 /*
@@ -2962,28 +2964,29 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
 					     crtc_state->uapi.encoder_mask) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 		struct intel_psr *psr = &intel_dp->psr;
-		bool keep_disabled = false;
 
 		mutex_lock(&psr->lock);
 
 		drm_WARN_ON(display->drm,
 			    psr->enabled && !crtc_state->active_planes);
 
-		keep_disabled |= psr->sink_not_reliable;
-		keep_disabled |= !crtc_state->active_planes;
+		if (psr->sink_not_reliable)
+			psr->no_psr_reason = "Sink not reliable";
+		if (!crtc_state->active_planes)
+			psr->no_psr_reason = "All planes inactive";
 
 		/* Display WA #1136: skl, bxt */
-		keep_disabled |= DISPLAY_VER(display) < 11 &&
-			crtc_state->wm_level_disabled;
+		if (DISPLAY_VER(display) < 11 && crtc_state->wm_level_disabled)
+			psr->no_psr_reason = "Workaround for skl, bxt";
 
-		if (!psr->enabled && !keep_disabled)
+		if (!psr->enabled && !psr->no_psr_reason)
 			intel_psr_enable_locked(intel_dp, crtc_state);
 		else if (psr->enabled && !crtc_state->wm_level_disabled)
 			/* Wa_14015648006 */
 			wm_optimization_wa(intel_dp, crtc_state);
 
 		/* Force a PSR exit when enabling CRC to avoid CRC timeouts */
-		if (crtc_state->crc_enabled && psr->enabled)
+		if (psr->enabled && crtc_state->crc_enabled)
 			intel_psr_force_update(intel_dp);
 
 		/*
@@ -3953,12 +3956,7 @@ static void intel_psr_print_mode(struct intel_dp *intel_dp,
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
@@ -3976,7 +3974,12 @@ static void intel_psr_print_mode(struct intel_dp *intel_dp,
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

