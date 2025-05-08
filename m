Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3F7AAFCAB
	for <lists+intel-gfx@lfdr.de>; Thu,  8 May 2025 16:17:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB5F010E924;
	Thu,  8 May 2025 14:17:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GAHcierv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AFC810E91A;
 Thu,  8 May 2025 14:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746713834; x=1778249834;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xIx5K04INxTk6qxYzvOn4blMGsWJgtdux1DyYU+vSPM=;
 b=GAHciervkf8lN0qU5c39nvuNJ8pYBCC8gviR7sbPJa8xgSjjtZ1WkTS8
 rR1+QDRtDcpccoEKcFoGID4NUTR2uZrVBnHKyyXX1yt4uKrTurqgJqrbG
 glX86MRgAItYp3PdcaupEMDwTSKui/U06T8m/9RwsaBQZurIghHiZ556r
 5puU/+nr5njczubYJpGspRVvsuOAxljTDtIEFZ790OWIkJrfWxdR59K4Z
 sxwQIl0vs07ORlyeZcO9W1apXReRz77nJWGfV2SGtCrY6vPdWw5FsC4M1
 ZML3nlffXym/DBBCiGE0816PWqz3TgUDZglNV7E8zWH5manzFU+1+cUyU A==;
X-CSE-ConnectionGUID: MoNO+R1RSgSlUj5bx65L5Q==
X-CSE-MsgGUID: bIp78dG9TdaubEwVuvbzyw==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="48411140"
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="48411140"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 07:17:14 -0700
X-CSE-ConnectionGUID: p5ain0YISnagSb7mfQlfIA==
X-CSE-MsgGUID: zBeRLpy6QpmBguJ5u6Rk8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="159609629"
Received: from johunt-mobl9.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.124.222.197])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 07:17:13 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 2/2] drm/i915/alpm: Stop writing ALPM registers when PSR is
 enabled
Date: Thu,  8 May 2025 17:17:01 +0300
Message-ID: <20250508141701.3878486-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250508141701.3878486-1-jouni.hogander@intel.com>
References: <20250508141701.3878486-1-jouni.hogander@intel.com>
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

v3: enable/disable ALPM from PSR code

Fixes: 172757acd6f6 ("drm/i915/lobf: Add lobf enablement in post plane update")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_psr.c  | 8 +++++++-
 2 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 9442483058d2..bc93e8026703 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -460,8 +460,8 @@ void intel_alpm_post_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_encoder *encoder;
 
-	if ((!crtc_state->has_lobf ||
-	     crtc_state->has_lobf == old_crtc_state->has_lobf) && !crtc_state->has_psr)
+	if (crtc_state->has_psr || !crtc_state->has_lobf ||
+	    crtc_state->has_lobf == old_crtc_state->has_lobf)
 		return;
 
 	for_each_intel_encoder_mask(display->drm, encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ccd66bbc72f7..0dbe59d06187 100644
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
@@ -2172,6 +2176,9 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 	if (intel_dp_is_edp(intel_dp))
 		intel_snps_phy_update_psr_power_state(&dp_to_dig_port(intel_dp)->base, false);
 
+	if (intel_dp->psr.panel_replay_enabled && intel_dp_is_edp(intel_dp))
+		intel_alpm_disable(intel_dp);
+
 	/* Disable PSR on Sink */
 	if (!intel_dp->psr.panel_replay_enabled) {
 		drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_EN_CFG, 0);
@@ -3498,7 +3505,6 @@ static void psr_alpm_check(struct intel_dp *intel_dp)
 	if (intel_alpm_get_error(intel_dp)) {
 		intel_psr_disable_locked(intel_dp);
 		psr->sink_not_reliable = true;
-		intel_alpm_disable(intel_dp);
 	}
 }
 
-- 
2.43.0

