Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB797165D2
	for <lists+intel-gfx@lfdr.de>; Tue, 30 May 2023 17:03:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B96C010E3C3;
	Tue, 30 May 2023 15:03:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABDCF10E169;
 Tue, 30 May 2023 15:02:59 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 4B7861FDDD;
 Tue, 30 May 2023 15:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1685458978; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uxYllpKQhbai1tBnnkcR4/Qd2d1vWjgiYEDDoWVHuWc=;
 b=hqULZdqb/eymlXJGUMfZ8LeXektwIptDbW5mF5PK4zyFA6m5DzKfdrW6Igwc9pUEzt4H17
 msS5+sccMImvuBktElvzBFhYnBM8xMPetIdzv1r1JpT2Ydn+veTG7l6PBTATT+3vID/VWt
 GY7iWl/MBx/BN7sOzZB8qLPeYr+N0Po=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1685458978;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uxYllpKQhbai1tBnnkcR4/Qd2d1vWjgiYEDDoWVHuWc=;
 b=LgOrHHWaNRkDJ689mDctGbykuvCs2FloyhERQO6kkogu1GZGQejqO7x7qpOVlfzfxX+KK4
 F4bc5O17LcZZWrAA==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id F03E813478;
 Tue, 30 May 2023 15:02:57 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id SC+pOSEQdmShegAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Tue, 30 May 2023 15:02:57 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: daniel@ffwll.ch, airlied@gmail.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, javierm@redhat.com, sam@ravnborg.org,
 suijingfeng@loongson.cn
Date: Tue, 30 May 2023 17:02:51 +0200
Message-Id: <20230530150253.22758-12-tzimmermann@suse.de>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230530150253.22758-1-tzimmermann@suse.de>
References: <20230530150253.22758-1-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 11/13] drm/msm: Use regular fbdev I/O helpers
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
 intel-gfx@lists.freedesktop.org, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 dri-devel@lists.freedesktop.org,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, amd-gfx@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>, linux-tegra@vger.kernel.org,
 freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use the regular fbdev helpers for framebuffer I/O instead of DRM's
helpers. Msm does not use damage handling, so DRM's fbdev helpers
are mere wrappers around the fbdev code.

By using fbdev helpers directly within each DRM fbdev emulation,
we can eventually remove DRM's wrapper functions entirely.

Msm's fbdev emulation has been incomplete as it didn't implement
damage handling. Partilly fix this by implementing damage handling
for write and draw operation. It is still missing for mmaped pages.

v4:
	* use initializer macros for struct fb_ops
	* partially support damage handling
v2:
	* use FB_SYS_HELPERS option

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Rob Clark <robdclark@gmail.com>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Sean Paul <sean@poorly.run>
---
 drivers/gpu/drm/msm/Kconfig     |  1 +
 drivers/gpu/drm/msm/msm_fbdev.c | 17 ++++++++---------
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/msm/Kconfig b/drivers/gpu/drm/msm/Kconfig
index 85f5ab1d552c..a78662bd6273 100644
--- a/drivers/gpu/drm/msm/Kconfig
+++ b/drivers/gpu/drm/msm/Kconfig
@@ -21,6 +21,7 @@ config DRM_MSM
 	select DRM_BRIDGE
 	select DRM_PANEL_BRIDGE
 	select DRM_SCHED
+	select FB_SYS_HELPERS if DRM_FBDEV_EMULATION
 	select SHMEM
 	select TMPFS
 	select QCOM_SCM
diff --git a/drivers/gpu/drm/msm/msm_fbdev.c b/drivers/gpu/drm/msm/msm_fbdev.c
index ce0ba6d1979a..fa9c1cbffae3 100644
--- a/drivers/gpu/drm/msm/msm_fbdev.c
+++ b/drivers/gpu/drm/msm/msm_fbdev.c
@@ -4,6 +4,8 @@
  * Author: Rob Clark <robdclark@gmail.com>
  */
 
+#include <linux/fb.h>
+
 #include <drm/drm_drv.h>
 #include <drm/drm_crtc_helper.h>
 #include <drm/drm_fb_helper.h>
@@ -23,6 +25,10 @@ module_param(fbdev, bool, 0600);
  * fbdev funcs, to implement legacy fbdev interface on top of drm driver
  */
 
+FB_GEN_DEFAULT_DEFERRED_SYS_OPS(msm_fbdev,
+				drm_fb_helper_damage_range,
+				drm_fb_helper_damage_area)
+
 static int msm_fbdev_mmap(struct fb_info *info, struct vm_area_struct *vma)
 {
 	struct drm_fb_helper *helper = (struct drm_fb_helper *)info->par;
@@ -52,16 +58,9 @@ static void msm_fbdev_fb_destroy(struct fb_info *info)
 
 static const struct fb_ops msm_fb_ops = {
 	.owner = THIS_MODULE,
+	__FB_DEFAULT_DEFERRED_OPS_RDWR(msm_fbdev),
 	DRM_FB_HELPER_DEFAULT_OPS,
-
-	/* Note: to properly handle manual update displays, we wrap the
-	 * basic fbdev ops which write to the framebuffer
-	 */
-	.fb_read = drm_fb_helper_sys_read,
-	.fb_write = drm_fb_helper_sys_write,
-	.fb_fillrect = drm_fb_helper_sys_fillrect,
-	.fb_copyarea = drm_fb_helper_sys_copyarea,
-	.fb_imageblit = drm_fb_helper_sys_imageblit,
+	__FB_DEFAULT_DEFERRED_OPS_DRAW(msm_fbdev),
 	.fb_mmap = msm_fbdev_mmap,
 	.fb_destroy = msm_fbdev_fb_destroy,
 };
-- 
2.40.1

