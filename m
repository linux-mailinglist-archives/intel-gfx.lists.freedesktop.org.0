Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC24B39A9D
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 12:48:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F44710E31F;
	Thu, 28 Aug 2025 10:48:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E6jza9+r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18FD910E31F;
 Thu, 28 Aug 2025 10:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756378085; x=1787914085;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4xzF+RU8FDcxQ/KgTxAzy5Z0VUEOVG+onEgDyL/uLy0=;
 b=E6jza9+rQwT2ch4grk9Ty03ml8PQ4ehLjM+OO1WgUaKiW0dAi51atEAq
 pCSSjovzFPFhPKay0hHs9xcBR5z0dhHhfTDOnn9dHXEcfXMFHhHG8l48a
 xcFKebbXR1dxEld/xElcMomedS5xDccaOEmzINNG07ooGGQyp16+gTLnk
 9HCT2i/lf28MIR7DgQf6cyiX2jXjo9rHo3YgOPq4K+jg51Tufu4+JqmTK
 mebO9ow+fxtwyAhuH21hcHzdHky4XMautyJ4l+QRTcuXOjH5G0lADPsmc
 WITVBFac/8qnbFtJ8/WwxcQkcVoMFo4T8s6EsH3zo85/ZFalIjvtI4Myg Q==;
X-CSE-ConnectionGUID: krq/5vH2QmCa8sEKa3cHnQ==
X-CSE-MsgGUID: PTShp/tLSk6nIcH/eCNoDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="57841369"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="57841369"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 03:48:05 -0700
X-CSE-ConnectionGUID: TBf/BnCVRlWDGxHw/m5vvA==
X-CSE-MsgGUID: o3t8x0uZSuyZUJNT19tIbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="193745003"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa002.fm.intel.com with ESMTP; 28 Aug 2025 03:48:03 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v8 1/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Date: Thu, 28 Aug 2025 12:49:51 +0200
Message-ID: <20250828104951.1279862-2-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250828104951.1279862-1-michal.grzelak@intel.com>
References: <20250828104951.1279862-1-michal.grzelak@intel.com>
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
Extend format of debugfs file to have reason when non-NULL.
Ensure no_psr_reason is up-to-date or NULL by resetting it
at the beginning of intel_psr_compute_config. Clean it when
PSR is activated.

Refactor intel_psr_post_plane_update to use no_psr_reason
along keep_disabled.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_psr.c      | 21 +++++++++++++++----
 2 files changed, 19 insertions(+), 4 deletions(-)

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
index 22433fe2ee14..7c7de30f13f2 100644
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
@@ -1663,6 +1664,8 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	struct intel_crtc *crtc;
 	u8 active_pipes = 0;
 
+	intel_dp->psr.no_psr_reason = NULL;
+
 	if (!psr_global_enabled(intel_dp)) {
 		drm_dbg_kms(display->drm, "PSR disabled by flag\n");
 		return;
@@ -1810,6 +1813,7 @@ static void intel_psr_activate(struct intel_dp *intel_dp)
 		hsw_activate_psr1(intel_dp);
 
 	intel_dp->psr.active = true;
+	intel_dp->psr.no_psr_reason = NULL;
 }
 
 /*
@@ -2970,12 +2974,19 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
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
@@ -3978,6 +3989,8 @@ static void intel_psr_print_mode(struct intel_dp *intel_dp,
 		region_et = "";
 
 	seq_printf(m, "PSR mode: %s%s%s\n", mode, status, region_et);
+	if (psr->no_psr_reason)
+		seq_printf(m, "  %s\n", psr->no_psr_reason);
 }
 
 static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
-- 
2.45.2

