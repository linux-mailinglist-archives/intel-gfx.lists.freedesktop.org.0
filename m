Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E36670292B
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 11:41:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49D9E10E1C6;
	Mon, 15 May 2023 09:40:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [IPv6:2001:67c:2178:6::1d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BA1010E193;
 Mon, 15 May 2023 09:40:39 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 270B31FD8B;
 Mon, 15 May 2023 09:40:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1684143638; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=x+qQP86XyhL0pbwZiVaiGsWQMYOZoabJAUGvw5FILJM=;
 b=ATqXNmnVqL4yZrWP00m5cyWbqQhmpjZMKLDUazFjXkjUCv9/auiobICNZSsMdjeSkDOKdz
 NZCqW5B4rmCrbK/5liGXHMVRwswbm7bPfxJQ2+O3Yju7sMz8dHc3ZtLvN2wECexr89ohlW
 vgiIyos5qAU0q0UnDZDwdqh2o6aciGE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1684143638;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=x+qQP86XyhL0pbwZiVaiGsWQMYOZoabJAUGvw5FILJM=;
 b=t6rpl03D6VEX8cjtTXXsVxJtqn9bFdk+xMpybcv8tEPlB+/HfITzvyA6E2WRif4nD4ETqA
 fMS7xqrmUQXK1qCA==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id BFD8913466;
 Mon, 15 May 2023 09:40:37 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id wJPdLRX+YWTeTwAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Mon, 15 May 2023 09:40:37 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: daniel@ffwll.ch, airlied@gmail.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, javierm@redhat.com, sam@ravnborg.org
Date: Mon, 15 May 2023 11:40:30 +0200
Message-Id: <20230515094033.2133-10-tzimmermann@suse.de>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230515094033.2133-1-tzimmermann@suse.de>
References: <20230515094033.2133-1-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 09/12] drm/tegra: Use regular fbdev I/O
 helpers
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
 Mikko Perttunen <mperttunen@nvidia.com>, amd-gfx@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>, linux-tegra@vger.kernel.org,
 Jonathan Hunter <jonathanh@nvidia.com>, freedreno@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use the regular fbdev helpers for framebuffer I/O instead of DRM's
helpers. Tegra does not use damage handling, so DRM's fbdev helpers
are mere wrappers around the fbdev code.

By using fbdev helpers directly within each DRM fbdev emulation,
we can eventually remove DRM's wrapper functions entirely.

v2:
	* use FB_SYS_HELPERS option

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Mikko Perttunen <mperttunen@nvidia.com>
Cc: Jonathan Hunter <jonathanh@nvidia.com>
---
 drivers/gpu/drm/tegra/Kconfig |  1 +
 drivers/gpu/drm/tegra/fbdev.c | 11 ++++++-----
 2 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/tegra/Kconfig b/drivers/gpu/drm/tegra/Kconfig
index 56453ca277c2..498313778175 100644
--- a/drivers/gpu/drm/tegra/Kconfig
+++ b/drivers/gpu/drm/tegra/Kconfig
@@ -12,6 +12,7 @@ config DRM_TEGRA
 	select DRM_KMS_HELPER
 	select DRM_MIPI_DSI
 	select DRM_PANEL
+	select FB_SYS_HELPERS if DRM_FBDEV_EMULATION
 	select TEGRA_HOST1X
 	select INTERCONNECT
 	select IOMMU_IOVA
diff --git a/drivers/gpu/drm/tegra/fbdev.c b/drivers/gpu/drm/tegra/fbdev.c
index dca9eccae466..144d851e566f 100644
--- a/drivers/gpu/drm/tegra/fbdev.c
+++ b/drivers/gpu/drm/tegra/fbdev.c
@@ -8,6 +8,7 @@
  */
 
 #include <linux/console.h>
+#include <linux/fb.h>
 #include <linux/vmalloc.h>
 
 #include <drm/drm_drv.h>
@@ -59,11 +60,11 @@ static void tegra_fbdev_fb_destroy(struct fb_info *info)
 static const struct fb_ops tegra_fb_ops = {
 	.owner = THIS_MODULE,
 	DRM_FB_HELPER_DEFAULT_OPS,
-	.fb_read = drm_fb_helper_sys_read,
-	.fb_write = drm_fb_helper_sys_write,
-	.fb_fillrect = drm_fb_helper_sys_fillrect,
-	.fb_copyarea = drm_fb_helper_sys_copyarea,
-	.fb_imageblit = drm_fb_helper_sys_imageblit,
+	.fb_read = fb_sys_read,
+	.fb_write = fb_sys_write,
+	.fb_fillrect = sys_fillrect,
+	.fb_copyarea = sys_copyarea,
+	.fb_imageblit = sys_imageblit,
 	.fb_mmap = tegra_fb_mmap,
 	.fb_destroy = tegra_fbdev_fb_destroy,
 };
-- 
2.40.1

