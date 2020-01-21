Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B89C143B64
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 11:49:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB98D6EC57;
	Tue, 21 Jan 2020 10:49:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1225 seconds by postgrey-1.36 at gabe;
 Tue, 21 Jan 2020 10:49:33 UTC
Received: from imap2.colo.codethink.co.uk (imap2.colo.codethink.co.uk
 [78.40.148.184])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C71A6EC57
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 10:49:33 +0000 (UTC)
Received: from [167.98.27.226] (helo=ct-lt-1124.office.codethink.co.uk)
 by imap2.colo.codethink.co.uk with esmtpsa  (Exim 4.92 #3 (Debian))
 id 1itqmQ-0002pj-4S; Tue, 21 Jan 2020 10:29:06 +0000
From: Thomas Preston <thomas.preston@codethink.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Jan 2020 10:28:58 +0000
Message-Id: <20200121102858.3027175-1-thomas.preston@codethink.co.uk>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH xf86-video-intel] sna: Use correct struct sna in
 sna_mode_wakeup
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
Cc: james.thomas@codethink.co.uk, michael.drake@codethink.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When deciding if we should defer_vblanks we should reference the event's
struct sna, rather than the caller's struct sna. In order to do this, we
must grab a new struct sna for each event in the buffer. Move this logic
out of `case DRM_EVENT_FLIP_COMPLETE` and create a new variable
sna_event, so that it is clear which struct sna we are referring to.
Also add another ZaphodHead comment by the struct sna argument, in case
someone misses the comment below.

Fixes issue #184 with ZaphodHead and TearFree, introduced in this commit:

	12db28ab sna: Reorder vblank/flip event handling to avoid TearFree recursion

Signed-off-by: Thomas Preston <thomas.preston@codethink.co.uk>
---
 src/sna/sna_display.c | 48 +++++++++++++++++++++++--------------------
 1 file changed, 26 insertions(+), 22 deletions(-)

diff --git a/src/sna/sna_display.c b/src/sna/sna_display.c
index 874292bc..b40a6c4a 100644
--- a/src/sna/sna_display.c
+++ b/src/sna/sna_display.c
@@ -9711,9 +9711,12 @@ fixup_flip:
 	RegionEmpty(region);
 }
 
+/* In the case of ZaphodHead, there is only one event queue in the main
+ * struct sna. Only refer to this struct sna when dealing with the event queue.
+ * Otherwise, extract the struct sna from the event user_data.
+ */
 int sna_mode_wakeup(struct sna *sna)
 {
-	bool defer_vblanks = sna->mode.flip_active && sna->mode.shadow_enabled;
 	char buffer[1024];
 	int len, i;
 	int ret = 0;
@@ -9733,34 +9736,35 @@ again:
 	if (len < (int)sizeof(struct drm_event))
 		goto done;
 
-	/* Note that we cannot rely on the passed in struct sna matching
-	 * the struct sna used for the vblank event (in case it was submitted
-	 * by a different ZaphodHead). When processing the event, we must
-	 * ensure that we only use the pointer passed along with the event.
-	 */
-
 	DBG(("%s: len=%d\n", __FUNCTION__, len));
 
 	i = 0;
 	while (i < len) {
 		struct drm_event *e = (struct drm_event *)&buffer[i];
+
+		/* Note that we cannot rely on the passed in struct sna
+		 * matching the struct sna used for the vblank event (in case
+		 * it was submitted by a different ZaphodHead). When processing
+		 * the event, we must ensure that we only use the pointer
+		 * passed along with the event.
+		 */
+		struct drm_event_vblank *vbl = (struct drm_event_vblank *)e;
+		struct sna_crtc *crtc = (void *)(uintptr_t)vbl->user_data;
+		struct sna *sna_event = to_sna(crtc->base->scrn);
+
 		switch (e->type) {
 		case DRM_EVENT_VBLANK:
-			if (defer_vblanks)
+			if (sna_event->mode.flip_active && sna_event->mode.shadow_enabled)
 				defer_event(sna, e);
-			else if (((uintptr_t)((struct drm_event_vblank *)e)->user_data) & 2)
-				sna_present_vblank_handler((struct drm_event_vblank *)e);
+			else if (((uintptr_t)crtc) & 2)
+				sna_present_vblank_handler(vbl);
 			else
-				sna_dri2_vblank_handler((struct drm_event_vblank *)e);
+				sna_dri2_vblank_handler(vbl);
 			break;
 		case DRM_EVENT_FLIP_COMPLETE:
 			{
-				struct drm_event_vblank *vbl = (struct drm_event_vblank *)e;
-				struct sna_crtc *crtc = (void *)(uintptr_t)vbl->user_data;
 				uint64_t msc;
 
-				/* Beware Zaphod! */
-				sna = to_sna(crtc->base->scrn);
 
 				if (msc64(crtc, vbl->sequence, &msc)) {
 					DBG(("%s: recording last swap on pipe=%d, frame %d [%08llx], time %d.%06d\n",
@@ -9784,26 +9788,26 @@ again:
 					assert(crtc->bo->refcnt >= crtc->bo->active_scanout);
 
 					crtc->bo->active_scanout--;
-					kgem_bo_destroy(&sna->kgem, crtc->bo);
+					kgem_bo_destroy(&sna_event->kgem, crtc->bo);
 
 					if (crtc->shadow_bo) {
-						kgem_bo_destroy(&sna->kgem, crtc->shadow_bo);
+						kgem_bo_destroy(&sna_event->kgem, crtc->shadow_bo);
 						crtc->shadow_bo = NULL;
 					}
 
 					crtc->bo = crtc->flip_bo;
 					crtc->flip_bo = NULL;
 
-					assert_crtc_fb(sna, crtc);
+					assert_crtc_fb(sna_event, crtc);
 				} else {
 					crtc->flip_bo->active_scanout--;
-					kgem_bo_destroy(&sna->kgem, crtc->flip_bo);
+					kgem_bo_destroy(&sna_event->kgem, crtc->flip_bo);
 					crtc->flip_bo = NULL;
 				}
 
-				DBG(("%s: flip complete, pending? %d\n", __FUNCTION__, sna->mode.flip_active));
-				assert(sna->mode.flip_active);
-				if (--sna->mode.flip_active == 0) {
+				DBG(("%s: flip complete, pending? %d\n", __FUNCTION__, sna_event->mode.flip_active));
+				assert(sna_event->mode.flip_active);
+				if (--sna_event->mode.flip_active == 0) {
 					assert(crtc->flip_handler);
 					crtc->flip_handler(vbl, crtc->flip_data);
 				}
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
