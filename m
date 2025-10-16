Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD548BE1A56
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 08:07:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3892410E2D4;
	Thu, 16 Oct 2025 06:07:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UHe/3PJ8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4CF310E2D4;
 Thu, 16 Oct 2025 06:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760594859; x=1792130859;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v23A2M7WxUYW491ub2mcxMhRM+Lbpu89qYGa6qQVtso=;
 b=UHe/3PJ8RcEVhGsuAEMOnvBzTTSGAzNjozsA3BTi5WBhVLXgfE9kN2qx
 jdB2jOHJr54HRcqbk7q8z32i6Xh6icB1SbwmnmLJrZUrPlAK1YWTUYV6g
 IvDx7OreM5K1xXy4FReM4g6QD2HoGmK49Qz6iklVR9Nk7ANQCQmt3Br3X
 suqjObnPtXrcSXLNJsfoI19kmwnErJ2a7ClB9cppG/NBxo+5l39nBlF7m
 6NikdFk9PwwiBRERYnj+zuaRv+P2VDtwNkSP4XuHSjEdyggUpLcQ6IZpM
 EjDm677bDPlgMyGAeoScteY9rTvllEDh3BLYdKD47b3YvqiajcBF7jolu g==;
X-CSE-ConnectionGUID: kBlUTa7nR3OdZ7AM7qJMfA==
X-CSE-MsgGUID: IzFgL/uDS+iPp6mG2mGpAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="74120439"
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="74120439"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 23:07:39 -0700
X-CSE-ConnectionGUID: enUCiJoUQCO3yioe9pJcTQ==
X-CSE-MsgGUID: qdJt8EQESSeKdV8+Hxx6Qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="187650855"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 23:07:36 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 08/10] drm/i915/psr: Check if final vblank is sufficient for
 PSR features
Date: Thu, 16 Oct 2025 11:24:12 +0530
Message-ID: <20251016055415.2101347-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251016055415.2101347-1-ankit.k.nautiyal@intel.com>
References: <20251016055415.2101347-1-ankit.k.nautiyal@intel.com>
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
v5: Remove early return and simplify the checking for wakelines. (Jouni)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Animesh Manna <animesh.manna@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 71 +++++++++++++++++++++---
 1 file changed, 63 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 383e6dc1ed63..703e5f6af04c 100644
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
@@ -4351,6 +4367,45 @@ void intel_psr_compute_config_late(struct intel_dp *intel_dp,
 				   struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
+	int vblank = intel_crtc_vblank_length(crtc_state);
+	int wake_lines;
+
+	if (intel_psr_needs_alpm_aux_less(intel_dp, crtc_state))
+		wake_lines = crtc_state->alpm_state.aux_less_wake_lines;
+	else if (intel_psr_needs_alpm(intel_dp, crtc_state))
+		wake_lines = DISPLAY_VER(display) < 20 ?
+			     psr2_block_count_lines(crtc_state->alpm_state.io_wake_lines,
+						    crtc_state->alpm_state.fast_wake_lines) :
+			     crtc_state->alpm_state.io_wake_lines;
+	else
+		wake_lines = 0;
+
+	/*
+	 * Disable the PSR features if wake lines exceed the available vblank.
+	 * Though SCL is computed based on these PSR features, it is not reset
+	 * even if the PSR features are disabled to avoid changing vblank start
+	 * at this stage.
+	 */
+	if (wake_lines && !_wake_lines_fit_into_vblank(crtc_state, vblank, wake_lines)) {
+		drm_dbg_kms(display->drm,
+			    "Adjusting PSR/PR mode: vblank too short for wake lines = %d\n",
+			    wake_lines);
+
+		if (crtc_state->has_panel_replay) {
+			crtc_state->has_panel_replay = false;
+			/*
+			 * #TODO : Add fall back to PSR/PSR2
+			 * Since panel replay cannot be supported, we can fall back to PSR/PSR2.
+			 * This will require calling compute_config for psr and psr2 with check for
+			 * actual guardband instead of vblank_length.
+			 */
+			crtc_state->has_psr = false;
+		}
+
+		crtc_state->has_sel_update = false;
+		crtc_state->enable_psr2_su_region_et = false;
+		crtc_state->enable_psr2_sel_fetch = false;
+	}
 
 	/* Wa_18037818876 */
 	if (intel_psr_needs_wa_18037818876(intel_dp, crtc_state)) {
-- 
2.45.2

