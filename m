Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 973442178F2
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 22:13:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC9BD6E454;
	Tue,  7 Jul 2020 20:12:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9740A6E454
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 20:12:53 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id f139so447794wmf.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Jul 2020 13:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=47ry8zzJFpkbfzhaSz9dhVhLH4swSU+s2K6Km6oEVI4=;
 b=EkliKi78Cxcl4ZAllF+yKDmH5E9JQGpVZmBIOkBrQvMdM9LUHNaP9GKLQdO77Lb39L
 GyBkGsTjZ0pHswhSbz9s50PvwzL72e/qMWjhFUvQ04RwgzfPZYMnpEFdcwxHVuzK5WwE
 Ewx2qS/aZTwAf4YCyL66MrgWIqZDYDYwHB82c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=47ry8zzJFpkbfzhaSz9dhVhLH4swSU+s2K6Km6oEVI4=;
 b=be6PdRgePeV7dEPSUJp1aBH+cN6bG1WxOyRo7yE+kH3b760QYXhrzP0vKiyqUuSipz
 u4MV1TpYFqLGC5uiMrrnADPgO58GRGzdXzSQ7hOxRJzb561hUUp/q0XH0239jmLiyJCA
 6vHnxC2PcBMV7bJfE92i3zAnaaCPFytTTWVIG+LMBPpyPqf3c4xO4RfAnYeKA/ww5Mg1
 uRpRPwtM+I3KNJKlrcmomvWPcZWMtuWqCUixu6CMzmZe3am+l6w2u8NJwmngiLhAUuVD
 fuXSxWbYrWpde7RDaVL9Q5MZIMUIH9XleMqYLnBZkxKZ446KeQ/p0A8Pw1hMZRYKbiFF
 vWPQ==
X-Gm-Message-State: AOAM532lM6L2W/IsrRz5lZJuiuDVDg1XplDo1fv8JcEFVUVu6BpyMRNX
 xI3qIi8zZP4jLMehVqQ8FrvEYw==
X-Google-Smtp-Source: ABdhPJxUjiOp/tGPiSxUOs2dJFh+N2PZSymkScgMscfuWIvlTUg/OsYH+ykwrEw2mMDdVf+mxSmsNg==
X-Received: by 2002:a1c:6384:: with SMTP id x126mr6067851wmb.144.1594152772232; 
 Tue, 07 Jul 2020 13:12:52 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q7sm2515262wra.56.2020.07.07.13.12.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jul 2020 13:12:51 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  7 Jul 2020 22:12:13 +0200
Message-Id: <20200707201229.472834-10-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/25] drm/atmel: Use drm_atomic_helper_commit
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Boris Brezillon <bbrezillon@kernel.org>, linux-rdma@vger.kernel.org,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

One of these drivers that predates the nonblocking support in helpers,
and hand-rolled its own thing. Entirely not anything specific here, we
can just delete it all and replace it with the helper version.

Could also perhaps use the drm_mode_config_helper_suspend/resume
stuff, for another few lines deleted. But I'm not looking at that
stuff, I'm just going through all the atomic commit functions and make
sure they have properly annotated dma-fence critical sections
everywhere.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Boris Brezillon <bbrezillon@kernel.org>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c | 96 +-------------------
 drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.h |  4 -
 2 files changed, 1 insertion(+), 99 deletions(-)

diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
index 871293d1aeeb..9ec156e98f06 100644
--- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
+++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
@@ -557,103 +557,10 @@ static irqreturn_t atmel_hlcdc_dc_irq_handler(int irq, void *data)
 	return IRQ_HANDLED;
 }
 
-struct atmel_hlcdc_dc_commit {
-	struct work_struct work;
-	struct drm_device *dev;
-	struct drm_atomic_state *state;
-};
-
-static void
-atmel_hlcdc_dc_atomic_complete(struct atmel_hlcdc_dc_commit *commit)
-{
-	struct drm_device *dev = commit->dev;
-	struct atmel_hlcdc_dc *dc = dev->dev_private;
-	struct drm_atomic_state *old_state = commit->state;
-
-	/* Apply the atomic update. */
-	drm_atomic_helper_commit_modeset_disables(dev, old_state);
-	drm_atomic_helper_commit_planes(dev, old_state, 0);
-	drm_atomic_helper_commit_modeset_enables(dev, old_state);
-
-	drm_atomic_helper_wait_for_vblanks(dev, old_state);
-
-	drm_atomic_helper_cleanup_planes(dev, old_state);
-
-	drm_atomic_state_put(old_state);
-
-	/* Complete the commit, wake up any waiter. */
-	spin_lock(&dc->commit.wait.lock);
-	dc->commit.pending = false;
-	wake_up_all_locked(&dc->commit.wait);
-	spin_unlock(&dc->commit.wait.lock);
-
-	kfree(commit);
-}
-
-static void atmel_hlcdc_dc_atomic_work(struct work_struct *work)
-{
-	struct atmel_hlcdc_dc_commit *commit =
-		container_of(work, struct atmel_hlcdc_dc_commit, work);
-
-	atmel_hlcdc_dc_atomic_complete(commit);
-}
-
-static int atmel_hlcdc_dc_atomic_commit(struct drm_device *dev,
-					struct drm_atomic_state *state,
-					bool async)
-{
-	struct atmel_hlcdc_dc *dc = dev->dev_private;
-	struct atmel_hlcdc_dc_commit *commit;
-	int ret;
-
-	ret = drm_atomic_helper_prepare_planes(dev, state);
-	if (ret)
-		return ret;
-
-	/* Allocate the commit object. */
-	commit = kzalloc(sizeof(*commit), GFP_KERNEL);
-	if (!commit) {
-		ret = -ENOMEM;
-		goto error;
-	}
-
-	INIT_WORK(&commit->work, atmel_hlcdc_dc_atomic_work);
-	commit->dev = dev;
-	commit->state = state;
-
-	spin_lock(&dc->commit.wait.lock);
-	ret = wait_event_interruptible_locked(dc->commit.wait,
-					      !dc->commit.pending);
-	if (ret == 0)
-		dc->commit.pending = true;
-	spin_unlock(&dc->commit.wait.lock);
-
-	if (ret)
-		goto err_free;
-
-	/* We have our own synchronization through the commit lock. */
-	BUG_ON(drm_atomic_helper_swap_state(state, false) < 0);
-
-	/* Swap state succeeded, this is the point of no return. */
-	drm_atomic_state_get(state);
-	if (async)
-		queue_work(dc->wq, &commit->work);
-	else
-		atmel_hlcdc_dc_atomic_complete(commit);
-
-	return 0;
-
-err_free:
-	kfree(commit);
-error:
-	drm_atomic_helper_cleanup_planes(dev, state);
-	return ret;
-}
-
 static const struct drm_mode_config_funcs mode_config_funcs = {
 	.fb_create = drm_gem_fb_create,
 	.atomic_check = drm_atomic_helper_check,
-	.atomic_commit = atmel_hlcdc_dc_atomic_commit,
+	.atomic_commit = drm_atomic_helper_commit,
 };
 
 static int atmel_hlcdc_dc_modeset_init(struct drm_device *dev)
@@ -716,7 +623,6 @@ static int atmel_hlcdc_dc_load(struct drm_device *dev)
 	if (!dc->wq)
 		return -ENOMEM;
 
-	init_waitqueue_head(&dc->commit.wait);
 	dc->desc = match->data;
 	dc->hlcdc = dev_get_drvdata(dev->dev->parent);
 	dev->dev_private = dc;
diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.h b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.h
index 469d4507e576..9367a3747a3a 100644
--- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.h
+++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.h
@@ -346,10 +346,6 @@ struct atmel_hlcdc_dc {
 		u32 imr;
 		struct drm_atomic_state *state;
 	} suspend;
-	struct {
-		wait_queue_head_t wait;
-		bool pending;
-	} commit;
 };
 
 extern struct atmel_hlcdc_formats atmel_hlcdc_plane_rgb_formats;
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
