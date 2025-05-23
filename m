Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B30EAC1D2B
	for <lists+intel-gfx@lfdr.de>; Fri, 23 May 2025 08:39:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E59810E76A;
	Fri, 23 May 2025 06:39:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JNJXvmp1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1388C10E766;
 Fri, 23 May 2025 06:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747982357; x=1779518357;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Sum2Gv86b0S1LWa+hVhIkOW48sgbMpZLi1ELeUNgWrg=;
 b=JNJXvmp1/R15jLY46wH3x9tYXEqYBT3sEPjv1P1AS1Mv0T1xxyvSj4jK
 QUXEonF8cx8RRyff/REba8BtLUsk1os759AC9JGToRFouWLl1g6pY9xk1
 PshA/O75FK6SfKD5ecagjVOZfx8NXwonUoowjy5JsuKkwHS1SWOeyQvDK
 wK1fpIBS8/OHl75loPokos+1/1SLvDT6RUqnICAU1EN7LCj8O36g7lVnw
 XxRIBneibRfVVvZwhqImiWYwdv9ScYpGNASoGtexhCgkjlymmXF42TdZS
 OJNXOF5W1p1f8sWfBpaG4lsQBZ/BjQoTudMvcKRcxmkjnk8o0meAVwbql Q==;
X-CSE-ConnectionGUID: LUJyt2XUQJeou42UjyrWdg==
X-CSE-MsgGUID: Q/5VCmLPTteAZCPpLIiv3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="67592268"
X-IronPort-AV: E=Sophos;i="6.15,308,1739865600"; d="scan'208";a="67592268"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 23:39:17 -0700
X-CSE-ConnectionGUID: b6TmNH+LTmyCYM36eGr6bQ==
X-CSE-MsgGUID: ppmBviOvSciogJs1BAmJKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,308,1739865600"; d="scan'208";a="171985330"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa001.fm.intel.com with ESMTP; 22 May 2025 23:39:15 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 animesh.manna@intel.com, chaitanya.kumar.borah@intel.com
Subject: [v8 07/11] drm/i915: s/dsb_color_vblank/dsb_color
Date: Fri, 23 May 2025 11:50:37 +0530
Message-Id: <20250523062041.166468-8-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250523062041.166468-1-chaitanya.kumar.borah@intel.com>
References: <20250523062041.166468-1-chaitanya.kumar.borah@intel.com>
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

With double buffer gamma registers in the mix, we need not wait for
vblank to execute gamma writes through dsb. Before we implement
that s/dsb_color_vblank/dsb_color.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c   |  4 +-
 drivers/gpu/drm/i915/display/intel_color.c    | 38 +++++++++----------
 drivers/gpu/drm/i915/display/intel_display.c  | 10 ++---
 .../drm/i915/display/intel_display_types.h    |  2 +-
 4 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index e83feca5c9c9..f85edb374c97 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -274,7 +274,7 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
 	crtc_state->do_async_flip = false;
 	crtc_state->fb_bits = 0;
 	crtc_state->update_planes = 0;
-	crtc_state->dsb_color_vblank = NULL;
+	crtc_state->dsb_color = NULL;
 	crtc_state->dsb_commit = NULL;
 	crtc_state->use_dsb = false;
 
@@ -310,7 +310,7 @@ intel_crtc_destroy_state(struct drm_crtc *crtc,
 {
 	struct intel_crtc_state *crtc_state = to_intel_crtc_state(state);
 
-	drm_WARN_ON(crtc->dev, crtc_state->dsb_color_vblank);
+	drm_WARN_ON(crtc->dev, crtc_state->dsb_color);
 	drm_WARN_ON(crtc->dev, crtc_state->dsb_commit);
 
 	__drm_atomic_helper_crtc_destroy_state(&crtc_state->uapi);
diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 98dddf72c0eb..bb2da3a53e9c 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1339,8 +1339,8 @@ static void ilk_lut_write(const struct intel_crtc_state *crtc_state,
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
-	if (crtc_state->dsb_color_vblank)
-		intel_dsb_reg_write(crtc_state->dsb_color_vblank, reg, val);
+	if (crtc_state->dsb_color)
+		intel_dsb_reg_write(crtc_state->dsb_color, reg, val);
 	else
 		intel_de_write_fw(display, reg, val);
 }
@@ -1350,8 +1350,8 @@ static void ilk_lut_write_indexed(const struct intel_crtc_state *crtc_state,
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
-	if (crtc_state->dsb_color_vblank)
-		intel_dsb_reg_write_indexed(crtc_state->dsb_color_vblank, reg, val);
+	if (crtc_state->dsb_color)
+		intel_dsb_reg_write_indexed(crtc_state->dsb_color, reg, val);
 	else
 		intel_de_write_fw(display, reg, val);
 }
@@ -1389,7 +1389,7 @@ static void ilk_load_lut_8(const struct intel_crtc_state *crtc_state,
 	for (i = 0; i < 256; i++) {
 		ilk_lut_write(crtc_state, LGC_PALETTE(pipe, i),
 			      i9xx_lut_8(&lut[i]));
-		if (crtc_state->dsb_color_vblank)
+		if (crtc_state->dsb_color)
 			ilk_lut_write(crtc_state, LGC_PALETTE(pipe, i),
 				      i9xx_lut_8(&lut[i]));
 	}
@@ -1917,7 +1917,7 @@ void intel_color_load_luts(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
-	if (crtc_state->dsb_color_vblank)
+	if (crtc_state->dsb_color)
 		return;
 
 	display->funcs.color->load_luts(crtc_state);
@@ -1982,39 +1982,39 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
 	if (!crtc_state->pre_csc_lut && !crtc_state->post_csc_lut)
 		return;
 
-	crtc_state->dsb_color_vblank = intel_dsb_prepare(state, crtc, INTEL_DSB_1, 1024);
-	if (!crtc_state->dsb_color_vblank)
+	crtc_state->dsb_color = intel_dsb_prepare(state, crtc, INTEL_DSB_1, 1024);
+	if (!crtc_state->dsb_color)
 		return;
 
 	display->funcs.color->load_luts(crtc_state);
 
 	if (crtc_state->use_dsb) {
-		intel_vrr_send_push(crtc_state->dsb_color_vblank, crtc_state);
-		intel_dsb_wait_vblank_delay(state, crtc_state->dsb_color_vblank);
-		intel_vrr_check_push_sent(crtc_state->dsb_color_vblank, crtc_state);
-		intel_dsb_interrupt(crtc_state->dsb_color_vblank);
+		intel_vrr_send_push(crtc_state->dsb_color, crtc_state);
+		intel_dsb_wait_vblank_delay(state, crtc_state->dsb_color);
+		intel_vrr_check_push_sent(crtc_state->dsb_color, crtc_state);
+		intel_dsb_interrupt(crtc_state->dsb_color);
 	}
 
-	intel_dsb_finish(crtc_state->dsb_color_vblank);
+	intel_dsb_finish(crtc_state->dsb_color);
 }
 
 void intel_color_cleanup_commit(struct intel_crtc_state *crtc_state)
 {
-	if (crtc_state->dsb_color_vblank) {
-		intel_dsb_cleanup(crtc_state->dsb_color_vblank);
-		crtc_state->dsb_color_vblank = NULL;
+	if (crtc_state->dsb_color) {
+		intel_dsb_cleanup(crtc_state->dsb_color);
+		crtc_state->dsb_color = NULL;
 	}
 }
 
 void intel_color_wait_commit(const struct intel_crtc_state *crtc_state)
 {
-	if (crtc_state->dsb_color_vblank)
-		intel_dsb_wait(crtc_state->dsb_color_vblank);
+	if (crtc_state->dsb_color)
+		intel_dsb_wait(crtc_state->dsb_color);
 }
 
 bool intel_color_uses_dsb(const struct intel_crtc_state *crtc_state)
 {
-	return crtc_state->dsb_color_vblank;
+	return crtc_state->dsb_color;
 }
 
 static bool intel_can_preload_luts(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c894e4d0d488..f261ceca5a3a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7192,7 +7192,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	if (!new_crtc_state->use_dsb && !new_crtc_state->dsb_color_vblank)
+	if (!new_crtc_state->use_dsb && !new_crtc_state->dsb_color)
 		return;
 
 	/*
@@ -7239,7 +7239,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 			skl_detach_scalers(new_crtc_state->dsb_commit,
 					   new_crtc_state);
 
-		if (!new_crtc_state->dsb_color_vblank) {
+		if (!new_crtc_state->dsb_color) {
 			intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
 
 			intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
@@ -7249,9 +7249,9 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		}
 	}
 
-	if (new_crtc_state->dsb_color_vblank)
+	if (new_crtc_state->dsb_color)
 		intel_dsb_chain(state, new_crtc_state->dsb_commit,
-				new_crtc_state->dsb_color_vblank, true);
+				new_crtc_state->dsb_color, true);
 
 	intel_dsb_finish(new_crtc_state->dsb_commit);
 }
@@ -7440,7 +7440,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		 *
 		 * FIXME get rid of this funny new->old swapping
 		 */
-		old_crtc_state->dsb_color_vblank = fetch_and_zero(&new_crtc_state->dsb_color_vblank);
+		old_crtc_state->dsb_color = fetch_and_zero(&new_crtc_state->dsb_color);
 		old_crtc_state->dsb_commit = fetch_and_zero(&new_crtc_state->dsb_commit);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index b8836d29a721..fc1eda590da8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1297,7 +1297,7 @@ struct intel_crtc_state {
 	enum transcoder mst_master_transcoder;
 
 	/* For DSB based pipe updates */
-	struct intel_dsb *dsb_color_vblank, *dsb_commit;
+	struct intel_dsb *dsb_color, *dsb_commit;
 	bool use_dsb;
 
 	u32 psr2_man_track_ctl;
-- 
2.25.1

