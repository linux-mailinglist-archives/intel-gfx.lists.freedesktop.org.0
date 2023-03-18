Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 915A56BFA83
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Mar 2023 14:46:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ABE710E0FB;
	Sat, 18 Mar 2023 13:45:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D32FC10E10A
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Mar 2023 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679147153; x=1710683153;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oW2Lp8LDk400SkemIf6FkSHP2eNS5sdgdE0iovqOVCk=;
 b=nLz7PP1whS+3RyQx5/baPay4uT24ljGDLURWBeMH1dMDYDRMtjck6zah
 uqLFDDLbPSqWTH644QmdIdsAWgHQ4k0upCbIq4ZPoMhnRPvDdsT4+m2hC
 pwRDOSp2/e41s1qPzVZIGMWkv6C/y5+OjURqYTrPeVydEb0tQxqb1oTRQ
 Ua/cQGfvMavS6Hs7Kcj8gFn3x7/u39dVPgvgecMtnPEl+JSEPYb+mKUsj
 Z520ttd/79oGGk+AM5IMC1XgLMwxybRfRWktSd7OhkmEWGbXmSCaEul12
 SkEst5LuzR7pcIe5ru5BVqakzpVNQOifMfOmogb1N4UOai3hw1pSkA9tv A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="326798768"
X-IronPort-AV: E=Sophos;i="5.98,271,1673942400"; d="scan'208";a="326798768"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2023 06:45:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="823967784"
X-IronPort-AV: E=Sophos;i="5.98,271,1673942400"; d="scan'208";a="823967784"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 18 Mar 2023 06:45:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 18 Mar 2023 15:45:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Mar 2023 15:45:39 +0200
Message-Id: <20230318134544.11033-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230318134544.11033-1-ville.syrjala@linux.intel.com>
References: <20230318134544.11033-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH xf86-video-intel 3/8] sna/video: Use crtc index
 instead of pipe
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

For consistency with most other code use the kms crtc index
instead of the hardware pipe number where either will do.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 src/sna/sna_video_sprite.c | 44 +++++++++++++++++++-------------------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/src/sna/sna_video_sprite.c b/src/sna/sna_video_sprite.c
index 711a2fb261c0..df0081878a3b 100644
--- a/src/sna/sna_video_sprite.c
+++ b/src/sna/sna_video_sprite.c
@@ -102,11 +102,11 @@ static int sna_video_sprite_stop(ddStopVideo_ARGS)
 
 	for (i = 0; i < video->sna->mode.num_real_crtc; i++) {
 		xf86CrtcPtr crtc = config->crtc[i];
-		int pipe;
+		int index;
 
-		pipe = sna_crtc_pipe(crtc);
-		assert(pipe < ARRAY_SIZE(video->bo));
-		if (video->bo[pipe] == NULL)
+		index = sna_crtc_index(crtc);
+		assert(index < ARRAY_SIZE(video->bo));
+		if (video->bo[index] == NULL)
 			continue;
 
 		memset(&s, 0, sizeof(s));
@@ -115,9 +115,9 @@ static int sna_video_sprite_stop(ddStopVideo_ARGS)
 			xf86DrvMsg(video->sna->scrn->scrnIndex, X_ERROR,
 				   "failed to disable plane\n");
 
-		if (video->bo[pipe])
-			kgem_bo_destroy(&video->sna->kgem, video->bo[pipe]);
-		video->bo[pipe] = NULL;
+		if (video->bo[index])
+			kgem_bo_destroy(&video->sna->kgem, video->bo[index]);
+		video->bo[index] = NULL;
 	}
 
 	sna_window_set_port((WindowPtr)draw, NULL);
@@ -290,7 +290,7 @@ sna_video_sprite_show(struct sna *sna,
 		      BoxPtr dstBox)
 {
 	struct local_mode_set_plane s;
-	int pipe = sna_crtc_pipe(crtc);
+	int index = sna_crtc_index(crtc);
 
 	/* XXX handle video spanning multiple CRTC */
 
@@ -301,7 +301,7 @@ sna_video_sprite_show(struct sna *sna,
 #define LOCAL_IOCTL_I915_SET_SPRITE_COLORKEY DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_SET_SPRITE_COLORKEY, struct local_intel_sprite_colorkey)
 #define LOCAL_IOCTL_MODE_ADDFB2 DRM_IOWR(0xb8, struct local_mode_fb_cmd2)
 
-	if (video->color_key_changed & (1 << pipe) && video->has_color_key) {
+	if (video->color_key_changed & (1 << index) && video->has_color_key) {
 		struct local_intel_sprite_colorkey {
 			uint32_t plane_id;
 			uint32_t min_value;
@@ -339,17 +339,17 @@ sna_video_sprite_show(struct sna *sna,
 			}
 		}
 
-		video->color_key_changed &= ~(1 << pipe);
+		video->color_key_changed &= ~(1 << index);
 	}
 
-	if (video->colorspace_changed & (1 << pipe)) {
+	if (video->colorspace_changed & (1 << index)) {
 		DBG(("%s: updating colorspace: %x\n",
 		     __FUNCTION__, video->colorspace));
 
 		sna_crtc_set_sprite_colorspace(crtc, video->idx,
 					       video->colorspace);
 
-		video->colorspace_changed &= ~(1 << pipe);
+		video->colorspace_changed &= ~(1 << index);
 	}
 
 	update_dst_box_to_crtc_coords(sna, crtc, dstBox);
@@ -468,18 +468,18 @@ sna_video_sprite_show(struct sna *sna,
 
 	if (drmIoctl(sna->kgem.fd, LOCAL_IOCTL_MODE_SETPLANE, &s)) {
 		DBG(("SET_PLANE failed: ret=%d\n", errno));
-		if (video->bo[pipe]) {
-			kgem_bo_destroy(&sna->kgem, video->bo[pipe]);
-			video->bo[pipe] = NULL;
+		if (video->bo[index]) {
+			kgem_bo_destroy(&sna->kgem, video->bo[index]);
+			video->bo[index] = NULL;
 		}
 		return false;
 	}
 
 	__kgem_bo_clear_dirty(frame->bo);
 
-	if (video->bo[pipe])
-		kgem_bo_destroy(&sna->kgem, video->bo[pipe]);
-	video->bo[pipe] = kgem_bo_reference(frame->bo);
+	if (video->bo[index])
+		kgem_bo_destroy(&sna->kgem, video->bo[index]);
+	video->bo[index] = kgem_bo_reference(frame->bo);
 	return true;
 }
 
@@ -529,7 +529,7 @@ static int sna_video_sprite_put_image(ddPutImage_ARGS)
 	for (i = 0; i < video->sna->mode.num_real_crtc; i++) {
 		xf86CrtcPtr crtc = config->crtc[i];
 		struct sna_video_frame frame;
-		const int pipe = sna_crtc_pipe(crtc);
+		const int index = sna_crtc_index(crtc);
 		bool hw_scaling = has_hw_scaling(sna, video);
 		INT32 x1, x2, y1, y2;
 		Rotation rotation;
@@ -547,15 +547,15 @@ retry:
 		RegionIntersect(&reg, &reg, &clip);
 		if (RegionNil(&reg)) {
 off:
-			assert(pipe < ARRAY_SIZE(video->bo));
-			if (video->bo[pipe]) {
+			assert(index < ARRAY_SIZE(video->bo));
+			if (video->bo[index]) {
 				struct local_mode_set_plane s;
 				memset(&s, 0, sizeof(s));
 				s.plane_id = sna_crtc_to_sprite(crtc, video->idx);
 				if (drmIoctl(video->sna->kgem.fd, LOCAL_IOCTL_MODE_SETPLANE, &s))
 					xf86DrvMsg(video->sna->scrn->scrnIndex, X_ERROR,
 						   "failed to disable plane\n");
-				video->bo[pipe] = NULL;
+				video->bo[index] = NULL;
 			}
 			continue;
 		}
-- 
2.39.2

