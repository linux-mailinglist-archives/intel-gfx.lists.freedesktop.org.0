Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B352965B6A
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 10:47:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7689110E961;
	Fri, 30 Aug 2024 08:45:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="CISSSL8j";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="3F3n/ZEM";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="CISSSL8j";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="3F3n/ZEM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56BDC10E8D8;
 Fri, 30 Aug 2024 08:45:13 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 094CD1F7C4;
 Fri, 30 Aug 2024 08:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1725007512; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=s23+oJRuE4dDfHQX4BdceW6MmnVWq2DQr7KJKm8sWgc=;
 b=CISSSL8j3ZzxlotHvvjF41ej2UsNgvgIN9M881xN0gMxh4XsGJh8WBYROMlojv9J2IDPOE
 eRZ0tOEd7QvC+N6BPwU167LSX4lZJ3nLdq4RebicCoAxr9de6VE5qSIteXiichiy9MXrqB
 sD1kaASkNHPzzfmS+JgUyIJwnW0fXHg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1725007512;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=s23+oJRuE4dDfHQX4BdceW6MmnVWq2DQr7KJKm8sWgc=;
 b=3F3n/ZEMAGDgSDPz6lAemPqoaigTLpkOhJsXnh/LjqGJj8SbKoYhl2KClODFeua19knQ01
 qBcVJJlW03Mk9yBQ==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1725007512; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=s23+oJRuE4dDfHQX4BdceW6MmnVWq2DQr7KJKm8sWgc=;
 b=CISSSL8j3ZzxlotHvvjF41ej2UsNgvgIN9M881xN0gMxh4XsGJh8WBYROMlojv9J2IDPOE
 eRZ0tOEd7QvC+N6BPwU167LSX4lZJ3nLdq4RebicCoAxr9de6VE5qSIteXiichiy9MXrqB
 sD1kaASkNHPzzfmS+JgUyIJwnW0fXHg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1725007512;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=s23+oJRuE4dDfHQX4BdceW6MmnVWq2DQr7KJKm8sWgc=;
 b=3F3n/ZEMAGDgSDPz6lAemPqoaigTLpkOhJsXnh/LjqGJj8SbKoYhl2KClODFeua19knQ01
 qBcVJJlW03Mk9yBQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id B3D6E13A66;
 Fri, 30 Aug 2024 08:45:11 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id kOClKpeG0WbyegAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Fri, 30 Aug 2024 08:45:11 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: daniel@ffwll.ch, airlied@gmail.com, jfalempe@redhat.com, javierm@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>
Subject: [PATCH v3 37/81] drm/repaper: Run DRM default client setup
Date: Fri, 30 Aug 2024 10:40:21 +0200
Message-ID: <20240830084456.77630-38-tzimmermann@suse.de>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240830084456.77630-1-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Score: -7.30
X-Spamd-Result: default: False [-7.30 / 50.00]; REPLY(-4.00)[];
 BAYES_HAM(-3.00)[100.00%]; MID_CONTAINS_FROM(1.00)[];
 NEURAL_HAM_LONG(-1.00)[-1.000];
 NEURAL_HAM_SHORT(-0.20)[-0.999]; MIME_GOOD(-0.10)[text/plain];
 TO_DN_SOME(0.00)[];
 FREEMAIL_TO(0.00)[ffwll.ch,gmail.com,redhat.com];
 RCVD_VIA_SMTP_AUTH(0.00)[]; RCPT_COUNT_SEVEN(0.00)[11];
 ARC_NA(0.00)[]; MIME_TRACE(0.00)[0:+];
 FREEMAIL_ENVRCPT(0.00)[gmail.com];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 FROM_EQ_ENVFROM(0.00)[]; FROM_HAS_DN(0.00)[];
 R_RATELIMIT(0.00)[to_ip_from(RLw9gjjhh8cousxs3wi4trssza)];
 RCVD_TLS_ALL(0.00)[]; RCVD_COUNT_TWO(0.00)[2];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; FUZZY_BLOCKED(0.00)[rspamd.com];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:mid,suse.de:email]
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

Call drm_client_setup() to run the kernel's default client setup
for DRM. Set fbdev_probe in struct drm_driver, so that the client
setup can start the common fbdev client.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
Cc: "Noralf Trønnes" <noralf@tronnes.org>
Acked-by: Noralf Trønnes <noralf@tronnes.org>
---
 drivers/gpu/drm/tiny/repaper.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/tiny/repaper.c b/drivers/gpu/drm/tiny/repaper.c
index 1f78aa3d26bb..77944eb17b3c 100644
--- a/drivers/gpu/drm/tiny/repaper.c
+++ b/drivers/gpu/drm/tiny/repaper.c
@@ -22,6 +22,7 @@
 #include <linux/thermal.h>
 
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_client_setup.h>
 #include <drm/drm_connector.h>
 #include <drm/drm_damage_helper.h>
 #include <drm/drm_drv.h>
@@ -913,6 +914,7 @@ static const struct drm_driver repaper_driver = {
 	.driver_features	= DRIVER_GEM | DRIVER_MODESET | DRIVER_ATOMIC,
 	.fops			= &repaper_fops,
 	DRM_GEM_DMA_DRIVER_OPS_VMAP,
+	DRM_FBDEV_DMA_DRIVER_OPS,
 	.name			= "repaper",
 	.desc			= "Pervasive Displays RePaper e-ink panels",
 	.date			= "20170405",
@@ -1118,7 +1120,7 @@ static int repaper_probe(struct spi_device *spi)
 
 	DRM_DEBUG_DRIVER("SPI speed: %uMHz\n", spi->max_speed_hz / 1000000);
 
-	drm_fbdev_dma_setup(drm, 0);
+	drm_client_setup(drm, NULL);
 
 	return 0;
 }
-- 
2.46.0

