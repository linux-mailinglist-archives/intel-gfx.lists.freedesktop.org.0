Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B018A2F631
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 18:58:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B6EE10E5D8;
	Mon, 10 Feb 2025 17:58:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BX/JeO/I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B42A210E5D8
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2025 17:58:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739210337; x=1770746337;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=CQbFXzVwjFNellMB/9pATb9LoL4kr7uMSaJ1vUDoT0Q=;
 b=BX/JeO/I0RWSDXiK5tWLh9jlM8P1V5IpMZV3+SWMmTOyRxjdecvCQiuP
 YbKt3Q6f6g5M3EsqENXUNM+2qIQ5jJXJTmYWkJt2YkbJLQWHJBHxNtE8y
 BOJrtdCZTQYbMDj57kLPMH5BW4g98/9axZKxzeZeLicPfFDY7YJlbRD5u
 6Ay8Oxy9vJ8ovfLrSqwVsvYwlm/qleJexbAYHSs9dr42vCz7VcpZ/C/KY
 F/dMLvvO7bTE5/C/4zWYUARopkMYWsVNWm3+B2pVPWke9iUYI6/5xNLYn
 SbcMj8L+ixdZ4xzZNATXdD4RfbVvd4T+Seincme7e6Jro2VDay8OR18Dk A==;
X-CSE-ConnectionGUID: BQVMlb1xSXOr49rhZUAABA==
X-CSE-MsgGUID: uJ3i9EZRTmyFs7Xb3JIwaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="39003014"
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="39003014"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 09:58:56 -0800
X-CSE-ConnectionGUID: rfT1gfhMSTCyCeNpMviE2w==
X-CSE-MsgGUID: sPJy9shHQYmYBUFbBRHZ/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="112480694"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Feb 2025 09:58:54 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 10 Feb 2025 19:58:53 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH xf86-video-intel 6/7] sna/video/sprite: Extract
 sna_video_sprite_hide()
Date: Mon, 10 Feb 2025 19:58:35 +0200
Message-ID: <20250210175836.30984-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250210175836.30984-1-ville.syrjala@linux.intel.com>
References: <20250210175836.30984-1-ville.syrjala@linux.intel.com>
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

---
 src/sna/sna_video_sprite.c | 33 ++++++++++++++-------------------
 1 file changed, 14 insertions(+), 19 deletions(-)

diff --git a/src/sna/sna_video_sprite.c b/src/sna/sna_video_sprite.c
index e2541e351b3f..5f1e4616a23e 100644
--- a/src/sna/sna_video_sprite.c
+++ b/src/sna/sna_video_sprite.c
@@ -93,10 +93,20 @@ static const XvAttributeRec attribs[] = {
 	{ XvSettable | XvGettable, 0, 1, (char *)"XV_ALWAYS_ON_TOP" },
 };
 
+static void sna_video_sprite_hide(xf86CrtcPtr crtc, struct sna_video *video)
+{
+	struct local_mode_set_plane s = {
+		.plane_id = sna_crtc_to_sprite(crtc, video->idx),
+	};
+
+	if (drmIoctl(video->sna->kgem.fd, LOCAL_IOCTL_MODE_SETPLANE, &s))
+		xf86DrvMsg(video->sna->scrn->scrnIndex, X_ERROR,
+			   "failed to disable plane\n");
+}
+
 static int sna_video_sprite_stop(ddStopVideo_ARGS)
 {
 	struct sna_video *video = port->devPriv.ptr;
-	struct local_mode_set_plane s;
 	xf86CrtcConfigPtr config = XF86_CRTC_CONFIG_PTR(video->sna->scrn);
 	int i;
 
@@ -109,12 +119,7 @@ static int sna_video_sprite_stop(ddStopVideo_ARGS)
 		if (video->bo[index] == NULL)
 			continue;
 
-		memset(&s, 0, sizeof(s));
-		s.plane_id = sna_crtc_to_sprite(crtc, video->idx);
-		if (drmIoctl(video->sna->kgem.fd, LOCAL_IOCTL_MODE_SETPLANE, &s))
-			xf86DrvMsg(video->sna->scrn->scrnIndex, X_ERROR,
-				   "failed to disable plane\n");
-
+		sna_video_sprite_hide(crtc, video);
 		kgem_bo_replace(&video->sna->kgem, &video->bo[index], NULL);
 	}
 
@@ -322,13 +327,8 @@ sna_video_sprite_show(struct sna *sna,
 		if (drmIoctl(sna->kgem.fd,
 			     LOCAL_IOCTL_I915_SET_SPRITE_COLORKEY,
 			     &set)) {
-			memset(&s, 0, sizeof(s));
-			s.plane_id = sna_crtc_to_sprite(crtc, video->idx);
-
 			/* try to disable the plane first */
-			if (drmIoctl(video->sna->kgem.fd, LOCAL_IOCTL_MODE_SETPLANE, &s))
-				xf86DrvMsg(video->sna->scrn->scrnIndex, X_ERROR,
-					   "failed to disable plane\n");
+			sna_video_sprite_hide(crtc, video);
 
 			if (drmIoctl(sna->kgem.fd, LOCAL_IOCTL_I915_SET_SPRITE_COLORKEY, &set)) {
 				xf86DrvMsg(sna->scrn->scrnIndex, X_ERROR,
@@ -542,12 +542,7 @@ retry:
 off:
 			assert(index < ARRAY_SIZE(video->bo));
 			if (video->bo[index]) {
-				struct local_mode_set_plane s;
-				memset(&s, 0, sizeof(s));
-				s.plane_id = sna_crtc_to_sprite(crtc, video->idx);
-				if (drmIoctl(video->sna->kgem.fd, LOCAL_IOCTL_MODE_SETPLANE, &s))
-					xf86DrvMsg(video->sna->scrn->scrnIndex, X_ERROR,
-						   "failed to disable plane\n");
+				sna_video_sprite_hide(crtc, video);
 				kgem_bo_replace(&sna->kgem, &video->bo[index], NULL);
 			}
 			continue;
-- 
2.45.3

