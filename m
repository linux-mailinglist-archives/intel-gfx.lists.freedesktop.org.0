Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xqQoCPWBKWrsYAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 17:25:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF9166ABC2
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 17:25:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=Stxw885b;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=5i6Vnh4J;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=Stxw885b;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=5i6Vnh4J;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=suse.de
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E03810EAAE;
	Wed, 10 Jun 2026 15:25:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DE5710EA98
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jun 2026 15:25:34 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 7A35175BCE;
 Wed, 10 Jun 2026 15:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1781105123; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FKqv1kGbJm6dmIGXRwoHMOzk2vbZhS3swHPyYSWj0vY=;
 b=Stxw885bey0p3AKCBnpq8zxaQeKJeUEl+y6SBVDLK9f61Qt9mrxfqseU5qBK67/xRdVLem
 s1Tg2/rjiLZEZDNKfjB7QMb3Sf7A4wImbefk3RtYuM9TcsV8oUogayD1I0vVZCRIv8rLiH
 dmMK8eYrQ/+EMyU8GoY0EyTbeFwhoTE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1781105123;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FKqv1kGbJm6dmIGXRwoHMOzk2vbZhS3swHPyYSWj0vY=;
 b=5i6Vnh4Jh0iSgiMT4c9C1Ty253WSPEUnLGh1h9BlLS6pEVfdkXH+2hgzSNRyOljJ7tygAh
 R9YEQtyI1GP87QAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1781105123; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FKqv1kGbJm6dmIGXRwoHMOzk2vbZhS3swHPyYSWj0vY=;
 b=Stxw885bey0p3AKCBnpq8zxaQeKJeUEl+y6SBVDLK9f61Qt9mrxfqseU5qBK67/xRdVLem
 s1Tg2/rjiLZEZDNKfjB7QMb3Sf7A4wImbefk3RtYuM9TcsV8oUogayD1I0vVZCRIv8rLiH
 dmMK8eYrQ/+EMyU8GoY0EyTbeFwhoTE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1781105123;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FKqv1kGbJm6dmIGXRwoHMOzk2vbZhS3swHPyYSWj0vY=;
 b=5i6Vnh4Jh0iSgiMT4c9C1Ty253WSPEUnLGh1h9BlLS6pEVfdkXH+2hgzSNRyOljJ7tygAh
 R9YEQtyI1GP87QAQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 8F723779A9;
 Wed, 10 Jun 2026 15:25:22 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id gNSYIeKBKWr3HwAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Wed, 10 Jun 2026 15:25:22 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: mripard@kernel.org, maarten.lankhorst@linux.intel.com, airlied@redhat.com,
 airlied@gmail.com, simona@ffwll.ch, admin@kodeit.net,
 gargaditya08@proton.me, paul@crapouillou.net, jani.nikula@linux.intel.com,
 mhklkml@zohomail.com, zack.rusin@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, harry.wentland@amd.com,
 sunpeng.li@amd.com, siqueira@igalia.com, alexander.deucher@amd.com,
 rodrigo.vivi@intel.com, joonas.lahtinen@linux.intel.com,
 tursulin@ursulin.net, javierm@redhat.com, dmitry.osipenko@collabora.com,
 gurchetansingh@chromium.org, olvaffe@gmail.com
Cc: dri-devel@lists.freedesktop.org, linux-hyperv@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-mips@vger.kernel.org, virtualization@lists.linux.dev,
 amd-gfx@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>
Subject: [PATCH v5 13/15] drm/damage-helper: Remove old state from
 drm_atomic_helper_damage_merged()
Date: Wed, 10 Jun 2026 17:18:29 +0200
Message-ID: <20260610152505.260172-14-tzimmermann@suse.de>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260610152505.260172-1-tzimmermann@suse.de>
References: <20260610152505.260172-1-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Flag: NO
X-Spam-Level: 
X-Spam-Score: -6.79
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:mripard@kernel.org,m:maarten.lankhorst@linux.intel.com,m:airlied@redhat.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:admin@kodeit.net,m:gargaditya08@proton.me,m:paul@crapouillou.net,m:jani.nikula@linux.intel.com,m:mhklkml@zohomail.com,m:zack.rusin@broadcom.com,m:bcm-kernel-feedback-list@broadcom.com,m:harry.wentland@amd.com,m:sunpeng.li@amd.com,m:siqueira@igalia.com,m:alexander.deucher@amd.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:javierm@redhat.com,m:dmitry.osipenko@collabora.com,m:gurchetansingh@chromium.org,m:olvaffe@gmail.com,m:dri-devel@lists.freedesktop.org,m:linux-hyperv@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:linux-mips@vger.kernel.org,m:virtualization@lists.linux.dev,m:amd-gfx@lists.freedesktop.org,m:tzimmermann@suse.de,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linux.intel.com,redhat.com,gmail.com,ffwll.ch,kodeit.net,proton.me,crapouillou.net,zohomail.com,broadcom.com,amd.com,igalia.com,intel.com,ursulin.net,collabora.com,chromium.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	FORGED_SENDER(0.00)[tzimmermann@suse.de,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
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
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,broadcom.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,suse.de:dkim,suse.de:email,suse.de:mid,suse.de:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BAF9166ABC2

Nothing in drm_atomic_helper_damage_merged() requires the old
plane state. Remove the parameter and mass-convert callers.

Most callers now no longer require the old plane state in their plane's
atomic_update helper. Remove it as well.

v5:
- also handle i915

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
Acked-by: Zack Rusin <zack.rusin@broadcom.com>
---
 drivers/gpu/drm/ast/ast_cursor.c           |  3 +--
 drivers/gpu/drm/drm_damage_helper.c        |  4 +---
 drivers/gpu/drm/drm_mipi_dbi.c             |  3 +--
 drivers/gpu/drm/i915/display/intel_plane.c | 11 ++---------
 drivers/gpu/drm/i915/display/intel_psr.c   |  7 ++++---
 drivers/gpu/drm/sitronix/st7586.c          |  3 +--
 drivers/gpu/drm/tiny/gm12u320.c            |  2 +-
 drivers/gpu/drm/tiny/ili9225.c             |  3 +--
 drivers/gpu/drm/tiny/repaper.c             |  2 +-
 drivers/gpu/drm/tiny/sharp-memory.c        |  3 +--
 drivers/gpu/drm/virtio/virtgpu_plane.c     |  2 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_stdu.c       |  4 +---
 include/drm/drm_damage_helper.h            |  3 +--
 13 files changed, 17 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/ast/ast_cursor.c b/drivers/gpu/drm/ast/ast_cursor.c
index fd19c45f2abe..12d5f93eec5f 100644
--- a/drivers/gpu/drm/ast/ast_cursor.c
+++ b/drivers/gpu/drm/ast/ast_cursor.c
@@ -251,7 +251,6 @@ static void ast_cursor_plane_helper_atomic_update(struct drm_plane *plane,
 	struct drm_plane_state *plane_state = drm_atomic_get_new_plane_state(state, plane);
 	struct drm_shadow_plane_state *shadow_plane_state = to_drm_shadow_plane_state(plane_state);
 	struct drm_framebuffer *fb = plane_state->fb;
-	struct drm_plane_state *old_plane_state = drm_atomic_get_old_plane_state(state, plane);
 	struct ast_device *ast = to_ast_device(plane->dev);
 	struct drm_rect damage;
 	u64 dst_off = ast_plane->offset;
@@ -266,7 +265,7 @@ static void ast_cursor_plane_helper_atomic_update(struct drm_plane *plane,
 	 * engine to the offset.
 	 */
 
-	if (drm_atomic_helper_damage_merged(old_plane_state, plane_state, &damage)) {
+	if (drm_atomic_helper_damage_merged(plane_state, &damage)) {
 		const u8 *argb4444 = ast_cursor_plane_get_argb4444(ast_cursor_plane,
 								   shadow_plane_state,
 								   &damage);
diff --git a/drivers/gpu/drm/drm_damage_helper.c b/drivers/gpu/drm/drm_damage_helper.c
index 28f26234523d..28b847636253 100644
--- a/drivers/gpu/drm/drm_damage_helper.c
+++ b/drivers/gpu/drm/drm_damage_helper.c
@@ -296,7 +296,6 @@ EXPORT_SYMBOL(drm_atomic_helper_damage_iter_next);
 
 /**
  * drm_atomic_helper_damage_merged - Merged plane damage
- * @old_state: Old plane state for validation.
  * @state: Plane state from which to iterate the damage clips.
  * @rect: Returns the merged damage rectangle
  *
@@ -309,8 +308,7 @@ EXPORT_SYMBOL(drm_atomic_helper_damage_iter_next);
  * Returns:
  * True if there is valid plane damage otherwise false.
  */
-bool drm_atomic_helper_damage_merged(const struct drm_plane_state *old_state,
-				     const struct drm_plane_state *state,
+bool drm_atomic_helper_damage_merged(const struct drm_plane_state *state,
 				     struct drm_rect *rect)
 {
 	struct drm_atomic_helper_damage_iter iter;
diff --git a/drivers/gpu/drm/drm_mipi_dbi.c b/drivers/gpu/drm/drm_mipi_dbi.c
index 25cf04d029f7..4da201c38c93 100644
--- a/drivers/gpu/drm/drm_mipi_dbi.c
+++ b/drivers/gpu/drm/drm_mipi_dbi.c
@@ -380,7 +380,6 @@ void drm_mipi_dbi_plane_helper_atomic_update(struct drm_plane *plane,
 	struct drm_plane_state *plane_state = plane->state;
 	struct drm_shadow_plane_state *shadow_plane_state = to_drm_shadow_plane_state(plane_state);
 	struct drm_framebuffer *fb = plane_state->fb;
-	struct drm_plane_state *old_plane_state = drm_atomic_get_old_plane_state(state, plane);
 	struct drm_rect rect;
 	int idx;
 
@@ -388,7 +387,7 @@ void drm_mipi_dbi_plane_helper_atomic_update(struct drm_plane *plane,
 		return;
 
 	if (drm_dev_enter(plane->dev, &idx)) {
-		if (drm_atomic_helper_damage_merged(old_plane_state, plane_state, &rect))
+		if (drm_atomic_helper_damage_merged(plane_state, &rect))
 			mipi_dbi_fb_dirty(&shadow_plane_state->data[0], fb, &rect,
 					  &shadow_plane_state->fmtcnv_state);
 		drm_dev_exit(idx);
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 3eaf82477f49..a75f89e16f08 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -373,7 +373,6 @@ static void intel_plane_clear_hw_state(struct intel_plane_state *plane_state)
 
 static void
 intel_plane_copy_uapi_plane_damage(struct intel_plane_state *new_plane_state,
-				   const struct intel_plane_state *old_uapi_plane_state,
 				   const struct intel_plane_state *new_uapi_plane_state)
 {
 	struct intel_display *display = to_intel_display(new_plane_state);
@@ -383,10 +382,9 @@ intel_plane_copy_uapi_plane_damage(struct intel_plane_state *new_plane_state,
 	if (DISPLAY_VER(display) < 12)
 		return;
 
-	if (!drm_atomic_helper_damage_merged(&old_uapi_plane_state->uapi,
-					     &new_uapi_plane_state->uapi,
+	if (!drm_atomic_helper_damage_merged(&new_uapi_plane_state->uapi,
 					     damage))
-		/* Incase helper fails, mark whole plane region as damage */
+		/* In case the helper fails, mark whole plane region as damage */
 		*damage = drm_plane_state_src(&new_uapi_plane_state->uapi);
 }
 
@@ -851,7 +849,6 @@ static int plane_atomic_check(struct intel_atomic_state *state,
 	const struct intel_plane_state *old_plane_state =
 		intel_atomic_get_old_plane_state(state, plane);
 	const struct intel_plane_state *new_primary_crtc_plane_state;
-	const struct intel_plane_state *old_primary_crtc_plane_state;
 	struct intel_crtc *crtc = intel_crtc_for_pipe(display, plane->pipe);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
@@ -866,15 +863,11 @@ static int plane_atomic_check(struct intel_atomic_state *state,
 
 		new_primary_crtc_plane_state =
 			intel_atomic_get_new_plane_state(state, primary_crtc_plane);
-		old_primary_crtc_plane_state =
-			intel_atomic_get_old_plane_state(state, primary_crtc_plane);
 	} else {
 		new_primary_crtc_plane_state = new_plane_state;
-		old_primary_crtc_plane_state = old_plane_state;
 	}
 
 	intel_plane_copy_uapi_plane_damage(new_plane_state,
-					   old_primary_crtc_plane_state,
 					   new_primary_crtc_plane_state);
 
 	intel_plane_copy_uapi_to_hw_state(state,
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index e4f43eb5bd72..6581b7de53bb 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3019,10 +3019,11 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		drm_rect_fp_to_int(&src, &src);
 
 		/* Prepare plane-damage state before using it */
-		drm_atomic_helper_check_plane_damage(&state->base, &new_plane_state->uapi);
+		drm_atomic_helper_check_plane_damage(&state->base,
+						     &old_plane_state->uapi,
+						     &new_plane_state->uapi);
 
-		if (!drm_atomic_helper_damage_merged(&old_plane_state->uapi,
-						     &new_plane_state->uapi, &damaged_area))
+		if (!drm_atomic_helper_damage_merged(&new_plane_state->uapi, &damaged_area))
 			continue;
 
 		damaged_area.y1 += new_plane_state->uapi.dst.y1 - src.y1;
diff --git a/drivers/gpu/drm/sitronix/st7586.c b/drivers/gpu/drm/sitronix/st7586.c
index 28b2245f6b79..2cc0312595a4 100644
--- a/drivers/gpu/drm/sitronix/st7586.c
+++ b/drivers/gpu/drm/sitronix/st7586.c
@@ -176,7 +176,6 @@ static void st7586_plane_helper_atomic_update(struct drm_plane *plane,
 	struct drm_plane_state *plane_state = plane->state;
 	struct drm_shadow_plane_state *shadow_plane_state = to_drm_shadow_plane_state(plane_state);
 	struct drm_framebuffer *fb = plane_state->fb;
-	struct drm_plane_state *old_plane_state = drm_atomic_get_old_plane_state(state, plane);
 	struct drm_rect rect;
 	int idx;
 
@@ -186,7 +185,7 @@ static void st7586_plane_helper_atomic_update(struct drm_plane *plane,
 	if (!drm_dev_enter(plane->dev, &idx))
 		return;
 
-	if (drm_atomic_helper_damage_merged(old_plane_state, plane_state, &rect))
+	if (drm_atomic_helper_damage_merged(plane_state, &rect))
 		st7586_fb_dirty(&shadow_plane_state->data[0], fb, &rect,
 				&shadow_plane_state->fmtcnv_state);
 
diff --git a/drivers/gpu/drm/tiny/gm12u320.c b/drivers/gpu/drm/tiny/gm12u320.c
index 4ad074337af0..dcc1767c645d 100644
--- a/drivers/gpu/drm/tiny/gm12u320.c
+++ b/drivers/gpu/drm/tiny/gm12u320.c
@@ -583,7 +583,7 @@ static void gm12u320_pipe_update(struct drm_simple_display_pipe *pipe,
 	struct drm_shadow_plane_state *shadow_plane_state = to_drm_shadow_plane_state(state);
 	struct drm_rect rect;
 
-	if (drm_atomic_helper_damage_merged(old_state, state, &rect))
+	if (drm_atomic_helper_damage_merged(state, &rect))
 		gm12u320_fb_mark_dirty(state->fb, &shadow_plane_state->data[0], &rect);
 }
 
diff --git a/drivers/gpu/drm/tiny/ili9225.c b/drivers/gpu/drm/tiny/ili9225.c
index 5bf52a8fd75b..d821a659a585 100644
--- a/drivers/gpu/drm/tiny/ili9225.c
+++ b/drivers/gpu/drm/tiny/ili9225.c
@@ -185,7 +185,6 @@ static void ili9225_plane_helper_atomic_update(struct drm_plane *plane,
 	struct drm_plane_state *plane_state = plane->state;
 	struct drm_shadow_plane_state *shadow_plane_state = to_drm_shadow_plane_state(plane_state);
 	struct drm_framebuffer *fb = plane_state->fb;
-	struct drm_plane_state *old_plane_state = drm_atomic_get_old_plane_state(state, plane);
 	struct drm_rect rect;
 	int idx;
 
@@ -195,7 +194,7 @@ static void ili9225_plane_helper_atomic_update(struct drm_plane *plane,
 	if (!drm_dev_enter(drm, &idx))
 		return;
 
-	if (drm_atomic_helper_damage_merged(old_plane_state, plane_state, &rect))
+	if (drm_atomic_helper_damage_merged(plane_state, &rect))
 		ili9225_fb_dirty(&shadow_plane_state->data[0], fb, &rect,
 				 &shadow_plane_state->fmtcnv_state);
 
diff --git a/drivers/gpu/drm/tiny/repaper.c b/drivers/gpu/drm/tiny/repaper.c
index c8270591afc7..531831d2b73f 100644
--- a/drivers/gpu/drm/tiny/repaper.c
+++ b/drivers/gpu/drm/tiny/repaper.c
@@ -837,7 +837,7 @@ static void repaper_pipe_update(struct drm_simple_display_pipe *pipe,
 	if (!pipe->crtc.state->active)
 		return;
 
-	if (drm_atomic_helper_damage_merged(old_state, state, &rect))
+	if (drm_atomic_helper_damage_merged(state, &rect))
 		repaper_fb_dirty(state->fb, shadow_plane_state->data,
 				 &shadow_plane_state->fmtcnv_state);
 }
diff --git a/drivers/gpu/drm/tiny/sharp-memory.c b/drivers/gpu/drm/tiny/sharp-memory.c
index 506e6432e70d..1dacd41ddbaa 100644
--- a/drivers/gpu/drm/tiny/sharp-memory.c
+++ b/drivers/gpu/drm/tiny/sharp-memory.c
@@ -241,7 +241,6 @@ static int sharp_memory_plane_atomic_check(struct drm_plane *plane,
 static void sharp_memory_plane_atomic_update(struct drm_plane *plane,
 					     struct drm_atomic_commit *state)
 {
-	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state, plane);
 	struct drm_plane_state *plane_state = plane->state;
 	struct drm_shadow_plane_state *shadow_plane_state = to_drm_shadow_plane_state(plane_state);
 	struct sharp_memory_device *smd;
@@ -251,7 +250,7 @@ static void sharp_memory_plane_atomic_update(struct drm_plane *plane,
 	if (!smd->crtc.state->active)
 		return;
 
-	if (drm_atomic_helper_damage_merged(old_state, plane_state, &rect))
+	if (drm_atomic_helper_damage_merged(plane_state, &rect))
 		sharp_memory_fb_dirty(plane_state->fb, shadow_plane_state->data,
 				      &rect, &shadow_plane_state->fmtcnv_state);
 }
diff --git a/drivers/gpu/drm/virtio/virtgpu_plane.c b/drivers/gpu/drm/virtio/virtgpu_plane.c
index 1d1b27ece62a..4728047315a2 100644
--- a/drivers/gpu/drm/virtio/virtgpu_plane.c
+++ b/drivers/gpu/drm/virtio/virtgpu_plane.c
@@ -260,7 +260,7 @@ static void virtio_gpu_primary_plane_update(struct drm_plane *plane,
 		return;
 	}
 
-	if (!drm_atomic_helper_damage_merged(old_state, plane->state, &rect))
+	if (!drm_atomic_helper_damage_merged(plane->state, &rect))
 		return;
 
 	bo = gem_to_virtio_gpu_obj(plane->state->fb->obj[0]);
diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_stdu.c b/drivers/gpu/drm/vmwgfx/vmwgfx_stdu.c
index 4139837f4caf..f0df2b1c8465 100644
--- a/drivers/gpu/drm/vmwgfx/vmwgfx_stdu.c
+++ b/drivers/gpu/drm/vmwgfx/vmwgfx_stdu.c
@@ -977,7 +977,6 @@ vmw_stdu_primary_plane_prepare_fb(struct drm_plane *plane,
 	enum stdu_content_type new_content_type;
 	struct vmw_framebuffer_surface *new_vfbs;
 	uint32_t hdisplay = new_state->crtc_w, vdisplay = new_state->crtc_h;
-	struct drm_plane_state *old_state = plane->state;
 	struct drm_rect rect;
 	int ret;
 
@@ -1101,8 +1100,7 @@ vmw_stdu_primary_plane_prepare_fb(struct drm_plane *plane,
 		struct vmw_surface *surf = vmw_user_object_surface(&vps->uo);
 		struct vmw_resource *res = &surf->res;
 
-		if (!res->res_dirty && drm_atomic_helper_damage_merged(old_state,
-								       new_state,
+		if (!res->res_dirty && drm_atomic_helper_damage_merged(new_state,
 								       &rect)) {
 			/*
 			 * At some point it might be useful to actually translate
diff --git a/include/drm/drm_damage_helper.h b/include/drm/drm_damage_helper.h
index fafe29b50fc6..b5a4de779db6 100644
--- a/include/drm/drm_damage_helper.h
+++ b/include/drm/drm_damage_helper.h
@@ -77,8 +77,7 @@ drm_atomic_helper_damage_iter_init(struct drm_atomic_helper_damage_iter *iter,
 bool
 drm_atomic_helper_damage_iter_next(struct drm_atomic_helper_damage_iter *iter,
 				   struct drm_rect *rect);
-bool drm_atomic_helper_damage_merged(const struct drm_plane_state *old_state,
-				     const struct drm_plane_state *state,
+bool drm_atomic_helper_damage_merged(const struct drm_plane_state *state,
 				     struct drm_rect *rect);
 
 #endif
-- 
2.54.0

