Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uKQkFQRG/Gn9NgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 09:57:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBC34E459D
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 09:57:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AD8A10E689;
	Thu,  7 May 2026 07:57:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="VxkwL996";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="G2QFq4r+";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="VxkwL996";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="G2QFq4r+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85F7F10EFBD
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2026 07:57:53 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 44D925D5FE;
 Thu,  7 May 2026 07:57:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1778140655; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ocn9hZZcjtGQJUOF5X571Jlb5UX2YYs6SbnCPI+QL0M=;
 b=VxkwL99687E0jSjN7u3cXaTRj/Doryquqh0kMeFqAlaCRemq+JbY+0u50ZvSKyrwQryYRi
 sFKAq2nECgK/AfApICTr/zRxiPriX9ygRuq6LnU7pTCDLdnohmuwb2z/fvk7KR3a77Aofh
 9VemorHtKxW0uHQyZtogOi8/Gy5ZN9A=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1778140655;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ocn9hZZcjtGQJUOF5X571Jlb5UX2YYs6SbnCPI+QL0M=;
 b=G2QFq4r+nvMIECty2O0H+LV9KW3hA6MeWgx/L1Oq2CRgJvicOnamlYyLfmhI9Ed48zeP28
 sdf7fqbPOiWrtaDA==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1778140655; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ocn9hZZcjtGQJUOF5X571Jlb5UX2YYs6SbnCPI+QL0M=;
 b=VxkwL99687E0jSjN7u3cXaTRj/Doryquqh0kMeFqAlaCRemq+JbY+0u50ZvSKyrwQryYRi
 sFKAq2nECgK/AfApICTr/zRxiPriX9ygRuq6LnU7pTCDLdnohmuwb2z/fvk7KR3a77Aofh
 9VemorHtKxW0uHQyZtogOi8/Gy5ZN9A=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1778140655;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ocn9hZZcjtGQJUOF5X571Jlb5UX2YYs6SbnCPI+QL0M=;
 b=G2QFq4r+nvMIECty2O0H+LV9KW3hA6MeWgx/L1Oq2CRgJvicOnamlYyLfmhI9Ed48zeP28
 sdf7fqbPOiWrtaDA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id C4F33593A8;
 Thu,  7 May 2026 07:57:34 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id MD2WLu5F/GnZJAAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Thu, 07 May 2026 07:57:34 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: mripard@kernel.org, maarten.lankhorst@linux.intel.com, airlied@redhat.com,
 airlied@gmail.com, simona@ffwll.ch, admin@kodeit.net,
 gargaditya08@proton.me, paul@crapouillou.net, zack.rusin@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com
Cc: dri-devel@lists.freedesktop.org, linux-hyperv@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-mips@vger.kernel.org, virtualization@lists.linux.dev,
 Thomas Zimmermann <tzimmermann@suse.de>
Subject: [PATCH 09/10] drm/damage-helper: Rename state parameters in damage
 helpers
Date: Thu,  7 May 2026 09:12:28 +0200
Message-ID: <20260507075725.29738-10-tzimmermann@suse.de>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260507075725.29738-1-tzimmermann@suse.de>
References: <20260507075725.29738-1-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Level: 
X-Spam-Flag: NO
X-Spam-Score: -6.80
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
X-Rspamd-Queue-Id: CCBC34E459D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mripard@kernel.org,m:maarten.lankhorst@linux.intel.com,m:airlied@redhat.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:admin@kodeit.net,m:gargaditya08@proton.me,m:paul@crapouillou.net,m:zack.rusin@broadcom.com,m:bcm-kernel-feedback-list@broadcom.com,m:dri-devel@lists.freedesktop.org,m:linux-hyperv@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:linux-mips@vger.kernel.org,m:virtualization@lists.linux.dev,m:tzimmermann@suse.de,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,linux.intel.com,redhat.com,gmail.com,ffwll.ch,kodeit.net,proton.me,crapouillou.net,broadcom.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[tzimmermann@suse.de,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[tzimmermann@suse.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[suse.de:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

Rename some of the state parameters of the damage-helper functions to
align them with each other and other helpers. No functional changes.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
---
 drivers/gpu/drm/drm_damage_helper.c | 20 ++++++++++----------
 include/drm/drm_damage_helper.h     |  4 ++--
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/drm_damage_helper.c b/drivers/gpu/drm/drm_damage_helper.c
index 69b08febfe2b..50090fa97534 100644
--- a/drivers/gpu/drm/drm_damage_helper.c
+++ b/drivers/gpu/drm/drm_damage_helper.c
@@ -209,7 +209,7 @@ EXPORT_SYMBOL(drm_atomic_helper_dirtyfb);
 /**
  * drm_atomic_helper_damage_iter_init - Initialize the damage iterator.
  * @iter: The iterator to initialize.
- * @state: Plane state from which to iterate the damage clips.
+ * @plane_state: Plane state from which to iterate the damage clips.
  *
  * Initialize an iterator, which clips plane damage
  * &drm_plane_state.fb_damage_clips to plane &drm_plane_state.src. This iterator
@@ -225,26 +225,26 @@ EXPORT_SYMBOL(drm_atomic_helper_dirtyfb);
  */
 void
 drm_atomic_helper_damage_iter_init(struct drm_atomic_helper_damage_iter *iter,
-				   const struct drm_plane_state *state)
+				   const struct drm_plane_state *plane_state)
 {
 	struct drm_rect src;
 	memset(iter, 0, sizeof(*iter));
 
-	if (!state || !state->crtc || !state->fb || !state->visible)
+	if (!plane_state || !plane_state->crtc || !plane_state->fb || !plane_state->visible)
 		return;
 
-	iter->clips = (struct drm_rect *)drm_plane_get_damage_clips(state);
-	iter->num_clips = drm_plane_get_damage_clips_count(state);
+	iter->clips = (struct drm_rect *)drm_plane_get_damage_clips(plane_state);
+	iter->num_clips = drm_plane_get_damage_clips_count(plane_state);
 
 	/* Round down for x1/y1 and round up for x2/y2 to catch all pixels */
-	src = drm_plane_state_src(state);
+	src = drm_plane_state_src(plane_state);
 
 	iter->plane_src.x1 = src.x1 >> 16;
 	iter->plane_src.y1 = src.y1 >> 16;
 	iter->plane_src.x2 = (src.x2 >> 16) + !!(src.x2 & 0xFFFF);
 	iter->plane_src.y2 = (src.y2 >> 16) + !!(src.y2 & 0xFFFF);
 
-	if (!iter->clips || state->ignore_damage_clips) {
+	if (!iter->clips || plane_state->ignore_damage_clips) {
 		iter->clips = NULL;
 		iter->num_clips = 0;
 		iter->full_update = true;
@@ -296,7 +296,7 @@ EXPORT_SYMBOL(drm_atomic_helper_damage_iter_next);
 
 /**
  * drm_atomic_helper_damage_merged - Merged plane damage
- * @state: Plane state from which to iterate the damage clips.
+ * @plane_state: Plane state from which to iterate the damage clips.
  * @rect: Returns the merged damage rectangle
  *
  * This function merges any valid plane damage clips into one rectangle and
@@ -308,7 +308,7 @@ EXPORT_SYMBOL(drm_atomic_helper_damage_iter_next);
  * Returns:
  * True if there is valid plane damage otherwise false.
  */
-bool drm_atomic_helper_damage_merged(const struct drm_plane_state *state,
+bool drm_atomic_helper_damage_merged(const struct drm_plane_state *plane_state,
 				     struct drm_rect *rect)
 {
 	struct drm_atomic_helper_damage_iter iter;
@@ -320,7 +320,7 @@ bool drm_atomic_helper_damage_merged(const struct drm_plane_state *state,
 	rect->x2 = 0;
 	rect->y2 = 0;
 
-	drm_atomic_helper_damage_iter_init(&iter, state);
+	drm_atomic_helper_damage_iter_init(&iter, plane_state);
 	drm_atomic_for_each_plane_damage(&iter, &clip) {
 		rect->x1 = min(rect->x1, clip.x1);
 		rect->y1 = min(rect->y1, clip.y1);
diff --git a/include/drm/drm_damage_helper.h b/include/drm/drm_damage_helper.h
index b765f57c8ccf..eb8f7721dab3 100644
--- a/include/drm/drm_damage_helper.h
+++ b/include/drm/drm_damage_helper.h
@@ -73,11 +73,11 @@ int drm_atomic_helper_dirtyfb(struct drm_framebuffer *fb,
 			      unsigned int num_clips);
 void
 drm_atomic_helper_damage_iter_init(struct drm_atomic_helper_damage_iter *iter,
-				   const struct drm_plane_state *state);
+				   const struct drm_plane_state *plane_state);
 bool
 drm_atomic_helper_damage_iter_next(struct drm_atomic_helper_damage_iter *iter,
 				   struct drm_rect *rect);
-bool drm_atomic_helper_damage_merged(const struct drm_plane_state *state,
+bool drm_atomic_helper_damage_merged(const struct drm_plane_state *plane_state,
 				     struct drm_rect *rect);
 
 #endif
-- 
2.54.0

