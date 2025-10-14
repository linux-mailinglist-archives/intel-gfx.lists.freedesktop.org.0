Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C87BD7407
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Oct 2025 06:29:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E19210E536;
	Tue, 14 Oct 2025 04:29:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nIuebHPY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A1EE10E1C9;
 Tue, 14 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760416193; x=1791952193;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P7qgCHbKo25byvQGqWqg1ls1bcQ2UdiSAYZ1oXtsx30=;
 b=nIuebHPY/WedxtqSLKqvdfX4VCFxCUcpjy1jKxzU7Hyeov08sLil2Ov3
 Dqq1qOlfYEVMJZa4VssAeAFO+mGrnwiP95RHfD9rDYA4oZ2N7oJd09yHF
 B7w1sbCdu1DlHcIT9v3ojnumaNN2WQ1PbJr9S7yIb1uOZ8pqq77u2pUzb
 kAqzPN9u18YqsyCBaIcbnf8FBgYXRpmuUgB4TXAsDd0tmmFnu9xznP4xp
 tpCETkBjLmoiLwlvFyoHPneJ71MiWM/oDZa5/Y4kpc5HqTKsh60mlS+PG
 Uvk1KwVA2ygc1kUSlItYIDPPBz2bQ7zvRlE6xzgF515PakLyAC03DE/Za g==;
X-CSE-ConnectionGUID: urNKeOCFTwGVI8GcD2K0Uw==
X-CSE-MsgGUID: /yQs+434RN6zY/khjFOXug==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="88029791"
X-IronPort-AV: E=Sophos;i="6.19,227,1754982000"; d="scan'208";a="88029791"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 21:29:53 -0700
X-CSE-ConnectionGUID: hB3YLbexSomrJ/vsDaugnA==
X-CSE-MsgGUID: T+GjHmYRTRal2QVrBbmOPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,227,1754982000"; d="scan'208";a="212399841"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 21:29:51 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 6/8] drm/i915/display: Check if final vblank is sufficient for
 PSR features
Date: Tue, 14 Oct 2025 09:46:26 +0530
Message-ID: <20251014041628.1291117-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251014041628.1291117-1-ankit.k.nautiyal@intel.com>
References: <20251014041628.1291117-1-ankit.k.nautiyal@intel.com>
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

Introduce intel_dp_compute_config_late() to handle late-stage
configuration checks for DP/eDP features. For now, it validates whether the
final vblank (with extra vblank delay) or guardband is sufficient to
support wake line latencies required by Panel Replay and PSR2 selective
update.

Check if vblank is sufficient for PSR features, and disable them if their
wake requirements cannot be accomodated.

v2: Add comments clarifying wake line checks and rationale for not
    resetting SCL. (Jouni)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Animesh Manna <animesh.manna@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c |  3 ++
 drivers/gpu/drm/i915/display/intel_dp.c  |  9 ++++
 drivers/gpu/drm/i915/display/intel_dp.h  |  3 ++
 drivers/gpu/drm/i915/display/intel_psr.c | 65 +++++++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_psr.h |  2 +
 5 files changed, 74 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index c09aa759f4d4..94c593bbedf4 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4560,6 +4560,9 @@ static int intel_ddi_compute_config_late(struct intel_encoder *encoder,
 	struct drm_connector *connector = conn_state->connector;
 	u8 port_sync_transcoders = 0;
 
+	if (intel_crtc_has_dp_encoder(crtc_state))
+		intel_dp_compute_config_late(encoder, crtc_state, conn_state);
+
 	drm_dbg_kms(display->drm, "[ENCODER:%d:%s] [CRTC:%d:%s]\n",
 		    encoder->base.base.id, encoder->base.name,
 		    crtc_state->uapi.crtc->base.id, crtc_state->uapi.crtc->name);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a723e846321f..e481ff4c4959 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6979,3 +6979,12 @@ void intel_dp_mst_resume(struct intel_display *display)
 		}
 	}
 }
+
+void intel_dp_compute_config_late(struct intel_encoder *encoder,
+				  struct intel_crtc_state *crtc_state,
+				  struct drm_connector_state *conn_state)
+{
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+	intel_psr_compute_config_late(intel_dp, crtc_state);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index b379443e0211..0d9573ca44cb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -218,5 +218,8 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
 int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector);
 void intel_dp_dpcd_set_probe(struct intel_dp *intel_dp, bool force_on_external);
 bool intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state);
+void intel_dp_compute_config_late(struct intel_encoder *encoder,
+				  struct intel_crtc_state *crtc_state,
+				  struct drm_connector_state *conn_state);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 28efa4410c2a..c4a364a5677d 100644
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
@@ -4346,3 +4362,36 @@ bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
 {
 	return intel_dp_is_edp(intel_dp) && crtc_state->has_panel_replay;
 }
+
+void intel_psr_compute_config_late(struct intel_dp *intel_dp,
+				   struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	int vblank = intel_crtc_vblank_length(crtc_state);
+	int aux_less_wake_lines = crtc_state->alpm_state.aux_less_wake_lines;
+	int wake_lines = DISPLAY_VER(display) < 20 ?
+			 psr2_block_count_lines(crtc_state->alpm_state.io_wake_lines,
+						crtc_state->alpm_state.fast_wake_lines) :
+			 crtc_state->alpm_state.io_wake_lines;
+	/*
+	 * Disable the PSR features if wake lines exceed the available vblank.
+	 * Though SCL is computed based on these PSR features, it is not reset
+	 * even if the PSR features are disabled to avoid changing vblank start
+	 * at this stage.
+	 */
+	if (intel_psr_needs_alpm_aux_less(intel_dp, crtc_state) &&
+	    !_wake_lines_fit_into_vblank(crtc_state, vblank, aux_less_wake_lines)) {
+		drm_dbg_kms(display->drm,
+			    "Disabling Panel replay: vblank too short for wake lines = %d\n",
+			    aux_less_wake_lines);
+		crtc_state->has_panel_replay = false;
+	}
+
+	if (crtc_state->has_sel_update &&
+	    !_wake_lines_fit_into_vblank(crtc_state, vblank, wake_lines)) {
+		drm_dbg_kms(display->drm,
+			    "Disabling Selective Update: vblank too short for wake lines = %d\n",
+			    wake_lines);
+		crtc_state->has_sel_update = false;
+	}
+}
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 9147996d6c9e..b17ce312dc37 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -83,5 +83,7 @@ void intel_psr_debugfs_register(struct intel_display *display);
 bool intel_psr_needs_alpm(struct intel_dp *intel_dp, const struct intel_crtc_state *crtc_state);
 bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
 				   const struct intel_crtc_state *crtc_state);
+void intel_psr_compute_config_late(struct intel_dp *intel_dp,
+				   struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_PSR_H__ */
-- 
2.45.2

