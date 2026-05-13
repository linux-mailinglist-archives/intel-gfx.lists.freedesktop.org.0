Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UDN2GksvBGo/FAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 09:59:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC20952F369
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 09:59:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C7D910ED3F;
	Wed, 13 May 2026 07:59:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OHMkGbgN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1854810ED3F;
 Wed, 13 May 2026 07:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778659144; x=1810195144;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hQ1Off6Ny2fTvy6EZFi2yx3QvyUs5WRJ+ns5sYCoCsQ=;
 b=OHMkGbgNBa4+6tS7dHZbY6AVQuDR12HZW0ntZttyeME+psGDz70CEQAL
 HUIuXmaC7zjRUO/OMYz06j5YPFF0WPTjGB+0AxRsGwE/SxfxdifwlItPs
 p6km7xw3abEuJbYHXjFlDsn9+o/y35d7qv5uQdG1ywlx480flhHddFhwi
 YZJjm/Kz7V8H5RQef+pZ53XFJiGUlmm6mJLMd5PJKTU6KZguK0R9QpeRZ
 YZ7IQ7FpFKaonStHhd/yMp0BhaLJ0G3COz0kbaIfMcXKK7hJ+uTcuXBg8
 TN5WrNn84LkZOypE2/1C5Q7fWKBsB46Ai90UEQyM6D8QA4PkD/ueWlAXG A==;
X-CSE-ConnectionGUID: QgQL9drbReG3CurcDJHESw==
X-CSE-MsgGUID: mIT7SgSEQWioMwaszclPvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="78606886"
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="78606886"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 00:59:04 -0700
X-CSE-ConnectionGUID: LOG72WODTeSZOlub3taafw==
X-CSE-MsgGUID: YmzVCif4QsGGYzNPXTpyNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="238257297"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.61])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 00:59:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 4/6] drm/i915/display: pass struct intel_display to all
 for_each_intel_crtc*() macros
Date: Wed, 13 May 2026 10:58:38 +0300
Message-ID: <90ec6b84d772a4842d4816efc10042ec4403e996.1778659089.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1778659089.git.jani.nikula@intel.com>
References: <cover.1778659089.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Queue-Id: AC20952F369
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

Now that the for_each_intel_crtc*() iterator macros primarily use
display->pipe_list for iteration, it's more convenient to pass struct
intel_display to them directly instead of struct drm_device. Make it so.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c        | 28 +++++++--------
 drivers/gpu/drm/i915/display/intel_bw.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_dbuf_bw.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 36 +++++++++----------
 drivers/gpu/drm/i915/display/intel_display.h  | 26 +++++++-------
 .../drm/i915/display/intel_display_debugfs.c  |  6 ++--
 .../drm/i915/display/intel_display_power.c    |  2 +-
 .../drm/i915/display/intel_display_trace.h    |  6 ++--
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_test.c  |  2 +-
 .../gpu/drm/i915/display/intel_dp_tunnel.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  2 +-
 drivers/gpu/drm/i915/display/intel_drrs.c     |  4 +--
 drivers/gpu/drm/i915/display/intel_fbdev.c    |  6 ++--
 .../drm/i915/display/intel_fifo_underrun.c    |  4 +--
 drivers/gpu/drm/i915/display/intel_flipq.c    |  2 +-
 .../gpu/drm/i915/display/intel_global_state.c |  8 ++---
 .../drm/i915/display/intel_initial_plane.c    |  4 +--
 drivers/gpu/drm/i915/display/intel_link_bw.c  |  2 +-
 .../gpu/drm/i915/display/intel_load_detect.c  |  2 +-
 .../drm/i915/display/intel_modeset_setup.c    | 32 ++++++++---------
 drivers/gpu/drm/i915/display/intel_plane.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_tc.c       |  2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  | 16 ++++-----
 29 files changed, 105 insertions(+), 105 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 4cd07410ad72..19b61d4c1fae 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -640,7 +640,7 @@ static struct intel_crtc *single_enabled_crtc(struct intel_display *display)
 {
 	struct intel_crtc *crtc, *enabled = NULL;
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		if (intel_crtc_active(crtc)) {
 			if (enabled)
 				return NULL;
@@ -1393,7 +1393,7 @@ static void g4x_merge_wm(struct intel_display *display,
 	wm->hpll_en = true;
 	wm->fbc_en = true;
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		const struct g4x_wm_state *wm_state = &crtc->wm.active.g4x;
 
 		if (!crtc->active)
@@ -1415,7 +1415,7 @@ static void g4x_merge_wm(struct intel_display *display,
 		wm->fbc_en = false;
 	}
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		const struct g4x_wm_state *wm_state = &crtc->wm.active.g4x;
 		enum pipe pipe = crtc->pipe;
 
@@ -2034,7 +2034,7 @@ static void vlv_merge_wm(struct intel_display *display,
 	wm->level = display->wm.num_levels - 1;
 	wm->cxsr = true;
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		const struct vlv_wm_state *wm_state = &crtc->wm.active.vlv;
 
 		if (!crtc->active)
@@ -2053,7 +2053,7 @@ static void vlv_merge_wm(struct intel_display *display,
 	if (num_active_pipes > 1)
 		wm->level = VLV_WM_LEVEL_PM2;
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		const struct vlv_wm_state *wm_state = &crtc->wm.active.vlv;
 		enum pipe pipe = crtc->pipe;
 
@@ -3078,7 +3078,7 @@ static void ilk_merge_wm_level(struct intel_display *display,
 
 	ret_wm->enable = true;
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		const struct intel_pipe_wm *active = &crtc->wm.active.ilk;
 		const struct intel_wm_level *wm = &active->wm[level];
 
@@ -3218,7 +3218,7 @@ static void ilk_compute_wm_results(struct intel_display *display,
 	}
 
 	/* LP0 register values */
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		enum pipe pipe = crtc->pipe;
 		const struct intel_pipe_wm *pipe_wm = &crtc->wm.active.ilk;
 		const struct intel_wm_level *r = &pipe_wm->wm[0];
@@ -3416,7 +3416,7 @@ static void ilk_compute_wm_config(struct intel_display *display,
 	struct intel_crtc *crtc;
 
 	/* Compute the currently _active_ config */
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		const struct intel_pipe_wm *wm = &crtc->wm.active.ilk;
 
 		if (!wm->pipe_enabled)
@@ -3537,7 +3537,7 @@ static int ilk_sanitize_watermarks_add_affected(struct drm_atomic_commit *state)
 	struct drm_plane *plane;
 	struct intel_crtc *crtc;
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		struct intel_crtc_state *crtc_state;
 
 		crtc_state = intel_atomic_get_crtc_state(state, crtc);
@@ -3770,7 +3770,7 @@ static void g4x_wm_get_hw_state(struct intel_display *display)
 
 	wm->cxsr = intel_de_read(display, FW_BLC_SELF) & FW_BLC_SELF_EN;
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		struct g4x_wm_state *active = &crtc->wm.active.g4x;
@@ -3885,7 +3885,7 @@ static void g4x_wm_sanitize(struct intel_display *display)
 		}
 	}
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		int ret;
@@ -3952,7 +3952,7 @@ static void vlv_wm_get_hw_state(struct intel_display *display)
 		vlv_punit_put(display);
 	}
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		struct vlv_wm_state *active = &crtc->wm.active.vlv;
@@ -4034,7 +4034,7 @@ static void vlv_wm_sanitize(struct intel_display *display)
 		}
 	}
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		int ret;
@@ -4075,7 +4075,7 @@ static void ilk_wm_get_hw_state(struct intel_display *display)
 
 	ilk_init_lp_watermarks(display);
 
-	for_each_intel_crtc(display->drm, crtc)
+	for_each_intel_crtc(display, crtc)
 		ilk_pipe_wm_get_hw_state(crtc);
 
 	hw->wm_lp[0] = intel_de_read(display, WM1_LP_ILK);
diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 9c3a9bbb49f6..bc8ad312ec15 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1378,7 +1378,7 @@ void intel_bw_update_hw_state(struct intel_display *display)
 
 	bw_state->pipe_sagv_reject = 0;
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		const struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		enum pipe pipe = crtc->pipe;
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index a1bf01021d65..2fa7e8c3bb26 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3647,7 +3647,7 @@ void intel_cdclk_update_hw_state(struct intel_display *display)
 	cdclk_state->enabled_pipes = 0;
 	cdclk_state->active_pipes = 0;
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		const struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		enum pipe pipe = crtc->pipe;
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 03de219f7a64..e8c5aa613587 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -55,7 +55,7 @@ struct intel_crtc *intel_crtc_for_pipe(struct intel_display *display,
 {
 	struct intel_crtc *crtc;
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		if (crtc->pipe == pipe)
 			return crtc;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_dbuf_bw.c b/drivers/gpu/drm/i915/display/intel_dbuf_bw.c
index 0562d4df6a07..1f38317b38bb 100644
--- a/drivers/gpu/drm/i915/display/intel_dbuf_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_dbuf_bw.c
@@ -236,7 +236,7 @@ void intel_dbuf_bw_update_hw_state(struct intel_display *display)
 	if (DISPLAY_VER(display) < 9)
 		return;
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		const struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index cd61ddb7f469..34e2b5ea9d0d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3672,7 +3672,7 @@ void intel_ddi_update_active_dpll(struct intel_atomic_state *state,
 	if (!intel_encoder_is_tc(encoder) || !display->dpll.mgr)
 		return;
 
-	for_each_intel_crtc_in_pipe_mask(display->drm, pipe_crtc,
+	for_each_intel_crtc_in_pipe_mask(display, pipe_crtc,
 					 intel_crtc_joined_pipe_mask(crtc_state))
 		intel_dpll_update_active(state, pipe_crtc, encoder);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7126a88ca090..d224cefc988f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -717,7 +717,7 @@ bool intel_has_pending_fb_unpin(struct intel_display *display)
 	struct intel_crtc *crtc;
 	bool cleanup_done;
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		struct drm_crtc_commit *commit;
 		spin_lock(&crtc->base.commit_lock);
 		commit = list_first_entry_or_null(&crtc->base.commit_list,
@@ -741,7 +741,7 @@ void intel_display_flush_cleanup_work(struct intel_display *display)
 {
 	struct intel_crtc *crtc;
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		struct drm_crtc_commit *commit;
 
 		spin_lock(&crtc->base.commit_lock);
@@ -3526,7 +3526,7 @@ static void enabled_uncompressed_joiner_pipes(struct intel_display *display,
 	if (!HAS_UNCOMPRESSED_JOINER(display))
 		return;
 
-	for_each_intel_crtc_in_pipe_mask(display->drm, crtc,
+	for_each_intel_crtc_in_pipe_mask(display, crtc,
 					 joiner_pipes(display)) {
 		enum intel_display_power_domain power_domain;
 		enum pipe pipe = crtc->pipe;
@@ -3554,7 +3554,7 @@ static void enabled_bigjoiner_pipes(struct intel_display *display,
 	if (!HAS_BIGJOINER(display))
 		return;
 
-	for_each_intel_crtc_in_pipe_mask(display->drm, crtc,
+	for_each_intel_crtc_in_pipe_mask(display, crtc,
 					 joiner_pipes(display)) {
 		enum intel_display_power_domain power_domain;
 		enum pipe pipe = crtc->pipe;
@@ -3623,7 +3623,7 @@ static void enabled_ultrajoiner_pipes(struct intel_display *display,
 	if (!HAS_ULTRAJOINER(display))
 		return;
 
-	for_each_intel_crtc_in_pipe_mask(display->drm, crtc,
+	for_each_intel_crtc_in_pipe_mask(display, crtc,
 					 joiner_pipes(display)) {
 		enum intel_display_power_domain power_domain;
 		enum pipe pipe = crtc->pipe;
@@ -5577,7 +5577,7 @@ int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc *crtc;
 
-	for_each_intel_crtc_in_pipe_mask(display->drm, crtc, mask) {
+	for_each_intel_crtc_in_pipe_mask(display, crtc, mask) {
 		struct intel_crtc_state *crtc_state;
 		int ret;
 
@@ -5624,7 +5624,7 @@ int intel_modeset_all_pipes_late(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc *crtc;
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		struct intel_crtc_state *crtc_state;
 		int ret;
 
@@ -5665,7 +5665,7 @@ int intel_modeset_commit_pipes(struct intel_display *display,
 	state->acquire_ctx = ctx;
 	to_intel_atomic_state(state)->internal = true;
 
-	for_each_intel_crtc_in_pipe_mask(display->drm, crtc, pipe_mask) {
+	for_each_intel_crtc_in_pipe_mask(display, crtc, pipe_mask) {
 		struct intel_crtc_state *crtc_state =
 			intel_atomic_get_crtc_state(state, crtc);
 
@@ -5720,7 +5720,7 @@ static int hsw_mode_set_planes_workaround(struct intel_atomic_state *state)
 		return 0;
 
 	/* w/a possibly needed, check how many crtc's are already enabled. */
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		crtc_state = intel_atomic_get_crtc_state(&state->base, crtc);
 		if (IS_ERR(crtc_state))
 			return PTR_ERR(crtc_state);
@@ -5917,7 +5917,7 @@ static int intel_atomic_check_joiner(struct intel_atomic_state *state,
 		return -EINVAL;
 	}
 
-	for_each_intel_crtc_in_pipe_mask(display->drm, secondary_crtc,
+	for_each_intel_crtc_in_pipe_mask(display, secondary_crtc,
 					 intel_crtc_joiner_secondary_pipes(primary_crtc_state)) {
 		struct intel_crtc_state *secondary_crtc_state;
 		int ret;
@@ -5960,7 +5960,7 @@ static void kill_joiner_secondaries(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, primary_crtc);
 	struct intel_crtc *secondary_crtc;
 
-	for_each_intel_crtc_in_pipe_mask(display->drm, secondary_crtc,
+	for_each_intel_crtc_in_pipe_mask(display, secondary_crtc,
 					 intel_crtc_joiner_secondary_pipes(primary_crtc_state)) {
 		struct intel_crtc_state *secondary_crtc_state =
 			intel_atomic_get_new_crtc_state(state, secondary_crtc);
@@ -6259,13 +6259,13 @@ static int intel_joiner_add_affected_crtcs(struct intel_atomic_state *state)
 			modeset_pipes |= crtc_state->joiner_pipes;
 	}
 
-	for_each_intel_crtc_in_pipe_mask(display->drm, crtc, affected_pipes) {
+	for_each_intel_crtc_in_pipe_mask(display, crtc, affected_pipes) {
 		crtc_state = intel_atomic_get_crtc_state(&state->base, crtc);
 		if (IS_ERR(crtc_state))
 			return PTR_ERR(crtc_state);
 	}
 
-	for_each_intel_crtc_in_pipe_mask(display->drm, crtc, modeset_pipes) {
+	for_each_intel_crtc_in_pipe_mask(display, crtc, modeset_pipes) {
 		int ret;
 
 		crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
@@ -6750,7 +6750,7 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 	if (!intel_crtc_needs_modeset(new_crtc_state))
 		return;
 
-	for_each_intel_crtc_in_pipe_mask_reverse(display->drm, pipe_crtc,
+	for_each_intel_crtc_in_pipe_mask_reverse(display, pipe_crtc,
 						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
@@ -6888,7 +6888,7 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 	 * We need to disable pipe CRC before disabling the pipe,
 	 * or we race against vblank off.
 	 */
-	for_each_intel_crtc_in_pipe_mask(display->drm, pipe_crtc,
+	for_each_intel_crtc_in_pipe_mask(display, pipe_crtc,
 					 intel_crtc_joined_pipe_mask(old_crtc_state))
 		intel_crtc_disable_pipe_crc(pipe_crtc);
 
@@ -6896,7 +6896,7 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 
 	display->modeset.funcs->crtc_disable(state, crtc);
 
-	for_each_intel_crtc_in_pipe_mask(display->drm, pipe_crtc,
+	for_each_intel_crtc_in_pipe_mask(display, pipe_crtc,
 					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
 		const struct intel_crtc_state *new_pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
@@ -7808,7 +7808,7 @@ static u32 intel_encoder_possible_crtcs(struct intel_encoder *encoder)
 	struct intel_crtc *crtc;
 	u32 possible_crtcs = 0;
 
-	for_each_intel_crtc_in_pipe_mask(display->drm, crtc, encoder->pipe_mask)
+	for_each_intel_crtc_in_pipe_mask(display, crtc, encoder->pipe_mask)
 		possible_crtcs |= drm_crtc_mask(&crtc->base);
 
 	return possible_crtcs;
@@ -8301,7 +8301,7 @@ int intel_initial_commit(struct intel_display *display)
 	to_intel_atomic_state(state)->internal = true;
 
 retry:
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		struct intel_crtc_state *crtc_state =
 			intel_atomic_get_crtc_state(state, crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 65f8c81a7bae..a3e0def4adb0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -212,22 +212,22 @@ enum phy_fia {
 			    base.head)					\
 		for_each_if((intel_plane)->pipe == (intel_crtc)->pipe)
 
-#define for_each_intel_crtc(dev, crtc) \
+#define for_each_intel_crtc(display, crtc) \
 	list_for_each_entry((crtc), \
-			    &to_intel_display(dev)->pipe_list, \
+			    &(display)->pipe_list, \
 			    pipe_head)
 
-#define for_each_intel_crtc_reverse(dev, crtc) \
+#define for_each_intel_crtc_reverse(display, crtc) \
 	list_for_each_entry_reverse((crtc), \
-				    &to_intel_display(dev)->pipe_list, \
+				    &(display)->pipe_list, \
 				    pipe_head)
 
-#define for_each_intel_crtc_in_pipe_mask(dev, crtc, pipe_mask) \
-	for_each_intel_crtc((dev), (crtc)) \
+#define for_each_intel_crtc_in_pipe_mask(display, crtc, pipe_mask) \
+	for_each_intel_crtc((display), (crtc)) \
 		for_each_if((pipe_mask) & BIT((crtc)->pipe))
 
-#define for_each_intel_crtc_in_pipe_mask_reverse(dev, crtc, pipe_mask) \
-	for_each_intel_crtc_reverse((dev), (crtc)) \
+#define for_each_intel_crtc_in_pipe_mask_reverse(display, crtc, pipe_mask) \
+	for_each_intel_crtc_reverse((display), (crtc)) \
 		for_each_if((pipe_mask) & BIT((crtc)->pipe))
 
 #define for_each_intel_encoder(dev, intel_encoder)		\
@@ -288,28 +288,28 @@ enum phy_fia {
 		for_each_if(plane)
 
 #define for_each_old_intel_crtc_in_state(__state, crtc, old_crtc_state, __i) \
-	for_each_intel_crtc((__state)->base.dev, (crtc)) \
+	for_each_intel_crtc(to_intel_display(__state), (crtc)) \
 		for_each_if(((__i) = drm_crtc_index(&(crtc)->base), (void)(__i), \
 			     (old_crtc_state) = intel_atomic_get_old_crtc_state((__state), (crtc))))
 
 #define for_each_new_intel_crtc_in_state(__state, crtc, new_crtc_state, __i) \
-	for_each_intel_crtc((__state)->base.dev, (crtc)) \
+	for_each_intel_crtc(to_intel_display(__state), (crtc)) \
 		for_each_if(((__i) = drm_crtc_index(&(crtc)->base), (void)(__i), \
 			     (new_crtc_state) = intel_atomic_get_new_crtc_state((__state), (crtc))))
 
 #define for_each_new_intel_crtc_in_state_reverse(__state, crtc, new_crtc_state, __i) \
-	for_each_intel_crtc_reverse((__state)->base.dev, (crtc)) \
+	for_each_intel_crtc_reverse(to_intel_display(__state), (crtc)) \
 		for_each_if(((__i) = drm_crtc_index(&(crtc)->base), (void)(__i), \
 			     (new_crtc_state) = intel_atomic_get_new_crtc_state((__state), (crtc))))
 
 #define for_each_oldnew_intel_crtc_in_state(__state, crtc, old_crtc_state, new_crtc_state, __i) \
-	for_each_intel_crtc((__state)->base.dev, (crtc)) \
+	for_each_intel_crtc(to_intel_display(__state), (crtc)) \
 		for_each_if(((__i) = drm_crtc_index(&(crtc)->base), (void)(__i), \
 			     (old_crtc_state) = intel_atomic_get_old_crtc_state((__state), (crtc)), \
 			     (new_crtc_state) = intel_atomic_get_new_crtc_state((__state), (crtc))))
 
 #define for_each_oldnew_intel_crtc_in_state_reverse(__state, crtc, old_crtc_state, new_crtc_state, __i) \
-	for_each_intel_crtc_reverse((__state)->base.dev, (crtc)) \
+	for_each_intel_crtc_reverse(to_intel_display(__state), (crtc)) \
 		for_each_if(((__i) = drm_crtc_index(&(crtc)->base), (void)(__i), \
 			     (old_crtc_state) = intel_atomic_get_old_crtc_state((__state), (crtc)), \
 			     (new_crtc_state) = intel_atomic_get_new_crtc_state((__state), (crtc))))
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 81bef000a4e3..b2a745733182 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -606,7 +606,7 @@ static int i915_display_info(struct seq_file *m, void *unused)
 
 	seq_printf(m, "CRTC info\n");
 	seq_printf(m, "---------\n");
-	for_each_intel_crtc(display->drm, crtc)
+	for_each_intel_crtc(display, crtc)
 		intel_crtc_info(m, crtc);
 
 	seq_printf(m, "\n");
@@ -664,7 +664,7 @@ static int i915_ddb_info(struct seq_file *m, void *unused)
 
 	seq_printf(m, "%-15s%8s%8s%8s\n", "", "Start", "End", "Size");
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		enum pipe pipe = crtc->pipe;
@@ -771,7 +771,7 @@ i915_fifo_underrun_reset_write(struct file *filp,
 	if (!reset)
 		return cnt;
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		struct drm_crtc_commit *commit;
 		struct intel_crtc_state *crtc_state;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 80ecf373fb19..737ec400ab29 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1203,7 +1203,7 @@ static void assert_can_disable_lcpll(struct intel_display *display)
 {
 	struct intel_crtc *crtc;
 
-	for_each_intel_crtc(display->drm, crtc)
+	for_each_intel_crtc(display, crtc)
 		INTEL_DISPLAY_STATE_WARN(display, crtc->active,
 					 "CRTC for pipe %c enabled\n",
 					 pipe_name(crtc->pipe));
diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
index 27ebc32cb61a..504d105935bc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -84,7 +84,7 @@ TRACE_EVENT(intel_pipe_enable,
 				  sizeof(__entry->frame[0]) * I915_MAX_PIPES);
 			   memset(__entry->scanline, 0,
 				  sizeof(__entry->scanline[0]) * I915_MAX_PIPES);
-			   for_each_intel_crtc(display->drm, it__) {
+			   for_each_intel_crtc(display, it__) {
 				   __entry->frame[it__->pipe] = intel_crtc_get_vblank_counter(it__);
 				   __entry->scanline[it__->pipe] = intel_get_crtc_scanline(it__);
 			   }
@@ -114,7 +114,7 @@ TRACE_EVENT(intel_pipe_disable,
 				  sizeof(__entry->frame[0]) * I915_MAX_PIPES);
 			   memset(__entry->scanline, 0,
 				  sizeof(__entry->scanline[0]) * I915_MAX_PIPES);
-			   for_each_intel_crtc(display->drm, it__) {
+			   for_each_intel_crtc(display, it__) {
 				   __entry->frame[it__->pipe] = intel_crtc_get_vblank_counter(it__);
 				   __entry->scanline[it__->pipe] = intel_get_crtc_scanline(it__);
 			   }
@@ -244,7 +244,7 @@ TRACE_EVENT(intel_memory_cxsr,
 				  sizeof(__entry->frame[0]) * I915_MAX_PIPES);
 			   memset(__entry->scanline, 0,
 				  sizeof(__entry->scanline[0]) * I915_MAX_PIPES);
-			   for_each_intel_crtc(display->drm, crtc) {
+			   for_each_intel_crtc(display, crtc) {
 				   __entry->frame[crtc->pipe] = intel_crtc_get_vblank_counter(crtc);
 				   __entry->scanline[crtc->pipe] = intel_get_crtc_scanline(crtc);
 			   }
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2151766546e6..25d93b2468fa 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6751,7 +6751,7 @@ static int intel_modeset_affected_transcoders(struct intel_atomic_state *state,
 	if (transcoders == 0)
 		return 0;
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		struct intel_crtc_state *crtc_state;
 		int ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 8f73e01db17c..be8febe3d234 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -837,7 +837,7 @@ static int intel_dp_mst_check_dsc_change(struct intel_atomic_state *state,
 
 	mst_pipe_mask = get_pipes_downstream_of_mst_port(state, mst_mgr, NULL);
 
-	for_each_intel_crtc_in_pipe_mask(display->drm, crtc, mst_pipe_mask) {
+	for_each_intel_crtc_in_pipe_mask(display, crtc, mst_pipe_mask) {
 		struct intel_crtc_state *crtc_state =
 			intel_atomic_get_new_crtc_state(state, crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_test.c b/drivers/gpu/drm/i915/display/intel_dp_test.c
index 5cfa1dd411da..ba44769c9cfb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_test.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_test.c
@@ -471,7 +471,7 @@ static int intel_dp_do_phy_test(struct intel_encoder *encoder,
 	drm_dbg_kms(display->drm, "[ENCODER:%d:%s] PHY test\n",
 		    encoder->base.base.id, encoder->base.name);
 
-	for_each_intel_crtc_in_pipe_mask(display->drm, crtc, pipe_mask) {
+	for_each_intel_crtc_in_pipe_mask(display, crtc, pipe_mask) {
 		const struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
index 11712a151f72..10d47faa6996 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
@@ -146,7 +146,7 @@ static int allocate_initial_tunnel_bw_for_pipes(struct intel_dp *intel_dp, u8 pi
 	int tunnel_bw = 0;
 	int err;
 
-	for_each_intel_crtc_in_pipe_mask(display->drm, crtc, pipe_mask) {
+	for_each_intel_crtc_in_pipe_mask(display, crtc, pipe_mask) {
 		const struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		int stream_bw = intel_dp_config_required_rate(crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index a9d88cecb338..f88536879ca9 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4965,7 +4965,7 @@ static void readout_dpll_hw_state(struct intel_display *display,
 		pll->wakeref = intel_display_power_get(display, pll->info->power_domain);
 
 	pll->state.pipe_mask = 0;
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 0fdb32ef241c..6c95d4ae1ea9 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -137,7 +137,7 @@ static unsigned int intel_drrs_frontbuffer_bits(const struct intel_crtc_state *c
 
 	frontbuffer_bits = INTEL_FRONTBUFFER_ALL_MASK(crtc->pipe);
 
-	for_each_intel_crtc_in_pipe_mask(display->drm, crtc,
+	for_each_intel_crtc_in_pipe_mask(display, crtc,
 					 crtc_state->joiner_pipes)
 		frontbuffer_bits |= INTEL_FRONTBUFFER_ALL_MASK(crtc->pipe);
 
@@ -227,7 +227,7 @@ static void intel_drrs_frontbuffer_update(struct intel_display *display,
 {
 	struct intel_crtc *crtc;
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		unsigned int frontbuffer_bits;
 
 		mutex_lock(&crtc->drrs.mutex);
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index df1d3d9dc3e5..c8d4e3a5ce6b 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -380,7 +380,7 @@ static bool intel_fbdev_init_bios(struct intel_display *display,
 	unsigned int max_size = 0;
 
 	/* Find the largest fb */
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		struct intel_plane *plane =
@@ -419,7 +419,7 @@ static bool intel_fbdev_init_bios(struct intel_display *display,
 	}
 
 	/* Now make sure all the pipes will fit into it */
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		struct intel_plane *plane =
@@ -489,7 +489,7 @@ static bool intel_fbdev_init_bios(struct intel_display *display,
 	drm_framebuffer_get(&ifbdev->fb->base);
 
 	/* Final pass to check if any active pipes don't have fbs */
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		struct intel_plane *plane =
diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index bf047180def9..8176976f15f6 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -527,7 +527,7 @@ void intel_check_cpu_fifo_underruns(struct intel_display *display)
 
 	spin_lock_irq(&display->irq.lock);
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		if (crtc->cpu_fifo_underrun_disabled)
 			continue;
 
@@ -554,7 +554,7 @@ void intel_check_pch_fifo_underruns(struct intel_display *display)
 
 	spin_lock_irq(&display->irq.lock);
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		if (crtc->pch_fifo_underrun_disabled)
 			continue;
 
diff --git a/drivers/gpu/drm/i915/display/intel_flipq.c b/drivers/gpu/drm/i915/display/intel_flipq.c
index 333d28faf4ca..bf278f60bba7 100644
--- a/drivers/gpu/drm/i915/display/intel_flipq.c
+++ b/drivers/gpu/drm/i915/display/intel_flipq.c
@@ -132,7 +132,7 @@ void intel_flipq_init(struct intel_display *display)
 
 	intel_dmc_wait_fw_load(display);
 
-	for_each_intel_crtc(display->drm, crtc)
+	for_each_intel_crtc(display, crtc)
 		intel_flipq_crtc_init(crtc);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_global_state.c b/drivers/gpu/drm/i915/display/intel_global_state.c
index 9e1369c834e4..886caf29c9ae 100644
--- a/drivers/gpu/drm/i915/display/intel_global_state.c
+++ b/drivers/gpu/drm/i915/display/intel_global_state.c
@@ -140,7 +140,7 @@ static void assert_global_state_write_locked(struct intel_display *display)
 {
 	struct intel_crtc *crtc;
 
-	for_each_intel_crtc(display->drm, crtc)
+	for_each_intel_crtc(display, crtc)
 		drm_modeset_lock_assert_held(&crtc->base.mutex);
 }
 
@@ -163,7 +163,7 @@ static void assert_global_state_read_locked(struct intel_atomic_state *state)
 	struct drm_modeset_acquire_ctx *ctx = state->base.acquire_ctx;
 	struct intel_crtc *crtc;
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		if (modeset_lock_is_held(ctx, &crtc->base.mutex))
 			return;
 	}
@@ -301,7 +301,7 @@ int intel_atomic_lock_global_state(struct intel_global_state *obj_state)
 	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc *crtc;
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		int ret;
 
 		ret = drm_modeset_lock(&crtc->base.mutex,
@@ -334,7 +334,7 @@ intel_atomic_global_state_is_serialized(struct intel_atomic_state *state)
 	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc *crtc;
 
-	for_each_intel_crtc(display->drm, crtc)
+	for_each_intel_crtc(display, crtc)
 		if (!intel_atomic_get_new_crtc_state(state, crtc))
 			return false;
 	return true;
diff --git a/drivers/gpu/drm/i915/display/intel_initial_plane.c b/drivers/gpu/drm/i915/display/intel_initial_plane.c
index 034fe199c2a1..6aa253678ec9 100644
--- a/drivers/gpu/drm/i915/display/intel_initial_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
@@ -50,7 +50,7 @@ intel_reuse_initial_plane_obj(struct intel_crtc *this,
 	struct intel_display *display = to_intel_display(this);
 	struct intel_crtc *crtc;
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		struct intel_plane *plane =
 			to_intel_plane(crtc->base.primary);
 		const struct intel_plane_state *plane_state =
@@ -208,7 +208,7 @@ void intel_initial_plane_config(struct intel_display *display)
 	struct intel_initial_plane_configs all_plane_configs = {};
 	struct intel_crtc *crtc;
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		const struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		struct intel_initial_plane_config *plane_config =
diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.c b/drivers/gpu/drm/i915/display/intel_link_bw.c
index d2862de894fa..b47474a3e9fe 100644
--- a/drivers/gpu/drm/i915/display/intel_link_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
@@ -108,7 +108,7 @@ static int __intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
 	struct intel_crtc *crtc;
 	int max_bpp_x16 = 0;
 
-	for_each_intel_crtc_in_pipe_mask(display->drm, crtc, pipe_mask) {
+	for_each_intel_crtc_in_pipe_mask(display, crtc, pipe_mask) {
 		struct intel_crtc_state *crtc_state;
 		int link_bpp_x16;
 
diff --git a/drivers/gpu/drm/i915/display/intel_load_detect.c b/drivers/gpu/drm/i915/display/intel_load_detect.c
index 2f767b15a7f9..3fef1ebc6357 100644
--- a/drivers/gpu/drm/i915/display/intel_load_detect.c
+++ b/drivers/gpu/drm/i915/display/intel_load_detect.c
@@ -89,7 +89,7 @@ intel_load_detect_get_pipe(struct drm_connector *connector,
 	}
 
 	/* Find an unused one (if possible) */
-	for_each_intel_crtc(display->drm, possible_crtc) {
+	for_each_intel_crtc(display, possible_crtc) {
 		if (!(encoder->base.possible_crtcs &
 		      drm_crtc_mask(&possible_crtc->base)))
 			continue;
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index e88082c8caac..ea6459ef495a 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -71,7 +71,7 @@ static void intel_crtc_disable_noatomic_begin(struct intel_crtc *crtc,
 	to_intel_atomic_state(state)->internal = true;
 
 	/* Everything's already locked, -EDEADLK can't happen. */
-	for_each_intel_crtc_in_pipe_mask(display->drm, temp_crtc,
+	for_each_intel_crtc_in_pipe_mask(display, temp_crtc,
 					 BIT(pipe) |
 					 intel_crtc_joiner_secondary_pipes(crtc_state)) {
 		struct intel_crtc_state *temp_crtc_state =
@@ -192,7 +192,7 @@ static u8 get_transcoder_pipes(struct intel_display *display,
 	struct intel_crtc *temp_crtc;
 	u8 pipes = 0;
 
-	for_each_intel_crtc(display->drm, temp_crtc) {
+	for_each_intel_crtc(display, temp_crtc) {
 		struct intel_crtc_state *temp_crtc_state =
 			to_intel_crtc_state(temp_crtc->base.state);
 
@@ -248,7 +248,7 @@ static u8 get_joiner_secondary_pipes(struct intel_display *display, u8 primary_p
 	struct intel_crtc *primary_crtc;
 	u8 pipes = 0;
 
-	for_each_intel_crtc_in_pipe_mask(display->drm, primary_crtc, primary_pipes_mask) {
+	for_each_intel_crtc_in_pipe_mask(display, primary_crtc, primary_pipes_mask) {
 		struct intel_crtc_state *primary_crtc_state =
 			to_intel_crtc_state(primary_crtc->base.state);
 
@@ -278,16 +278,16 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 		    portsync_master_mask & joiner_secondaries_mask ||
 		    portsync_slaves_mask & joiner_secondaries_mask);
 
-	for_each_intel_crtc_in_pipe_mask(display->drm, temp_crtc, joiner_secondaries_mask)
+	for_each_intel_crtc_in_pipe_mask(display, temp_crtc, joiner_secondaries_mask)
 		intel_crtc_disable_noatomic_begin(temp_crtc, ctx);
 
-	for_each_intel_crtc_in_pipe_mask(display->drm, temp_crtc, portsync_slaves_mask)
+	for_each_intel_crtc_in_pipe_mask(display, temp_crtc, portsync_slaves_mask)
 		intel_crtc_disable_noatomic_begin(temp_crtc, ctx);
 
-	for_each_intel_crtc_in_pipe_mask(display->drm, temp_crtc, portsync_master_mask)
+	for_each_intel_crtc_in_pipe_mask(display, temp_crtc, portsync_master_mask)
 		intel_crtc_disable_noatomic_begin(temp_crtc, ctx);
 
-	for_each_intel_crtc_in_pipe_mask(display->drm, temp_crtc,
+	for_each_intel_crtc_in_pipe_mask(display, temp_crtc,
 					 joiner_secondaries_mask |
 					 portsync_slaves_mask |
 					 portsync_master_mask)
@@ -376,7 +376,7 @@ intel_sanitize_plane_mapping(struct intel_display *display)
 	if (DISPLAY_VER(display) >= 4)
 		return;
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		struct intel_plane *plane =
 			to_intel_plane(crtc->base.primary);
 		struct intel_crtc *plane_crtc;
@@ -532,7 +532,7 @@ static void intel_sanitize_all_crtcs(struct intel_display *display,
 	for (;;) {
 		u32 old_mask = crtcs_forced_off;
 
-		for_each_intel_crtc(display->drm, crtc) {
+		for_each_intel_crtc(display, crtc) {
 			u32 crtc_mask = drm_crtc_mask(&crtc->base);
 
 			if (crtcs_forced_off & crtc_mask)
@@ -545,7 +545,7 @@ static void intel_sanitize_all_crtcs(struct intel_display *display,
 			break;
 	}
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
@@ -681,7 +681,7 @@ static void readout_plane_state(struct intel_display *display)
 			    str_enabled_disabled(visible), pipe_name(pipe));
 	}
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
@@ -699,7 +699,7 @@ static void intel_modeset_readout_hw_state(struct intel_display *display)
 	struct intel_connector *connector;
 	struct drm_connector_list_iter conn_iter;
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
@@ -741,7 +741,7 @@ static void intel_modeset_readout_hw_state(struct intel_display *display)
 				/* encoder should read be linked to joiner primary */
 				WARN_ON(intel_crtc_is_joiner_secondary(crtc_state));
 
-				for_each_intel_crtc_in_pipe_mask(display->drm, secondary_crtc,
+				for_each_intel_crtc_in_pipe_mask(display, secondary_crtc,
 								 intel_crtc_joiner_secondary_pipes(crtc_state)) {
 					struct intel_crtc_state *secondary_crtc_state;
 
@@ -814,7 +814,7 @@ static void intel_modeset_readout_hw_state(struct intel_display *display)
 	}
 	drm_connector_list_iter_end(&conn_iter);
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		struct intel_plane *plane;
@@ -961,7 +961,7 @@ void intel_modeset_setup_hw_state(struct intel_display *display,
 	 * intel_sanitize_plane_mapping() may need to do vblank
 	 * waits, so we need vblank interrupts restored beforehand.
 	 */
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
@@ -997,7 +997,7 @@ void intel_modeset_setup_hw_state(struct intel_display *display,
 		intel_wm_get_hw_state(display);
 	intel_wm_sanitize(display);
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		struct intel_power_domain_mask put_domains;
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 911ae261d1b5..e191a57f02cd 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -1812,7 +1812,7 @@ static int intel_joiner_add_affected_planes(struct intel_atomic_state *state,
 	do {
 		struct intel_crtc *crtc;
 
-		for_each_intel_crtc_in_pipe_mask(display->drm, crtc, joined_pipes) {
+		for_each_intel_crtc_in_pipe_mask(display, crtc, joined_pipes) {
 			int ret;
 
 			ret = intel_crtc_add_planes_to_state(state, crtc, affected_planes);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 9958230a3dd9..cd7944b67b59 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1868,7 +1868,7 @@ void intel_psr_set_non_psr_pipes(struct intel_dp *intel_dp,
 		return;
 
 	/* We ignore possible secondary PSR/Panel Replay capable eDP */
-	for_each_intel_crtc(display->drm, crtc)
+	for_each_intel_crtc(display, crtc)
 		active_pipes |= crtc->active ? BIT(crtc->pipe) : 0;
 
 	active_pipes = intel_calc_active_pipes(state, active_pipes);
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index fc0d470fe949..c620cfa8fe06 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -1779,7 +1779,7 @@ static int reset_link_commit(struct intel_tc_port *tc,
 	if (!pipe_mask)
 		return 0;
 
-	for_each_intel_crtc_in_pipe_mask(display->drm, crtc, pipe_mask) {
+	for_each_intel_crtc_in_pipe_mask(display, crtc, pipe_mask) {
 		struct intel_crtc_state *crtc_state;
 
 		crtc_state = intel_atomic_get_crtc_state(&state->base, crtc);
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 96d2dcbe7bbc..346e97d91d92 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2529,7 +2529,7 @@ skl_compute_ddb(struct intel_atomic_state *state)
 		}
 	}
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		enum pipe pipe = crtc->pipe;
 
 		new_dbuf_state->slices[pipe] =
@@ -2574,7 +2574,7 @@ skl_compute_ddb(struct intel_atomic_state *state)
 			return ret;
 	}
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		ret = skl_crtc_allocate_ddb(state, crtc);
 		if (ret)
 			return ret;
@@ -2845,7 +2845,7 @@ static int pkgc_max_linetime(struct intel_atomic_state *state)
 	}
 
 	max_linetime = 0;
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		if (display->pkgc.disable[crtc->pipe])
 			return 0;
 
@@ -3033,7 +3033,7 @@ static void skl_wm_get_hw_state(struct intel_display *display)
 	dbuf_state->mdclk_cdclk_ratio = intel_mdclk_cdclk_ratio(display, &display->cdclk.hw);
 	dbuf_state->active_pipes = 0;
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		enum pipe pipe = crtc->pipe;
@@ -3446,7 +3446,7 @@ static void pipe_mbus_dbox_ctl_update(struct intel_display *display,
 {
 	struct intel_crtc *crtc;
 
-	for_each_intel_crtc_in_pipe_mask(display->drm, crtc, dbuf_state->active_pipes)
+	for_each_intel_crtc_in_pipe_mask(display, crtc, dbuf_state->active_pipes)
 		intel_de_write(display, PIPE_MBUS_DBOX_CTL(crtc->pipe),
 			       pipe_mbus_dbox_ctl(crtc, dbuf_state));
 }
@@ -3758,14 +3758,14 @@ static bool skl_dbuf_is_misconfigured(struct intel_display *display)
 	struct skl_ddb_entry entries[I915_MAX_PIPES] = {};
 	struct intel_crtc *crtc;
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		const struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
 		entries[crtc->pipe] = crtc_state->wm.skl.ddb;
 	}
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		const struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		u8 slices;
@@ -3803,7 +3803,7 @@ static void skl_dbuf_sanitize(struct intel_display *display)
 
 	drm_dbg_kms(display->drm, "BIOS has misprogrammed the DBUF, disabling all planes\n");
 
-	for_each_intel_crtc(display->drm, crtc) {
+	for_each_intel_crtc(display, crtc) {
 		struct intel_plane *plane = to_intel_plane(crtc->base.primary);
 		const struct intel_plane_state *plane_state =
 			to_intel_plane_state(plane->base.state);
-- 
2.47.3

