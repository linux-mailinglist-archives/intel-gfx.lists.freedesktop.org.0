Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D12A1B43D
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 11:57:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66E5010E94F;
	Fri, 24 Jan 2025 10:57:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QnlW721v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AFD610E8C1;
 Fri, 24 Jan 2025 10:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737716218; x=1769252218;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IFuIjeDArAMOoYlLjbfOcA5yobLVzWvUx97rnHLw/Bc=;
 b=QnlW721vlQE+OCU/Td+zCBc9Q1O7K1NXh7mfIvmqf41mNjBcaMLOJjT6
 z0m9IcAbmOvWkbP9lMedMt9f6bGxVIxbNmRA5vN4sHb0IDiaEhnBGJt9h
 Q6CUYVGiBf0sohOYqGBJYSbdo5CqRsBYEzAvfB2jZZ/ZodHU6SRxIugaZ
 DbRPMoO58JaQ1/krpwKdn/lazMQmgk5H+dWvV+BMYy42VP/hl2wkGeAcT
 PTEXcRE2ONC8Cao/7ZsuBw19sBcTIIAd85dVTBjDM4+XxSbxDp4Ymgb9p
 r6Kbj+z19VCUaPo9rZ680CdQ5hRONUMVjnnCvdlzUOB3pvvnH2i1DpbHb w==;
X-CSE-ConnectionGUID: jPHb11vlTp2CQ19goc2VTQ==
X-CSE-MsgGUID: Y/DEOIjxQw6mlW7MeqgJ6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="55660087"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="55660087"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 02:56:58 -0800
X-CSE-ConnectionGUID: n9daDK0iTvm+6PVn8D45og==
X-CSE-MsgGUID: jp6jX+OYTnax5Pvx/tW6iQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="107864261"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.138])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 02:56:56 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, ville.syrjala@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 06/13] drm/i915/psr: Allow writing PSR2_MAN_TRK_CTL using
 DSB
Date: Fri, 24 Jan 2025 12:56:17 +0200
Message-ID: <20250124105625.822459-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250124105625.822459-1-jouni.hogander@intel.com>
References: <20250124105625.822459-1-jouni.hogander@intel.com>
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

Allow writing PSR2_MAN_TRK_CTL using DSB by using intel_de_write_dsb. Do
not check intel_dp->psr.lock being held when using DSB. This assertion
doesn't make sense as in case of using DSB the actual write happens later
and we are not taking intel_dp->psr.lock mutex over dsb commit.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c     | 16 ++++++++++------
 drivers/gpu/drm/i915/display/intel_psr.h     |  4 +++-
 3 files changed, 14 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f5d2eacce119b..d5e52bb884797 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7124,7 +7124,7 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
 			intel_pipe_fastset(old_crtc_state, new_crtc_state);
 	}
 
-	intel_psr2_program_trans_man_trk_ctl(new_crtc_state);
+	intel_psr2_program_trans_man_trk_ctl(NULL, new_crtc_state);
 
 	intel_atomic_update_watermarks(state, crtc);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 85ecedd3162d8..1e99329b70a1e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2330,7 +2330,8 @@ static void intel_psr_force_update(struct intel_dp *intel_dp)
 	intel_de_write(display, CURSURFLIVE(display, intel_dp->psr.pipe), 0);
 }
 
-void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_state)
+void intel_psr2_program_trans_man_trk_ctl(struct intel_dsb *dsb,
+					  const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -2344,20 +2345,23 @@ void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_st
 					     crtc_state->uapi.encoder_mask) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
-		lockdep_assert_held(&intel_dp->psr.lock);
+		if (!dsb)
+			lockdep_assert_held(&intel_dp->psr.lock);
+
 		if (DISPLAY_VER(display) < 20 && intel_dp->psr.psr2_sel_fetch_cff_enabled)
 			return;
 		break;
 	}
 
-	intel_de_write(display, PSR2_MAN_TRK_CTL(display, cpu_transcoder),
-		       crtc_state->psr2_man_track_ctl);
+	intel_de_write_dsb(display, dsb,
+			   PSR2_MAN_TRK_CTL(display, cpu_transcoder),
+			   crtc_state->psr2_man_track_ctl);
 
 	if (!crtc_state->enable_psr2_su_region_et)
 		return;
 
-	intel_de_write(display, PIPE_SRCSZ_ERLY_TPT(crtc->pipe),
-		       crtc_state->pipe_srcsz_early_tpt);
+	intel_de_write_dsb(display, dsb, PIPE_SRCSZ_ERLY_TPT(crtc->pipe),
+			   crtc_state->pipe_srcsz_early_tpt);
 }
 
 static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 956be263c09e3..fc807817863e4 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -17,6 +17,7 @@ struct intel_crtc;
 struct intel_crtc_state;
 struct intel_display;
 struct intel_dp;
+struct intel_dsb;
 struct intel_encoder;
 struct intel_plane;
 struct intel_plane_state;
@@ -55,7 +56,8 @@ void intel_psr_wait_for_idle_locked(const struct intel_crtc_state *new_crtc_stat
 bool intel_psr_enabled(struct intel_dp *intel_dp);
 int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc);
-void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_state);
+void intel_psr2_program_trans_man_trk_ctl(struct intel_dsb *dsb,
+					  const struct intel_crtc_state *crtc_state);
 void intel_psr_pause(struct intel_dp *intel_dp);
 void intel_psr_resume(struct intel_dp *intel_dp);
 bool intel_psr_needs_block_dc_vblank(const struct intel_crtc_state *crtc_state);
-- 
2.43.0

