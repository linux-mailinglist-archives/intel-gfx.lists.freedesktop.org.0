Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F3CA1D47D
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 11:29:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75A6010E4F2;
	Mon, 27 Jan 2025 10:29:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bNKSgI8r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D91210E4F5;
 Mon, 27 Jan 2025 10:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737973757; x=1769509757;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yjPxg7OzwdqSR5+bsK79Z82HqqGLjrOaidL6lfuVMlE=;
 b=bNKSgI8rGEipvRVZVk5ZtHRzBT1fisVDN4amvxwAcBgQqLourvL292XF
 WGaACeWpeOQlYVFDMutOGtXVkT0hAIKyWk7cq/KRARVlTA5k4fpcXbyQ/
 L5qNTSlGBvDZygbNtVmFI0jatkAwZA5ctVcV9mGDDGC+LgtAVfOMwzCr8
 D6znZXDimrAUSCs43idk/Az7rNIi7n0LByfCQd5kHkGVD/QijH7CbXyFq
 hdMZHQmbYB5k70ZINwl8ivlErguAN0axwWm5mmPfJGIb3/zbWtY4Bu0uE
 vvxQeA6Kos5wdV9i4x9vY/MYk42ZLLlGCfMkIW/dKZqI6MM3sec5sJHEw w==;
X-CSE-ConnectionGUID: T1TQDOZMSwOei6mY2UMeBg==
X-CSE-MsgGUID: 9fbXiEjrRISnv6w59rTdCg==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="38529868"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="38529868"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 02:29:17 -0800
X-CSE-ConnectionGUID: 6fWskeWwSgel/cxySd0yfQ==
X-CSE-MsgGUID: dpT3uFc4SXOveN+PWMmH/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108837880"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.95])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 02:29:16 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, ville.syrjala@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 06/12] drm/i915/psr: Allow writing PSR2_MAN_TRK_CTL using
 DSB
Date: Mon, 27 Jan 2025 12:28:40 +0200
Message-ID: <20250127102846.1237560-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250127102846.1237560-1-jouni.hogander@intel.com>
References: <20250127102846.1237560-1-jouni.hogander@intel.com>
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
index 7d68d652c1bc9..aed35f203fd8d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7143,7 +7143,7 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
 			intel_pipe_fastset(old_crtc_state, new_crtc_state);
 	}
 
-	intel_psr2_program_trans_man_trk_ctl(new_crtc_state);
+	intel_psr2_program_trans_man_trk_ctl(NULL, new_crtc_state);
 
 	intel_atomic_update_watermarks(state, crtc);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index f486fccdf2310..c6712312a04d4 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2344,7 +2344,8 @@ static void intel_psr_force_update(struct intel_dp *intel_dp)
 	intel_de_write(display, CURSURFLIVE(display, intel_dp->psr.pipe), 0);
 }
 
-void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_state)
+void intel_psr2_program_trans_man_trk_ctl(struct intel_dsb *dsb,
+					  const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -2358,20 +2359,23 @@ void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_st
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
index 5f1671d02d765..e6eba6633a92b 100644
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
@@ -54,7 +55,8 @@ void intel_psr_wait_for_idle_locked(const struct intel_crtc_state *new_crtc_stat
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

