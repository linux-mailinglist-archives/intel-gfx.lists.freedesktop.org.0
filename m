Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51DDC1E3F98
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 13:11:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26CEA6E2DC;
	Wed, 27 May 2020 11:11:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2E5A6E2DC
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 11:11:41 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id l11so23644583wru.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 04:11:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=F7Cx89zD5mRPpGV0aex2UawQK9YUSD/PmBjIwQKsunU=;
 b=FF4Jb+lj+o+oeJ3CA43/k4b4yRYDZgxtRW+N0SEd6sWKe+KF6NTpNHgq47jQObD5O9
 owaksMu2R9oCzXFz2QpynM96Y8TCQZUb8p/2Ame8osBILljCD0jdbl5LfzzxyR3KNWvS
 SBDdBHvEOQfeYS6iDTjK9bB+wAf2scr5rvCuo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=F7Cx89zD5mRPpGV0aex2UawQK9YUSD/PmBjIwQKsunU=;
 b=H51nTcelqJJBl62kpDhst+VWmRtlgQvQdzekLyAq+ih/8iKPdp/Z0tNc7QX4Pw2amB
 Psv3sbWaL6NnJLuzM+5UO/fO4K6QevGdZLVlv6bth6jXPqfqVaMAtr57gPl6jrmUKN7A
 alb4vj2d7CQsEPEPN2jtUrs8QHntRLJzOtTbx6/X70GtF8k4Lv5LaRZKrHDxL0lXSK2A
 /lWGalYQhwih215LM57nvkYYN42KwPghL7+rrMzp2JgxSAESsP2W1yxOYT7FsMMdqcfT
 7DXToBPp0oP3XE3S6FTuvAmIeSfrviKyKrfLszmjT2NN+qRxEGj0rkzRNlWmbeV5zpWC
 8kcA==
X-Gm-Message-State: AOAM530UoMjNWn88YcFnkAOIZzwKEXoDnPW0sSE0onJWG5mA4F71fd1u
 7T7PbRtpicf0xIBmWSwxrpfMqA==
X-Google-Smtp-Source: ABdhPJxG6WYgR1xfbdjdPk2jmnFPrWRTdMJdVLaNS6FpxHv4XsESGiIFEV+DWHz+assVZnd6EN3M5Q==
X-Received: by 2002:adf:fec9:: with SMTP id q9mr7210520wrs.172.1590577900178; 
 Wed, 27 May 2020 04:11:40 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 190sm2686274wmb.23.2020.05.27.04.11.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 04:11:39 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 27 May 2020 13:11:34 +0200
Message-Id: <20200527111134.1571781-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm: use drm_dev_has_vblank more
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For historical reasons it's called dev->num_crtcs, which is rather
confusing ever since kms was added. But now we have a nice helper, so
let's use it for better readability!

Only code change is in atomic helpers: vblank support means that
dev->irq_enabled must be set too. Another one of these quirky things
... But since it's implied we can simplify that check.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
---
 drivers/gpu/drm/drm_atomic_helper.c |  2 +-
 drivers/gpu/drm/drm_irq.c           |  2 +-
 drivers/gpu/drm/drm_vblank.c        | 14 +++++++-------
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
index 0a541368246e..bfcc7857a9a1 100644
--- a/drivers/gpu/drm/drm_atomic_helper.c
+++ b/drivers/gpu/drm/drm_atomic_helper.c
@@ -1097,7 +1097,7 @@ disable_outputs(struct drm_device *dev, struct drm_atomic_state *old_state)
 		else if (funcs->dpms)
 			funcs->dpms(crtc, DRM_MODE_DPMS_OFF);
 
-		if (!(dev->irq_enabled && dev->num_crtcs))
+		if (!drm_dev_has_vblank(dev))
 			continue;
 
 		ret = drm_crtc_vblank_get(crtc);
diff --git a/drivers/gpu/drm/drm_irq.c b/drivers/gpu/drm/drm_irq.c
index 588be45abd7a..09d6e9e2e075 100644
--- a/drivers/gpu/drm/drm_irq.c
+++ b/drivers/gpu/drm/drm_irq.c
@@ -181,7 +181,7 @@ int drm_irq_uninstall(struct drm_device *dev)
 	 * vblank/irq handling. KMS drivers must ensure that vblanks are all
 	 * disabled when uninstalling the irq handler.
 	 */
-	if (dev->num_crtcs) {
+	if (drm_dev_has_vblank(dev)) {
 		spin_lock_irqsave(&dev->vbl_lock, irqflags);
 		for (i = 0; i < dev->num_crtcs; i++) {
 			struct drm_vblank_crtc *vblank = &dev->vblank[i];
diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index e278d6407f8e..162d9f7e692a 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -605,7 +605,7 @@ void drm_calc_timestamping_constants(struct drm_crtc *crtc,
 	int linedur_ns = 0, framedur_ns = 0;
 	int dotclock = mode->crtc_clock;
 
-	if (!dev->num_crtcs)
+	if (!drm_dev_has_vblank(dev))
 		return;
 
 	if (WARN_ON(pipe >= dev->num_crtcs))
@@ -1065,7 +1065,7 @@ void drm_crtc_send_vblank_event(struct drm_crtc *crtc,
 	unsigned int pipe = drm_crtc_index(crtc);
 	ktime_t now;
 
-	if (dev->num_crtcs > 0) {
+	if (drm_dev_has_vblank(dev)) {
 		seq = drm_vblank_count_and_time(dev, pipe, &now);
 	} else {
 		seq = 0;
@@ -1137,7 +1137,7 @@ static int drm_vblank_get(struct drm_device *dev, unsigned int pipe)
 	unsigned long irqflags;
 	int ret = 0;
 
-	if (!dev->num_crtcs)
+	if (!drm_dev_has_vblank(dev))
 		return -EINVAL;
 
 	if (WARN_ON(pipe >= dev->num_crtcs))
@@ -1506,7 +1506,7 @@ static void drm_legacy_vblank_pre_modeset(struct drm_device *dev,
 	struct drm_vblank_crtc *vblank = &dev->vblank[pipe];
 
 	/* vblank is not initialized (IRQ not installed ?), or has been freed */
-	if (!dev->num_crtcs)
+	if (!drm_dev_has_vblank(dev))
 		return;
 
 	if (WARN_ON(pipe >= dev->num_crtcs))
@@ -1533,7 +1533,7 @@ static void drm_legacy_vblank_post_modeset(struct drm_device *dev,
 	unsigned long irqflags;
 
 	/* vblank is not initialized (IRQ not installed ?), or has been freed */
-	if (!dev->num_crtcs)
+	if (!drm_dev_has_vblank(dev))
 		return;
 
 	if (WARN_ON(pipe >= dev->num_crtcs))
@@ -1558,7 +1558,7 @@ int drm_legacy_modeset_ctl_ioctl(struct drm_device *dev, void *data,
 	unsigned int pipe;
 
 	/* If drm_vblank_init() hasn't been called yet, just no-op */
-	if (!dev->num_crtcs)
+	if (!drm_dev_has_vblank(dev))
 		return 0;
 
 	/* KMS drivers handle this internally */
@@ -1896,7 +1896,7 @@ bool drm_handle_vblank(struct drm_device *dev, unsigned int pipe)
 	unsigned long irqflags;
 	bool disable_irq, fence_cookie;
 
-	if (WARN_ON_ONCE(!dev->num_crtcs))
+	if (WARN_ON_ONCE(!drm_dev_has_vblank(dev)))
 		return false;
 
 	if (WARN_ON(pipe >= dev->num_crtcs))
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
