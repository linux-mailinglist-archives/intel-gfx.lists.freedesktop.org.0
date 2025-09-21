Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1AA5B8D50D
	for <lists+intel-gfx@lfdr.de>; Sun, 21 Sep 2025 06:49:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F79210E342;
	Sun, 21 Sep 2025 04:49:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GdKTSU32";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C77710E343;
 Sun, 21 Sep 2025 04:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758430152; x=1789966152;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p/I5cAMk1bAzevpz3P/N68/5VhEn73MeP7pqk5+5Z8U=;
 b=GdKTSU321LNxXrO6F39+lhcwHVuRgNr3t/dwMoSA8gOgo9A0tmRk+mzt
 hFbKgj95aaO8UsGLqQ6FKhGwGTd7ByZzOcOl9fm7ir9Ku3YvW0YUckfek
 MqAwZKbyDqLuNtEjGqzXADnqhBM0NqxGUjdtj43iu20qi/AW1md5ZeOrR
 hgAJ2bhVI6ktrbW7O3Hm4/Vy3KS/nCBBtBFwYXk0BUMfDdl8V20Cc4VcI
 aB60DzFP/XSE6y+ueJoEKuoScxwDB2hAkdmvo6zoZbDCnY/mXLVcXhEUJ
 /iblNjDhKCL+63KPemSpS+XGfYULbVlp+yCaItIgHdNFPPS4BIixYtSfX Q==;
X-CSE-ConnectionGUID: ILYvpGs6RRif4uAhFCwlsg==
X-CSE-MsgGUID: nHcQMOH2Sfe8DQlhp5aqmw==
X-IronPort-AV: E=McAfee;i="6800,10657,11559"; a="72154744"
X-IronPort-AV: E=Sophos;i="6.18,282,1751266800"; d="scan'208";a="72154744"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2025 21:49:12 -0700
X-CSE-ConnectionGUID: CXMa6cj8Q5mleprInokLEw==
X-CSE-MsgGUID: j9ggQ2+5SBOuVcuHjGuCQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,282,1751266800"; d="scan'208";a="176097731"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2025 21:49:09 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 7/9] drm/i915/dsb:
 s/intel_dsb_wait_vblank_delay/intel_dsb_wait_for_scl_lines
Date: Sun, 21 Sep 2025 10:05:33 +0530
Message-ID: <20250921043535.2012978-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
References: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

The helper intel_dsb_wait_vblank_delay() is used in DSB to wait for SCL
lines after the send push operation. Rename it to
intel_dsb_wait_for_scl_lines() to align with the semantics.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dsb.c     | 11 +++++------
 drivers/gpu/drm/i915/display/intel_dsb.h     |  4 ++--
 4 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 671db6926e4c..4defd2425837 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -2013,7 +2013,7 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
 
 	if (crtc_state->use_dsb && intel_color_uses_chained_dsb(crtc_state)) {
 		intel_vrr_send_push(crtc_state->dsb_color, crtc_state);
-		intel_dsb_wait_vblank_delay(state, crtc_state->dsb_color);
+		intel_dsb_wait_for_scl_lines(state, crtc_state->dsb_color);
 		intel_vrr_check_push_sent(crtc_state->dsb_color, crtc_state);
 		intel_dsb_interrupt(crtc_state->dsb_color);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 455bbebb50a5..bfeec3706f35 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7268,7 +7268,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
 
 		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
-		intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
+		intel_dsb_wait_for_scl_lines(state, new_crtc_state->dsb_commit);
 		intel_vrr_check_push_sent(new_crtc_state->dsb_commit,
 					  new_crtc_state);
 		intel_dsb_interrupt(new_crtc_state->dsb_commit);
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index dfe928aefdcd..400dcc87a992 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -115,8 +115,8 @@ static bool pre_commit_is_vrr_active(struct intel_atomic_state *state,
 	return old_crtc_state->vrr.enable && !intel_crtc_vrr_disabling(state, crtc);
 }
 
-static int dsb_vblank_delay(struct intel_atomic_state *state,
-			    struct intel_crtc *crtc)
+static int dsb_scl_delay(struct intel_atomic_state *state,
+			 struct intel_crtc *crtc)
 {
 	const struct intel_crtc_state *crtc_state =
 		intel_pre_commit_crtc_state(state, crtc);
@@ -815,15 +815,14 @@ void intel_dsb_chain(struct intel_atomic_state *state,
 			 wait_for_vblank ? DSB_WAIT_FOR_VBLANK : 0);
 }
 
-void intel_dsb_wait_vblank_delay(struct intel_atomic_state *state,
-				 struct intel_dsb *dsb)
+void intel_dsb_wait_for_scl_lines(struct intel_atomic_state *state,
+				  struct intel_dsb *dsb)
 {
 	struct intel_crtc *crtc = dsb->crtc;
 	const struct intel_crtc_state *crtc_state =
 		intel_pre_commit_crtc_state(state, crtc);
 	int usecs = intel_scanlines_to_usecs(&crtc_state->hw.adjusted_mode,
-					     dsb_vblank_delay(state, crtc));
-
+					     dsb_scl_delay(state, crtc));
 	intel_dsb_wait_usec(dsb, usecs);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index c8f4499916eb..1cb5ba1a0534 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -48,8 +48,8 @@ void intel_dsb_nonpost_end(struct intel_dsb *dsb);
 void intel_dsb_interrupt(struct intel_dsb *dsb);
 void intel_dsb_wait_usec(struct intel_dsb *dsb, int count);
 void intel_dsb_wait_vblanks(struct intel_dsb *dsb, int count);
-void intel_dsb_wait_vblank_delay(struct intel_atomic_state *state,
-				 struct intel_dsb *dsb);
+void intel_dsb_wait_for_scl_lines(struct intel_atomic_state *state,
+				  struct intel_dsb *dsb);
 void intel_dsb_wait_scanline_in(struct intel_atomic_state *state,
 				struct intel_dsb *dsb,
 				int lower, int upper);
-- 
2.45.2

