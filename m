Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB386BFA84
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Mar 2023 14:46:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A08610E106;
	Sat, 18 Mar 2023 13:45:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BA6D10E106
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Mar 2023 13:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679147157; x=1710683157;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EnYMYMuzfI+Uc96n0utRePFCp/nWLJm6sNDpPmUQ5h0=;
 b=Ueww/QZIzbTt502JArSGYy6jMS3KNIRkrktKg6jtFD47YRlmJpvqksl8
 C6hdcXX+SgQiwoAqDKNceiqSlRzWUbQ0LNgTIk7D6H60rBquy6A0HFNmn
 sp+r/bHU2TUm0Oej48owos5uKTz80T/D9eK3HmhrvMNRa1b5Z5QCO1Jv9
 XS/ZArnC1FdTds69oMUf8PRCt5ZNgdLIjTH7KeoLZnQuY4tUU+ZPklZXi
 cJnPtEp5onygdmgSGskABmb1MYrP+EQGOytcli2SdaiXdQdjtHIQzO70o
 7wFuTbdIgtRx9UIsaSmg57xmdb+ROGpIpb1yKE+Kl0QeDxOuy6bLjY6es A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="326798772"
X-IronPort-AV: E=Sophos;i="5.98,271,1673942400"; d="scan'208";a="326798772"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2023 06:45:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="823967789"
X-IronPort-AV: E=Sophos;i="5.98,271,1673942400"; d="scan'208";a="823967789"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 18 Mar 2023 06:45:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 18 Mar 2023 15:45:53 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Mar 2023 15:45:40 +0200
Message-Id: <20230318134544.11033-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230318134544.11033-1-ville.syrjala@linux.intel.com>
References: <20230318134544.11033-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH xf86-video-intel 4/8] sna: Switch debugs/errors
 to use crtc index rather than pipe
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

Let's the limit the use of hardware pipe numbers to absolutely
the only place where it's needed (MI_SCANLINE_WAIT). Everywhere
else just use the crtc index.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 src/sna/sna_display.c      | 220 +++++++++++++++++++------------------
 src/sna/sna_dri2.c         |  24 ++--
 src/sna/sna_present.c      |  40 +++----
 src/sna/sna_video_sprite.c |   4 +-
 4 files changed, 148 insertions(+), 140 deletions(-)

diff --git a/src/sna/sna_display.c b/src/sna/sna_display.c
index 508c35e98742..d4fa7b0bc759 100644
--- a/src/sna/sna_display.c
+++ b/src/sna/sna_display.c
@@ -515,12 +515,12 @@ static inline bool msc64(struct sna_crtc *sna_crtc, uint32_t seq, uint64_t *msc)
 	if (seq < sna_crtc->last_seq) {
 		if (sna_crtc->last_seq - seq > 0x40000000) {
 			sna_crtc->wrap_seq++;
-			DBG(("%s: pipe=%d wrapped; was %u, now %u, wraps=%u\n",
-			     __FUNCTION__, __sna_crtc_pipe(sna_crtc),
+			DBG(("%s: crtc=%d wrapped; was %u, now %u, wraps=%u\n",
+			     __FUNCTION__, __sna_crtc_index(sna_crtc),
 			     sna_crtc->last_seq, seq, sna_crtc->wrap_seq));
 		} else {
-			DBG(("%s: pipe=%d msc went backwards; was %u, now %u; ignoring for last_swap\n",
-			     __FUNCTION__, __sna_crtc_pipe(sna_crtc), sna_crtc->last_seq, seq));
+			DBG(("%s: crtc=%d msc went backwards; was %u, now %u; ignoring for last_swap\n",
+			     __FUNCTION__, __sna_crtc_index(sna_crtc), sna_crtc->last_seq, seq));
 
 			record = false;
 		}
@@ -538,15 +538,15 @@ uint64_t sna_crtc_record_swap(xf86CrtcPtr crtc,
 	assert(sna_crtc);
 
 	if (msc64(sna_crtc, seq, &msc)) {
-		DBG(("%s: recording last swap on pipe=%d, frame %d [msc=%08lld], time %d.%06d\n",
-		     __FUNCTION__, __sna_crtc_pipe(sna_crtc), seq, (long long)msc,
+		DBG(("%s: recording last swap on crtc=%d, frame %d [msc=%08lld], time %d.%06d\n",
+		     __FUNCTION__, __sna_crtc_index(sna_crtc), seq, (long long)msc,
 		     tv_sec, tv_usec));
 		sna_crtc->swap.tv_sec = tv_sec;
 		sna_crtc->swap.tv_usec = tv_usec;
 		sna_crtc->swap.msc = msc;
 	} else {
-		DBG(("%s: swap event on pipe=%d, frame %d [msc=%08lld], time %d.%06d\n",
-		     __FUNCTION__, __sna_crtc_pipe(sna_crtc), seq, (long long)msc,
+		DBG(("%s: swap event on crtc=%d, frame %d [msc=%08lld], time %d.%06d\n",
+		     __FUNCTION__, __sna_crtc_index(sna_crtc), seq, (long long)msc,
 		     tv_sec, tv_usec));
 	}
 
@@ -1272,7 +1272,7 @@ sna_crtc_force_outputs_on(xf86CrtcPtr crtc)
 	int i;
 
 	assert(to_sna_crtc(crtc));
-	DBG(("%s(pipe=%d)\n", __FUNCTION__, sna_crtc_pipe(crtc)));
+	DBG(("%s(crtc=%d)\n", __FUNCTION__, sna_crtc_index(crtc)));
 
 	/* DPMS handling by the kernel is inconsistent, so after setting a
 	 * mode on an output presume that we intend for it to be on, or that
@@ -1304,7 +1304,7 @@ sna_crtc_force_outputs_off(xf86CrtcPtr crtc)
 	int i;
 
 	assert(to_sna_crtc(crtc));
-	DBG(("%s(pipe=%d)\n", __FUNCTION__, sna_crtc_pipe(crtc)));
+	DBG(("%s(crtc=%d)\n", __FUNCTION__, sna_crtc_index(crtc)));
 
 	/* DPMS handling by the kernel is inconsistent, so after setting a
 	 * mode on an output presume that we intend for it to be on, or that
@@ -1423,9 +1423,9 @@ bool sna_crtc_set_sprite_rotation(xf86CrtcPtr crtc,
 	if (!sprite)
 		return false;
 
-	DBG(("%s: CRTC:%d [pipe=%d], sprite=%u set-rotation=%x\n",
+	DBG(("%s: CRTC:%d [crtc=%d], sprite=%u set-rotation=%x\n",
 	     __FUNCTION__,
-	     sna_crtc_id(crtc), sna_crtc_pipe(crtc),
+	     sna_crtc_id(crtc), sna_crtc_index(crtc),
 	     sprite->id, rotation));
 
 	return rotation_set(to_sna(crtc->scrn), sprite,
@@ -1534,12 +1534,12 @@ sna_crtc_apply(xf86CrtcPtr crtc)
 	struct kmsg kmsg;
 	int ret = EINVAL;
 
-	DBG(("%s CRTC:%d [pipe=%d], handle=%d\n", __FUNCTION__,
-	     __sna_crtc_id(sna_crtc), __sna_crtc_pipe(sna_crtc),
+	DBG(("%s CRTC:%d [crtc=%d], handle=%d\n", __FUNCTION__,
+	     __sna_crtc_id(sna_crtc), __sna_crtc_index(sna_crtc),
 	     sna_crtc->bo->handle));
 	if (!sna_crtc->kmode.clock) {
-		ERR(("%s(CRTC:%d [pipe=%d]): attempted to set an invalid mode\n",
-		     __FUNCTION__, __sna_crtc_id(sna_crtc), __sna_crtc_pipe(sna_crtc)));
+		ERR(("%s(CRTC:%d [crtc=%d]): attempted to set an invalid mode\n",
+		     __FUNCTION__, __sna_crtc_id(sna_crtc), __sna_crtc_index(sna_crtc)));
 		return EINVAL;
 	}
 
@@ -1556,13 +1556,14 @@ sna_crtc_apply(xf86CrtcPtr crtc)
 	}
 
 	if (!rotation_set(sna, &sna_crtc->primary, sna_crtc->rotation)) {
-		ERR(("%s: set-primary-rotation failed (rotation-id=%d, rotation=%d) on CRTC:%d [pipe=%d], errno=%d\n",
-		     __FUNCTION__, sna_crtc->primary.rotation.prop, sna_crtc->rotation, __sna_crtc_id(sna_crtc), __sna_crtc_pipe(sna_crtc), errno));
+		ERR(("%s: set-primary-rotation failed (rotation-id=%d, rotation=%d) on CRTC:%d [crtc=%d], errno=%d\n",
+		     __FUNCTION__, sna_crtc->primary.rotation.prop, sna_crtc->rotation,
+		     __sna_crtc_id(sna_crtc), __sna_crtc_index(sna_crtc), errno));
 		sna_crtc->primary.rotation.supported &= ~sna_crtc->rotation;
 		goto unblock;
 	}
-	DBG(("%s: CRTC:%d [pipe=%d] primary rotation set to %x\n",
-	     __FUNCTION__, __sna_crtc_id(sna_crtc), __sna_crtc_pipe(sna_crtc), sna_crtc->rotation));
+	DBG(("%s: CRTC:%d [crtc=%d] primary rotation set to %x\n",
+	     __FUNCTION__, __sna_crtc_id(sna_crtc), __sna_crtc_index(sna_crtc), sna_crtc->rotation));
 
 	for (i = 0; i < sna->mode.num_real_output; i++) {
 		xf86OutputPtr output = config->output[i];
@@ -1585,13 +1586,13 @@ sna_crtc_apply(xf86CrtcPtr crtc)
 		if (!to_sna_output(output)->id)
 			continue;
 
-		DBG(("%s: attaching output '%s' %d [%d] to crtc:%d (pipe %d) (possible crtc:%x, possible clones:%x)\n",
+		DBG(("%s: attaching output '%s' %d [%d] to crtc:%d (crtc %d) (possible crtc:%x, possible clones:%x)\n",
 		     __FUNCTION__, output->name, i, to_connector_id(output),
-		     __sna_crtc_id(sna_crtc), __sna_crtc_pipe(sna_crtc),
+		     __sna_crtc_id(sna_crtc), __sna_crtc_index(sna_crtc),
 		     (uint32_t)output->possible_crtcs,
 		     (uint32_t)output->possible_clones));
 
-		assert(output->possible_crtcs & (1 << __sna_crtc_pipe(sna_crtc)) ||
+		assert(output->possible_crtcs & (1 << __sna_crtc_index(sna_crtc)) ||
 		       is_zaphod(crtc->scrn));
 
 		output_ids[output_count] = to_connector_id(output);
@@ -1623,8 +1624,8 @@ sna_crtc_apply(xf86CrtcPtr crtc)
 	arg.mode = sna_crtc->kmode;
 	arg.mode_valid = 1;
 
-	DBG(("%s: applying crtc [%d, pipe=%d] mode=%dx%d+%d+%d@%d, fb=%d%s%s update to %d outputs [%d...]\n",
-	     __FUNCTION__, __sna_crtc_id(sna_crtc), __sna_crtc_pipe(sna_crtc),
+	DBG(("%s: applying crtc [%d, crtc=%d] mode=%dx%d+%d+%d@%d, fb=%d%s%s update to %d outputs [%d...]\n",
+	     __FUNCTION__, __sna_crtc_id(sna_crtc), __sna_crtc_index(sna_crtc),
 	     arg.mode.hdisplay,
 	     arg.mode.vdisplay,
 	     arg.x, arg.y,
@@ -2032,11 +2033,11 @@ static void sna_crtc_slave_damage(DamagePtr damage, RegionPtr region, void *clos
 	struct sna *sna = to_sna(crtc->base->scrn);
 	RegionPtr scr;
 
-	DBG(("%s: pushing damage [(%d, %d), (%d, %d) x %d] to CRTC [pipe=%d] (%d, %d)\n",
+	DBG(("%s: pushing damage [(%d, %d), (%d, %d) x %d] to CRTC [crtc=%d] (%d, %d)\n",
 	     __FUNCTION__,
 	     region->extents.x1, region->extents.y1, region->extents.x2, region->extents.y2,
 	     region_num_rects(region),
-	     __sna_crtc_pipe(crtc), crtc->base->x, crtc->base->y));
+	     __sna_crtc_index(crtc), crtc->base->x, crtc->base->y));
 
 	assert(crtc->slave_damage == damage);
 	assert(sna->mode.shadow_damage);
@@ -2066,8 +2067,9 @@ static bool sna_crtc_enable_shadow(struct sna *sna, struct sna_crtc *crtc)
 	if (crtc->slave_pixmap) {
 		assert(crtc->slave_damage == NULL);
 
-		DBG(("%s: enabling PRIME slave tracking on CRTC %d [pipe=%d], pixmap=%ld\n",
-		     __FUNCTION__, __sna_crtc_id(crtc), __sna_crtc_pipe(crtc), crtc->slave_pixmap->drawable.serialNumber));
+		DBG(("%s: enabling PRIME slave tracking on CRTC %d [crtc=%d], pixmap=%ld\n",
+		     __FUNCTION__, __sna_crtc_id(crtc), __sna_crtc_index(crtc),
+		     crtc->slave_pixmap->drawable.serialNumber));
 		crtc->slave_damage = DamageCreate(sna_crtc_slave_damage, NULL,
 						  DamageReportRawRegion, TRUE,
 						  to_screen_from_sna(sna),
@@ -2195,8 +2197,8 @@ sna_crtc_disable(xf86CrtcPtr crtc, bool force)
 	if (!force && sna_crtc->bo == NULL)
 		return;
 
-	DBG(("%s: disabling crtc [%d, pipe=%d], force?=%d\n", __FUNCTION__,
-	     __sna_crtc_id(sna_crtc), __sna_crtc_pipe(sna_crtc), force));
+	DBG(("%s: disabling crtc [%d, crtc=%d], force?=%d\n", __FUNCTION__,
+	     __sna_crtc_id(sna_crtc), __sna_crtc_index(sna_crtc), force));
 
 	sna_crtc_force_outputs_off(crtc);
 
@@ -2220,20 +2222,20 @@ static void update_flush_interval(struct sna *sna)
 		assert(to_sna_crtc(crtc) != NULL);
 
 		if (!crtc->enabled) {
-			DBG(("%s: CRTC:%d (pipe %d) disabled\n",
-			     __FUNCTION__,i, sna_crtc_pipe(crtc)));
+			DBG(("%s: CRTC:%d (crtc %d) disabled\n",
+			     __FUNCTION__,i, sna_crtc_index(crtc)));
 			assert(to_sna_crtc(crtc)->bo == NULL);
 			continue;
 		}
 
 		if (to_sna_crtc(crtc)->bo == NULL) {
-			DBG(("%s: CRTC:%d (pipe %d) turned off\n",
-			     __FUNCTION__,i, sna_crtc_pipe(crtc)));
+			DBG(("%s: CRTC:%d (crtc %d) turned off\n",
+			     __FUNCTION__,i, sna_crtc_index(crtc)));
 			continue;
 		}
 
-		DBG(("%s: CRTC:%d (pipe %d) vrefresh=%f\n",
-		     __FUNCTION__, i, sna_crtc_pipe(crtc),
+		DBG(("%s: CRTC:%d (crt %d) vrefresh=%f\n",
+		     __FUNCTION__, i, sna_crtc_index(crtc),
 		     xf86ModeVRefresh(&crtc->mode)));
 		max_vrefresh = max(max_vrefresh, xf86ModeVRefresh(&crtc->mode));
 	}
@@ -3053,8 +3055,8 @@ __sna_crtc_set_mode(xf86CrtcPtr crtc)
 	bool saved_cursor_transform;
 	int ret;
 
-	DBG(("%s: CRTC=%d, pipe=%d, hidden?=%d\n", __FUNCTION__,
-	     __sna_crtc_id(sna_crtc), __sna_crtc_pipe(sna_crtc), sna->mode.hidden));
+	DBG(("%s: CRTC=%d, crtc=%d, hidden?=%d\n", __FUNCTION__,
+	     __sna_crtc_id(sna_crtc), __sna_crtc_index(sna_crtc), sna->mode.hidden));
 	if (sna->mode.hidden)
 		return TRUE;
 
@@ -3155,9 +3157,9 @@ sna_crtc_set_mode_major(xf86CrtcPtr crtc, DisplayModePtr mode,
 	assert(sna_crtc);
 
 	xf86DrvMsg(crtc->scrn->scrnIndex, X_INFO,
-		   "switch to mode %dx%d@%.1f on %s using pipe %d, position (%d, %d), rotation %s, reflection %s\n",
+		   "switch to mode %dx%d@%.1f on %s using crtc %d, position (%d, %d), rotation %s, reflection %s\n",
 		   mode->HDisplay, mode->VDisplay, xf86ModeVRefresh(mode),
-		   outputs_for_crtc(crtc, outputs, sizeof(outputs)), __sna_crtc_pipe(sna_crtc),
+		   outputs_for_crtc(crtc, outputs, sizeof(outputs)), __sna_crtc_index(sna_crtc),
 		   x, y, rotation_to_str(rotation), reflection_to_str(rotation));
 
 	assert(mode->HDisplay <= sna->mode.max_crtc_width &&
@@ -3181,8 +3183,8 @@ sna_crtc_set_mode_major(xf86CrtcPtr crtc, DisplayModePtr mode,
 static void
 sna_crtc_dpms(xf86CrtcPtr crtc, int mode)
 {
-	DBG(("%s(pipe %d, dpms mode -> %d):= active=%d\n",
-	     __FUNCTION__, sna_crtc_pipe(crtc), mode, mode == DPMSModeOn));
+	DBG(("%s(crtc %d, dpms mode -> %d):= active=%d\n",
+	     __FUNCTION__, sna_crtc_index(crtc), mode, mode == DPMSModeOn));
 
 	if (mode == DPMSModeOn && crtc->enabled) {
 		if (__sna_crtc_set_mode(crtc))
@@ -3294,8 +3296,8 @@ sna_crtc_set_scanout_pixmap(xf86CrtcPtr crtc, PixmapPtr pixmap)
 	if (pixmap == sna_crtc->slave_pixmap)
 		return TRUE;
 
-	DBG(("%s: CRTC:%d, pipe=%d setting scanout pixmap=%ld\n",
-	     __FUNCTION__, __sna_crtc_id(sna_crtc),  __sna_crtc_pipe(sna_crtc),
+	DBG(("%s: CRTC:%d, crtc=%d setting scanout pixmap=%ld\n",
+	     __FUNCTION__, __sna_crtc_id(sna_crtc),  __sna_crtc_index(sna_crtc),
 	     pixmap ? pixmap->drawable.serialNumber : 0));
 
 	/* Disable first so that we can unregister the damage tracking */
@@ -3601,11 +3603,11 @@ sna_crtc_find_planes(struct sna *sna, struct sna_crtc *crtc)
 		if (drmIoctl(sna->kgem.fd, LOCAL_IOCTL_MODE_GETPLANE, &p))
 			continue;
 
-		if ((p.possible_crtcs & (1 << __sna_crtc_pipe(crtc))) == 0)
+		if ((p.possible_crtcs & (1 << __sna_crtc_index(crtc))) == 0)
 			continue;
 
-		DBG(("%s: plane %d is attached to our pipe=%d\n",
-		     __FUNCTION__, planes[i], __sna_crtc_pipe(crtc)));
+		DBG(("%s: plane %d is attached to our crtc=%d\n",
+		     __FUNCTION__, planes[i], __sna_crtc_index(crtc)));
 
 		details.id = p.plane_id;
 		details.rotation.prop = 0;
@@ -3824,8 +3826,8 @@ sna_crtc_add(ScrnInfoPtr scrn, unsigned id, int index)
 
 	sna_crtc_find_planes(sna, sna_crtc);
 
-	DBG(("%s: CRTC:%d [pipe=%d], primary id=%x: supported-rotations=%x, current-rotation=%x\n",
-	     __FUNCTION__, id, get_pipe.pipe,
+	DBG(("%s: CRTC:%d [crtc=%d][pipe=%d], primary id=%x: supported-rotations=%x, current-rotation=%x\n",
+	     __FUNCTION__, id, index, get_pipe.pipe,
 	     sna_crtc->primary.id, sna_crtc->primary.rotation.supported, sna_crtc->primary.rotation.current));
 
 	list_init(&sna_crtc->shadow_link);
@@ -3840,8 +3842,8 @@ sna_crtc_add(ScrnInfoPtr scrn, unsigned id, int index)
 
 	crtc->driver_private = sna_crtc;
 	sna_crtc->base = crtc;
-	DBG(("%s: attached crtc[%d] pipe=%d\n",
-	     __FUNCTION__, id, __sna_crtc_pipe(sna_crtc)));
+	DBG(("%s: attached crtc[%d] crtc=%d\n",
+	     __FUNCTION__, id, __sna_crtc_index(sna_crtc)));
 
 	return true;
 }
@@ -4411,9 +4413,9 @@ sna_output_get_modes(xf86OutputPtr output)
 		mode.crtc_id = sna_crtc_id(output->crtc);
 
 		if (drmIoctl(to_sna(output->scrn)->kgem.fd, DRM_IOCTL_MODE_GETCRTC, &mode) == 0) {
-			DBG(("%s: CRTC:%d, pipe=%d: has mode?=%d\n", __FUNCTION__,
+			DBG(("%s: CRTC:%d, crtc=%d: has mode?=%d\n", __FUNCTION__,
 			     sna_crtc_id(output->crtc),
-			     sna_crtc_pipe(output->crtc),
+			     sna_crtc_index(output->crtc),
 			     mode.mode_valid && mode.mode.clock));
 
 			if (mode.mode_valid && mode.mode.clock) {
@@ -6467,21 +6469,21 @@ sna_show_cursors(ScrnInfoPtr scrn)
 			continue;
 
 		if (!crtc->cursor_in_range) {
-			DBG(("%s: skipping cursor outside CRTC (pipe=%d)\n",
-			     __FUNCTION__, sna_crtc_pipe(crtc)));
+			DBG(("%s: skipping cursor outside CRTC (crtc=%d)\n",
+			     __FUNCTION__, sna_crtc_index(crtc)));
 			continue;
 		}
 
 		cursor = __sna_get_cursor(sna, crtc);
 		if (cursor == NULL ||
 		    (sna_crtc->cursor == cursor && sna_crtc->last_cursor_size == cursor->size)) {
-			DBG(("%s: skipping cursor already show on CRTC (pipe=%d)\n",
-			     __FUNCTION__, sna_crtc_pipe(crtc)));
+			DBG(("%s: skipping cursor already show on CRTC (crtc=%d)\n",
+			     __FUNCTION__, sna_crtc_index(crtc)));
 			continue;
 		}
 
-		DBG(("%s: CRTC pipe=%d, handle->%d\n", __FUNCTION__,
-		     sna_crtc_pipe(crtc), cursor->handle));
+		DBG(("%s: CRTC crtc=%d, handle->%d\n", __FUNCTION__,
+		     sna_crtc_index(crtc), cursor->handle));
 
 		VG_CLEAR(arg);
 		arg.flags = DRM_MODE_CURSOR_BO;
@@ -6499,8 +6501,8 @@ sna_show_cursors(ScrnInfoPtr scrn)
 			sna_crtc->cursor = cursor;
 			sna_crtc->last_cursor_size = cursor->size;
 		} else {
-			ERR(("%s: failed to show cursor on CRTC:%d [pipe=%d], disabling hwcursor: errno=%d\n",
-			     __FUNCTION__, sna_crtc_id(crtc), sna_crtc_pipe(crtc), errno));
+			ERR(("%s: failed to show cursor on CRTC:%d [crtc=%d], disabling hwcursor: errno=%d\n",
+			     __FUNCTION__, sna_crtc_id(crtc), sna_crtc_index(crtc), errno));
 			sna->cursor.disable = true;
 		}
 	}
@@ -6733,8 +6735,8 @@ disable:
 					sna_crtc->last_cursor_size = 0;
 			}
 		} else {
-			ERR(("%s: failed to update cursor on CRTC:%d [pipe=%d], disabling hwcursor: errno=%d\n",
-			     __FUNCTION__, sna_crtc_id(crtc), sna_crtc_pipe(crtc), errno));
+			ERR(("%s: failed to update cursor on CRTC:%d [crtc=%d], disabling hwcursor: errno=%d\n",
+			     __FUNCTION__, sna_crtc_id(crtc), sna_crtc_index(crtc), errno));
 			/* XXX How to force switch back to SW cursor?
 			 * Right now we just want until the next cursor image
 			 * change, which is fairly frequent.
@@ -6802,8 +6804,8 @@ transformable_cursor(struct sna *sna, CursorPtr cursor)
 		int size;
 
 		if (!to_sna_crtc(crtc)->hwcursor) {
-			DBG(("%s: hwcursor disabled on CRTC:%d [pipe=%d]\n",
-			     __FUNCTION__, sna_crtc_id(crtc), sna_crtc_pipe(crtc)));
+			DBG(("%s: hwcursor disabled on CRTC:%d [crtc=%d]\n",
+			     __FUNCTION__, sna_crtc_id(crtc), sna_crtc_index(crtc)));
 			return false;
 		}
 
@@ -7038,7 +7040,8 @@ sna_crtc_flip(struct sna *sna, struct sna_crtc *crtc, struct kgem_bo *bo, int x,
 	int output_count = 0;
 	int i;
 
-	DBG(("%s CRTC:%d [pipe=%d], handle=%d\n", __FUNCTION__, __sna_crtc_id(crtc), __sna_crtc_pipe(crtc), bo->handle));
+	DBG(("%s CRTC:%d [crtc=%d], handle=%d\n", __FUNCTION__,
+	     __sna_crtc_id(crtc), __sna_crtc_index(crtc), bo->handle));
 
 	assert(sna->mode.num_real_output < ARRAY_SIZE(output_ids));
 	assert(crtc->bo);
@@ -7050,13 +7053,13 @@ sna_crtc_flip(struct sna *sna, struct sna_crtc *crtc, struct kgem_bo *bo, int x,
 		if (output->crtc != crtc->base)
 			continue;
 
-		DBG(("%s: attaching output '%s' %d [%d] to crtc:%d (pipe %d) (possible crtc:%x, possible clones:%x)\n",
+		DBG(("%s: attaching output '%s' %d [%d] to crtc:%d (crtc %d) (possible crtc:%x, possible clones:%x)\n",
 		     __FUNCTION__, output->name, i, to_connector_id(output),
-		     __sna_crtc_id(crtc), __sna_crtc_pipe(crtc),
+		     __sna_crtc_id(crtc), __sna_crtc_index(crtc),
 		     (uint32_t)output->possible_crtcs,
 		     (uint32_t)output->possible_clones));
 
-		assert(output->possible_crtcs & (1 << __sna_crtc_pipe(crtc)) ||
+		assert(output->possible_crtcs & (1 << __sna_crtc_index(crtc)) ||
 		       is_zaphod(sna->scrn));
 
 		output_ids[output_count] = to_connector_id(output);
@@ -7076,8 +7079,8 @@ sna_crtc_flip(struct sna *sna, struct sna_crtc *crtc, struct kgem_bo *bo, int x,
 	arg.mode = crtc->kmode;
 	arg.mode_valid = 1;
 
-	DBG(("%s: applying crtc [%d, pipe=%d] mode=%dx%d+%d+%d@%d, fb=%d across %d outputs [%d...]\n",
-	     __FUNCTION__, __sna_crtc_id(crtc), __sna_crtc_pipe(crtc),
+	DBG(("%s: applying crtc [%d, crtc=%d] mode=%dx%d+%d+%d@%d, fb=%d across %d outputs [%d...]\n",
+	     __FUNCTION__, __sna_crtc_id(crtc), __sna_crtc_index(crtc),
 	     arg.mode.hdisplay,
 	     arg.mode.vdisplay,
 	     arg.x, arg.y,
@@ -7182,8 +7185,8 @@ sna_page_flip(struct sna *sna,
 		uint32_t crtc_offset;
 		int fixup;
 
-		DBG(("%s: crtc %d id=%d, pipe=%d active? %d\n",
-		     __FUNCTION__, i, __sna_crtc_id(crtc), __sna_crtc_pipe(crtc), crtc->bo != NULL));
+		DBG(("%s: crtc %d id=%d, crtc=%d active? %d\n",
+		     __FUNCTION__, i, __sna_crtc_id(crtc), __sna_crtc_index(crtc), crtc->bo != NULL));
 		if (crtc->bo == NULL)
 			continue;
 		assert(!crtc->transform);
@@ -7249,8 +7252,8 @@ update_scanout:
 		arg.reserved = 0;
 
 retry_flip:
-		DBG(("%s: crtc %d id=%d, pipe=%d  --> fb %d\n",
-		     __FUNCTION__, i, __sna_crtc_id(crtc), __sna_crtc_pipe(crtc), arg.fb_id));
+		DBG(("%s: crtc %d id=%d, crtc=%d  --> fb %d\n",
+		     __FUNCTION__, i, __sna_crtc_id(crtc), __sna_crtc_index(crtc), arg.fb_id));
 		if (drmIoctl(sna->kgem.fd, DRM_IOCTL_MODE_PAGE_FLIP, &arg)) {
 			ERR(("%s: pageflip failed with err=%d\n", __FUNCTION__, errno));
 
@@ -7284,8 +7287,9 @@ retry_flip:
 
 error:
 			xf86DrvMsg(sna->scrn->scrnIndex, X_ERROR,
-					"page flipping failed, on CRTC:%d (pipe=%d), disabling %s page flips\n",
-					__sna_crtc_id(crtc), __sna_crtc_pipe(crtc), async ? "asynchronous": "synchronous");
+				   "page flipping failed, on CRTC:%d (crtc=%d), disabling %s page flips\n",
+				   __sna_crtc_id(crtc), __sna_crtc_index(crtc),
+				   async ? "asynchronous": "synchronous");
 
 			if (count || crtc->bo == bo)
 				sna_mode_restore(sna);
@@ -7474,8 +7478,8 @@ static void crtc_init_gamma(xf86CrtcPtr crtc)
 			gamma_set = crtc_get_gamma_legacy(crtc, red,
 							  green, blue, size);
 
-		DBG(("%s: CRTC:%d, pipe=%d: gamma set?=%d\n",
-		     __FUNCTION__, __sna_crtc_id(sna_crtc), __sna_crtc_pipe(sna_crtc),
+		DBG(("%s: CRTC:%d, crtc=%d: gamma set?=%d\n",
+		     __FUNCTION__, __sna_crtc_id(sna_crtc), __sna_crtc_index(sna_crtc),
 		     gamma_set));
 		if (!gamma_set) {
 			int i;
@@ -7576,8 +7580,8 @@ static bool sna_probe_initial_configuration(struct sna *sna)
 		if (drmIoctl(sna->kgem.fd, DRM_IOCTL_MODE_GETCRTC, &mode))
 			continue;
 
-		DBG(("%s: CRTC:%d, pipe=%d: has mode?=%d\n", __FUNCTION__,
-		     __sna_crtc_id(sna_crtc), __sna_crtc_pipe(sna_crtc),
+		DBG(("%s: CRTC:%d, crtc=%d: has mode?=%d\n", __FUNCTION__,
+		     __sna_crtc_id(sna_crtc), __sna_crtc_index(sna_crtc),
 		     mode.mode_valid && mode.mode.clock));
 
 		if (!mode.mode_valid || mode.mode.clock == 0)
@@ -7635,10 +7639,10 @@ static bool sna_probe_initial_configuration(struct sna *sna)
 				}
 
 				xf86DrvMsg(scrn->scrnIndex, X_PROBED,
-					   "Output %s using initial mode %s on pipe %d\n",
+					   "Output %s using initial mode %s on crtc %d\n",
 					   output->name,
 					   crtc->desiredMode.name,
-					   sna_crtc_pipe(crtc));
+					   sna_crtc_index(crtc));
 
 				output->crtc = crtc;
 				output->status = XF86OutputStatusConnected;
@@ -8545,9 +8549,9 @@ static bool sna_mode_shutdown_crtc(xf86CrtcPtr crtc)
 	int o;
 
 	xf86DrvMsg(crtc->scrn->scrnIndex, X_ERROR,
-		   "%s: invalid state found on pipe %d, disabling CRTC:%d\n",
+		   "%s: invalid state found on crtc %d, disabling CRTC:%d\n",
 		   __FUNCTION__,
-		   __sna_crtc_pipe(to_sna_crtc(crtc)),
+		   __sna_crtc_index(to_sna_crtc(crtc)),
 		   __sna_crtc_id(to_sna_crtc(crtc)));
 	sna_crtc_disable(crtc, true);
 #if XF86_CRTC_VERSION >= 3
@@ -9034,8 +9038,8 @@ sna_crtc_redisplay(xf86CrtcPtr crtc, RegionPtr region, struct kgem_bo *bo)
 	DrawablePtr draw = crtc_source(crtc, &sx, &sy);
 	struct sna_pixmap *priv = sna_pixmap((PixmapPtr)draw);
 
-	DBG(("%s: crtc %d [pipe=%d], damage (%d, %d), (%d, %d) x %d\n",
-	     __FUNCTION__, sna_crtc_id(crtc), sna_crtc_pipe(crtc),
+	DBG(("%s: crtc %d [crtc=%d], damage (%d, %d), (%d, %d) x %d\n",
+	     __FUNCTION__, sna_crtc_id(crtc), sna_crtc_index(crtc),
 	     region->extents.x1, region->extents.y1,
 	     region->extents.x2, region->extents.y2,
 	     region_num_rects(region)));
@@ -9221,8 +9225,8 @@ static bool move_crtc_to_gpu(struct sna *sna)
 		if (sna->flags & SNA_TEAR_FREE)
 			hint |= __MOVE_FORCE;
 
-		DBG(("%s: CRTC %d [pipe=%d] requires frontbuffer\n",
-		     __FUNCTION__, __sna_crtc_id(crtc), __sna_crtc_pipe(crtc)));
+		DBG(("%s: CRTC %d [crtc=%d] requires frontbuffer\n",
+		     __FUNCTION__, __sna_crtc_id(crtc), __sna_crtc_index(crtc)));
 		return sna_pixmap_move_to_gpu(sna->front, hint);
 	}
 
@@ -9292,8 +9296,8 @@ void sna_mode_redisplay(struct sna *sna)
 			damage.data = NULL;
 			RegionIntersect(&damage, &damage, region);
 			if (!box_empty(&damage.extents)) {
-				DBG(("%s: fallback intersects pipe=%d [(%d, %d), (%d, %d)]\n",
-				     __FUNCTION__, __sna_crtc_pipe(sna_crtc),
+				DBG(("%s: fallback intersects crtc=%d [(%d, %d), (%d, %d)]\n",
+				     __FUNCTION__, __sna_crtc_index(sna_crtc),
 				     damage.extents.x1, damage.extents.y1,
 				     damage.extents.x2, damage.extents.y2));
 
@@ -9420,8 +9424,8 @@ void sna_mode_redisplay(struct sna *sna)
 						BoxRec box;
 						DrawableRec tmp;
 
-						DBG(("%s: flip [fb=%d] on crtc %d [%d, pipe=%d] failed - %d\n",
-						     __FUNCTION__, arg.fb_id, i, __sna_crtc_id(sna_crtc), __sna_crtc_pipe(sna_crtc), errno));
+						DBG(("%s: flip [fb=%d] on crtc %d [%d, crtc=%d] failed - %d\n",
+						     __FUNCTION__, arg.fb_id, i, __sna_crtc_id(sna_crtc), __sna_crtc_index(sna_crtc), errno));
 						xf86DrvMsg(sna->scrn->scrnIndex, X_ERROR,
 							   "Page flipping failed, disabling TearFree\n");
 						sna->flags &= ~SNA_TEAR_FREE;
@@ -9439,8 +9443,8 @@ disable1:
 									    &tmp, sna_crtc->bo, 0, 0,
 									    &box, 1, COPY_LAST)) {
 							xf86DrvMsg(crtc->scrn->scrnIndex, X_ERROR,
-								   "%s: page flipping failed, disabling CRTC:%d (pipe=%d)\n",
-								   __FUNCTION__, __sna_crtc_id(sna_crtc), __sna_crtc_pipe(sna_crtc));
+								   "%s: page flipping failed, disabling CRTC:%d (crtc=%d)\n",
+								   __FUNCTION__, __sna_crtc_id(sna_crtc), __sna_crtc_index(sna_crtc));
 							sna_crtc_disable(crtc, false);
 						}
 					}
@@ -9504,8 +9508,9 @@ disable1:
 			int x, y;
 
 			assert(crtc != NULL);
-			DBG(("%s: crtc %d [%d, pipe=%d] active? %d, transformed? %d\n",
-			     __FUNCTION__, i, __sna_crtc_id(crtc), __sna_crtc_pipe(crtc), crtc->bo ? crtc->bo->handle : 0, crtc->transform));
+			DBG(("%s: crtc %d [%d, crtc=%d] active? %d, transformed? %d\n",
+			     __FUNCTION__, i, __sna_crtc_id(crtc), __sna_crtc_index(crtc),
+			     crtc->bo ? crtc->bo->handle : 0, crtc->transform));
 			if (crtc->bo == NULL || crtc->transform)
 				continue;
 
@@ -9517,8 +9522,9 @@ disable1:
 			arg.user_data = (uintptr_t)crtc;
 
 			if (crtc->client_bo) {
-				DBG(("%s: apply shadow override bo for CRTC:%d on pipe=%d, handle=%d\n",
-				     __FUNCTION__, __sna_crtc_id(crtc), __sna_crtc_pipe(crtc), crtc->client_bo->handle));
+				DBG(("%s: apply shadow override bo for CRTC:%d on crtc=%d, handle=%d\n",
+				     __FUNCTION__, __sna_crtc_id(crtc), __sna_crtc_index(crtc),
+				     crtc->client_bo->handle));
 				arg.fb_id = get_fb(sna, crtc->client_bo,
 						   crtc->base->mode.HDisplay,
 						   crtc->base->mode.VDisplay);
@@ -9599,16 +9605,17 @@ fixup_flip:
 					}
 
 					xf86DrvMsg(sna->scrn->scrnIndex, X_ERROR,
-						   "%s: page flipping failed, disabling CRTC:%d (pipe=%d)\n",
-						   __FUNCTION__, __sna_crtc_id(crtc), __sna_crtc_pipe(crtc));
+						   "%s: page flipping failed, disabling CRTC:%d (crtc=%d)\n",
+						   __FUNCTION__, __sna_crtc_id(crtc), __sna_crtc_index(crtc));
 					sna_crtc_disable(crtc->base, false);
 				}
 				continue;
 			}
 
 			if (drmIoctl(sna->kgem.fd, DRM_IOCTL_MODE_PAGE_FLIP, &arg)) {
-				ERR(("%s: flip [fb=%d] on crtc %d [%d, pipe=%d] failed - %d\n",
-				     __FUNCTION__, arg.fb_id, i, __sna_crtc_id(crtc), __sna_crtc_pipe(crtc), errno));
+				ERR(("%s: flip [fb=%d] on crtc %d [%d, crtc=%d] failed - %d\n",
+				     __FUNCTION__, arg.fb_id, i, __sna_crtc_id(crtc),
+				     __sna_crtc_index(crtc), errno));
 				goto fixup_flip;
 			}
 			sna->mode.flip_active++;
@@ -9708,8 +9715,9 @@ again:
 				sna = to_sna(crtc->base->scrn);
 
 				if (msc64(crtc, vbl->sequence, &msc)) {
-					DBG(("%s: recording last swap on pipe=%d, frame %d [%08llx], time %d.%06d\n",
-					     __FUNCTION__, __sna_crtc_pipe(crtc), vbl->sequence, (long long)msc, vbl->tv_sec, vbl->tv_usec));
+					DBG(("%s: recording last swap on crtc=%d, frame %d [%08llx], time %d.%06d\n",
+					     __FUNCTION__, __sna_crtc_index(crtc), vbl->sequence,
+					     (long long)msc, vbl->tv_sec, vbl->tv_usec));
 					crtc->swap.tv_sec = vbl->tv_sec;
 					crtc->swap.tv_usec = vbl->tv_usec;
 					crtc->swap.msc = msc;
diff --git a/src/sna/sna_dri2.c b/src/sna/sna_dri2.c
index 82c855a06a59..ee4b89db56a8 100644
--- a/src/sna/sna_dri2.c
+++ b/src/sna/sna_dri2.c
@@ -1559,10 +1559,10 @@ draw_current_msc(DrawablePtr draw, xf86CrtcPtr crtc, uint64_t msc)
 		if (priv->crtc != crtc) {
 			const struct ust_msc *last = sna_crtc_last_swap(priv->crtc);
 			const struct ust_msc *this = sna_crtc_last_swap(crtc);
-			DBG(("%s: Window transferring from pipe=%d [msc=%llu] to pipe=%d [msc=%llu], delta now %lld\n",
+			DBG(("%s: Window transferring from crtc=%d [msc=%llu] to crtc=%d [msc=%llu], delta now %lld\n",
 			     __FUNCTION__,
-			     sna_crtc_pipe(priv->crtc), (long long)last->msc,
-			     sna_crtc_pipe(crtc), (long long)this->msc,
+			     sna_crtc_index(priv->crtc), (long long)last->msc,
+			     sna_crtc_index(crtc), (long long)this->msc,
 			     (long long)(priv->msc_delta + this->msc - last->msc)));
 			priv->msc_delta += this->msc - last->msc;
 			priv->crtc = crtc;
@@ -1634,8 +1634,8 @@ static void fake_swap_complete(struct sna *sna, ClientPtr client,
 		crtc = sna_primary_crtc(sna);
 
 	swap = sna_crtc_last_swap(crtc);
-	DBG(("%s(type=%d): draw=%ld, pipe=%d, frame=%lld [msc %lld], tv=%d.%06d\n",
-	     __FUNCTION__, type, (long)draw->id, crtc ? sna_crtc_pipe(crtc) : -1,
+	DBG(("%s(type=%d): draw=%ld, crtc=%d, frame=%lld [msc %lld], tv=%d.%06d\n",
+	     __FUNCTION__, type, (long)draw->id, crtc ? sna_crtc_index(crtc) : -1,
 	     (long long)swap->msc,
 	     (long long)draw_current_msc(draw, crtc, swap->msc),
 	     swap->tv_sec, swap->tv_usec));
@@ -2055,7 +2055,7 @@ can_flip(struct sna * sna,
 	}
 
 	if (!sna_crtc_is_on(crtc)) {
-		DBG(("%s: ref-pipe=%d is disabled\n", __FUNCTION__, sna_crtc_pipe(crtc)));
+		DBG(("%s: ref-crtc=%d is disabled\n", __FUNCTION__, sna_crtc_index(crtc)));
 		return false;
 	}
 
@@ -3125,8 +3125,8 @@ sna_dri2_schedule_flip(ClientPtr client, DrawablePtr draw, xf86CrtcPtr crtc,
 	if (immediate) {
 		bool signal = false;
 		info = sna->dri2.flip_pending;
-		DBG(("%s: performing immediate swap on pipe %d, pending? %d, mode: %d, continuation? %d\n",
-		     __FUNCTION__, sna_crtc_pipe(crtc),
+		DBG(("%s: performing immediate swap on crtc %d, pending? %d, mode: %d, continuation? %d\n",
+		     __FUNCTION__, sna_crtc_index(crtc),
 		     info != NULL, info ? info->flip_continue : 0,
 		     info && info->draw == draw));
 
@@ -3510,8 +3510,8 @@ sna_dri2_get_msc(DrawablePtr draw, CARD64 *ust, CARD64 *msc)
 	const struct ust_msc *swap;
 	union drm_wait_vblank vbl;
 
-	DBG(("%s(draw=%ld, pipe=%d)\n", __FUNCTION__, draw->id,
-	     crtc ? sna_crtc_pipe(crtc) : -1));
+	DBG(("%s(draw=%ld, crtc=%d)\n", __FUNCTION__, draw->id,
+	     crtc ? sna_crtc_index(crtc) : -1));
 
 	/* Drawable not displayed, make up a *monotonic* value */
 	if (crtc == NULL)
@@ -3547,8 +3547,8 @@ sna_dri2_schedule_wait_msc(ClientPtr client, DrawablePtr draw, CARD64 target_msc
 	const struct ust_msc *swap;
 
 	crtc = sna_dri2_get_crtc(draw);
-	DBG(("%s(pipe=%d, target_msc=%llu, divisor=%llu, rem=%llu)\n",
-	     __FUNCTION__, crtc ? sna_crtc_pipe(crtc) : -1,
+	DBG(("%s(crtc=%d, target_msc=%llu, divisor=%llu, rem=%llu)\n",
+	     __FUNCTION__, crtc ? sna_crtc_index(crtc) : -1,
 	     (long long)target_msc,
 	     (long long)divisor,
 	     (long long)remainder));
diff --git a/src/sna/sna_present.c b/src/sna/sna_present.c
index b4f6256691e6..99e79c01cce6 100644
--- a/src/sna/sna_present.c
+++ b/src/sna/sna_present.c
@@ -158,8 +158,8 @@ static void vblank_complete(struct sna_present_event *info,
 
 		DBG(("%s: %d events complete\n", __FUNCTION__, info->n_event_id));
 		for (n = 0; n < info->n_event_id; n++) {
-			DBG(("%s: pipe=%d tv=%d.%06d msc=%lld (target=%lld), event=%lld complete%s\n", __FUNCTION__,
-			     sna_crtc_pipe(info->crtc),
+			DBG(("%s: certc=%d tv=%d.%06d msc=%lld (target=%lld), event=%lld complete%s\n", __FUNCTION__,
+			     sna_crtc_index(info->crtc),
 			     (int)(ust / 1000000), (int)(ust % 1000000),
 			     (long long)msc, (long long)info->target_msc,
 			     (long long)info->event_id[n],
@@ -422,7 +422,7 @@ sna_present_get_ust_msc(RRCrtcPtr crtc, CARD64 *ust, CARD64 *msc)
 	struct sna *sna = to_sna_from_screen(crtc->pScreen);
 	union drm_wait_vblank vbl;
 
-	DBG(("%s(pipe=%d)\n", __FUNCTION__, sna_crtc_pipe(crtc->devPrivate)));
+	DBG(("%s(crtc=%d)\n", __FUNCTION__, sna_crtc_index(crtc->devPrivate)));
 	if (sna_crtc_has_vblank(crtc->devPrivate)) {
 		DBG(("%s: vblank active, reusing last swap msc/ust\n",
 		     __FUNCTION__));
@@ -445,8 +445,8 @@ last:
 		*msc = swap->msc;
 	}
 
-	DBG(("%s: pipe=%d, tv=%d.%06d seq=%d msc=%lld\n", __FUNCTION__,
-	     sna_crtc_pipe(crtc->devPrivate),
+	DBG(("%s: crtc=%d, tv=%d.%06d seq=%d msc=%lld\n", __FUNCTION__,
+	     sna_crtc_index(crtc->devPrivate),
 	     (int)(*ust / 1000000), (int)(*ust % 1000000),
 	     vbl.reply.sequence, (long long)*msc));
 
@@ -488,13 +488,13 @@ sna_present_queue_vblank(RRCrtcPtr crtc, uint64_t event_id, uint64_t msc)
 		return BadAlloc;
 
 	swap = sna_crtc_last_swap(crtc->devPrivate);
-	DBG(("%s(pipe=%d, event=%lld, msc=%lld, last swap=%lld)\n",
-	     __FUNCTION__, sna_crtc_pipe(crtc->devPrivate),
+	DBG(("%s(crtc=%d, event=%lld, msc=%lld, last swap=%lld)\n",
+	     __FUNCTION__, sna_crtc_index(crtc->devPrivate),
 	     (long long)event_id, (long long)msc, (long long)swap->msc));
 
 	if (warn_unless((int64_t)(msc - swap->msc) >= 0)) {
-		DBG(("%s: pipe=%d tv=%d.%06d msc=%lld (target=%lld), event=%lld complete\n", __FUNCTION__,
-		     sna_crtc_pipe(crtc->devPrivate),
+		DBG(("%s: crtc=%d tv=%d.%06d msc=%lld (target=%lld), event=%lld complete\n", __FUNCTION__,
+		     sna_crtc_index(crtc->devPrivate),
 		     swap->tv_sec, swap->tv_usec,
 		     (long long)swap->msc, (long long)msc,
 		     (long long)event_id));
@@ -561,8 +561,8 @@ sna_present_queue_vblank(RRCrtcPtr crtc, uint64_t event_id, uint64_t msc)
 static void
 sna_present_abort_vblank(RRCrtcPtr crtc, uint64_t event_id, uint64_t msc)
 {
-	DBG(("%s(pipe=%d, event=%lld, msc=%lld)\n",
-	     __FUNCTION__, pipe_from_crtc(crtc),
+	DBG(("%s(crtc=%d, event=%lld, msc=%lld)\n",
+	     __FUNCTION__, crtc_index_from_crtc(crtc),
 	     (long long)event_id, (long long)msc));
 }
 
@@ -604,9 +604,9 @@ sna_present_check_flip(RRCrtcPtr crtc,
 	struct sna *sna = to_sna_from_pixmap(pixmap);
 	struct sna_pixmap *flip;
 
-	DBG(("%s(pipe=%d, pixmap=%ld, sync_flip=%d)\n",
+	DBG(("%s(crtc=%d, pixmap=%ld, sync_flip=%d)\n",
 	     __FUNCTION__,
-	     pipe_from_crtc(crtc),
+	     crtc_index_from_crtc(crtc),
 	     pixmap->drawable.serialNumber,
 	     sync_flip));
 
@@ -697,8 +697,8 @@ present_flip_handler(struct drm_event_vblank *event, void *data)
 		swap = *sna_crtc_last_swap(info->crtc);
 	}
 
-	DBG(("%s: pipe=%d, tv=%d.%06d msc=%lld (target %lld), event=%lld complete%s\n", __FUNCTION__,
-	     info->crtc ? sna_crtc_pipe(info->crtc) : -1,
+	DBG(("%s: crtc=%d, tv=%d.%06d msc=%lld (target %lld), event=%lld complete%s\n", __FUNCTION__,
+	     info->crtc ? sna_crtc_index(info->crtc) : -1,
 	     swap.tv_sec, swap.tv_usec, (long long)swap.msc,
 	     (long long)info->target_msc,
 	     (long long)info->event_id[0],
@@ -729,9 +729,9 @@ do_flip(struct sna *sna,
 {
 	struct sna_present_event *info;
 
-	DBG(("%s(pipe=%d, event=%lld, handle=%d)\n",
+	DBG(("%s(crtc=%d, event=%lld, handle=%d)\n",
 	     __FUNCTION__,
-	     pipe_from_crtc(crtc),
+	     crtc_index_from_crtc(crtc),
 	     (long long)event_id,
 	     bo->handle));
 
@@ -859,9 +859,9 @@ sna_present_flip(RRCrtcPtr crtc,
 	struct sna *sna = to_sna_from_pixmap(pixmap);
 	struct kgem_bo *bo;
 
-	DBG(("%s(pipe=%d, event=%lld, msc=%lld, pixmap=%ld, sync?=%d)\n",
+	DBG(("%s(crtc=%d, event=%lld, msc=%lld, pixmap=%ld, sync?=%d)\n",
 	     __FUNCTION__,
-	     pipe_from_crtc(crtc),
+	     crtc_index_from_crtc(crtc),
 	     (long long)event_id,
 	     (long long)target_msc,
 	     pixmap->drawable.serialNumber, sync_flip));
@@ -918,7 +918,7 @@ sna_present_unflip(ScreenPtr screen, uint64_t event_id)
 
 notify:
 		swap = sna_crtc_last_swap(sna_primary_crtc(sna));
-		DBG(("%s: pipe=%d, tv=%d.%06d msc=%lld, event=%lld complete\n", __FUNCTION__,
+		DBG(("%s: crtc=%d, tv=%d.%06d msc=%lld, event=%lld complete\n", __FUNCTION__,
 		     -1,
 		     swap->tv_sec, swap->tv_usec, (long long)swap->msc,
 		     (long long)event_id));
diff --git a/src/sna/sna_video_sprite.c b/src/sna/sna_video_sprite.c
index df0081878a3b..db3865b9ffae 100644
--- a/src/sna/sna_video_sprite.c
+++ b/src/sna/sna_video_sprite.c
@@ -816,8 +816,8 @@ static int sna_video_has_sprites(struct sna *sna)
 	min = -1;
 	for (i = 0; i < sna->mode.num_real_crtc; i++) {
 		unsigned count =  sna_crtc_count_sprites(config->crtc[i]);
-		DBG(("%s: %d sprites found on pipe %d\n", __FUNCTION__,
-		     count, sna_crtc_pipe(config->crtc[i])));
+		DBG(("%s: %d sprites found on crtc %d\n", __FUNCTION__,
+		     count, sna_crtc_index(config->crtc[i])));
 		if (count < min)
 			min = count;
 	}
-- 
2.39.2

