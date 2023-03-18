Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C826BFA82
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Mar 2023 14:45:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EEA6889BE;
	Sat, 18 Mar 2023 13:45:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD41B10E0FB
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Mar 2023 13:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679147150; x=1710683150;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bia3NHyQfhf0kZdUpCEIylAw+sbgGvmuvTTidnS0zY4=;
 b=ZlhTYJuSJz38mbqGjmIQEZvu7gku8v+w5WCjC2u3ErfYL3Eg1Z//N5ym
 pS+NFWGFQq+LjHXSYlknwQb7jOjTa1RsfgtLczmWb7lwXR1BTmtWl3mQk
 TJDnE9hiYuvKKbrNxdzc3R+P3HuuhVsTB9zuF754JMZdd3jUSABRvL2rS
 JKRVeNwhagYtNebTE34xJohzc3PteE5W3cFTKw49ksB5wYJm2U5lqpu6o
 ZcFrKoJgxZQzWHa1CJWz0l7iVnET34TTIgWQyuz+haxX6ugyirUVkKwcJ
 Z8JuJa6phBUR1bF82M7ArGlxXMxHCgMETprzmV4f63kWTUQSDUQkekErF A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="326798764"
X-IronPort-AV: E=Sophos;i="5.98,271,1673942400"; d="scan'208";a="326798764"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2023 06:45:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="823967781"
X-IronPort-AV: E=Sophos;i="5.98,271,1673942400"; d="scan'208";a="823967781"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 18 Mar 2023 06:45:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 18 Mar 2023 15:45:47 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Mar 2023 15:45:38 +0200
Message-Id: <20230318134544.11033-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230318134544.11033-1-ville.syrjala@linux.intel.com>
References: <20230318134544.11033-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH xf86-video-intel 2/8] sna: Switch to using crtc
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

The places where we must use the kms crtc indexes are
eg. vblank ioctl crtc selection bits, and checks
against in encoder possible_crtcs bitmask.

The only place where we must stick to the hardware pipe
indexing is the MI_SCANLINE_WAIT stuff as there we have to
construct CS packets to be consumed by the hardware itself.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 src/sna/sna.h         |  5 +++++
 src/sna/sna_display.c | 12 +++++++++---
 src/sna/sna_dri2.c    | 43 ++++++++++++++++++++++---------------------
 src/sna/sna_present.c | 32 ++++++++++++++++----------------
 4 files changed, 52 insertions(+), 40 deletions(-)

diff --git a/src/sna/sna.h b/src/sna/sna.h
index f08f4d239878..cbebea0dc7f3 100644
--- a/src/sna/sna.h
+++ b/src/sna/sna.h
@@ -670,6 +670,11 @@ static inline unsigned sna_crtc_pipe(xf86CrtcPtr crtc)
 	return *sna_crtc_flags(crtc) >> 8 & 0xff;
 }
 
+static inline unsigned sna_crtc_index(xf86CrtcPtr crtc)
+{
+	return *sna_crtc_flags(crtc) >> 16 & 0xff;
+}
+
 static inline bool sna_crtc_is_on(xf86CrtcPtr crtc)
 {
 	return *sna_crtc_flags(crtc) & CRTC_ON;
diff --git a/src/sna/sna_display.c b/src/sna/sna_display.c
index 15df51f6a213..508c35e98742 100644
--- a/src/sna/sna_display.c
+++ b/src/sna/sna_display.c
@@ -434,6 +434,11 @@ static inline unsigned __sna_crtc_pipe(struct sna_crtc *crtc)
 	return crtc->public.flags >> 8 & 0xff;
 }
 
+static inline unsigned __sna_crtc_index(struct sna_crtc *crtc)
+{
+	return crtc->public.flags >> 16 & 0xff;
+}
+
 static inline unsigned __sna_crtc_id(struct sna_crtc *crtc)
 {
 	return crtc->id;
@@ -3777,7 +3782,7 @@ sna_crtc_init__cursor(struct sna *sna, struct sna_crtc *crtc)
 }
 
 static bool
-sna_crtc_add(ScrnInfoPtr scrn, unsigned id)
+sna_crtc_add(ScrnInfoPtr scrn, unsigned id, int index)
 {
 	struct sna *sna = to_sna(scrn);
 	xf86CrtcPtr crtc;
@@ -3804,9 +3809,10 @@ sna_crtc_add(ScrnInfoPtr scrn, unsigned id)
 	}
 	assert((unsigned)get_pipe.pipe < 256);
 	sna_crtc->public.flags |= get_pipe.pipe << 8;
+	sna_crtc->public.flags |= index << 16;
 
 	if (is_zaphod(scrn) &&
-	    (get_zaphod_crtcs(sna) & (1 << get_pipe.pipe)) == 0) {
+	    (get_zaphod_crtcs(sna) & (1 << index)) == 0) {
 		free(sna_crtc);
 		return true;
 	}
@@ -7891,7 +7897,7 @@ bool sna_mode_pre_init(ScrnInfoPtr scrn, struct sna *sna)
 		xf86_config->compat_output = 0;
 
 		for (i = 0; i < res->count_crtcs; i++)
-			if (!sna_crtc_add(scrn, res->crtcs[i]))
+			if (!sna_crtc_add(scrn, res->crtcs[i], i))
 				return false;
 
 		sna->mode.num_real_crtc = xf86_config->num_crtc;
diff --git a/src/sna/sna_dri2.c b/src/sna/sna_dri2.c
index 4361af71f3aa..82c855a06a59 100644
--- a/src/sna/sna_dri2.c
+++ b/src/sna/sna_dri2.c
@@ -118,7 +118,7 @@ struct sna_dri2_event {
 	ClientPtr client;
 	enum event_type type;
 	xf86CrtcPtr crtc;
-	int pipe;
+	int index;
 	bool queued;
 	bool sync;
 	bool chained;
@@ -1459,17 +1459,17 @@ sna_dri2_copy_region(DrawablePtr draw,
 	__sna_dri2_copy_region(sna, draw, region, src, dst, DRI2_DAMAGE);
 }
 
-inline static uint32_t pipe_select(int pipe)
+inline static uint32_t crtc_select(int index)
 {
 	/* The third pipe was introduced with IvyBridge long after
 	 * multiple pipe support was added to the kernel, hence
 	 * we can safely ignore the capability check - if we have more
 	 * than two pipes, we can assume that they are fully supported.
 	 */
-	assert(pipe < _DRM_VBLANK_HIGH_CRTC_MASK);
-	if (pipe > 1)
-		return pipe << DRM_VBLANK_HIGH_CRTC_SHIFT;
-	else if (pipe > 0)
+	assert(index < _DRM_VBLANK_HIGH_CRTC_MASK);
+	if (index > 1)
+		return index << DRM_VBLANK_HIGH_CRTC_SHIFT;
+	else if (index > 0)
 		return DRM_VBLANK_SECONDARY;
 	else
 		return 0;
@@ -1479,15 +1479,15 @@ static inline bool sna_next_vblank(struct sna_dri2_event *info)
 {
 	union drm_wait_vblank vbl;
 
-	DBG(("%s(pipe=%d, waiting until next vblank)\n",
-	     __FUNCTION__, info->pipe));
-	assert(info->pipe != -1);
+	DBG(("%s(crtc=%d, waiting until next vblank)\n",
+	     __FUNCTION__, info->index));
+	assert(info->index != -1);
 
 	VG_CLEAR(vbl);
 	vbl.request.type =
 		DRM_VBLANK_RELATIVE |
 		DRM_VBLANK_EVENT |
-		pipe_select(info->pipe);
+		crtc_select(info->index);
 	vbl.request.sequence = 1;
 	vbl.request.signal = (uintptr_t)info;
 
@@ -1504,15 +1504,15 @@ static inline bool sna_wait_vblank(struct sna_dri2_event *info,
 {
 	union drm_wait_vblank vbl;
 
-	DBG(("%s(pipe=%d, waiting until vblank %u)\n",
-	     __FUNCTION__, info->pipe, seq));
-	assert(info->pipe != -1);
+	DBG(("%s(crtc=%d, waiting until vblank %u)\n",
+	     __FUNCTION__, info->index, seq));
+	assert(info->index != -1);
 
 	VG_CLEAR(vbl);
 	vbl.request.type =
 		DRM_VBLANK_ABSOLUTE |
 		DRM_VBLANK_EVENT |
-		pipe_select(info->pipe);
+		crtc_select(info->index);
 	vbl.request.sequence = seq;
 	vbl.request.signal = (uintptr_t)info;
 
@@ -1610,8 +1610,8 @@ static void frame_swap_complete(struct sna_dri2_event *frame, int type)
 	assert(frame->draw);
 
 	swap = sna_crtc_last_swap(frame->crtc);
-	DBG(("%s(type=%d): draw=%ld, pipe=%d, frame=%lld [msc=%lld], tv=%d.%06d\n",
-	     __FUNCTION__, type, (long)frame->draw->id, frame->pipe,
+	DBG(("%s(type=%d): draw=%ld, crtc=%d, frame=%lld [msc=%lld], tv=%d.%06d\n",
+	     __FUNCTION__, type, (long)frame->draw->id, frame->index,
 	     (long long)swap->msc,
 	     (long long)draw_current_msc(frame->draw, frame->crtc, swap->msc),
 	     swap->tv_sec, swap->tv_usec));
@@ -1809,7 +1809,7 @@ sna_dri2_add_event(struct sna *sna,
 	info->sna = sna;
 	info->draw = draw;
 	info->crtc = crtc;
-	info->pipe = sna_crtc_pipe(crtc);
+	info->index = sna_crtc_index(crtc);
 	info->keepalive = 1;
 
 	if (!add_event_to_client(info, sna, client)) {
@@ -2749,8 +2749,8 @@ sna_dri2_immediate_blit(struct sna *sna,
 	if (sna->flags & SNA_NO_WAIT)
 		sync = false;
 
-	DBG(("%s: emitting immediate blit, throttling client, synced? %d, chained? %d, pipe %d\n",
-	     __FUNCTION__, sync, chain != info, info->pipe));
+	DBG(("%s: emitting immediate blit, throttling client, synced? %d, chained? %d, crtc %d\n",
+	     __FUNCTION__, sync, chain != info, info->index));
 	assert(chain);
 
 	info->type = SWAP_COMPLETE;
@@ -2925,7 +2925,8 @@ static void sna_dri2_flip_event(struct sna_dri2_event *flip)
 {
 	struct sna *sna = flip->sna;
 
-	DBG(("%s flip=%p (pipe=%d, event=%d, queued?=%d)\n", __FUNCTION__, flip, flip->pipe, flip->type, flip->queued));
+	DBG(("%s flip=%p (crtc=%d, event=%d, queued?=%d)\n",
+	     __FUNCTION__, flip, flip->index, flip->type, flip->queued));
 	if (!flip->queued) /* pageflip died whilst being queued */
 		return;
 	flip->queued = false;
@@ -2995,7 +2996,7 @@ sna_query_vblank(struct sna *sna, xf86CrtcPtr crtc, union drm_wait_vblank *vbl)
 {
 	VG_CLEAR(*vbl);
 	vbl->request.type =
-		_DRM_VBLANK_RELATIVE | pipe_select(sna_crtc_pipe(crtc));
+		_DRM_VBLANK_RELATIVE | crtc_select(sna_crtc_index(crtc));
 	vbl->request.sequence = 0;
 
 	return drmIoctl(sna->kgem.fd, DRM_IOCTL_WAIT_VBLANK, vbl);
diff --git a/src/sna/sna_present.c b/src/sna/sna_present.c
index 96be088a7450..b4f6256691e6 100644
--- a/src/sna/sna_present.c
+++ b/src/sna/sna_present.c
@@ -104,27 +104,27 @@ static inline bool has_vblank(xf86CrtcPtr crtc)
 	return (uintptr_t)crtc & 1;
 }
 
-static inline int pipe_from_crtc(RRCrtcPtr crtc)
+static inline int crtc_index_from_crtc(RRCrtcPtr crtc)
 {
-	return crtc ? sna_crtc_pipe(crtc->devPrivate) : -1;
+	return crtc ? sna_crtc_index(crtc->devPrivate) : -1;
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
 }
 
-static inline int sna_wait_vblank(struct sna *sna, union drm_wait_vblank *vbl, int pipe)
+static inline int sna_wait_vblank(struct sna *sna, union drm_wait_vblank *vbl, int index)
 {
-	DBG(("%s(pipe=%d, waiting until seq=%u%s)\n",
-	     __FUNCTION__, pipe, vbl->request.sequence,
+	DBG(("%s(crtc=%d, waiting until seq=%u%s)\n",
+	     __FUNCTION__, index, vbl->request.sequence,
 	     vbl->request.type & DRM_VBLANK_RELATIVE ? " [relative]" : ""));
-	vbl->request.type |= pipe_select(pipe);
+	vbl->request.type |= crtc_select(index);
 	return drmIoctl(sna->kgem.fd, DRM_IOCTL_WAIT_VBLANK, vbl);
 }
 
@@ -228,7 +228,7 @@ static CARD32 sna_fake_vblank_handler(OsTimerPtr timer, CARD32 now, void *data)
 	VG_CLEAR(vbl);
 	vbl.request.type = (uint32_t)DRM_VBLANK_RELATIVE;
 	vbl.request.sequence = 0;
-	if (sna_wait_vblank(info->sna, &vbl, sna_crtc_pipe(info->crtc)) == 0) {
+	if (sna_wait_vblank(info->sna, &vbl, sna_crtc_index(info->crtc)) == 0) {
 		ust = ust64(vbl.reply.tval_sec, vbl.reply.tval_usec);
 		msc = sna_crtc_record_vblank(info->crtc, &vbl);
 		DBG(("%s: event=%lld, target msc=%lld, now %lld\n",
@@ -243,7 +243,7 @@ static CARD32 sna_fake_vblank_handler(OsTimerPtr timer, CARD32 now, void *data)
 				vbl.request.type = DRM_VBLANK_ABSOLUTE | DRM_VBLANK_EVENT;
 				vbl.request.sequence = info->target_msc;
 				vbl.request.signal = (uintptr_t)MARK_PRESENT(info);
-				if (sna_wait_vblank(info->sna, &vbl, sna_crtc_pipe(info->crtc)) == 0) {
+				if (sna_wait_vblank(info->sna, &vbl, sna_crtc_index(info->crtc)) == 0) {
 					DBG(("%s: scheduled new vblank event for %lld\n", __FUNCTION__, (long long)info->target_msc));
 					add_to_crtc_vblank(info, delta);
 					free(timer);
@@ -263,7 +263,7 @@ static CARD32 sna_fake_vblank_handler(OsTimerPtr timer, CARD32 now, void *data)
 			DBG(("%s: blocking wait!\n", __FUNCTION__));
 			vbl.request.type = (uint32_t)DRM_VBLANK_ABSOLUTE;
 			vbl.request.sequence = info->target_msc;
-			if (sna_wait_vblank(info->sna, &vbl, sna_crtc_pipe(info->crtc)) == 0) {
+			if (sna_wait_vblank(info->sna, &vbl, sna_crtc_index(info->crtc)) == 0) {
 				ust = ust64(vbl.reply.tval_sec, vbl.reply.tval_usec);
 				msc = sna_crtc_record_vblank(info->crtc, &vbl);
 			} else {
@@ -337,7 +337,7 @@ static bool sna_present_queue(struct sna_present_event *info,
 	vbl.request.sequence = info->target_msc;
 	vbl.request.signal = (uintptr_t)MARK_PRESENT(info);
 	if (delta > 2 ||
-	    sna_wait_vblank(info->sna, &vbl, sna_crtc_pipe(info->crtc))) {
+	    sna_wait_vblank(info->sna, &vbl, sna_crtc_index(info->crtc))) {
 		DBG(("%s: vblank enqueue failed, faking delta=%d\n", __FUNCTION__, delta));
 		if (!sna_fake_vblank(info))
 			return false;
@@ -408,7 +408,7 @@ static void add_keepalive(struct sna *sna, xf86CrtcPtr crtc, uint64_t msc)
 	vbl.request.sequence = msc;
 	vbl.request.signal = (uintptr_t)MARK_PRESENT(info);
 
-	if (sna_wait_vblank(info->sna, &vbl, sna_crtc_pipe(crtc)) == 0) {
+	if (sna_wait_vblank(info->sna, &vbl, sna_crtc_index(crtc)) == 0) {
 		list_add_tail(&info->link, &tmp->link);
 		add_to_crtc_vblank(info, 1);
 		info->queued = true;
@@ -432,7 +432,7 @@ sna_present_get_ust_msc(RRCrtcPtr crtc, CARD64 *ust, CARD64 *msc)
 	VG_CLEAR(vbl);
 	vbl.request.type = (uint32_t)DRM_VBLANK_RELATIVE;
 	vbl.request.sequence = 0;
-	if (sna_wait_vblank(sna, &vbl, sna_crtc_pipe(crtc->devPrivate)) == 0) {
+	if (sna_wait_vblank(sna, &vbl, sna_crtc_index(crtc->devPrivate)) == 0) {
 		*ust = ust64(vbl.reply.tval_sec, vbl.reply.tval_usec);
 		*msc = sna_crtc_record_vblank(crtc->devPrivate, &vbl);
 
-- 
2.39.2

