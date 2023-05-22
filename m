Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 874B870BDA1
	for <lists+intel-gfx@lfdr.de>; Mon, 22 May 2023 14:22:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 015DA10E324;
	Mon, 22 May 2023 12:21:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [IPv6:2001:67c:2178:6::1c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70D8110E2FA;
 Mon, 22 May 2023 12:21:45 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 2895521BE9;
 Mon, 22 May 2023 12:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1684758104; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=T//tfEEUsUlXNaEiKBIRCSCuec02xIqnWeb1TK1YORk=;
 b=K6bWIdrm5PtOJg1BGrobRuHX0v7JtNZ2YdBFtabMWKy5jJHEtg7NfHYvnBe6CnTCcFb1bp
 c2jhLvyTR7U5ZNvGJzJvE8lqbdsAFV4Az2b8bmNG3UwkQxZHbQVuxeDTIO5YXyp8SS9j14
 dNXZwT0ivHK4vy+DZ4g98LZY6e4qQqA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1684758104;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=T//tfEEUsUlXNaEiKBIRCSCuec02xIqnWeb1TK1YORk=;
 b=AkKkpx3KeSk9rCownypg+1FqT8HQxxOSt5TZKwajaLIy/cFPTA63Wubhaoy/wCJdlC/VDT
 +390CsCKVQuI3qDw==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id C484B139F5;
 Mon, 22 May 2023 12:21:43 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id 6B8FL1dea2RYVAAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Mon, 22 May 2023 12:21:43 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: daniel@ffwll.ch, airlied@gmail.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, javierm@redhat.com, sam@ravnborg.org
Date: Mon, 22 May 2023 14:21:33 +0200
Message-Id: <20230522122140.30131-6-tzimmermann@suse.de>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230522122140.30131-1-tzimmermann@suse.de>
References: <20230522122140.30131-1-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 05/12] drm/radeon: Use regular fbdev I/O
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
 intel-gfx@lists.freedesktop.org, "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 dri-devel@lists.freedesktop.org, Alex Deucher <alexander.deucher@amd.com>,
 amd-gfx@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 linux-tegra@vger.kernel.org, freedreno@lists.freedesktop.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use the regular fbdev helpers for framebuffer I/O instead of DRM's
helpers. Radeon does not use damage handling, so DRM's fbdev helpers
are mere wrappers around the fbdev code.

By using fbdev helpers directly within each DRM fbdev emulation,
we can eventually remove DRM's wrapper functions entirely.

v2:
	* use FB_IO_HELPERS option

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
Acked-by: Alex Deucher <alexander.deucher@amd.com>
Cc: Alex Deucher <alexander.deucher@amd.com>
Cc: "Christian König" <christian.koenig@amd.com>
Cc: "Pan, Xinhui" <Xinhui.Pan@amd.com>
---
 drivers/gpu/drm/radeon/Kconfig        | 1 +
 drivers/gpu/drm/radeon/radeon_fbdev.c | 9 ++++-----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/radeon/Kconfig b/drivers/gpu/drm/radeon/Kconfig
index e19d77d58810..fe498c8af1bb 100644
--- a/drivers/gpu/drm/radeon/Kconfig
+++ b/drivers/gpu/drm/radeon/Kconfig
@@ -11,6 +11,7 @@ config DRM_RADEON
 	select DRM_SUBALLOC_HELPER
         select DRM_TTM
 	select DRM_TTM_HELPER
+	select FB_IO_HELPERS if DRM_FBDEV_EMULATION
 	select SND_HDA_COMPONENT if SND_HDA_CORE
 	select POWER_SUPPLY
 	select HWMON
diff --git a/drivers/gpu/drm/radeon/radeon_fbdev.c b/drivers/gpu/drm/radeon/radeon_fbdev.c
index fe76e29910ef..dcabe527f9c0 100644
--- a/drivers/gpu/drm/radeon/radeon_fbdev.c
+++ b/drivers/gpu/drm/radeon/radeon_fbdev.c
@@ -24,6 +24,7 @@
  *     David Airlie
  */
 
+#include <linux/fb.h>
 #include <linux/pci.h>
 #include <linux/pm_runtime.h>
 #include <linux/vga_switcheroo.h>
@@ -193,11 +194,9 @@ static const struct fb_ops radeon_fbdev_fb_ops = {
 	DRM_FB_HELPER_DEFAULT_OPS,
 	.fb_open = radeon_fbdev_fb_open,
 	.fb_release = radeon_fbdev_fb_release,
-	.fb_read = drm_fb_helper_cfb_read,
-	.fb_write = drm_fb_helper_cfb_write,
-	.fb_fillrect = drm_fb_helper_cfb_fillrect,
-	.fb_copyarea = drm_fb_helper_cfb_copyarea,
-	.fb_imageblit = drm_fb_helper_cfb_imageblit,
+	.fb_fillrect = cfb_fillrect,
+	.fb_copyarea = cfb_copyarea,
+	.fb_imageblit = cfb_imageblit,
 	.fb_destroy = radeon_fbdev_fb_destroy,
 };
 
-- 
2.40.1

