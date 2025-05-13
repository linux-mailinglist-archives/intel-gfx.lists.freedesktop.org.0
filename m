Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B79AB4B3C
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 07:48:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29AFA10E2DF;
	Tue, 13 May 2025 05:48:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eRoJlRi0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8745C10E2DF;
 Tue, 13 May 2025 05:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747115319; x=1778651319;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=620utEFbHCIuTQ+EHZVxF1yB27uZSdNFsTvFBsYZGeI=;
 b=eRoJlRi0B2e93rDfPTq/Zj/aWk/c9LUviW3LB78HXsTmXRJB9vyLi5Bn
 4GvGE4h/JaThzwdqyzCJTRyCPGWAEB3Nen2FOFLdsAHWRuJ2GaDB99Gep
 pzAJpKMm4hC5AKv6hapNVbUTXE7OGukVGSS8+d08dvRtlr5N1cOUkvNwz
 02SCt2aTF30f6XlUilkQlhfSx/+w2IgkIRRVCGqP6nBJKu/G0lssN8t4H
 8ooSHw+gdyIlwK39V8tIjbTnh9lIO4yWWOq6yBvIV5wsMfeWIh0zGfclL
 eily4OOOI2LVd47BuJ4Vnf5zZgBC3xopIEUuhZdGjHOhWAhDwDyFXXM9h Q==;
X-CSE-ConnectionGUID: 2EThBkkCSzmBDZRhbiFdIA==
X-CSE-MsgGUID: aROtDP6ESh+5Cm0Uspn7bA==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="60343607"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="60343607"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 22:48:38 -0700
X-CSE-ConnectionGUID: Te9DPiRnTMaH6QEMh6UnRQ==
X-CSE-MsgGUID: DZgkZzXZRPqxzWJsgtjUJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="138538600"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.123])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 22:48:35 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, suraj.kandpal@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 2/2] drm/i915/alpm: Stop writing ALPM registers when PSR is
 enabled
Date: Tue, 13 May 2025 08:48:14 +0300
Message-ID: <20250513054814.3702977-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250513054814.3702977-1-jouni.hogander@intel.com>
References: <20250513054814.3702977-1-jouni.hogander@intel.com>
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

Currently we are seeing these on PTL:

xe 0000:00:02.0: [drm] *ERROR* Timeout waiting for DDI BUF A to get active

These seem to be caused by writing ALPM registers while Panel Replay is
enabled.

Fix this by writing ALPM registers only when Panel Replay is about to be
enabled.

v4: improve comment on intel_psr_panel_replay_enable_sink call
v3: enable/disable ALPM from PSR code

Fixes: 172757acd6f6 ("drm/i915/lobf: Add lobf enablement in post plane update")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c |  4 ++--
 drivers/gpu/drm/i915/display/intel_psr.c  | 13 ++++++++++---
 2 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index da70a98a1292..c176bdbc19a3 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -453,8 +453,8 @@ void intel_alpm_post_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_encoder *encoder;
 
-	if ((!crtc_state->has_lobf ||
-	     crtc_state->has_lobf == old_crtc_state->has_lobf) && !crtc_state->has_psr)
+	if (crtc_state->has_psr || !crtc_state->has_lobf ||
+	    crtc_state->has_lobf == old_crtc_state->has_lobf)
 		return;
 
 	for_each_intel_encoder_mask(display->drm, encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ccd66bbc72f7..430ad4ef7146 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -800,6 +800,8 @@ static void _psr_enable_sink(struct intel_dp *intel_dp,
 static void intel_psr_enable_sink(struct intel_dp *intel_dp,
 				  const struct intel_crtc_state *crtc_state)
 {
+	intel_alpm_enable_sink(intel_dp, crtc_state);
+
 	crtc_state->has_panel_replay ?
 		_panel_replay_enable_sink(intel_dp, crtc_state) :
 		_psr_enable_sink(intel_dp, crtc_state);
@@ -1962,6 +1964,8 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 	     IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0)) &&
 	    !intel_dp->psr.panel_replay_enabled)
 		intel_dmc_block_pkgc(display, intel_dp->psr.pipe, true);
+
+	intel_alpm_configure(intel_dp, crtc_state);
 }
 
 static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
@@ -2029,8 +2033,9 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 			    intel_dp->psr.sel_update_enabled ? "2" : "1");
 
 	/*
-	 * Enabling here only for PSR. Panel Replay enable bit is already
-	 * written at this point. See
+	 * Enabling sink PSR/Panel Replay here only for PSR. Panel Replay enable
+	 * bit is already written at this point. Sink ALPM is enabled here for
+	 * PSR and Panel Replay. See
 	 * intel_psr_panel_replay_enable_sink. Modifiers/options:
 	 *  - Selective Update
 	 *  - Region Early Transport
@@ -2172,6 +2177,9 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 	if (intel_dp_is_edp(intel_dp))
 		intel_snps_phy_update_psr_power_state(&dp_to_dig_port(intel_dp)->base, false);
 
+	if (intel_dp->psr.panel_replay_enabled && intel_dp_is_edp(intel_dp))
+		intel_alpm_disable(intel_dp);
+
 	/* Disable PSR on Sink */
 	if (!intel_dp->psr.panel_replay_enabled) {
 		drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_EN_CFG, 0);
@@ -3498,7 +3506,6 @@ static void psr_alpm_check(struct intel_dp *intel_dp)
 	if (intel_alpm_get_error(intel_dp)) {
 		intel_psr_disable_locked(intel_dp);
 		psr->sink_not_reliable = true;
-		intel_alpm_disable(intel_dp);
 	}
 }
 
-- 
2.43.0

