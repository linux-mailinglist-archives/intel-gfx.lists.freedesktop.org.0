Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECBB3BDD1F3
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 09:35:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F66210E730;
	Wed, 15 Oct 2025 07:35:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a3sJQAWe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C15BC10E262;
 Wed, 15 Oct 2025 07:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760513742; x=1792049742;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=q0XBN+PhpeYZJyD+Pt79UYg2oxZ4qEGxgOtqGM44w7s=;
 b=a3sJQAWe2Lf8VoOy3TLh3NJeEnhKaxL++7R69BNcLAoW6SdB0gG8BTRu
 TxbYaDo/U6KRAHSCJBIWpEBfv8rDVv05d7Gy+9XnoF7rWdFvgW5RLYoCc
 1PthHmn90xOaLxEMk+WHCGJU+pOaheilYGRj8JbMC24BZvFvZ2yOvhHGK
 iO4S9TTuU0Dok6eBrYhR4q8EEk7HLhHQpn71y5wgS+mmLkr/1rnwbs2mj
 CTvpHiNMRLMEhefFN94WIVhKcTxVZkIP6UbrRw1Tzk3urQLscc0KJcFp2
 2JFyIFwfI3pnh84ilP39TmJnIj7TEcWFijNg7t+vUFP5mRocKYdYi3RDi w==;
X-CSE-ConnectionGUID: SpVD2WAnSU+vYEhkvFPLOw==
X-CSE-MsgGUID: UmmeZSllSMubjWEt+LpPyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="62573636"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="62573636"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 00:35:42 -0700
X-CSE-ConnectionGUID: PK8wq1+RQpm6UragMqWjWA==
X-CSE-MsgGUID: 1pblss59RHidDwQdc7uN7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="182882354"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 00:35:40 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 08/10] drm/i915/psr: Check if final vblank is sufficient for
 PSR features
Date: Wed, 15 Oct 2025 12:52:15 +0530
Message-ID: <20251015072217.1710717-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251015072217.1710717-1-ankit.k.nautiyal@intel.com>
References: <20251015072217.1710717-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Currently, wake line latency checks rely on the vblank length,
which does not account for either the extra vblank delay for icl/tgl or for
the optimized guardband which will come into picture later at some point.

Validate whether the final vblank (with extra vblank delay) or guardband
is sufficient to support wake line latencies required by Panel Replay and
PSR2 selective update. Disable the PSR features if their wake requirements
cannot be accomodated.

v2: Add comments clarifying wake line checks and rationale for not
    resetting SCL. (Jouni)
v3: Reset other psr flags based on features that are dropped. (Jouni)
v4: Update commit message.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Animesh Manna <animesh.manna@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 78 +++++++++++++++++++++---
 1 file changed, 70 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 383e6dc1ed63..816ad67e33cd 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1405,6 +1405,20 @@ int _intel_psr_min_set_context_latency(const struct intel_crtc_state *crtc_state
 		return 1;
 }
 
+static bool _wake_lines_fit_into_vblank(const struct intel_crtc_state *crtc_state,
+					int vblank,
+					int wake_lines)
+{
+	if (crtc_state->req_psr2_sdp_prior_scanline)
+		vblank -= 1;
+
+	/* Vblank >= PSR2_CTL Block Count Number maximum line count */
+	if (vblank < wake_lines)
+		return false;
+
+	return true;
+}
+
 static bool wake_lines_fit_into_vblank(struct intel_dp *intel_dp,
 				       const struct intel_crtc_state *crtc_state,
 				       bool aux_less,
@@ -1428,14 +1442,16 @@ static bool wake_lines_fit_into_vblank(struct intel_dp *intel_dp,
 					       crtc_state->alpm_state.fast_wake_lines) :
 			crtc_state->alpm_state.io_wake_lines;
 
-	if (crtc_state->req_psr2_sdp_prior_scanline)
-		vblank -= 1;
-
-	/* Vblank >= PSR2_CTL Block Count Number maximum line count */
-	if (vblank < wake_lines)
-		return false;
-
-	return true;
+	/*
+	 * Guardband has not been computed yet, so we conservatively check if the
+	 * full vblank duration is sufficient to accommodate wake line requirements
+	 * for PSR features like Panel Replay and Selective Update.
+	 *
+	 * Once the actual guardband is available, a more accurate validation is
+	 * performed in intel_psr_compute_config_late(), and PSR features are
+	 * disabled if wake lines exceed the available guardband.
+	 */
+	return _wake_lines_fit_into_vblank(crtc_state, vblank, wake_lines);
 }
 
 static bool alpm_config_valid(struct intel_dp *intel_dp,
@@ -4351,6 +4367,52 @@ void intel_psr_compute_config_late(struct intel_dp *intel_dp,
 				   struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
+	int vblank = intel_crtc_vblank_length(crtc_state);
+	int aux_less_wake_lines;
+	int wake_lines;
+
+	if (!intel_psr_needs_alpm(intel_dp, crtc_state))
+		return;
+
+	aux_less_wake_lines = crtc_state->alpm_state.aux_less_wake_lines;
+	wake_lines = DISPLAY_VER(display) < 20 ?
+		     psr2_block_count_lines(crtc_state->alpm_state.io_wake_lines,
+					    crtc_state->alpm_state.fast_wake_lines) :
+		     crtc_state->alpm_state.io_wake_lines;
+
+	/*
+	 * Disable the PSR features if wake lines exceed the available vblank.
+	 * Though SCL is computed based on these PSR features, it is not reset
+	 * even if the PSR features are disabled to avoid changing vblank start
+	 * at this stage.
+	 */
+	if (!crtc_state->has_panel_replay && crtc_state->has_sel_update &&
+	    !_wake_lines_fit_into_vblank(crtc_state, vblank, wake_lines)) {
+		drm_dbg_kms(display->drm,
+			    "Disabling Selective Update: vblank too short for wake lines = %d\n",
+			    wake_lines);
+		crtc_state->has_sel_update = false;
+		crtc_state->enable_psr2_su_region_et = false;
+		crtc_state->enable_psr2_sel_fetch = false;
+	}
+
+	if (intel_psr_needs_alpm_aux_less(intel_dp, crtc_state) &&
+	    !_wake_lines_fit_into_vblank(crtc_state, vblank, aux_less_wake_lines)) {
+		drm_dbg_kms(display->drm,
+			    "Disabling Panel replay: vblank too short for wake lines = %d\n",
+			    aux_less_wake_lines);
+		crtc_state->has_panel_replay = false;
+		/*
+		 * #TODO : Add fall back to PSR/PSR2
+		 * Since panel replay cannot be supported, we can fall back to PSR/PSR2.
+		 * This will require calling compute_config for psr and psr2 with check for
+		 * actual guardband instead of vblank_length.
+		 */
+		crtc_state->has_psr = false;
+		crtc_state->has_sel_update = false;
+		crtc_state->enable_psr2_su_region_et = false;
+		crtc_state->enable_psr2_sel_fetch = false;
+	}
 
 	/* Wa_18037818876 */
 	if (intel_psr_needs_wa_18037818876(intel_dp, crtc_state)) {
-- 
2.45.2

