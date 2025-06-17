Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B4BADD9B2
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 19:08:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2053F10E79D;
	Tue, 17 Jun 2025 17:08:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dS9lGJzC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6490C10E788;
 Tue, 17 Jun 2025 17:08:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750180112; x=1781716112;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Xksjyx+zCKCsSKynuPieqhFTCQLoJwUlZObPw8RRxEM=;
 b=dS9lGJzCZE/YzesbVeLTRn6hs8YLnesoUEZLXftxOmrrlbFyHgalT410
 wYZYPWj2cEgfNogMuqqpdHLXpVzhUIoy7wwjly1aBxi7CMPFh1TtQRtJ9
 QHtRTsZPeVMb2z6T3KZ/xSVtf8fAe5W2/4xbsO/9mg3gKlLoc2tem74jX
 ywlGOKXV7bpckLIAZE1dj8H/AO4ykGvGy/ozD1tMktJ2HPCO996Q1AT2e
 sjmevKitFAXMd2QwMcHaLWpXMr3h71u1DBL/F4I3RcpSc63Swzl694ttA
 XlgtETiR7G4dLzPVau3xweWg9oJGfhsi6QdNjak39P+QZGSTqEuswWT96 g==;
X-CSE-ConnectionGUID: RwKzcD7DTtqOjSCpzIavZg==
X-CSE-MsgGUID: h36ajX/yTk2a+hCMXUCEZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11467"; a="62644640"
X-IronPort-AV: E=Sophos;i="6.16,243,1744095600"; d="scan'208";a="62644640"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 10:08:32 -0700
X-CSE-ConnectionGUID: UBoqRjfmTxOoaUSn572oWA==
X-CSE-MsgGUID: 7K2PB0DmSbmgE+p+DFYBtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,243,1744095600"; d="scan'208";a="154138837"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.184])
 by orviesa005.jf.intel.com with SMTP; 17 Jun 2025 10:08:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 17 Jun 2025 20:08:27 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v2 8/9] drm/i915/dmc: Pass crtc_state to intel_dmc_{enable,
 disable}_pipe()
Date: Tue, 17 Jun 2025 20:07:58 +0300
Message-ID: <20250617170759.19552-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250617170759.19552-1-ville.syrjala@linux.intel.com>
References: <20250617170759.19552-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

I'll need to examine the crtc state during intel_dmc_enable_pipe().
To that end pass the whole crtc into intel_dmc_{enable,disable}_pipe().

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c     | 16 ++++++++++++----
 drivers/gpu/drm/i915/display/intel_dmc.c         | 10 ++++++++--
 drivers/gpu/drm/i915/display/intel_dmc.h         |  5 +++--
 .../gpu/drm/i915/display/intel_modeset_setup.c   |  2 +-
 4 files changed, 24 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6ec786198f43..afe7c241f415 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1659,8 +1659,12 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 
 	if (drm_WARN_ON(display->drm, crtc->active))
 		return;
-	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state, i)
-		intel_dmc_enable_pipe(display, pipe_crtc->pipe);
+	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state, i) {
+		const struct intel_crtc_state *new_pipe_crtc_state =
+			intel_atomic_get_new_crtc_state(state, pipe_crtc);
+
+		intel_dmc_enable_pipe(new_pipe_crtc_state);
+	}
 
 	intel_encoders_pre_pll_enable(state, crtc);
 
@@ -1798,8 +1802,12 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 
 	intel_encoders_post_pll_disable(state, crtc);
 
-	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i)
-		intel_dmc_disable_pipe(display, pipe_crtc->pipe);
+	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
+		const struct intel_crtc_state *old_pipe_crtc_state =
+			intel_atomic_get_old_crtc_state(state, pipe_crtc);
+
+		intel_dmc_disable_pipe(old_pipe_crtc_state);
+	}
 }
 
 /* Prefer intel_encoder_is_combo() */
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 022e6aca3c05..f41dcb2a316a 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -698,8 +698,11 @@ static bool need_pipedmc_load_mmio(struct intel_display *display, enum pipe pipe
 	return false;
 }
 
-void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe)
+void intel_dmc_enable_pipe(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
 	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
 
 	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(display, dmc_id))
@@ -723,8 +726,11 @@ void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe)
 		intel_de_rmw(display, PIPEDMC_CONTROL(pipe), 0, PIPEDMC_ENABLE);
 }
 
-void intel_dmc_disable_pipe(struct intel_display *display, enum pipe pipe)
+void intel_dmc_disable_pipe(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
 	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
 
 	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(display, dmc_id))
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index a3792052078a..7820fa5aed3e 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -10,14 +10,15 @@
 
 enum pipe;
 struct drm_printer;
+struct intel_crtc_state;
 struct intel_display;
 struct intel_dmc_snapshot;
 
 void intel_dmc_init(struct intel_display *display);
 void intel_dmc_load_program(struct intel_display *display);
 void intel_dmc_disable_program(struct intel_display *display);
-void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe);
-void intel_dmc_disable_pipe(struct intel_display *display, enum pipe pipe);
+void intel_dmc_enable_pipe(const struct intel_crtc_state *crtc_state);
+void intel_dmc_disable_pipe(const struct intel_crtc_state *crtc_state);
 void intel_dmc_block_pkgc(struct intel_display *display, enum pipe pipe,
 			  bool block);
 void intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank(struct intel_display *display,
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 05e1b309ba2c..8415f3d703ed 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -961,7 +961,7 @@ void intel_modeset_setup_hw_state(struct intel_display *display,
 		drm_crtc_vblank_reset(&crtc->base);
 
 		if (crtc_state->hw.active) {
-			intel_dmc_enable_pipe(display, crtc->pipe);
+			intel_dmc_enable_pipe(crtc_state);
 			intel_crtc_vblank_on(crtc_state);
 		}
 	}
-- 
2.49.0

