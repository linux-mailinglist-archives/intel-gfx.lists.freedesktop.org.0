Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8ANTLCIzG2qqAAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 30 May 2026 20:57:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 535CF612DAD
	for <lists+intel-gfx@lfdr.de>; Sat, 30 May 2026 20:57:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EDA711299B;
	Sat, 30 May 2026 18:57:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="Om+WXYbn";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="vNGRUE6O";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="Om+WXYbn";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="vNGRUE6O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2827311299D
 for <intel-gfx@lists.freedesktop.org>; Sat, 30 May 2026 18:57:35 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id A36A46B573;
 Sat, 30 May 2026 18:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1780167441; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kDQdPdS3A3xBjZjzQXVN8MvvQVwiHjFdB0RAYJ4Rfd4=;
 b=Om+WXYbn7fCiIYZeypA0jHydMd140JHHCf5+V+d8IvfD8ttvMdC83cJQwVxhRlIfOS4wrt
 H5ModPGqAkA6iDW2b3hQGA2d6HWGXxKW8b+tklyBtLv/JZOGHhHpEfvx34V09baz4nz88t
 4T6VQZaNGSmL8NJG17zdDNEgDmZVbzE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1780167441;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kDQdPdS3A3xBjZjzQXVN8MvvQVwiHjFdB0RAYJ4Rfd4=;
 b=vNGRUE6OTltvyV/DCc4A4a8XfWmxbsz6piXjDCBAOrntLtZlrH8J1Q9UkLwgkpz+eDMWEz
 gAfW3XdQBgRAQbDw==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1780167441; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kDQdPdS3A3xBjZjzQXVN8MvvQVwiHjFdB0RAYJ4Rfd4=;
 b=Om+WXYbn7fCiIYZeypA0jHydMd140JHHCf5+V+d8IvfD8ttvMdC83cJQwVxhRlIfOS4wrt
 H5ModPGqAkA6iDW2b3hQGA2d6HWGXxKW8b+tklyBtLv/JZOGHhHpEfvx34V09baz4nz88t
 4T6VQZaNGSmL8NJG17zdDNEgDmZVbzE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1780167441;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kDQdPdS3A3xBjZjzQXVN8MvvQVwiHjFdB0RAYJ4Rfd4=;
 b=vNGRUE6OTltvyV/DCc4A4a8XfWmxbsz6piXjDCBAOrntLtZlrH8J1Q9UkLwgkpz+eDMWEz
 gAfW3XdQBgRAQbDw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 28147779A7;
 Sat, 30 May 2026 18:57:21 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id ALuWCBEzG2rXUwAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Sat, 30 May 2026 18:57:21 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: mripard@kernel.org, maarten.lankhorst@linux.intel.com, airlied@redhat.com,
 airlied@gmail.com, simona@ffwll.ch, admin@kodeit.net,
 gargaditya08@proton.me, paul@crapouillou.net, jani.nikula@linux.intel.com,
 mhklinux@outlook.com, zack.rusin@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com
Cc: dri-devel@lists.freedesktop.org, linux-hyperv@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-mips@vger.kernel.org, virtualization@lists.linux.dev,
 Thomas Zimmermann <tzimmermann@suse.de>
Subject: [PATCH v4 06/10] drm/damage-helper: Test src coord in
 drm_atomic_helper_check_plane_damage()
Date: Sat, 30 May 2026 20:53:19 +0200
Message-ID: <20260530185716.65688-7-tzimmermann@suse.de>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260530185716.65688-1-tzimmermann@suse.de>
References: <20260530185716.65688-1-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Flag: NO
X-Spam-Score: -6.79
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[tzimmermann@suse.de,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:mripard@kernel.org,m:maarten.lankhorst@linux.intel.com,m:airlied@redhat.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:admin@kodeit.net,m:gargaditya08@proton.me,m:paul@crapouillou.net,m:jani.nikula@linux.intel.com,m:mhklinux@outlook.com,m:zack.rusin@broadcom.com,m:bcm-kernel-feedback-list@broadcom.com,m:dri-devel@lists.freedesktop.org,m:linux-hyperv@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:linux-mips@vger.kernel.org,m:virtualization@lists.linux.dev,m:tzimmermann@suse.de,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,linux.intel.com,redhat.com,gmail.com,ffwll.ch,kodeit.net,proton.me,crapouillou.net,outlook.com,broadcom.com];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[suse.de:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[tzimmermann@suse.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:email,suse.de:mid,suse.de:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 535CF612DAD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Planes require a full update if the source coordinates change across
atomic commits. Evaluate this during the atomic-check and set the flag
ignore_damage_clips in the plane state, if so. Remove the check from
drm_atomic_helper_damage_iter_init().

This will help with removing the old state from the atomic-commit phase
and simplify atomic_update helpers a bit.

Several unit tests check against the change of the src coordinate. Drop
them as they do no longer serve a purpose. If the src coordinate changes
across commits, atomic helpers will set the plane state's
ignore_damage_clips flag, for which a separate unit test exists.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
Acked-by: Zack Rusin <zack.rusin@broadcom.com>
---
 drivers/gpu/drm/drm_atomic_helper.c           |   2 +-
 drivers/gpu/drm/drm_damage_helper.c           |  20 ++-
 .../gpu/drm/tests/drm_damage_helper_test.c    | 151 ------------------
 include/drm/drm_damage_helper.h               |   3 +-
 4 files changed, 15 insertions(+), 161 deletions(-)

diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
index 37eb6cbbf3ea..57ffa8c8d641 100644
--- a/drivers/gpu/drm/drm_atomic_helper.c
+++ b/drivers/gpu/drm/drm_atomic_helper.c
@@ -1064,7 +1064,7 @@ drm_atomic_helper_check_planes(struct drm_device *dev,
 	}
 
 	for_each_oldnew_plane_in_state(state, plane, old_plane_state, new_plane_state, i) {
-		drm_atomic_helper_check_plane_damage(state, new_plane_state);
+		drm_atomic_helper_check_plane_damage(state, old_plane_state, new_plane_state);
 	}
 
 	return ret;
diff --git a/drivers/gpu/drm/drm_damage_helper.c b/drivers/gpu/drm/drm_damage_helper.c
index 945fac8dc27b..f492a59edbeb 100644
--- a/drivers/gpu/drm/drm_damage_helper.c
+++ b/drivers/gpu/drm/drm_damage_helper.c
@@ -55,7 +55,8 @@ static void convert_clip_rect_to_rect(const struct drm_clip_rect *src,
 /**
  * drm_atomic_helper_check_plane_damage - Verify plane damage on atomic_check.
  * @state: The driver state object.
- * @plane_state: Plane state for which to verify damage.
+ * @old_plane_state: Old plane state to verify against.
+ * @new_plane_state: Plane state for which to verify damage.
  *
  * This helper function makes sure that damage from plane state is discarded
  * for full modeset. If there are more reasons a driver would want to do a full
@@ -67,19 +68,23 @@ static void convert_clip_rect_to_rect(const struct drm_clip_rect *src,
  * &drm_plane_state.src as damage.
  */
 void drm_atomic_helper_check_plane_damage(struct drm_atomic_commit *state,
-					  struct drm_plane_state *plane_state)
+					  const struct drm_plane_state *old_plane_state,
+					  struct drm_plane_state *new_plane_state)
 {
 	struct drm_crtc_state *crtc_state;
 
-	if (plane_state->crtc) {
+	if (!drm_rect_equals(&new_plane_state->src, &old_plane_state->src))
+		new_plane_state->ignore_damage_clips = true;
+
+	if (new_plane_state->crtc) {
 		crtc_state = drm_atomic_get_new_crtc_state(state,
-							   plane_state->crtc);
+							   new_plane_state->crtc);
 
 		if (WARN_ON(!crtc_state))
 			return;
 
 		if (drm_atomic_crtc_needs_modeset(crtc_state))
-			plane_state->ignore_damage_clips = true;
+			new_plane_state->ignore_damage_clips = true;
 	}
 }
 EXPORT_SYMBOL(drm_atomic_helper_check_plane_damage);
@@ -204,7 +209,7 @@ EXPORT_SYMBOL(drm_atomic_helper_dirtyfb);
 /**
  * drm_atomic_helper_damage_iter_init - Initialize the damage iterator.
  * @iter: The iterator to initialize.
- * @old_state: Old plane state for validation.
+ * @old_state: Unused, pass NULL.
  * @state: Plane state from which to iterate the damage clips.
  *
  * Initialize an iterator, which clips plane damage
@@ -241,8 +246,7 @@ drm_atomic_helper_damage_iter_init(struct drm_atomic_helper_damage_iter *iter,
 	iter->plane_src.x2 = (src.x2 >> 16) + !!(src.x2 & 0xFFFF);
 	iter->plane_src.y2 = (src.y2 >> 16) + !!(src.y2 & 0xFFFF);
 
-	if (!iter->clips || state->ignore_damage_clips ||
-	    !drm_rect_equals(&state->src, &old_state->src)) {
+	if (!iter->clips || state->ignore_damage_clips) {
 		iter->clips = NULL;
 		iter->num_clips = 0;
 		iter->full_update = true;
diff --git a/drivers/gpu/drm/tests/drm_damage_helper_test.c b/drivers/gpu/drm/tests/drm_damage_helper_test.c
index 64f038a62ffe..ef931497baf9 100644
--- a/drivers/gpu/drm/tests/drm_damage_helper_test.c
+++ b/drivers/gpu/drm/tests/drm_damage_helper_test.c
@@ -155,45 +155,6 @@ static void drm_test_damage_iter_no_damage_fractional_src(struct kunit *test)
 	check_damage_clip(test, &clip, 3, 3, 1028, 772);
 }
 
-static void drm_test_damage_iter_no_damage_src_moved(struct kunit *test)
-{
-	struct drm_damage_mock *mock = test->priv;
-	struct drm_atomic_helper_damage_iter iter;
-	struct drm_rect clip;
-	u32 num_hits = 0;
-
-	/* Plane src moved since old plane state. */
-	set_plane_src(&mock->old_state, 0, 0, 1024 << 16, 768 << 16);
-	set_plane_src(&mock->state, 10 << 16, 10 << 16,
-		      (10 + 1024) << 16, (10 + 768) << 16);
-	drm_atomic_helper_damage_iter_init(&iter, &mock->old_state, &mock->state);
-	drm_atomic_for_each_plane_damage(&iter, &clip)
-		num_hits++;
-
-	KUNIT_EXPECT_EQ_MSG(test, num_hits, 1, "Should return plane src as damage.");
-	check_damage_clip(test, &clip, 10, 10, 1034, 778);
-}
-
-static void drm_test_damage_iter_no_damage_fractional_src_moved(struct kunit *test)
-{
-	struct drm_damage_mock *mock = test->priv;
-	struct drm_atomic_helper_damage_iter iter;
-	struct drm_rect clip;
-	u32 num_hits = 0;
-
-	/* Plane src has fractional part and it moved since old plane state. */
-	set_plane_src(&mock->old_state, 0x3fffe, 0x3fffe,
-		      0x3fffe + (1024 << 16), 0x3fffe + (768 << 16));
-	set_plane_src(&mock->state, 0x40002, 0x40002,
-		      0x40002 + (1024 << 16), 0x40002 + (768 << 16));
-	drm_atomic_helper_damage_iter_init(&iter, &mock->old_state, &mock->state);
-	drm_atomic_for_each_plane_damage(&iter, &clip)
-		num_hits++;
-
-	KUNIT_EXPECT_EQ_MSG(test, num_hits, 1, "Should return plane src as damage.");
-	check_damage_clip(test, &clip, 4, 4, 1029, 773);
-}
-
 static void drm_test_damage_iter_no_damage_not_visible(struct kunit *test)
 {
 	struct drm_damage_mock *mock = test->priv;
@@ -415,58 +376,6 @@ static void drm_test_damage_iter_single_damage_outside_fractional_src(struct kun
 	KUNIT_EXPECT_EQ_MSG(test, num_hits, 0, "Should have no damage.");
 }
 
-static void drm_test_damage_iter_single_damage_src_moved(struct kunit *test)
-{
-	struct drm_damage_mock *mock = test->priv;
-	struct drm_atomic_helper_damage_iter iter;
-	struct drm_property_blob damage_blob;
-	struct drm_mode_rect damage;
-	struct drm_rect clip;
-	u32 num_hits = 0;
-
-	/* Plane src moved since old plane state. */
-	set_plane_src(&mock->old_state, 0, 0, 1024 << 16, 768 << 16);
-	set_plane_src(&mock->state, 10 << 16, 10 << 16,
-		      (10 + 1024) << 16, (10 + 768) << 16);
-	set_damage_clip(&damage, 20, 30, 256, 256);
-	set_damage_blob(&damage_blob, &damage, sizeof(damage));
-	set_plane_damage(&mock->state, &damage_blob);
-	drm_atomic_helper_damage_iter_init(&iter, &mock->old_state, &mock->state);
-	drm_atomic_for_each_plane_damage(&iter, &clip)
-		num_hits++;
-
-	KUNIT_EXPECT_EQ_MSG(test, num_hits, 1,
-			    "Should return plane src as damage.");
-	check_damage_clip(test, &clip, 10, 10, 1034, 778);
-}
-
-static void drm_test_damage_iter_single_damage_fractional_src_moved(struct kunit *test)
-{
-	struct drm_damage_mock *mock = test->priv;
-	struct drm_atomic_helper_damage_iter iter;
-	struct drm_property_blob damage_blob;
-	struct drm_mode_rect damage;
-	struct drm_rect clip;
-	u32 num_hits = 0;
-
-	/* Plane src with fractional part moved since old plane state. */
-	set_plane_src(&mock->old_state, 0x3fffe, 0x3fffe,
-		      0x3fffe + (1024 << 16), 0x3fffe + (768 << 16));
-	set_plane_src(&mock->state, 0x40002, 0x40002,
-		      0x40002 + (1024 << 16), 0x40002 + (768 << 16));
-	/* Damage intersect with plane src. */
-	set_damage_clip(&damage, 20, 30, 1360, 256);
-	set_damage_blob(&damage_blob, &damage, sizeof(damage));
-	set_plane_damage(&mock->state, &damage_blob);
-	drm_atomic_helper_damage_iter_init(&iter, &mock->old_state, &mock->state);
-	drm_atomic_for_each_plane_damage(&iter, &clip)
-		num_hits++;
-
-	KUNIT_EXPECT_EQ_MSG(test, num_hits, 1,
-			    "Should return rounded off plane as damage.");
-	check_damage_clip(test, &clip, 4, 4, 1029, 773);
-}
-
 static void drm_test_damage_iter_damage(struct kunit *test)
 {
 	struct drm_damage_mock *mock = test->priv;
@@ -549,60 +458,6 @@ static void drm_test_damage_iter_damage_one_outside(struct kunit *test)
 	check_damage_clip(test, &clip, 240, 200, 280, 250);
 }
 
-static void drm_test_damage_iter_damage_src_moved(struct kunit *test)
-{
-	struct drm_damage_mock *mock = test->priv;
-	struct drm_atomic_helper_damage_iter iter;
-	struct drm_property_blob damage_blob;
-	struct drm_mode_rect damage[2];
-	struct drm_rect clip;
-	u32 num_hits = 0;
-
-	set_plane_src(&mock->old_state, 0x40002, 0x40002,
-		      0x40002 + (1024 << 16), 0x40002 + (768 << 16));
-	set_plane_src(&mock->state, 0x3fffe, 0x3fffe,
-		      0x3fffe + (1024 << 16), 0x3fffe + (768 << 16));
-	/* 2 damage clips, one outside plane src. */
-	set_damage_clip(&damage[0], 1360, 1360, 1380, 1380);
-	set_damage_clip(&damage[1], 240, 200, 280, 250);
-	set_damage_blob(&damage_blob, &damage[0], sizeof(damage));
-	set_plane_damage(&mock->state, &damage_blob);
-	drm_atomic_helper_damage_iter_init(&iter, &mock->old_state, &mock->state);
-	drm_atomic_for_each_plane_damage(&iter, &clip)
-		num_hits++;
-
-	KUNIT_EXPECT_EQ_MSG(test, num_hits, 1,
-			    "Should return round off plane src as damage.");
-	check_damage_clip(test, &clip, 3, 3, 1028, 772);
-}
-
-static void drm_test_damage_iter_damage_not_visible(struct kunit *test)
-{
-	struct drm_damage_mock *mock = test->priv;
-	struct drm_atomic_helper_damage_iter iter;
-	struct drm_property_blob damage_blob;
-	struct drm_mode_rect damage[2];
-	struct drm_rect clip;
-	u32 num_hits = 0;
-
-	mock->state.visible = false;
-
-	set_plane_src(&mock->old_state, 0x40002, 0x40002,
-		      0x40002 + (1024 << 16), 0x40002 + (768 << 16));
-	set_plane_src(&mock->state, 0x3fffe, 0x3fffe,
-		      0x3fffe + (1024 << 16), 0x3fffe + (768 << 16));
-	/* 2 damage clips, one outside plane src. */
-	set_damage_clip(&damage[0], 1360, 1360, 1380, 1380);
-	set_damage_clip(&damage[1], 240, 200, 280, 250);
-	set_damage_blob(&damage_blob, &damage[0], sizeof(damage));
-	set_plane_damage(&mock->state, &damage_blob);
-	drm_atomic_helper_damage_iter_init(&iter, &mock->old_state, &mock->state);
-	drm_atomic_for_each_plane_damage(&iter, &clip)
-		num_hits++;
-
-	KUNIT_EXPECT_EQ_MSG(test, num_hits, 0, "Should not return any damage.");
-}
-
 static void drm_test_damage_iter_damage_ignore(struct kunit *test)
 {
 	struct drm_damage_mock *mock = test->priv;
@@ -633,8 +488,6 @@ static void drm_test_damage_iter_damage_ignore(struct kunit *test)
 static struct kunit_case drm_damage_helper_tests[] = {
 	KUNIT_CASE(drm_test_damage_iter_no_damage),
 	KUNIT_CASE(drm_test_damage_iter_no_damage_fractional_src),
-	KUNIT_CASE(drm_test_damage_iter_no_damage_src_moved),
-	KUNIT_CASE(drm_test_damage_iter_no_damage_fractional_src_moved),
 	KUNIT_CASE(drm_test_damage_iter_no_damage_not_visible),
 	KUNIT_CASE(drm_test_damage_iter_no_damage_no_crtc),
 	KUNIT_CASE(drm_test_damage_iter_no_damage_no_fb),
@@ -645,13 +498,9 @@ static struct kunit_case drm_damage_helper_tests[] = {
 	KUNIT_CASE(drm_test_damage_iter_single_damage_fractional_src),
 	KUNIT_CASE(drm_test_damage_iter_single_damage_intersect_fractional_src),
 	KUNIT_CASE(drm_test_damage_iter_single_damage_outside_fractional_src),
-	KUNIT_CASE(drm_test_damage_iter_single_damage_src_moved),
-	KUNIT_CASE(drm_test_damage_iter_single_damage_fractional_src_moved),
 	KUNIT_CASE(drm_test_damage_iter_damage),
 	KUNIT_CASE(drm_test_damage_iter_damage_one_intersect),
 	KUNIT_CASE(drm_test_damage_iter_damage_one_outside),
-	KUNIT_CASE(drm_test_damage_iter_damage_src_moved),
-	KUNIT_CASE(drm_test_damage_iter_damage_not_visible),
 	KUNIT_CASE(drm_test_damage_iter_damage_ignore),
 	{ }
 };
diff --git a/include/drm/drm_damage_helper.h b/include/drm/drm_damage_helper.h
index 3661aeab2cd3..e93eaa0fbcb6 100644
--- a/include/drm/drm_damage_helper.h
+++ b/include/drm/drm_damage_helper.h
@@ -65,7 +65,8 @@ struct drm_atomic_helper_damage_iter {
 };
 
 void drm_atomic_helper_check_plane_damage(struct drm_atomic_commit *state,
-					  struct drm_plane_state *plane_state);
+					  const struct drm_plane_state *old_plane_state,
+					  struct drm_plane_state *new_plane_state);
 int drm_atomic_helper_dirtyfb(struct drm_framebuffer *fb,
 			      struct drm_file *file_priv, unsigned int flags,
 			      unsigned int color, struct drm_clip_rect *clips,
-- 
2.54.0

