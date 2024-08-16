Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87EC7954A4E
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2024 14:57:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BE4410E729;
	Fri, 16 Aug 2024 12:54:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08F2910E702;
 Fri, 16 Aug 2024 12:54:38 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id CEA7E2230C;
 Fri, 16 Aug 2024 12:54:36 +0000 (UTC)
Authentication-Results: smtp-out1.suse.de;
	none
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 85D0513ACA;
 Fri, 16 Aug 2024 12:54:36 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id YAdRHwxMv2bdbgAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Fri, 16 Aug 2024 12:54:36 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: daniel@ffwll.ch, airlied@gmail.com, jfalempe@redhat.com, javierm@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Russell King <linux@armlinux.org.uk>
Subject: [PATCH 74/86] drm/armada: Run DRM default client setup
Date: Fri, 16 Aug 2024 14:23:40 +0200
Message-ID: <20240816125408.310253-75-tzimmermann@suse.de>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240816125408.310253-1-tzimmermann@suse.de>
References: <20240816125408.310253-1-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Pre-Result: action=no action; module=replies;
 Message is reply to one we originated
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Spam-Level: 
X-Spamd-Result: default: False [-4.00 / 50.00];
	REPLY(-4.00)[]
X-Spam-Flag: NO
X-Spam-Score: -4.00
X-Rspamd-Queue-Id: CEA7E2230C
X-Rspamd-Action: no action
X-Rspamd-Pre-Result: action=no action; module=replies;
 Message is reply to one we originated
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

Rework fbdev probing to support fbdev_probe in struct drm_driver
and remove the old fb_probe callback. Provide an initializer macro
for struct drm_driver that sets the callback according to the kernel
configuration.

Call drm_client_setup() to run the kernel's default client setup
for DRM. Set fbdev_probe in struct drm_driver, so that the client
setup can start the common fbdev client.

The armada driver specifies a preferred color mode of 32. As this
is the default if no format has been given, leave it out entirely.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Russell King <linux@armlinux.org.uk>
---
 drivers/gpu/drm/armada/armada_drm.h   |  11 ++-
 drivers/gpu/drm/armada/armada_drv.c   |   4 +-
 drivers/gpu/drm/armada/armada_fbdev.c | 115 ++------------------------
 3 files changed, 17 insertions(+), 113 deletions(-)

diff --git a/drivers/gpu/drm/armada/armada_drm.h b/drivers/gpu/drm/armada/armada_drm.h
index c303e8c7ff6c..3c0ff221a43b 100644
--- a/drivers/gpu/drm/armada/armada_drm.h
+++ b/drivers/gpu/drm/armada/armada_drm.h
@@ -16,6 +16,8 @@ struct armada_crtc;
 struct armada_gem_object;
 struct clk;
 struct drm_display_mode;
+struct drm_fb_helper;
+struct drm_fb_helper_surface_size;
 
 static inline void
 armada_updatel(uint32_t val, uint32_t mask, void __iomem *ptr)
@@ -74,10 +76,13 @@ struct armada_private {
 #define drm_to_armada_dev(dev) container_of(dev, struct armada_private, drm)
 
 #if defined(CONFIG_DRM_FBDEV_EMULATION)
-void armada_fbdev_setup(struct drm_device *dev);
+int armada_fbdev_driver_fbdev_probe(struct drm_fb_helper *fbh,
+				    struct drm_fb_helper_surface_size *sizes);
+#define ARMADA_FBDEV_DRIVER_OPS \
+	.fbdev_probe = armada_fbdev_driver_fbdev_probe
 #else
-static inline void armada_fbdev_setup(struct drm_device *dev)
-{ }
+#define ARMADA_FBDEV_DRIVER_OPS \
+	.fbdev_probe = NULL
 #endif
 
 int armada_overlay_plane_create(struct drm_device *, unsigned long);
diff --git a/drivers/gpu/drm/armada/armada_drv.c b/drivers/gpu/drm/armada/armada_drv.c
index e51ecc4f7ef4..3dc5f0499e4c 100644
--- a/drivers/gpu/drm/armada/armada_drv.c
+++ b/drivers/gpu/drm/armada/armada_drv.c
@@ -12,6 +12,7 @@
 
 #include <drm/drm_aperture.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_client_setup.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_ioctl.h>
 #include <drm/drm_managed.h>
@@ -39,6 +40,7 @@ DEFINE_DRM_GEM_FOPS(armada_drm_fops);
 static const struct drm_driver armada_drm_driver = {
 	.gem_prime_import	= armada_gem_prime_import,
 	.dumb_create		= armada_gem_dumb_create,
+	ARMADA_FBDEV_DRIVER_OPS,
 	.major			= 1,
 	.minor			= 0,
 	.name			= "armada-drm",
@@ -137,7 +139,7 @@ static int armada_drm_bind(struct device *dev)
 	armada_drm_debugfs_init(priv->drm.primary);
 #endif
 
-	armada_fbdev_setup(&priv->drm);
+	drm_client_setup(&priv->drm, NULL);
 
 	return 0;
 
diff --git a/drivers/gpu/drm/armada/armada_fbdev.c b/drivers/gpu/drm/armada/armada_fbdev.c
index d223176912b6..1ad87bb0bad9 100644
--- a/drivers/gpu/drm/armada/armada_fbdev.c
+++ b/drivers/gpu/drm/armada/armada_fbdev.c
@@ -39,8 +39,10 @@ static const struct fb_ops armada_fb_ops = {
 	.fb_destroy	= armada_fbdev_fb_destroy,
 };
 
-static int armada_fbdev_create(struct drm_fb_helper *fbh,
-	struct drm_fb_helper_surface_size *sizes)
+static const struct drm_fb_helper_funcs armada_fbdev_helper_funcs;
+
+int armada_fbdev_driver_fbdev_probe(struct drm_fb_helper *fbh,
+				    struct drm_fb_helper_surface_size *sizes)
 {
 	struct drm_device *dev = fbh->dev;
 	struct drm_mode_fb_cmd2 mode;
@@ -98,6 +100,7 @@ static int armada_fbdev_create(struct drm_fb_helper *fbh,
 	info->fix.smem_len = obj->obj.size;
 	info->screen_size = obj->obj.size;
 	info->screen_base = ptr;
+	fbh->funcs = &armada_fbdev_helper_funcs;
 	fbh->fb = &dfb->fb;
 
 	drm_fb_helper_fill_info(info, fbh, sizes);
@@ -108,113 +111,7 @@ static int armada_fbdev_create(struct drm_fb_helper *fbh,
 
 	return 0;
 
- err_fballoc:
+err_fballoc:
 	dfb->fb.funcs->destroy(&dfb->fb);
 	return ret;
 }
-
-static int armada_fb_probe(struct drm_fb_helper *fbh,
-	struct drm_fb_helper_surface_size *sizes)
-{
-	int ret = 0;
-
-	if (!fbh->fb) {
-		ret = armada_fbdev_create(fbh, sizes);
-		if (ret == 0)
-			ret = 1;
-	}
-	return ret;
-}
-
-static const struct drm_fb_helper_funcs armada_fb_helper_funcs = {
-	.fb_probe	= armada_fb_probe,
-};
-
-/*
- * Fbdev client and struct drm_client_funcs
- */
-
-static void armada_fbdev_client_unregister(struct drm_client_dev *client)
-{
-	struct drm_fb_helper *fbh = drm_fb_helper_from_client(client);
-
-	if (fbh->info) {
-		drm_fb_helper_unregister_info(fbh);
-	} else {
-		drm_client_release(&fbh->client);
-		drm_fb_helper_unprepare(fbh);
-		kfree(fbh);
-	}
-}
-
-static int armada_fbdev_client_restore(struct drm_client_dev *client)
-{
-	drm_fb_helper_lastclose(client->dev);
-
-	return 0;
-}
-
-static int armada_fbdev_client_hotplug(struct drm_client_dev *client)
-{
-	struct drm_fb_helper *fbh = drm_fb_helper_from_client(client);
-	struct drm_device *dev = client->dev;
-	int ret;
-
-	if (dev->fb_helper)
-		return drm_fb_helper_hotplug_event(dev->fb_helper);
-
-	ret = drm_fb_helper_init(dev, fbh);
-	if (ret)
-		goto err_drm_err;
-
-	if (!drm_drv_uses_atomic_modeset(dev))
-		drm_helper_disable_unused_functions(dev);
-
-	ret = drm_fb_helper_initial_config(fbh);
-	if (ret)
-		goto err_drm_fb_helper_fini;
-
-	return 0;
-
-err_drm_fb_helper_fini:
-	drm_fb_helper_fini(fbh);
-err_drm_err:
-	drm_err(dev, "armada: Failed to setup fbdev emulation (ret=%d)\n", ret);
-	return ret;
-}
-
-static const struct drm_client_funcs armada_fbdev_client_funcs = {
-	.owner		= THIS_MODULE,
-	.unregister	= armada_fbdev_client_unregister,
-	.restore	= armada_fbdev_client_restore,
-	.hotplug	= armada_fbdev_client_hotplug,
-};
-
-void armada_fbdev_setup(struct drm_device *dev)
-{
-	struct drm_fb_helper *fbh;
-	int ret;
-
-	drm_WARN(dev, !dev->registered, "Device has not been registered.\n");
-	drm_WARN(dev, dev->fb_helper, "fb_helper is already set!\n");
-
-	fbh = kzalloc(sizeof(*fbh), GFP_KERNEL);
-	if (!fbh)
-		return;
-	drm_fb_helper_prepare(dev, fbh, 32, &armada_fb_helper_funcs);
-
-	ret = drm_client_init(dev, &fbh->client, "fbdev", &armada_fbdev_client_funcs);
-	if (ret) {
-		drm_err(dev, "Failed to register client: %d\n", ret);
-		goto err_drm_client_init;
-	}
-
-	drm_client_register(&fbh->client);
-
-	return;
-
-err_drm_client_init:
-	drm_fb_helper_unprepare(fbh);
-	kfree(fbh);
-	return;
-}
-- 
2.46.0

