Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB08C965BE0
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 10:48:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0A1210EA00;
	Fri, 30 Aug 2024 08:45:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="y4Fcbluj";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="Ym6o2cAN";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="y4Fcbluj";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="Ym6o2cAN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E406310E8F2;
 Fri, 30 Aug 2024 08:45:17 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 982611F7C4;
 Fri, 30 Aug 2024 08:45:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1725007516; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5ZMJmfljuqez1ZvF2z7E0m/7+uRckOq9E6z2EWfYKKo=;
 b=y4FcblujYaAGRpoz2fqNa/BME8NnrvwJbT7JJiY7XdJMmGz1T4JXvH0HXtdnuCqTNzOLIG
 eQPVbgIx6mtr9HIFOtPtf3p2K5ryvzH2vb/1lT2I0YF33ILS3euv2g3wCFebWflLuWfBor
 LoTxAvr+VBr+naeDUPgiydi1irlltyE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1725007516;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5ZMJmfljuqez1ZvF2z7E0m/7+uRckOq9E6z2EWfYKKo=;
 b=Ym6o2cANH9mbK9Vdhw70eXTlnLd4lqvwYY9urnoIs4g94pv9olMmP63VUdXO45mLbJ+1ce
 6xj3w6e2LvPhl6DA==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1725007516; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5ZMJmfljuqez1ZvF2z7E0m/7+uRckOq9E6z2EWfYKKo=;
 b=y4FcblujYaAGRpoz2fqNa/BME8NnrvwJbT7JJiY7XdJMmGz1T4JXvH0HXtdnuCqTNzOLIG
 eQPVbgIx6mtr9HIFOtPtf3p2K5ryvzH2vb/1lT2I0YF33ILS3euv2g3wCFebWflLuWfBor
 LoTxAvr+VBr+naeDUPgiydi1irlltyE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1725007516;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5ZMJmfljuqez1ZvF2z7E0m/7+uRckOq9E6z2EWfYKKo=;
 b=Ym6o2cANH9mbK9Vdhw70eXTlnLd4lqvwYY9urnoIs4g94pv9olMmP63VUdXO45mLbJ+1ce
 6xj3w6e2LvPhl6DA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 53DB013A66;
 Fri, 30 Aug 2024 08:45:16 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id yBg5E5yG0WbyegAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Fri, 30 Aug 2024 08:45:16 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: daniel@ffwll.ch, airlied@gmail.com, jfalempe@redhat.com, javierm@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>
Subject: [PATCH v3 50/81] drm/fbdev-shmem: Support struct
 drm_driver.fbdev_probe
Date: Fri, 30 Aug 2024 10:40:34 +0200
Message-ID: <20240830084456.77630-51-tzimmermann@suse.de>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240830084456.77630-1-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Score: -6.80
X-Spamd-Result: default: False [-6.80 / 50.00]; REPLY(-4.00)[];
 BAYES_HAM(-3.00)[100.00%]; MID_CONTAINS_FROM(1.00)[];
 NEURAL_HAM_LONG(-1.00)[-1.000]; R_MISSING_CHARSET(0.50)[];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:mid,suse.de:email];
 RCVD_VIA_SMTP_AUTH(0.00)[]; FROM_HAS_DN(0.00)[];
 ARC_NA(0.00)[]; TO_DN_SOME(0.00)[]; MIME_TRACE(0.00)[0:+];
 FROM_EQ_ENVFROM(0.00)[];
 FREEMAIL_TO(0.00)[ffwll.ch,gmail.com,redhat.com];
 RCPT_COUNT_SEVEN(0.00)[10]; RCVD_COUNT_TWO(0.00)[2];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; RCVD_TLS_ALL(0.00)[];
 FUZZY_BLOCKED(0.00)[rspamd.com];
 R_RATELIMIT(0.00)[to_ip_from(RLw9gjjhh8cousxs3wi4trssza)];
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

Rework fbdev probing to support fbdev_probe in struct drm_driver
and reimplement the old fb_probe callback on top of it. Provide an
initializer macro for struct drm_driver that sets the callback
according to the kernel configuration.

This change allows the common fbdev client to run on top of SHMEM-
based DRM drivers.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
---
 drivers/gpu/drm/drm_fbdev_shmem.c | 60 ++++++++++++++++++-------------
 include/drm/drm_fbdev_shmem.h     | 11 ++++++
 2 files changed, 47 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/drm_fbdev_shmem.c b/drivers/gpu/drm/drm_fbdev_shmem.c
index 0c785007f11b..3bca333917d1 100644
--- a/drivers/gpu/drm/drm_fbdev_shmem.c
+++ b/drivers/gpu/drm/drm_fbdev_shmem.c
@@ -107,6 +107,40 @@ static struct page *drm_fbdev_shmem_get_page(struct fb_info *info, unsigned long
 
 static int drm_fbdev_shmem_helper_fb_probe(struct drm_fb_helper *fb_helper,
 					   struct drm_fb_helper_surface_size *sizes)
+{
+	return drm_fbdev_shmem_driver_fbdev_probe(fb_helper, sizes);
+}
+
+static int drm_fbdev_shmem_helper_fb_dirty(struct drm_fb_helper *helper,
+					   struct drm_clip_rect *clip)
+{
+	struct drm_device *dev = helper->dev;
+	int ret;
+
+	/* Call damage handlers only if necessary */
+	if (!(clip->x1 < clip->x2 && clip->y1 < clip->y2))
+		return 0;
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
+static const struct drm_fb_helper_funcs drm_fbdev_shmem_helper_funcs = {
+	.fb_probe = drm_fbdev_shmem_helper_fb_probe,
+	.fb_dirty = drm_fbdev_shmem_helper_fb_dirty,
+};
+
+/*
+ * struct drm_driver
+ */
+
+int drm_fbdev_shmem_driver_fbdev_probe(struct drm_fb_helper *fb_helper,
+				       struct drm_fb_helper_surface_size *sizes)
 {
 	struct drm_client_dev *client = &fb_helper->client;
 	struct drm_device *dev = fb_helper->dev;
@@ -139,6 +173,7 @@ static int drm_fbdev_shmem_helper_fb_probe(struct drm_fb_helper *fb_helper,
 		goto err_drm_client_buffer_delete;
 	}
 
+	fb_helper->funcs = &drm_fbdev_shmem_helper_funcs;
 	fb_helper->buffer = buffer;
 	fb_helper->fb = fb;
 
@@ -182,30 +217,7 @@ static int drm_fbdev_shmem_helper_fb_probe(struct drm_fb_helper *fb_helper,
 	drm_client_framebuffer_delete(buffer);
 	return ret;
 }
-
-static int drm_fbdev_shmem_helper_fb_dirty(struct drm_fb_helper *helper,
-					   struct drm_clip_rect *clip)
-{
-	struct drm_device *dev = helper->dev;
-	int ret;
-
-	/* Call damage handlers only if necessary */
-	if (!(clip->x1 < clip->x2 && clip->y1 < clip->y2))
-		return 0;
-
-	if (helper->fb->funcs->dirty) {
-		ret = helper->fb->funcs->dirty(helper->fb, NULL, 0, 0, clip, 1);
-		if (drm_WARN_ONCE(dev, ret, "Dirty helper failed: ret=%d\n", ret))
-			return ret;
-	}
-
-	return 0;
-}
-
-static const struct drm_fb_helper_funcs drm_fbdev_shmem_helper_funcs = {
-	.fb_probe = drm_fbdev_shmem_helper_fb_probe,
-	.fb_dirty = drm_fbdev_shmem_helper_fb_dirty,
-};
+EXPORT_SYMBOL(drm_fbdev_shmem_driver_fbdev_probe);
 
 /*
  * struct drm_client_funcs
diff --git a/include/drm/drm_fbdev_shmem.h b/include/drm/drm_fbdev_shmem.h
index fb43cadd1950..3a5d1efa9d55 100644
--- a/include/drm/drm_fbdev_shmem.h
+++ b/include/drm/drm_fbdev_shmem.h
@@ -4,12 +4,23 @@
 #define DRM_FBDEV_SHMEM_H
 
 struct drm_device;
+struct drm_fb_helper;
+struct drm_fb_helper_surface_size;
 
 #ifdef CONFIG_DRM_FBDEV_EMULATION
+int drm_fbdev_shmem_driver_fbdev_probe(struct drm_fb_helper *fb_helper,
+				       struct drm_fb_helper_surface_size *sizes);
+
+#define DRM_FBDEV_SHMEM_DRIVER_OPS \
+	.fbdev_probe = drm_fbdev_shmem_driver_fbdev_probe
+
 void drm_fbdev_shmem_setup(struct drm_device *dev, unsigned int preferred_bpp);
 #else
 static inline void drm_fbdev_shmem_setup(struct drm_device *dev, unsigned int preferred_bpp)
 { }
+
+#define DRM_FBDEV_SHMEM_DRIVER_OPS \
+	.fbdev_probe = NULL
 #endif
 
 #endif
-- 
2.46.0

