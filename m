Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5386BFA80
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Mar 2023 14:45:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4636410E0E2;
	Sat, 18 Mar 2023 13:45:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF76F10E0E2
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Mar 2023 13:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679147148; x=1710683148;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=J/eZm374txojdgjVp1vZ/pORL+8YCFNMCiVeSf5gsrs=;
 b=IXyzMCNyaoW4qoeHQUdg4Z3PnzZCNymNoh/K2DoCpuuUOCtBIiCdgWWP
 tcwX3obGwHte6+/bbasScihXbbjJUJ5iWfq+Znc7fpUQaIcFbTgKvSH15
 ZqPOG0OWzYB8c+ePm1CMoOyW4r9ONwjfxkn4itJ3opVRgAFG20ZeqLTCT
 eyqMX3Sf/aIE/d4Y7dJU01DRbnQHJjqKY5SzYHHJes/92D5XXkCwNxFKV
 1ZknHjS0cmZTgbzIp/mi2wHZ4TOj9JDIap3nuE5UafgoDSYCjryXf2Wyv
 H6PBbfKdt8jMiDmz234ERO27LQh3bMBO9vkAtpM1b3j/l8XudwPBw8C5g w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="326798761"
X-IronPort-AV: E=Sophos;i="5.98,271,1673942400"; d="scan'208";a="326798761"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2023 06:45:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="823967777"
X-IronPort-AV: E=Sophos;i="5.98,271,1673942400"; d="scan'208";a="823967777"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 18 Mar 2023 06:45:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 18 Mar 2023 15:45:44 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Mar 2023 15:45:37 +0200
Message-Id: <20230318134544.11033-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH xf86-video-intel 1/8] uxa: Switch to using crtc
 index instead of pipe
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Start using the kms crtc index rather than the pipe almost
everywhere. The two numbers could in theory be different
if the hardware has some pipes fused off. Though I think
such non-contiguous fusing won't actually happen on the
hardware generations the driver fully supports.

The places where using the kms crtc index is the correct
choice have to do with the vblank ioctl crtc selection.

The only place where we must stick to the hardware pipe
indexing is the MI_SCANLINE_WAIT stuff as there we have to
construct CS packets to be consumed by the hardware itself.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 src/uxa/intel.h         |  1 +
 src/uxa/intel_display.c | 20 ++++++++++++++------
 src/uxa/intel_dri.c     | 28 ++++++++++++++--------------
 src/uxa/intel_present.c | 20 ++++++++++----------
 4 files changed, 39 insertions(+), 30 deletions(-)

diff --git a/src/uxa/intel.h b/src/uxa/intel.h
index a5e77af46260..04d17f863e60 100644
--- a/src/uxa/intel.h
+++ b/src/uxa/intel.h
@@ -467,6 +467,7 @@ Bool intel_dri3_screen_init(ScreenPtr screen);
 
 extern Bool intel_crtc_on(xf86CrtcPtr crtc);
 int intel_crtc_to_pipe(xf86CrtcPtr crtc);
+int intel_crtc_to_index(xf86CrtcPtr crtc);
 
 /* intel_memory.c */
 unsigned long intel_get_fence_size(intel_screen_private *intel, unsigned long size);
diff --git a/src/uxa/intel_display.c b/src/uxa/intel_display.c
index ba4b8d87412c..409cbbcf7901 100644
--- a/src/uxa/intel_display.c
+++ b/src/uxa/intel_display.c
@@ -106,6 +106,7 @@ struct intel_crtc {
 	drmModeModeInfo kmode;
 	drmModeCrtcPtr mode_crtc;
 	int pipe;
+	int index;
 	dri_bo *cursor;
 	dri_bo *rotate_bo;
 	uint32_t rotate_pitch;
@@ -755,6 +756,7 @@ intel_crtc_init(ScrnInfoPtr scrn, struct intel_mode *mode, drmModeResPtr mode_re
 
 	intel_crtc->pipe = drm_intel_get_pipe_from_crtc_id(intel->bufmgr,
 							   crtc_id(intel_crtc));
+	intel_crtc->index = num;
 
 	intel_crtc->cursor = drm_intel_bo_alloc(intel->bufmgr, "ARGB cursor",
 						4*64*64, 4096);
@@ -1768,7 +1770,7 @@ intel_do_pageflip(intel_screen_private *intel,
 		/* Only the reference crtc will finally deliver its page flip
 		 * completion event. All other crtc's events will be discarded.
 		 */
-		flip->dispatch_me = (intel_crtc_to_pipe(crtc->crtc) == ref_crtc_hw_id);
+		flip->dispatch_me = (intel_crtc_to_index(crtc->crtc) == ref_crtc_hw_id);
 		flip->mode = mode;
 
 		seq = intel_drm_queue_alloc(scrn, config->crtc[i], flip, intel_pageflip_handler, intel_pageflip_abort);
@@ -1913,11 +1915,11 @@ intel_drm_abort_scrn(ScrnInfoPtr scrn)
 	}
 }
 
-static uint32_t pipe_select(int pipe)
+static uint32_t crtc_select(int index)
 {
-	if (pipe > 1)
-		return pipe << DRM_VBLANK_HIGH_CRTC_SHIFT;
-	else if (pipe > 0)
+	if (index > 1)
+		return index << DRM_VBLANK_HIGH_CRTC_SHIFT;
+	else if (index > 0)
 		return DRM_VBLANK_SECONDARY;
 	else
 		return 0;
@@ -1933,7 +1935,7 @@ intel_get_msc_ust(ScrnInfoPtr scrn, xf86CrtcPtr crtc, uint32_t *msc, uint64_t *u
 	drmVBlank vbl;
 
 	/* Get current count */
-	vbl.request.type = DRM_VBLANK_RELATIVE | pipe_select(intel_crtc_to_pipe(crtc));
+	vbl.request.type = DRM_VBLANK_RELATIVE | crtc_select(intel_crtc_to_index(crtc));
 	vbl.request.sequence = 0;
 	vbl.request.signal = 0;
 	if (drmWaitVBlank(intel->drmSubFD, &vbl)) {
@@ -2349,6 +2351,12 @@ int intel_crtc_to_pipe(xf86CrtcPtr crtc)
 	return intel_crtc->pipe;
 }
 
+int intel_crtc_to_index(xf86CrtcPtr crtc)
+{
+	struct intel_crtc *intel_crtc = crtc->driver_private;
+	return intel_crtc->index;
+}
+
 Bool intel_crtc_on(xf86CrtcPtr crtc)
 {
 	struct intel_crtc *intel_crtc = crtc->driver_private;
diff --git a/src/uxa/intel_dri.c b/src/uxa/intel_dri.c
index e707b74f091f..d91ed295985d 100644
--- a/src/uxa/intel_dri.c
+++ b/src/uxa/intel_dri.c
@@ -94,11 +94,11 @@ static void I830DRI2FrameEventHandler(unsigned int frame,
 static void
 i830_dri2_del_frame_event(DRI2FrameEventPtr info);
 
-static uint32_t pipe_select(int pipe)
+static uint32_t crtc_select(int index)
 {
-	if (pipe > 1)
-		return pipe << DRM_VBLANK_HIGH_CRTC_SHIFT;
-	else if (pipe > 0)
+	if (index > 1)
+		return index << DRM_VBLANK_HIGH_CRTC_SHIFT;
+	else if (index > 0)
 		return DRM_VBLANK_SECONDARY;
 	else
 		return 0;
@@ -896,7 +896,7 @@ queue_flip(struct intel_screen_private *intel,
 		return FALSE;
 
 	if (!intel_do_pageflip(intel, old_back,
-			       intel_crtc_to_pipe(crtc),
+			       intel_crtc_to_index(crtc),
 			       FALSE, info,
 			       I830DRI2FlipComplete, I830DRI2FlipAbort))
 		return FALSE;
@@ -940,7 +940,7 @@ queue_swap(struct intel_screen_private *intel,
 	vbl.request.type =
 		DRM_VBLANK_RELATIVE |
 		DRM_VBLANK_EVENT |
-		pipe_select(intel_crtc_to_pipe(crtc));
+		crtc_select(intel_crtc_to_index(crtc));
 	vbl.request.sequence = 1;
 	vbl.request.signal =
 		intel_drm_queue_alloc(intel->scrn, crtc, info,
@@ -1096,7 +1096,7 @@ I830DRI2ScheduleSwap(ClientPtr client, DrawablePtr draw, DRI2BufferPtr front,
 	drmVBlank vbl;
 	int ret;
         xf86CrtcPtr crtc = I830DRI2DrawableCrtc(draw);
-        int pipe = crtc ? intel_crtc_to_pipe(crtc) : -1;
+        int index = crtc ? intel_crtc_to_index(crtc) : -1;
         int flip = 0;
 	DRI2FrameEventPtr swap_info = NULL;
 	uint64_t current_msc, current_ust;
@@ -1104,7 +1104,7 @@ I830DRI2ScheduleSwap(ClientPtr client, DrawablePtr draw, DRI2BufferPtr front,
         uint32_t seq;
 
 	/* Drawable not displayed... just complete the swap */
-	if (pipe == -1)
+	if (index == -1)
 	    goto blit_fallback;
 
 	swap_info = calloc(1, sizeof(DRI2FrameEventRec));
@@ -1162,7 +1162,7 @@ I830DRI2ScheduleSwap(ClientPtr client, DrawablePtr draw, DRI2BufferPtr front,
 	 */
 	if (divisor == 0 || current_msc < *target_msc) {
 		vbl.request.type =
-			DRM_VBLANK_ABSOLUTE | DRM_VBLANK_EVENT | pipe_select(pipe);
+			DRM_VBLANK_ABSOLUTE | DRM_VBLANK_EVENT | crtc_select(index);
 
 		/* If non-pageflipping, but blitting/exchanging, we need to use
 		 * DRM_VBLANK_NEXTONMISS to avoid unreliable timestamping later
@@ -1207,7 +1207,7 @@ I830DRI2ScheduleSwap(ClientPtr client, DrawablePtr draw, DRI2BufferPtr front,
 	 * equation.
 	 */
 	vbl.request.type =
-		DRM_VBLANK_ABSOLUTE | DRM_VBLANK_EVENT | pipe_select(pipe);
+		DRM_VBLANK_ABSOLUTE | DRM_VBLANK_EVENT | crtc_select(index);
 	if (flip == 0)
 		vbl.request.type |= DRM_VBLANK_NEXTONMISS;
 
@@ -1322,12 +1322,12 @@ I830DRI2ScheduleWaitMSC(ClientPtr client, DrawablePtr draw, CARD64 target_msc,
 	drmVBlank vbl;
 	int ret;
         xf86CrtcPtr crtc = I830DRI2DrawableCrtc(draw);
-        int pipe = crtc ? intel_crtc_to_pipe(crtc) : -1;
+        int index = crtc ? intel_crtc_to_index(crtc) : -1;
 	CARD64 current_msc, current_ust, request_msc;
         uint32_t seq;
 
 	/* Drawable not visible, return immediately */
-	if (pipe == -1)
+	if (index == -1)
 		goto out_complete;
 
 	wait_info = calloc(1, sizeof(DRI2FrameEventRec));
@@ -1368,7 +1368,7 @@ I830DRI2ScheduleWaitMSC(ClientPtr client, DrawablePtr draw, CARD64 target_msc,
 		if (current_msc >= target_msc)
 			target_msc = current_msc;
 		vbl.request.type =
-			DRM_VBLANK_ABSOLUTE | DRM_VBLANK_EVENT | pipe_select(pipe);
+			DRM_VBLANK_ABSOLUTE | DRM_VBLANK_EVENT | crtc_select(index);
 		vbl.request.sequence = intel_crtc_msc_to_sequence(scrn, crtc, target_msc);
 		vbl.request.signal = seq;
 
@@ -1396,7 +1396,7 @@ I830DRI2ScheduleWaitMSC(ClientPtr client, DrawablePtr draw, CARD64 target_msc,
 	 * so we queue an event that will satisfy the divisor/remainder equation.
 	 */
 	vbl.request.type =
-		DRM_VBLANK_ABSOLUTE | DRM_VBLANK_EVENT | pipe_select(pipe);
+		DRM_VBLANK_ABSOLUTE | DRM_VBLANK_EVENT | crtc_select(index);
 
         request_msc = current_msc - (current_msc % divisor) +
                 remainder;
diff --git a/src/uxa/intel_present.c b/src/uxa/intel_present.c
index ac028edd883e..b21e5c41072f 100644
--- a/src/uxa/intel_present.c
+++ b/src/uxa/intel_present.c
@@ -58,11 +58,11 @@ struct intel_present_vblank_event {
 	uint64_t        event_id;
 };
 
-static uint32_t pipe_select(int pipe)
+static uint32_t crtc_select(int index)
 {
-	if (pipe > 1)
-		return pipe << DRM_VBLANK_HIGH_CRTC_SHIFT;
-	else if (pipe > 0)
+	if (index > 1)
+		return index << DRM_VBLANK_HIGH_CRTC_SHIFT;
+	else if (index > 0)
 		return DRM_VBLANK_SECONDARY;
 	else
 		return 0;
@@ -92,7 +92,7 @@ intel_present_get_crtc(WindowPtr window)
 }
 
 static int
-intel_present_crtc_pipe(ScreenPtr screen, RRCrtcPtr randr_crtc)
+intel_present_crtc_index(ScreenPtr screen, RRCrtcPtr randr_crtc)
 {
 	xf86CrtcPtr crtc;
 
@@ -100,7 +100,7 @@ intel_present_crtc_pipe(ScreenPtr screen, RRCrtcPtr randr_crtc)
 		return 0;
 
 	crtc = randr_crtc->devPrivate;
-	return intel_crtc_to_pipe(crtc);
+	return intel_crtc_to_index(crtc);
 }
 
 static int
@@ -162,7 +162,7 @@ intel_present_queue_vblank(RRCrtcPtr                    crtc,
 	ScreenPtr                               screen = crtc->pScreen;
 	ScrnInfoPtr                             scrn = xf86ScreenToScrn(screen);
 	intel_screen_private                    *intel = intel_get_screen_private(scrn);
-	int                                     pipe = intel_present_crtc_pipe(screen, crtc);
+	int                                     index = intel_present_crtc_index(screen, crtc);
 	struct intel_present_vblank_event       *event;
 	drmVBlank                               vbl;
 	int                                     ret;
@@ -180,7 +180,7 @@ intel_present_queue_vblank(RRCrtcPtr                    crtc,
 		return BadAlloc;
 	}
 
-	vbl.request.type = DRM_VBLANK_ABSOLUTE | DRM_VBLANK_EVENT | pipe_select(pipe);
+	vbl.request.type = DRM_VBLANK_ABSOLUTE | DRM_VBLANK_EVENT | crtc_select(index);
 	vbl.request.sequence = intel_crtc_msc_to_sequence(scrn, xf86_crtc, msc);
 	vbl.request.signal = seq;
 	for (;;) {
@@ -315,7 +315,7 @@ intel_present_flip(RRCrtcPtr                    crtc,
 	ScrnInfoPtr                             scrn = xf86ScreenToScrn(screen);
 	intel_screen_private                    *intel = intel_get_screen_private(scrn);
 	struct intel_present_vblank_event       *event;
-	int                                     pipe = intel_present_crtc_pipe(screen, crtc);
+	int                                     index = intel_present_crtc_index(screen, crtc);
 	dri_bo                                  *bo;
 	Bool                                    ret;
 
@@ -332,7 +332,7 @@ intel_present_flip(RRCrtcPtr                    crtc,
 
 	event->event_id = event_id;
 
-	ret = intel_do_pageflip(intel, bo, pipe, !sync_flip,
+	ret = intel_do_pageflip(intel, bo, index, !sync_flip,
 				event,
 				intel_present_flip_event,
 				intel_present_flip_abort);
-- 
2.39.2

