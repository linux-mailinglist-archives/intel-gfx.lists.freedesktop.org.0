Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 743BAA2F632
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 18:59:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1525D10E5DA;
	Mon, 10 Feb 2025 17:59:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eWJ0Q6Mo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEC2D10E5DA
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2025 17:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739210339; x=1770746339;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3tRgRI7uEn7YCi3eYOhUCm+BH9gh7GfQeZHfosUz1Eo=;
 b=eWJ0Q6MoebmSUH3hiVbhYcscOFdIpolla4j0eW6VONSfDPt3uCx99bri
 6T95BXOi5aP/2oLicvCgApRFBobfu6J5DVf5Gx29lav4Rrxp3pgZDcNWV
 HR03P14kaBmRI4t8IaH9gP5IY4UWwPQfW2p+oX7HHog5+iGBjs2wdofNO
 NPIe2RC2d2KoDic3hxtk07ORKp2jv07mUcTeQZRcPYpmFqiIbXukVAzUP
 /RMpDvzbzSGnJWUJ7ezs6yS78L3ybyEqcRX6ys/t0oZVrXWswrGzhzapn
 y1+lGjoGF8MQ26zQYra20ELGlDGyJSySdJppSxOk2RoYNn7rb9P5vez/m g==;
X-CSE-ConnectionGUID: +PkY9ARhSB+yT130H0Kqtg==
X-CSE-MsgGUID: QhHUnSvMRa2r1JEk0zJaJQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="39003019"
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="39003019"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 09:58:59 -0800
X-CSE-ConnectionGUID: 2jk3PmmqR0iPoBr9pHXsdA==
X-CSE-MsgGUID: t9QBchYpQ1aGwbU67rQMIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="112480695"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Feb 2025 09:58:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 10 Feb 2025 19:58:56 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH xf86-video-intel 7/7] sna/video/sprite: Reset colorkey
 whenever disabling the sprite plane
Date: Mon, 10 Feb 2025 19:58:36 +0200
Message-ID: <20250210175836.30984-8-ville.syrjala@linux.intel.com>
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

Let's disable the colorkey whenever we hide the sprite. The colorkey
is a non-standard thing so generic kms clients have no way to disable
it, and the kernel may reject certain otherwise legal things if
colorkeying is left active.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 src/sna/sna_video_sprite.c | 31 ++++++++++++++++++++-----------
 1 file changed, 20 insertions(+), 11 deletions(-)

diff --git a/src/sna/sna_video_sprite.c b/src/sna/sna_video_sprite.c
index 5f1e4616a23e..5cb9e638abe0 100644
--- a/src/sna/sna_video_sprite.c
+++ b/src/sna/sna_video_sprite.c
@@ -93,15 +93,34 @@ static const XvAttributeRec attribs[] = {
 	{ XvSettable | XvGettable, 0, 1, (char *)"XV_ALWAYS_ON_TOP" },
 };
 
+#define DRM_I915_SET_SPRITE_COLORKEY 0x2b
+#define LOCAL_IOCTL_I915_SET_SPRITE_COLORKEY DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_SET_SPRITE_COLORKEY, struct local_intel_sprite_colorkey)
+#define LOCAL_IOCTL_MODE_ADDFB2 DRM_IOWR(0xb8, struct local_mode_fb_cmd2)
+
+struct local_intel_sprite_colorkey {
+	uint32_t plane_id;
+	uint32_t min_value;
+	uint32_t channel_mask;
+	uint32_t max_value;
+	uint32_t flags;
+};
+
 static void sna_video_sprite_hide(xf86CrtcPtr crtc, struct sna_video *video)
 {
 	struct local_mode_set_plane s = {
 		.plane_id = sna_crtc_to_sprite(crtc, video->idx),
 	};
+	struct local_intel_sprite_colorkey key = {
+		.plane_id = sna_crtc_to_sprite(crtc, video->idx),
+	};
+	int index = sna_crtc_index(crtc);
 
 	if (drmIoctl(video->sna->kgem.fd, LOCAL_IOCTL_MODE_SETPLANE, &s))
 		xf86DrvMsg(video->sna->scrn->scrnIndex, X_ERROR,
 			   "failed to disable plane\n");
+
+	drmIoctl(video->sna->kgem.fd, LOCAL_IOCTL_I915_SET_SPRITE_COLORKEY, &key);
+	video->color_key_changed |= 1 << index;
 }
 
 static int sna_video_sprite_stop(ddStopVideo_ARGS)
@@ -300,18 +319,8 @@ sna_video_sprite_show(struct sna *sna,
 	VG_CLEAR(s);
 	s.plane_id = sna_crtc_to_sprite(crtc, video->idx);
 
-#define DRM_I915_SET_SPRITE_COLORKEY 0x2b
-#define LOCAL_IOCTL_I915_SET_SPRITE_COLORKEY DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_SET_SPRITE_COLORKEY, struct local_intel_sprite_colorkey)
-#define LOCAL_IOCTL_MODE_ADDFB2 DRM_IOWR(0xb8, struct local_mode_fb_cmd2)
-
 	if (video->color_key_changed & (1 << index) && video->has_color_key) {
-		struct local_intel_sprite_colorkey {
-			uint32_t plane_id;
-			uint32_t min_value;
-			uint32_t channel_mask;
-			uint32_t max_value;
-			uint32_t flags;
-		} set;
+		struct local_intel_sprite_colorkey set;
 
 		DBG(("%s: updating color key: %x\n",
 		     __FUNCTION__, video->color_key));
-- 
2.45.3

