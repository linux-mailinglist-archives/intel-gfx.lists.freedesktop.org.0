Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF41998D421
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2024 15:13:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1935210E72E;
	Wed,  2 Oct 2024 13:13:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="PQBcj6WU";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="7RYbiWc+";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="PQBcj6WU";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="7RYbiWc+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 026B810E72E;
 Wed,  2 Oct 2024 13:13:15 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 8C6431FD60;
 Wed,  2 Oct 2024 13:13:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1727874793; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Fbcph8IhtP5eBVS83WMOA3F9552VWj5q+mc27ltTNOI=;
 b=PQBcj6WUb2RI7ypqCciaGuMuc0WPRSMoDhph0N7/ei/ZtEV9zyGWiZPl++Xv+LqJVXnwDg
 uOSWDpzGMqsN9gfz0J/QzYX5vlHo/B6yU7kfUElkADyO2aO2Pg+34bNuiiNhIzcT00xLsO
 wkZ3WY02F3L+H/A4074w1hePUKFj31k=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1727874793;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Fbcph8IhtP5eBVS83WMOA3F9552VWj5q+mc27ltTNOI=;
 b=7RYbiWc+GdfbcptTtmTlwvoZGOvUNEDJYg9BlngYjHipM1CH3OXCaaQjO00McSA/rjDh9A
 cLJJjRzs/iLrugDg==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1727874793; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Fbcph8IhtP5eBVS83WMOA3F9552VWj5q+mc27ltTNOI=;
 b=PQBcj6WUb2RI7ypqCciaGuMuc0WPRSMoDhph0N7/ei/ZtEV9zyGWiZPl++Xv+LqJVXnwDg
 uOSWDpzGMqsN9gfz0J/QzYX5vlHo/B6yU7kfUElkADyO2aO2Pg+34bNuiiNhIzcT00xLsO
 wkZ3WY02F3L+H/A4074w1hePUKFj31k=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1727874793;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Fbcph8IhtP5eBVS83WMOA3F9552VWj5q+mc27ltTNOI=;
 b=7RYbiWc+GdfbcptTtmTlwvoZGOvUNEDJYg9BlngYjHipM1CH3OXCaaQjO00McSA/rjDh9A
 cLJJjRzs/iLrugDg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 3D37413A6E;
 Wed,  2 Oct 2024 13:13:13 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id SFmwDelG/Wa/GAAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Wed, 02 Oct 2024 13:13:13 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: simona@ffwll.ch, airlied@gmail.com, javierm@redhat.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>, Karol Herbst <kherbst@redhat.com>,
 Lyude Paul <lyude@redhat.com>, Danilo Krummrich <dakr@redhat.com>
Subject: [PATCH v2 08/11] drm/nouveau: Suspend and resume clients with client
 helpers
Date: Wed,  2 Oct 2024 15:04:34 +0200
Message-ID: <20241002131306.288618-9-tzimmermann@suse.de>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241002131306.288618-1-tzimmermann@suse.de>
References: <20241002131306.288618-1-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Score: -2.80
X-Spamd-Result: default: False [-2.80 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 MID_CONTAINS_FROM(1.00)[]; NEURAL_HAM_LONG(-1.00)[-1.000];
 R_MISSING_CHARSET(0.50)[]; NEURAL_HAM_SHORT(-0.20)[-1.000];
 MIME_GOOD(-0.10)[text/plain]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 FROM_HAS_DN(0.00)[]; ARC_NA(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[]; MIME_TRACE(0.00)[0:+];
 TO_DN_SOME(0.00)[]; RCPT_COUNT_TWELVE(0.00)[12];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:mid,suse.de:email];
 FREEMAIL_TO(0.00)[ffwll.ch,gmail.com,redhat.com];
 RCVD_TLS_ALL(0.00)[]; RCVD_COUNT_TWO(0.00)[2];
 FROM_EQ_ENVFROM(0.00)[]; FUZZY_BLOCKED(0.00)[rspamd.com];
 R_RATELIMIT(0.00)[to_ip_from(RLqirfcw6gnbcr9a9yhi49fhi6)];
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

Replace calls to drm_fb_helper_set_suspend_unlocked() with calls
to the client functions drm_client_dev_suspend() and
drm_client_dev_resume(). Any registered in-kernel client will now
receive suspend and resume events.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Karol Herbst <kherbst@redhat.com>
Cc: Lyude Paul <lyude@redhat.com>
Cc: Danilo Krummrich <dakr@redhat.com>
---
 drivers/gpu/drm/nouveau/nouveau_display.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/nouveau/nouveau_display.c b/drivers/gpu/drm/nouveau/nouveau_display.c
index e2fd561cd23f..619a3efbe8c8 100644
--- a/drivers/gpu/drm/nouveau/nouveau_display.c
+++ b/drivers/gpu/drm/nouveau/nouveau_display.c
@@ -28,8 +28,8 @@
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_client_event.h>
 #include <drm/drm_crtc_helper.h>
-#include <drm/drm_fb_helper.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_gem_framebuffer_helper.h>
 #include <drm/drm_probe_helper.h>
@@ -804,8 +804,7 @@ nouveau_display_suspend(struct drm_device *dev, bool runtime)
 {
 	struct nouveau_display *disp = nouveau_display(dev);
 
-	/* Disable console. */
-	drm_fb_helper_set_suspend_unlocked(dev->fb_helper, true);
+	drm_client_dev_suspend(dev, false);
 
 	if (drm_drv_uses_atomic_modeset(dev)) {
 		if (!runtime) {
@@ -836,8 +835,7 @@ nouveau_display_resume(struct drm_device *dev, bool runtime)
 		}
 	}
 
-	/* Enable console. */
-	drm_fb_helper_set_suspend_unlocked(dev->fb_helper, false);
+	drm_client_dev_resume(dev, false);
 }
 
 int
-- 
2.46.0

