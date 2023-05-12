Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 507097002D3
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 10:42:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B89FD10E64F;
	Fri, 12 May 2023 08:42:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [IPv6:2001:67c:2178:6::1c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D928C10E622;
 Fri, 12 May 2023 08:41:58 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 99A7A22782;
 Fri, 12 May 2023 08:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1683880917; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8BjzotcJ/g/OydyjWWBEl9qUeaQLADdgIhbNndEyZA4=;
 b=EZhos1CmMfwXfSfbHMh+BXKYw3A3UJ+ss5Tn5+IxavV6lBgKXaX3b4LSvZyU21cGpeWO1o
 Rj6wB/49ZAaneMwSrW4UerGdAclKP+j4KW3wpflozXsW1m45aCMTNZ7wgTkVXHJmKJwjek
 7hehsL8x3ThBN1sBuueNrYZjtrFdskU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1683880917;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8BjzotcJ/g/OydyjWWBEl9qUeaQLADdgIhbNndEyZA4=;
 b=EdfMUn2tGIMZcnZ8fpVSEMj7lgA9WRe4oRAhOnqcgN5vPkk0O64OPalJXBNCctD8qHWPht
 Od8DkofGq8ki5nAQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 53F2713466;
 Fri, 12 May 2023 08:41:57 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id AM+kE9X7XWQZKQAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Fri, 12 May 2023 08:41:57 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: daniel@ffwll.ch, airlied@gmail.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, javierm@redhat.com
Date: Fri, 12 May 2023 10:41:51 +0200
Message-Id: <20230512084152.31233-11-tzimmermann@suse.de>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230512084152.31233-1-tzimmermann@suse.de>
References: <20230512084152.31233-1-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/11] drm/fbdev-generic: Implement dedicated
 fbdev I/O helpers
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
Cc: linux-samsung-soc@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 linux-tegra@vger.kernel.org, freedreno@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Implement dedicated fbdev helpers for framebuffer I/O instead
of using DRM's helpers. Fbdev-generic was the only caller of the
DRM helpers, so remove them from the helper module.

Add CONFIG_DRM_FBDEV_GENERIC_EMULATION to select the necessary
Kconfig options automatically. Make fbdev emulation depend on
the new config option.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
---
 drivers/gpu/drm/Kconfig             |  15 ++--
 drivers/gpu/drm/Makefile            |   5 +-
 drivers/gpu/drm/drm_fb_helper.c     | 107 ----------------------------
 drivers/gpu/drm/drm_fbdev_generic.c |  47 ++++++++++--
 include/drm/drm_fb_helper.h         |  41 -----------
 include/drm/drm_fbdev_generic.h     |   2 +-
 6 files changed, 55 insertions(+), 162 deletions(-)

diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
index c007cb75715e..c67c97471b3c 100644
--- a/drivers/gpu/drm/Kconfig
+++ b/drivers/gpu/drm/Kconfig
@@ -95,9 +95,19 @@ config DRM_KUNIT_TEST
 config DRM_KMS_HELPER
 	tristate
 	depends on DRM
+	select DRM_FBDEV_GENERIC_EMULATION if DRM_FBDEV_EMULATION
 	help
 	  CRTC helpers for KMS drivers.
 
+config DRM_FBDEV_GENERIC_EMULATION
+	bool
+	depends on DRM_KMS_HELPER
+	select FB_DEFERRED_IO
+	select FB_SYS_COPYAREA
+	select FB_SYS_FILLRECT
+	select FB_SYS_FOPS
+	select FB_SYS_IMAGEBLIT
+
 config DRM_DEBUG_DP_MST_TOPOLOGY_REFS
         bool "Enable refcount backtrace history in the DP MST helpers"
 	depends on STACKTRACE_SUPPORT
@@ -135,11 +145,6 @@ config DRM_FBDEV_EMULATION
 	select FB_CFB_FILLRECT
 	select FB_CFB_COPYAREA
 	select FB_CFB_IMAGEBLIT
-	select FB_DEFERRED_IO
-	select FB_SYS_FOPS
-	select FB_SYS_FILLRECT
-	select FB_SYS_COPYAREA
-	select FB_SYS_IMAGEBLIT
 	select FRAMEBUFFER_CONSOLE if !EXPERT
 	select FRAMEBUFFER_CONSOLE_DETECT_PRIMARY if FRAMEBUFFER_CONSOLE
 	default y
diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
index d94821d37c2d..f737f0e476b5 100644
--- a/drivers/gpu/drm/Makefile
+++ b/drivers/gpu/drm/Makefile
@@ -121,9 +121,8 @@ drm_kms_helper-y := \
 	drm_self_refresh_helper.o \
 	drm_simple_kms_helper.o
 drm_kms_helper-$(CONFIG_DRM_PANEL_BRIDGE) += bridge/panel.o
-drm_kms_helper-$(CONFIG_DRM_FBDEV_EMULATION) += \
-	drm_fbdev_generic.o \
-	drm_fb_helper.o
+drm_kms_helper-$(CONFIG_DRM_FBDEV_EMULATION) += drm_fb_helper.o
+drm_kms_helper-$(CONFIG_DRM_FBDEV_GENERIC_EMULATION) += drm_fbdev_generic.o
 obj-$(CONFIG_DRM_KMS_HELPER) += drm_kms_helper.o
 
 #
diff --git a/drivers/gpu/drm/drm_fb_helper.c b/drivers/gpu/drm/drm_fb_helper.c
index 8724e08c518b..ba0a808f14ee 100644
--- a/drivers/gpu/drm/drm_fb_helper.c
+++ b/drivers/gpu/drm/drm_fb_helper.c
@@ -729,113 +729,6 @@ void drm_fb_helper_deferred_io(struct fb_info *info, struct list_head *pagerefli
 }
 EXPORT_SYMBOL(drm_fb_helper_deferred_io);
 
-/**
- * drm_fb_helper_sys_read - Implements struct &fb_ops.fb_read for system memory
- * @info: fb_info struct pointer
- * @buf: userspace buffer to read from framebuffer memory
- * @count: number of bytes to read from framebuffer memory
- * @ppos: read offset within framebuffer memory
- *
- * Returns:
- * The number of bytes read on success, or an error code otherwise.
- */
-ssize_t drm_fb_helper_sys_read(struct fb_info *info, char __user *buf,
-			       size_t count, loff_t *ppos)
-{
-	return fb_sys_read(info, buf, count, ppos);
-}
-EXPORT_SYMBOL(drm_fb_helper_sys_read);
-
-/**
- * drm_fb_helper_sys_write - Implements struct &fb_ops.fb_write for system memory
- * @info: fb_info struct pointer
- * @buf: userspace buffer to write to framebuffer memory
- * @count: number of bytes to write to framebuffer memory
- * @ppos: write offset within framebuffer memory
- *
- * Returns:
- * The number of bytes written on success, or an error code otherwise.
- */
-ssize_t drm_fb_helper_sys_write(struct fb_info *info, const char __user *buf,
-				size_t count, loff_t *ppos)
-{
-	struct drm_fb_helper *helper = info->par;
-	loff_t pos = *ppos;
-	ssize_t ret;
-	struct drm_rect damage_area;
-
-	ret = fb_sys_write(info, buf, count, ppos);
-	if (ret <= 0)
-		return ret;
-
-	if (helper->funcs->fb_dirty) {
-		drm_fb_helper_memory_range_to_clip(info, pos, ret, &damage_area);
-		drm_fb_helper_damage(helper, damage_area.x1, damage_area.y1,
-				     drm_rect_width(&damage_area),
-				     drm_rect_height(&damage_area));
-	}
-
-	return ret;
-}
-EXPORT_SYMBOL(drm_fb_helper_sys_write);
-
-/**
- * drm_fb_helper_sys_fillrect - wrapper around sys_fillrect
- * @info: fbdev registered by the helper
- * @rect: info about rectangle to fill
- *
- * A wrapper around sys_fillrect implemented by fbdev core
- */
-void drm_fb_helper_sys_fillrect(struct fb_info *info,
-				const struct fb_fillrect *rect)
-{
-	struct drm_fb_helper *helper = info->par;
-
-	sys_fillrect(info, rect);
-
-	if (helper->funcs->fb_dirty)
-		drm_fb_helper_damage(helper, rect->dx, rect->dy, rect->width, rect->height);
-}
-EXPORT_SYMBOL(drm_fb_helper_sys_fillrect);
-
-/**
- * drm_fb_helper_sys_copyarea - wrapper around sys_copyarea
- * @info: fbdev registered by the helper
- * @area: info about area to copy
- *
- * A wrapper around sys_copyarea implemented by fbdev core
- */
-void drm_fb_helper_sys_copyarea(struct fb_info *info,
-				const struct fb_copyarea *area)
-{
-	struct drm_fb_helper *helper = info->par;
-
-	sys_copyarea(info, area);
-
-	if (helper->funcs->fb_dirty)
-		drm_fb_helper_damage(helper, area->dx, area->dy, area->width, area->height);
-}
-EXPORT_SYMBOL(drm_fb_helper_sys_copyarea);
-
-/**
- * drm_fb_helper_sys_imageblit - wrapper around sys_imageblit
- * @info: fbdev registered by the helper
- * @image: info about image to blit
- *
- * A wrapper around sys_imageblit implemented by fbdev core
- */
-void drm_fb_helper_sys_imageblit(struct fb_info *info,
-				 const struct fb_image *image)
-{
-	struct drm_fb_helper *helper = info->par;
-
-	sys_imageblit(info, image);
-
-	if (helper->funcs->fb_dirty)
-		drm_fb_helper_damage(helper, image->dx, image->dy, image->width, image->height);
-}
-EXPORT_SYMBOL(drm_fb_helper_sys_imageblit);
-
 /**
  * drm_fb_helper_cfb_read - Implements struct &fb_ops.fb_read for I/O memory
  * @info: fb_info struct pointer
diff --git a/drivers/gpu/drm/drm_fbdev_generic.c b/drivers/gpu/drm/drm_fbdev_generic.c
index 8e5148bf40bb..f53fc49e34a4 100644
--- a/drivers/gpu/drm/drm_fbdev_generic.c
+++ b/drivers/gpu/drm/drm_fbdev_generic.c
@@ -34,6 +34,43 @@ static int drm_fbdev_generic_fb_release(struct fb_info *info, int user)
 	return 0;
 }
 
+static ssize_t drm_fbdev_generic_fb_write(struct fb_info *info, const char __user *buf,
+					  size_t count, loff_t *ppos)
+{
+	struct drm_fb_helper *helper = info->par;
+	loff_t pos = *ppos;
+	ssize_t ret;
+
+	ret = fb_sys_write(info, buf, count, ppos);
+	if (ret > 0)
+		drm_fb_helper_damage_range(helper, pos, ret);
+	return ret;
+}
+
+static void drm_fbdev_generic_fb_fillrect(struct fb_info *info, const struct fb_fillrect *rect)
+{
+	struct drm_fb_helper *helper = info->par;
+
+	sys_fillrect(info, rect);
+	drm_fb_helper_damage(helper, rect->dx, rect->dy, rect->width, rect->height);
+}
+
+static void drm_fbdev_generic_fb_copyarea(struct fb_info *info, const struct fb_copyarea *area)
+{
+	struct drm_fb_helper *helper = info->par;
+
+	sys_copyarea(info, area);
+	drm_fb_helper_damage(helper, area->dx, area->dy, area->width, area->height);
+}
+
+static void drm_fbdev_generic_fb_imageblit(struct fb_info *info, const struct fb_image *image)
+{
+	struct drm_fb_helper *helper = info->par;
+
+	sys_imageblit(info, image);
+	drm_fb_helper_damage(helper, image->dx, image->dy, image->width, image->height);
+}
+
 static void drm_fbdev_generic_fb_destroy(struct fb_info *info)
 {
 	struct drm_fb_helper *fb_helper = info->par;
@@ -56,12 +93,12 @@ static const struct fb_ops drm_fbdev_generic_fb_ops = {
 	.owner		= THIS_MODULE,
 	.fb_open	= drm_fbdev_generic_fb_open,
 	.fb_release	= drm_fbdev_generic_fb_release,
-	.fb_read	= drm_fb_helper_sys_read,
-	.fb_write	= drm_fb_helper_sys_write,
+	.fb_read	= fb_sys_read,
+	.fb_write	= drm_fbdev_generic_fb_write,
 	DRM_FB_HELPER_DEFAULT_OPS,
-	.fb_fillrect	= drm_fb_helper_sys_fillrect,
-	.fb_copyarea	= drm_fb_helper_sys_copyarea,
-	.fb_imageblit	= drm_fb_helper_sys_imageblit,
+	.fb_fillrect	= drm_fbdev_generic_fb_fillrect,
+	.fb_copyarea	= drm_fbdev_generic_fb_copyarea,
+	.fb_imageblit	= drm_fbdev_generic_fb_imageblit,
 	.fb_mmap	= fb_deferred_io_mmap,
 	.fb_destroy	= drm_fbdev_generic_fb_destroy,
 };
diff --git a/include/drm/drm_fb_helper.h b/include/drm/drm_fb_helper.h
index 80c402f4e379..e3240d749a43 100644
--- a/include/drm/drm_fb_helper.h
+++ b/include/drm/drm_fb_helper.h
@@ -259,18 +259,6 @@ void drm_fb_helper_damage_range(struct drm_fb_helper *helper, off_t off, size_t
 
 void drm_fb_helper_deferred_io(struct fb_info *info, struct list_head *pagereflist);
 
-ssize_t drm_fb_helper_sys_read(struct fb_info *info, char __user *buf,
-			       size_t count, loff_t *ppos);
-ssize_t drm_fb_helper_sys_write(struct fb_info *info, const char __user *buf,
-				size_t count, loff_t *ppos);
-
-void drm_fb_helper_sys_fillrect(struct fb_info *info,
-				const struct fb_fillrect *rect);
-void drm_fb_helper_sys_copyarea(struct fb_info *info,
-				const struct fb_copyarea *area);
-void drm_fb_helper_sys_imageblit(struct fb_info *info,
-				 const struct fb_image *image);
-
 ssize_t drm_fb_helper_cfb_read(struct fb_info *info, char __user *buf,
 			       size_t count, loff_t *ppos);
 ssize_t drm_fb_helper_cfb_write(struct fb_info *info, const char __user *buf,
@@ -398,35 +386,6 @@ static inline int drm_fb_helper_defio_init(struct drm_fb_helper *fb_helper)
 	return -ENODEV;
 }
 
-static inline ssize_t drm_fb_helper_sys_read(struct fb_info *info,
-					     char __user *buf, size_t count,
-					     loff_t *ppos)
-{
-	return -ENODEV;
-}
-
-static inline ssize_t drm_fb_helper_sys_write(struct fb_info *info,
-					      const char __user *buf,
-					      size_t count, loff_t *ppos)
-{
-	return -ENODEV;
-}
-
-static inline void drm_fb_helper_sys_fillrect(struct fb_info *info,
-					      const struct fb_fillrect *rect)
-{
-}
-
-static inline void drm_fb_helper_sys_copyarea(struct fb_info *info,
-					      const struct fb_copyarea *area)
-{
-}
-
-static inline void drm_fb_helper_sys_imageblit(struct fb_info *info,
-					       const struct fb_image *image)
-{
-}
-
 static inline ssize_t drm_fb_helper_cfb_read(struct fb_info *info, char __user *buf,
 					     size_t count, loff_t *ppos)
 {
diff --git a/include/drm/drm_fbdev_generic.h b/include/drm/drm_fbdev_generic.h
index 75799342098d..2db4faffda20 100644
--- a/include/drm/drm_fbdev_generic.h
+++ b/include/drm/drm_fbdev_generic.h
@@ -5,7 +5,7 @@
 
 struct drm_device;
 
-#ifdef CONFIG_DRM_FBDEV_EMULATION
+#if defined(CONFIG_DRM_FBDEV_GENERIC_EMULATION)
 void drm_fbdev_generic_setup(struct drm_device *dev, unsigned int preferred_bpp);
 #else
 static inline void drm_fbdev_generic_setup(struct drm_device *dev, unsigned int preferred_bpp)
-- 
2.40.1

