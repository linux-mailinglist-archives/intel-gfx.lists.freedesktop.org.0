Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFF81E56ED
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 07:45:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0117A6E0E3;
	Thu, 28 May 2020 05:45:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 951E26E0E3
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 05:45:03 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id x13so11901922wrv.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 22:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=URUyMBbcE27NnJVn/kaejh+NL0e8PFAzUXsMirAPjRg=;
 b=Lr0MyTR96DVcKjEp1ZV5mYH+ggnqMs4NxBukTpbIS3IALMwFPcxhXkP7Mq8tGZG+z2
 IgFqOAP6dCzq76rY9sdAqlWLEv7/JK0S4KHKBiwRVlODYDMNm+Un2FMdOerxCg7wVxlu
 cTUu2IuBeEgvipkxCXJdc+BIcIw4wCSiwiloQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=URUyMBbcE27NnJVn/kaejh+NL0e8PFAzUXsMirAPjRg=;
 b=bxtBZKUqHk/rctvHIXvsoRyhgOBGWdPzKCXjIh0YmFeJKKuTTJQTFx90+GewLqxZo5
 HXvLZ5QceeNC8ogKfd0ALTTM5qkJG1JipeePfkYjrSslEQdpshbdEyZ0U4vVTGQqYRuA
 s6SZOP2qO1K64REaleyKhDRoYu/n8M37FoCcLHwZrZYyRGrF4OxpQRX94QTPjm9zIHP6
 uU7UetaKTseAYKv3sxd+uC4bfxopS720/hiNqyciCveDK36zTpje8GCpoh3lHTMDFrxj
 DWpZeIcrLUV+7jmLEWuOZaati7iBeAdB+70jvFyjWOyRS7PlWLJE2rCyqZOve7WrTJwl
 xn3w==
X-Gm-Message-State: AOAM5318Rw0kZ+5iibRMqn+tjIWvUw1skxTU3EghQWJpR//8QiUWaZJj
 //usKq6Lq7rA5g2SppV1nOF3DgIR4b0=
X-Google-Smtp-Source: ABdhPJzx2rSaxzoq1piO1iPV3E1+YW4Fk/UXcqXNNPUUQEeGSm4Pqsp5jRJYz9fEAz0tRD3utqFQTA==
X-Received: by 2002:adf:ea45:: with SMTP id j5mr1716849wrn.391.1590644701782; 
 Wed, 27 May 2020 22:45:01 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 5sm4859503wmz.16.2020.05.27.22.45.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 22:45:00 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Thu, 28 May 2020 07:44:56 +0200
Message-Id: <20200528054456.1607803-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527111134.1571781-1-daniel.vetter@ffwll.ch>
References: <20200527111134.1571781-1-daniel.vetter@ffwll.ch>
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
index 85d163f16801..a1898c58ae3c 100644
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
index 8837bebc7e13..e2beacafaa28 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -604,7 +604,7 @@ void drm_calc_timestamping_constants(struct drm_crtc *crtc,
 	int linedur_ns = 0, framedur_ns = 0;
 	int dotclock = mode->crtc_clock;
 
-	if (!dev->num_crtcs)
+	if (!drm_dev_has_vblank(dev))
 		return;
 
 	if (WARN_ON(pipe >= dev->num_crtcs))
@@ -1064,7 +1064,7 @@ void drm_crtc_send_vblank_event(struct drm_crtc *crtc,
 	unsigned int pipe = drm_crtc_index(crtc);
 	ktime_t now;
 
-	if (dev->num_crtcs > 0) {
+	if (drm_dev_has_vblank(dev)) {
 		seq = drm_vblank_count_and_time(dev, pipe, &now);
 	} else {
 		seq = 0;
@@ -1136,7 +1136,7 @@ static int drm_vblank_get(struct drm_device *dev, unsigned int pipe)
 	unsigned long irqflags;
 	int ret = 0;
 
-	if (!dev->num_crtcs)
+	if (!drm_dev_has_vblank(dev))
 		return -EINVAL;
 
 	if (WARN_ON(pipe >= dev->num_crtcs))
@@ -1505,7 +1505,7 @@ static void drm_legacy_vblank_pre_modeset(struct drm_device *dev,
 	struct drm_vblank_crtc *vblank = &dev->vblank[pipe];
 
 	/* vblank is not initialized (IRQ not installed ?), or has been freed */
-	if (!dev->num_crtcs)
+	if (!drm_dev_has_vblank(dev))
 		return;
 
 	if (WARN_ON(pipe >= dev->num_crtcs))
@@ -1532,7 +1532,7 @@ static void drm_legacy_vblank_post_modeset(struct drm_device *dev,
 	unsigned long irqflags;
 
 	/* vblank is not initialized (IRQ not installed ?), or has been freed */
-	if (!dev->num_crtcs)
+	if (!drm_dev_has_vblank(dev))
 		return;
 
 	if (WARN_ON(pipe >= dev->num_crtcs))
@@ -1557,7 +1557,7 @@ int drm_legacy_modeset_ctl_ioctl(struct drm_device *dev, void *data,
 	unsigned int pipe;
 
 	/* If drm_vblank_init() hasn't been called yet, just no-op */
-	if (!dev->num_crtcs)
+	if (!drm_dev_has_vblank(dev))
 		return 0;
 
 	/* KMS drivers handle this internally */
@@ -1895,7 +1895,7 @@ bool drm_handle_vblank(struct drm_device *dev, unsigned int pipe)
 	unsigned long irqflags;
 	bool disable_irq;
 
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
