Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B3A1F7B4D
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 18:01:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E541C6EA01;
	Fri, 12 Jun 2020 16:01:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B7266EA01
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 16:01:12 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id t18so10271398wru.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 09:01:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OHM3F+Su/elrYvKr1iDHIP6BWI0EphgB18Gvjv1SqeI=;
 b=EC6X3E+OjCRbbI4Ecm4JzYJuYjIrrLv2d39yUqaiKWCAQqGHs2/yGkmPyZJJTz3mYr
 YM+KOPSpL2BxIRx4n16EvzTEiRopGho+q2J/4szjLhxT7eunHSGP1Gja6RhyVgsEunZ0
 Rh2KXADTps7O2xxY+zpLWDW2TdATpHrFFAClg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OHM3F+Su/elrYvKr1iDHIP6BWI0EphgB18Gvjv1SqeI=;
 b=pdGh6bwJdseJqt6CHXLB9/V9bcMfSvWNb8n5+uu8WXc60J4nKepRGcx92fM80y+zfc
 JO1amjeSFZRB40m+NfUxQAwZHFuThvMvoaXg+DSfM+ma7yS6hlO5IS5eAGg/DUnabQ/n
 PX+EntRN+DH9XLaZ4h+NqXwc6JFIpX6aRRF3Dftu5XToVeiysderMY59Fj2nH2kEo6Jd
 aPyY7zsNjYCfCGy6O58NgqkcKee3T4oAjt2zxnk1hk6n8Dsjprw1Q4CtAS8VK224wG7/
 +yqpPfWg80m0yItEwtNcNbL109P56NJe41M2N6IkUJblJMw/qJEEIVta2FtTHfaBIJeg
 UbmQ==
X-Gm-Message-State: AOAM531UbCyroTxFPv6Fz36kbypuZq2LlM1Wh4kc9gEVYkEjZDOQUjx3
 jp+Fm+if3lJPEazJWJxVBq5T2FfhM9k=
X-Google-Smtp-Source: ABdhPJzdn2LNYwOOuAPmUybQZ4k/xIkWdV04BD9aKNbXWi7Cto/1n5uD+kiD0lHJWGj9cCL1mLDrcw==
X-Received: by 2002:a05:6000:87:: with SMTP id
 m7mr15992720wrx.306.1591977671183; 
 Fri, 12 Jun 2020 09:01:11 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j5sm10801566wrq.39.2020.06.12.09.01.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 09:01:10 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 12 Jun 2020 18:00:55 +0200
Message-Id: <20200612160056.2082681-7-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200612160056.2082681-1-daniel.vetter@ffwll.ch>
References: <20200612160056.2082681-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/8] drm/mipi-dbi: Remove ->enabled
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
 Daniel Vetter <daniel.vetter@intel.com>, David Lechner <david@lechnology.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The atomic helpers try really hard to not lose track of things,
duplicating enabled tracking in the driver is at best confusing.
Double-enabling or disabling is a bug in atomic helpers.

In the fb_dirty function we can just assume that the fb always exists,
simple display pipe helpers guarantee that the crtc is only enabled
together with the output, so we always have a primary plane around.

Now in the update function we need to be a notch more careful, since
that can also get called when the crtc is off. And we don't want to
upload frames when that's the case, so filter that out too.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: David Lechner <david@lechnology.com>
---
 drivers/gpu/drm/drm_mipi_dbi.c | 16 ++++++----------
 drivers/gpu/drm/tiny/ili9225.c | 12 +++---------
 drivers/gpu/drm/tiny/st7586.c  | 11 +++--------
 include/drm/drm_mipi_dbi.h     |  5 -----
 4 files changed, 12 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/drm_mipi_dbi.c b/drivers/gpu/drm/drm_mipi_dbi.c
index fd8d672972a9..79532b9a324a 100644
--- a/drivers/gpu/drm/drm_mipi_dbi.c
+++ b/drivers/gpu/drm/drm_mipi_dbi.c
@@ -268,7 +268,7 @@ static void mipi_dbi_fb_dirty(struct drm_framebuffer *fb, struct drm_rect *rect)
 	bool full;
 	void *tr;
 
-	if (!dbidev->enabled)
+	if (WARN_ON(!fb))
 		return;
 
 	if (!drm_dev_enter(fb->dev, &idx))
@@ -314,6 +314,9 @@ void mipi_dbi_pipe_update(struct drm_simple_display_pipe *pipe,
 	struct drm_plane_state *state = pipe->plane.state;
 	struct drm_rect rect;
 
+	if (!pipe->crtc.state->active)
+		return;
+
 	if (drm_atomic_helper_damage_merged(old_state, state, &rect))
 		mipi_dbi_fb_dirty(state->fb, &rect);
 }
@@ -325,9 +328,8 @@ EXPORT_SYMBOL(mipi_dbi_pipe_update);
  * @crtc_state: CRTC state
  * @plane_state: Plane state
  *
- * This function sets &mipi_dbi->enabled, flushes the whole framebuffer and
- * enables the backlight. Drivers can use this in their
- * &drm_simple_display_pipe_funcs->enable callback.
+ * Flushes the whole framebuffer and enables the backlight. Drivers can use this
+ * in their &drm_simple_display_pipe_funcs->enable callback.
  *
  * Note: Drivers which don't use mipi_dbi_pipe_update() because they have custom
  * framebuffer flushing, can't use this function since they both use the same
@@ -349,7 +351,6 @@ void mipi_dbi_enable_flush(struct mipi_dbi_dev *dbidev,
 	if (!drm_dev_enter(&dbidev->drm, &idx))
 		return;
 
-	dbidev->enabled = true;
 	mipi_dbi_fb_dirty(fb, &rect);
 	backlight_enable(dbidev->backlight);
 
@@ -390,13 +391,8 @@ void mipi_dbi_pipe_disable(struct drm_simple_display_pipe *pipe)
 {
 	struct mipi_dbi_dev *dbidev = drm_to_mipi_dbi_dev(pipe->crtc.dev);
 
-	if (!dbidev->enabled)
-		return;
-
 	DRM_DEBUG_KMS("\n");
 
-	dbidev->enabled = false;
-
 	if (dbidev->backlight)
 		backlight_disable(dbidev->backlight);
 	else
diff --git a/drivers/gpu/drm/tiny/ili9225.c b/drivers/gpu/drm/tiny/ili9225.c
index 16400064320f..97a77262d791 100644
--- a/drivers/gpu/drm/tiny/ili9225.c
+++ b/drivers/gpu/drm/tiny/ili9225.c
@@ -89,9 +89,6 @@ static void ili9225_fb_dirty(struct drm_framebuffer *fb, struct drm_rect *rect)
 	bool full;
 	void *tr;
 
-	if (!dbidev->enabled)
-		return;
-
 	if (!drm_dev_enter(fb->dev, &idx))
 		return;
 
@@ -167,6 +164,9 @@ static void ili9225_pipe_update(struct drm_simple_display_pipe *pipe,
 	struct drm_plane_state *state = pipe->plane.state;
 	struct drm_rect rect;
 
+	if (!pipe->crtc.state->active)
+		return;
+
 	if (drm_atomic_helper_damage_merged(old_state, state, &rect))
 		ili9225_fb_dirty(state->fb, &rect);
 }
@@ -275,7 +275,6 @@ static void ili9225_pipe_enable(struct drm_simple_display_pipe *pipe,
 
 	ili9225_command(dbi, ILI9225_DISPLAY_CONTROL_1, 0x1017);
 
-	dbidev->enabled = true;
 	ili9225_fb_dirty(fb, &rect);
 out_exit:
 	drm_dev_exit(idx);
@@ -295,16 +294,11 @@ static void ili9225_pipe_disable(struct drm_simple_display_pipe *pipe)
 	 * unplug.
 	 */
 
-	if (!dbidev->enabled)
-		return;
-
 	ili9225_command(dbi, ILI9225_DISPLAY_CONTROL_1, 0x0000);
 	msleep(50);
 	ili9225_command(dbi, ILI9225_POWER_CONTROL_2, 0x0007);
 	msleep(50);
 	ili9225_command(dbi, ILI9225_POWER_CONTROL_1, 0x0a02);
-
-	dbidev->enabled = false;
 }
 
 static int ili9225_dbi_command(struct mipi_dbi *dbi, u8 *cmd, u8 *par,
diff --git a/drivers/gpu/drm/tiny/st7586.c b/drivers/gpu/drm/tiny/st7586.c
index 1311e5df8721..d05de03891f8 100644
--- a/drivers/gpu/drm/tiny/st7586.c
+++ b/drivers/gpu/drm/tiny/st7586.c
@@ -118,9 +118,6 @@ static void st7586_fb_dirty(struct drm_framebuffer *fb, struct drm_rect *rect)
 	struct mipi_dbi *dbi = &dbidev->dbi;
 	int start, end, idx, ret = 0;
 
-	if (!dbidev->enabled)
-		return;
-
 	if (!drm_dev_enter(fb->dev, &idx))
 		return;
 
@@ -161,6 +158,9 @@ static void st7586_pipe_update(struct drm_simple_display_pipe *pipe,
 	struct drm_plane_state *state = pipe->plane.state;
 	struct drm_rect rect;
 
+	if (!pipe->crtc.state->active)
+		return;
+
 	if (drm_atomic_helper_damage_merged(old_state, state, &rect))
 		st7586_fb_dirty(state->fb, &rect);
 }
@@ -237,7 +237,6 @@ static void st7586_pipe_enable(struct drm_simple_display_pipe *pipe,
 
 	msleep(100);
 
-	dbidev->enabled = true;
 	st7586_fb_dirty(fb, &rect);
 
 	mipi_dbi_command(dbi, MIPI_DCS_SET_DISPLAY_ON);
@@ -258,11 +257,7 @@ static void st7586_pipe_disable(struct drm_simple_display_pipe *pipe)
 
 	DRM_DEBUG_KMS("\n");
 
-	if (!dbidev->enabled)
-		return;
-
 	mipi_dbi_command(&dbidev->dbi, MIPI_DCS_SET_DISPLAY_OFF);
-	dbidev->enabled = false;
 }
 
 static const u32 st7586_formats[] = {
diff --git a/include/drm/drm_mipi_dbi.h b/include/drm/drm_mipi_dbi.h
index 4d0e49c0ed2c..c2827ceaba0d 100644
--- a/include/drm/drm_mipi_dbi.h
+++ b/include/drm/drm_mipi_dbi.h
@@ -94,11 +94,6 @@ struct mipi_dbi_dev {
 	 */
 	struct drm_display_mode mode;
 
-	/**
-	 * @enabled: Pipeline is enabled
-	 */
-	bool enabled;
-
 	/**
 	 * @tx_buf: Buffer used for transfer (copy clip rect area)
 	 */
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
