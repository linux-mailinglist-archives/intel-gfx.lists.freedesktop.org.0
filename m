Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC38983E93
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 09:20:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6620D10E5D7;
	Tue, 24 Sep 2024 07:18:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="WdFEPHxm";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="5b46F5lN";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="WdFEPHxm";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="5b46F5lN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7DD310E58C;
 Tue, 24 Sep 2024 07:17:59 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 79F1A21BB2;
 Tue, 24 Sep 2024 07:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1727162278; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1dLp6ByNpDH4MTvO2iArduWLdmOPwArIGPYwuTsX+Yc=;
 b=WdFEPHxmi0AGcdoGQkPS5cVuk8f0PCr5onU0MvWCKydF4DQLDVoz8MNV5z4IOK6CvYg2Pk
 inBY1/uCh3nxWJVQxGugBqyZT2UK6icn68Bz7oe1UytH0k3O3qOCySZys5qhn5BSZwnpxd
 q+RgMc/18OUsWEAVrf+F1/nYVrBi/aE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1727162278;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1dLp6ByNpDH4MTvO2iArduWLdmOPwArIGPYwuTsX+Yc=;
 b=5b46F5lNDBwOnQHjovMKRQTkmnbntr7E7V2tBEO7fjMgpY3OCpBnVS/3vKAtufpaC+GyMj
 gWU9Ld/IlSEBbJDw==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1727162278; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1dLp6ByNpDH4MTvO2iArduWLdmOPwArIGPYwuTsX+Yc=;
 b=WdFEPHxmi0AGcdoGQkPS5cVuk8f0PCr5onU0MvWCKydF4DQLDVoz8MNV5z4IOK6CvYg2Pk
 inBY1/uCh3nxWJVQxGugBqyZT2UK6icn68Bz7oe1UytH0k3O3qOCySZys5qhn5BSZwnpxd
 q+RgMc/18OUsWEAVrf+F1/nYVrBi/aE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1727162278;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1dLp6ByNpDH4MTvO2iArduWLdmOPwArIGPYwuTsX+Yc=;
 b=5b46F5lNDBwOnQHjovMKRQTkmnbntr7E7V2tBEO7fjMgpY3OCpBnVS/3vKAtufpaC+GyMj
 gWU9Ld/IlSEBbJDw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 3EB0413AE2;
 Tue, 24 Sep 2024 07:17:58 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id IJYdDqZn8mb3YAAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Tue, 24 Sep 2024 07:17:58 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: javierm@redhat.com, jfalempe@redhat.com, airlied@gmail.com, simona@ffwll.ch
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, nouveau@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>
Subject: [PATCH v5 63/80] drm/fbdev-shmem: Remove obsolete setup function
Date: Tue, 24 Sep 2024 09:13:01 +0200
Message-ID: <20240924071734.98201-64-tzimmermann@suse.de>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924071734.98201-1-tzimmermann@suse.de>
References: <20240924071734.98201-1-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Score: -2.80
X-Spamd-Result: default: False [-2.80 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 MID_CONTAINS_FROM(1.00)[]; NEURAL_HAM_LONG(-1.00)[-1.000];
 R_MISSING_CHARSET(0.50)[]; NEURAL_HAM_SHORT(-0.20)[-1.000];
 MIME_GOOD(-0.10)[text/plain]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 ARC_NA(0.00)[]; RCVD_VIA_SMTP_AUTH(0.00)[];
 FROM_EQ_ENVFROM(0.00)[]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; MIME_TRACE(0.00)[0:+];
 DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:helo];
 FREEMAIL_TO(0.00)[redhat.com,gmail.com,ffwll.ch];
 RCVD_TLS_ALL(0.00)[]; RCVD_COUNT_TWO(0.00)[2];
 RCPT_COUNT_SEVEN(0.00)[9]; FUZZY_BLOCKED(0.00)[rspamd.com];
 R_RATELIMIT(0.00)[to(RLbwen1niosrcqbxsafh1),to_ip_from(RLqirfcw6gnbcr9a9yhi49fhi6)];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 FREEMAIL_ENVRCPT(0.00)[gmail.com]
X-Spam-Flag: NO
X-Spam-Level: 
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

The old setup function drm_fbdev_shmem_setup() is unused. Remove it
and its internal callbacks. New drivers should call drm_client_setup()
instead.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
---
 drivers/gpu/drm/drm_fbdev_shmem.c | 120 +-----------------------------
 include/drm/drm_fbdev_shmem.h     |   6 --
 2 files changed, 1 insertion(+), 125 deletions(-)

diff --git a/drivers/gpu/drm/drm_fbdev_shmem.c b/drivers/gpu/drm/drm_fbdev_shmem.c
index 3bca333917d1..f824369baacd 100644
--- a/drivers/gpu/drm/drm_fbdev_shmem.c
+++ b/drivers/gpu/drm/drm_fbdev_shmem.c
@@ -2,15 +2,13 @@
 
 #include <linux/fb.h>
 
-#include <drm/drm_crtc_helper.h>
 #include <drm/drm_drv.h>
+#include <drm/drm_fbdev_shmem.h>
 #include <drm/drm_fb_helper.h>
 #include <drm/drm_framebuffer.h>
 #include <drm/drm_gem_framebuffer_helper.h>
 #include <drm/drm_gem_shmem_helper.h>
 
-#include <drm/drm_fbdev_shmem.h>
-
 /*
  * struct fb_ops
  */
@@ -105,12 +103,6 @@ static struct page *drm_fbdev_shmem_get_page(struct fb_info *info, unsigned long
  * struct drm_fb_helper
  */
 
-static int drm_fbdev_shmem_helper_fb_probe(struct drm_fb_helper *fb_helper,
-					   struct drm_fb_helper_surface_size *sizes)
-{
-	return drm_fbdev_shmem_driver_fbdev_probe(fb_helper, sizes);
-}
-
 static int drm_fbdev_shmem_helper_fb_dirty(struct drm_fb_helper *helper,
 					   struct drm_clip_rect *clip)
 {
@@ -131,7 +123,6 @@ static int drm_fbdev_shmem_helper_fb_dirty(struct drm_fb_helper *helper,
 }
 
 static const struct drm_fb_helper_funcs drm_fbdev_shmem_helper_funcs = {
-	.fb_probe = drm_fbdev_shmem_helper_fb_probe,
 	.fb_dirty = drm_fbdev_shmem_helper_fb_dirty,
 };
 
@@ -218,112 +209,3 @@ int drm_fbdev_shmem_driver_fbdev_probe(struct drm_fb_helper *fb_helper,
 	return ret;
 }
 EXPORT_SYMBOL(drm_fbdev_shmem_driver_fbdev_probe);
-
-/*
- * struct drm_client_funcs
- */
-
-static void drm_fbdev_shmem_client_unregister(struct drm_client_dev *client)
-{
-	struct drm_fb_helper *fb_helper = drm_fb_helper_from_client(client);
-
-	if (fb_helper->info) {
-		drm_fb_helper_unregister_info(fb_helper);
-	} else {
-		drm_client_release(&fb_helper->client);
-		drm_fb_helper_unprepare(fb_helper);
-		kfree(fb_helper);
-	}
-}
-
-static int drm_fbdev_shmem_client_restore(struct drm_client_dev *client)
-{
-	drm_fb_helper_lastclose(client->dev);
-
-	return 0;
-}
-
-static int drm_fbdev_shmem_client_hotplug(struct drm_client_dev *client)
-{
-	struct drm_fb_helper *fb_helper = drm_fb_helper_from_client(client);
-	struct drm_device *dev = client->dev;
-	int ret;
-
-	if (dev->fb_helper)
-		return drm_fb_helper_hotplug_event(dev->fb_helper);
-
-	ret = drm_fb_helper_init(dev, fb_helper);
-	if (ret)
-		goto err_drm_err;
-
-	if (!drm_drv_uses_atomic_modeset(dev))
-		drm_helper_disable_unused_functions(dev);
-
-	ret = drm_fb_helper_initial_config(fb_helper);
-	if (ret)
-		goto err_drm_fb_helper_fini;
-
-	return 0;
-
-err_drm_fb_helper_fini:
-	drm_fb_helper_fini(fb_helper);
-err_drm_err:
-	drm_err(dev, "fbdev-shmem: Failed to setup emulation (ret=%d)\n", ret);
-	return ret;
-}
-
-static const struct drm_client_funcs drm_fbdev_shmem_client_funcs = {
-	.owner		= THIS_MODULE,
-	.unregister	= drm_fbdev_shmem_client_unregister,
-	.restore	= drm_fbdev_shmem_client_restore,
-	.hotplug	= drm_fbdev_shmem_client_hotplug,
-};
-
-/**
- * drm_fbdev_shmem_setup() - Setup fbdev emulation for GEM SHMEM helpers
- * @dev: DRM device
- * @preferred_bpp: Preferred bits per pixel for the device.
- *                 32 is used if this is zero.
- *
- * This function sets up fbdev emulation for GEM DMA drivers that support
- * dumb buffers with a virtual address and that can be mmap'ed.
- * drm_fbdev_shmem_setup() shall be called after the DRM driver registered
- * the new DRM device with drm_dev_register().
- *
- * Restore, hotplug events and teardown are all taken care of. Drivers that do
- * suspend/resume need to call drm_fb_helper_set_suspend_unlocked() themselves.
- * Simple drivers might use drm_mode_config_helper_suspend().
- *
- * This function is safe to call even when there are no connectors present.
- * Setup will be retried on the next hotplug event.
- *
- * The fbdev is destroyed by drm_dev_unregister().
- */
-void drm_fbdev_shmem_setup(struct drm_device *dev, unsigned int preferred_bpp)
-{
-	struct drm_fb_helper *fb_helper;
-	int ret;
-
-	drm_WARN(dev, !dev->registered, "Device has not been registered.\n");
-	drm_WARN(dev, dev->fb_helper, "fb_helper is already set!\n");
-
-	fb_helper = kzalloc(sizeof(*fb_helper), GFP_KERNEL);
-	if (!fb_helper)
-		return;
-	drm_fb_helper_prepare(dev, fb_helper, preferred_bpp, &drm_fbdev_shmem_helper_funcs);
-
-	ret = drm_client_init(dev, &fb_helper->client, "fbdev", &drm_fbdev_shmem_client_funcs);
-	if (ret) {
-		drm_err(dev, "Failed to register client: %d\n", ret);
-		goto err_drm_client_init;
-	}
-
-	drm_client_register(&fb_helper->client);
-
-	return;
-
-err_drm_client_init:
-	drm_fb_helper_unprepare(fb_helper);
-	kfree(fb_helper);
-}
-EXPORT_SYMBOL(drm_fbdev_shmem_setup);
diff --git a/include/drm/drm_fbdev_shmem.h b/include/drm/drm_fbdev_shmem.h
index 3a5d1efa9d55..2fc708964d75 100644
--- a/include/drm/drm_fbdev_shmem.h
+++ b/include/drm/drm_fbdev_shmem.h
@@ -3,7 +3,6 @@
 #ifndef DRM_FBDEV_SHMEM_H
 #define DRM_FBDEV_SHMEM_H
 
-struct drm_device;
 struct drm_fb_helper;
 struct drm_fb_helper_surface_size;
 
@@ -13,12 +12,7 @@ int drm_fbdev_shmem_driver_fbdev_probe(struct drm_fb_helper *fb_helper,
 
 #define DRM_FBDEV_SHMEM_DRIVER_OPS \
 	.fbdev_probe = drm_fbdev_shmem_driver_fbdev_probe
-
-void drm_fbdev_shmem_setup(struct drm_device *dev, unsigned int preferred_bpp);
 #else
-static inline void drm_fbdev_shmem_setup(struct drm_device *dev, unsigned int preferred_bpp)
-{ }
-
 #define DRM_FBDEV_SHMEM_DRIVER_OPS \
 	.fbdev_probe = NULL
 #endif
-- 
2.46.0

