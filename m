Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A88618246
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 16:18:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C43E410E6AA;
	Thu,  3 Nov 2022 15:15:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [IPv6:2001:67c:2178:6::1d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABF7C10E614;
 Thu,  3 Nov 2022 15:14:58 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 6986D1F8E8;
 Thu,  3 Nov 2022 15:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1667488497; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dABgwN8DHhdSFdmvQoS/APAuOZCTk1xcbptlf+la6g4=;
 b=1fEWnQEjouTz99410aQ2anAaiojfO8tPz++OQGD4WLXZ5gUEs5b4vO3deaLmKA46XXR21y
 avVCsHH1123TCT1exnwybLBw+OQiTgY5gGkb/lqMYcFAHHsfTGwI8isTWVnXcMxWET0zNW
 1sq8yOCX9pqrrch+8QWsIixla0xuW8U=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1667488497;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dABgwN8DHhdSFdmvQoS/APAuOZCTk1xcbptlf+la6g4=;
 b=ZokmNUdMSJRJ9i5LRSqQeKRvJ0QKrtIGSwBrmgjoRLTeTl63HGF+ZvAODGfQ3gcCi9x9A6
 JkgPgPCVvycn0aDQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id C013E13ADB;
 Thu,  3 Nov 2022 15:14:56 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id 6Br3LfDaY2PBGgAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Thu, 03 Nov 2022 15:14:56 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org, javierm@redhat.com,
 mripard@kernel.org, maarten.lankhorst@linux.intel.com
Date: Thu,  3 Nov 2022 16:14:38 +0100
Message-Id: <20221103151446.2638-16-tzimmermann@suse.de>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <20221103151446.2638-1-tzimmermann@suse.de>
References: <20221103151446.2638-1-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 15/23] drm/fb-helper: Disconnect damage
 worker from update logic
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
Cc: linux-aspeed@lists.ozlabs.org, nouveau@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-samsung-soc@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 spice-devel@lists.freedesktop.org, linux-sunxi@lists.linux.dev,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 etnaviv@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 xen-devel@lists.xenproject.org, linux-tegra@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 "linux-hyperv@vger.kernel.orglinux-hyperv"@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Thomas Zimmermann <tzimmermann@suse.de>, freedreno@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The fbdev helpers implement a damage worker that forwards fbdev
updates to the DRM driver. The worker's update logic depends on
the generic fbdev emulation. Separate the two via function pointer.

The generic fbdev emulation sets struct drm_fb_helper_funcs.fb_dirty,
a new callback that hides the update logic from the damage worker.
It's not possible to use the generic logic with other fbdev emulation,
because it contains additional code for the shadow buffering that
the generic emulation employs.

DRM drivers with internal fbdev emulation can set fb_dirty to their
own implementation if they require damage handling; although no such
drivers currently exist.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
---
 drivers/gpu/drm/drm_fb_helper.c | 75 ++++++++++++++++++++-------------
 include/drm/drm_fb_helper.h     | 15 +++++++
 2 files changed, 61 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/drm_fb_helper.c b/drivers/gpu/drm/drm_fb_helper.c
index bfbb2af144060..f6d22cc4cd876 100644
--- a/drivers/gpu/drm/drm_fb_helper.c
+++ b/drivers/gpu/drm/drm_fb_helper.c
@@ -448,35 +448,24 @@ static int drm_fb_helper_damage_blit(struct drm_fb_helper *fb_helper,
 
 static void drm_fb_helper_damage_work(struct work_struct *work)
 {
-	struct drm_fb_helper *helper = container_of(work, struct drm_fb_helper,
-						    damage_work);
-	struct drm_device *dev = helper->dev;
+	struct drm_fb_helper *helper = container_of(work, struct drm_fb_helper, damage_work);
 	struct drm_clip_rect *clip = &helper->damage_clip;
 	struct drm_clip_rect clip_copy;
 	unsigned long flags;
 	int ret;
 
+	if (!helper->funcs->fb_dirty)
+		return;
+
 	spin_lock_irqsave(&helper->damage_lock, flags);
 	clip_copy = *clip;
 	clip->x1 = clip->y1 = ~0;
 	clip->x2 = clip->y2 = 0;
 	spin_unlock_irqrestore(&helper->damage_lock, flags);
 
-	/* Call damage handlers only if necessary */
-	if (!(clip_copy.x1 < clip_copy.x2 && clip_copy.y1 < clip_copy.y2))
-		return;
-
-	if (helper->buffer) {
-		ret = drm_fb_helper_damage_blit(helper, &clip_copy);
-		if (drm_WARN_ONCE(dev, ret, "Damage blitter failed: ret=%d\n", ret))
-			goto err;
-	}
-
-	if (helper->fb->funcs->dirty) {
-		ret = helper->fb->funcs->dirty(helper->fb, NULL, 0, 0, &clip_copy, 1);
-		if (drm_WARN_ONCE(dev, ret, "Dirty helper failed: ret=%d\n", ret))
-			goto err;
-	}
+	ret = helper->funcs->fb_dirty(helper, &clip_copy);
+	if (ret)
+		goto err;
 
 	return;
 
@@ -670,16 +659,6 @@ void drm_fb_helper_fini(struct drm_fb_helper *fb_helper)
 }
 EXPORT_SYMBOL(drm_fb_helper_fini);
 
-static bool drm_fbdev_use_shadow_fb(struct drm_fb_helper *fb_helper)
-{
-	struct drm_device *dev = fb_helper->dev;
-	struct drm_framebuffer *fb = fb_helper->fb;
-
-	return dev->mode_config.prefer_shadow_fbdev ||
-	       dev->mode_config.prefer_shadow ||
-	       fb->funcs->dirty;
-}
-
 static void drm_fb_helper_damage(struct fb_info *info, u32 x, u32 y,
 				 u32 width, u32 height)
 {
@@ -687,7 +666,7 @@ static void drm_fb_helper_damage(struct fb_info *info, u32 x, u32 y,
 	struct drm_clip_rect *clip = &helper->damage_clip;
 	unsigned long flags;
 
-	if (!drm_fbdev_use_shadow_fb(helper))
+	if (!helper->funcs->fb_dirty)
 		return;
 
 	spin_lock_irqsave(&helper->damage_lock, flags);
@@ -2111,6 +2090,16 @@ void drm_fb_helper_output_poll_changed(struct drm_device *dev)
 }
 EXPORT_SYMBOL(drm_fb_helper_output_poll_changed);
 
+static bool drm_fbdev_use_shadow_fb(struct drm_fb_helper *fb_helper)
+{
+	struct drm_device *dev = fb_helper->dev;
+	struct drm_framebuffer *fb = fb_helper->fb;
+
+	return dev->mode_config.prefer_shadow_fbdev ||
+	       dev->mode_config.prefer_shadow ||
+	       fb->funcs->dirty;
+}
+
 /* @user: 1=userspace, 0=fbcon */
 static int drm_fbdev_fb_open(struct fb_info *info, int user)
 {
@@ -2487,8 +2476,36 @@ static int drm_fb_helper_generic_probe(struct drm_fb_helper *fb_helper,
 	return 0;
 }
 
+static int drm_fbdev_fb_dirty(struct drm_fb_helper *helper, struct drm_clip_rect *clip)
+{
+	struct drm_device *dev = helper->dev;
+	int ret;
+
+	if (!drm_fbdev_use_shadow_fb(helper))
+		return 0;
+
+	/* Call damage handlers only if necessary */
+	if (!(clip->x1 < clip->x2 && clip->y1 < clip->y2))
+		return 0;
+
+	if (helper->buffer) {
+		ret = drm_fb_helper_damage_blit(helper, clip);
+		if (drm_WARN_ONCE(dev, ret, "Damage blitter failed: ret=%d\n", ret))
+			return ret;
+	}
+
+	if (helper->fb->funcs->dirty) {
+		ret = helper->fb->funcs->dirty(helper->fb, NULL, 0, 0, clip, 1);
+		if (drm_WARN_ONCE(dev, ret, "Dirty helper failed: ret=%d\n", ret))
+			return ret;
+	}
+
+	return 0;
+}
+
 static const struct drm_fb_helper_funcs drm_fb_helper_generic_funcs = {
 	.fb_probe = drm_fb_helper_generic_probe,
+	.fb_dirty = drm_fbdev_fb_dirty,
 };
 
 static void drm_fbdev_client_unregister(struct drm_client_dev *client)
diff --git a/include/drm/drm_fb_helper.h b/include/drm/drm_fb_helper.h
index edc697a2fde24..3d7a3d68dab8a 100644
--- a/include/drm/drm_fb_helper.h
+++ b/include/drm/drm_fb_helper.h
@@ -30,6 +30,7 @@
 #ifndef DRM_FB_HELPER_H
 #define DRM_FB_HELPER_H
 
+struct drm_clip_rect;
 struct drm_fb_helper;
 
 #include <linux/fb.h>
@@ -89,6 +90,20 @@ struct drm_fb_helper_funcs {
 	 */
 	int (*fb_probe)(struct drm_fb_helper *helper,
 			struct drm_fb_helper_surface_size *sizes);
+
+	/**
+	 * @fb_dirty:
+	 *
+	 * Driver callback to update the framebuffer memory. If set, fbdev
+	 * emulation will invoke this callback in regular intervals after
+	 * the framebuffer has been written.
+	 *
+	 * This callback is optional.
+	 *
+	 * Returns:
+	 * 0 on success, or an error code otherwise.
+	 */
+	int (*fb_dirty)(struct drm_fb_helper *helper, struct drm_clip_rect *clip);
 };
 
 /**
-- 
2.38.0

