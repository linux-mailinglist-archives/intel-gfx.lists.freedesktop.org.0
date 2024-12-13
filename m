Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 255589F04DE
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 07:35:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2D2710EF1C;
	Fri, 13 Dec 2024 06:35:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Lnp0qX9r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DF9410EF17;
 Fri, 13 Dec 2024 06:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734071752; x=1765607752;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hKUIA0ZCjqwAncPX+G7JZJ2bNfRh0zPcw8pF0oAWd+g=;
 b=Lnp0qX9r8ypYPlAqLBWVOZCpdsiUOW0IzGqqVrsUe9KVmBqh/mTOVGfz
 pzVBrGgtbUpr/VFOJP31L0L3lbZfYMIvsQwX7HKjJUj6CR8/sGJtXY8Zc
 4AE7dOhiMJufEJhL6GCOI2muhD4jOSkWioLlIv0mkzCbMp/kV5SH4F3Px
 v2cK+Xh2tNXR6WQ7Fc3nucFjwBIGH2veHl2atJR2O4I+SR68U6fLAjSCD
 VOrJZoyhGDviZmMk33TnFhxP5Jah+0mAmipdtNJlZ4phnIfUx63RjYoG2
 10uqy53e4skS1hIdgrEsvt7oyJooNbB2qUGdZx052JwQ3xUI+3Aa8W55/ A==;
X-CSE-ConnectionGUID: nmkHKVYOSJ+iK4qPp3Ld6w==
X-CSE-MsgGUID: OtuPb7YmSbGiWC861ZCuaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11284"; a="33846848"
X-IronPort-AV: E=Sophos;i="6.12,230,1728975600"; d="scan'208";a="33846848"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 22:35:51 -0800
X-CSE-ConnectionGUID: Pkvgh4WhTqmCuMjMvMedCA==
X-CSE-MsgGUID: hHEnrZWRRh2c3lWvBhv4wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="96307750"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.191])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 22:35:51 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 07/10] drm/i915/psr: Allow writing PSR2_MAN_TRK_CTL using DSB
Date: Fri, 13 Dec 2024 08:35:25 +0200
Message-Id: <20241213063528.2759659-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241213063528.2759659-1-jouni.hogander@intel.com>
References: <20241213063528.2759659-1-jouni.hogander@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c     | 16 ++++++++++------
 drivers/gpu/drm/i915/display/intel_psr.h     |  4 +++-
 3 files changed, 14 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 35c8904ecf44..974c13829fe4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7111,7 +7111,7 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
 			intel_pipe_fastset(old_crtc_state, new_crtc_state);
 	}
 
-	intel_psr2_program_trans_man_trk_ctl(new_crtc_state);
+	intel_psr2_program_trans_man_trk_ctl(NULL, new_crtc_state);
 
 	intel_atomic_update_watermarks(state, crtc);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index bca5ed4f76ba..8118056030b9 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2332,7 +2332,8 @@ static void intel_psr_force_update(struct intel_dp *intel_dp)
 	intel_de_write(display, CURSURFLIVE(display, intel_dp->psr.pipe), 0);
 }
 
-void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_state)
+void intel_psr2_program_trans_man_trk_ctl(struct intel_dsb *dsb,
+					  const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -2346,20 +2347,23 @@ void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_st
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
index 956be263c09e..fc807817863e 100644
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
2.34.1

