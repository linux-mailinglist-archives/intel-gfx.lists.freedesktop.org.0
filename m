Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qFFVFfsEF2rT1QcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 16:51:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0CCA5E63F0
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 16:51:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0592110E840;
	Wed, 27 May 2026 14:51:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F63F10E82A
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2026 14:51:35 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 3DEBD6B1EF;
 Wed, 27 May 2026 14:51:22 +0000 (UTC)
Authentication-Results: smtp-out1.suse.de;
	none
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id BB1DB5A8AA;
 Wed, 27 May 2026 14:51:21 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id CId7LOkEF2qsegAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Wed, 27 May 2026 14:51:21 +0000
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
Subject: [PATCH v3 05/10] drm/appletbdrm: Allocate request/response buffers in
 begin_fb_access
Date: Wed, 27 May 2026 16:46:24 +0200
Message-ID: <20260527145113.241595-6-tzimmermann@suse.de>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260527145113.241595-1-tzimmermann@suse.de>
References: <20260527145113.241595-1-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Pre-Result: action=no action; module=replies;
 Message is reply to one we originated
X-Rspamd-Pre-Result: action=no action; module=replies;
 Message is reply to one we originated
X-Spam-Flag: NO
X-Spam-Level: 
X-Spam-Score: -4.00
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
X-Spamd-Result: default: False [0.99 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[suse.de : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mripard@kernel.org,m:maarten.lankhorst@linux.intel.com,m:airlied@redhat.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:admin@kodeit.net,m:gargaditya08@proton.me,m:paul@crapouillou.net,m:jani.nikula@linux.intel.com,m:mhklinux@outlook.com,m:zack.rusin@broadcom.com,m:bcm-kernel-feedback-list@broadcom.com,m:dri-devel@lists.freedesktop.org,m:linux-hyperv@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:linux-mips@vger.kernel.org,m:virtualization@lists.linux.dev,m:tzimmermann@suse.de,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linux.intel.com,redhat.com,gmail.com,ffwll.ch,kodeit.net,proton.me,crapouillou.net,outlook.com,broadcom.com];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[tzimmermann@suse.de,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[tzimmermann@suse.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	R_DKIM_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[proton.me:email]
X-Rspamd-Queue-Id: E0CCA5E63F0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In atomic_check, damage handling is not fully evaluated. Another
atomic_check helper could trigger a full modeset and thus invalidate
damage clips.

Allocation of the request/response buffers in appletbdrm depends on
correct damage information. Otherwise it might allocate incorrectly
sized buffers. Allocate the buffers in the driver's begin_fb_access
helper. It runs early during the commit when damage clipping has been
fully evaluated.

v2:
- allocate before drm_gem_begin_shadow_fb_access() to avoid leak on error

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
Acked-by: Aditya Garg <gargaditya08@proton.me>
---
 drivers/gpu/drm/tiny/appletbdrm.c | 53 +++++++++++++++++--------------
 1 file changed, 30 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/tiny/appletbdrm.c b/drivers/gpu/drm/tiny/appletbdrm.c
index cdd35af49892..b683dcb35b0b 100644
--- a/drivers/gpu/drm/tiny/appletbdrm.c
+++ b/drivers/gpu/drm/tiny/appletbdrm.c
@@ -315,33 +315,16 @@ static const u32 appletbdrm_primary_plane_formats[] = {
 	DRM_FORMAT_XRGB8888, /* emulated */
 };
 
-static int appletbdrm_primary_plane_helper_atomic_check(struct drm_plane *plane,
-						   struct drm_atomic_commit *state)
+static int appletbdrm_primary_plane_helper_begin_fb_access(struct drm_plane *plane,
+							   struct drm_plane_state *new_plane_state)
 {
-	struct drm_plane_state *new_plane_state = drm_atomic_get_new_plane_state(state, plane);
-	struct drm_plane_state *old_plane_state = drm_atomic_get_old_plane_state(state, plane);
-	struct drm_crtc *new_crtc = new_plane_state->crtc;
-	struct drm_crtc_state *new_crtc_state = NULL;
 	struct appletbdrm_plane_state *appletbdrm_state = to_appletbdrm_plane_state(new_plane_state);
+	size_t frames_size = 0;
 	struct drm_atomic_helper_damage_iter iter;
 	struct drm_rect damage;
-	size_t frames_size = 0;
 	size_t request_size;
-	int ret;
-
-	if (new_crtc)
-		new_crtc_state = drm_atomic_get_new_crtc_state(state, new_crtc);
 
-	ret = drm_atomic_helper_check_plane_state(new_plane_state, new_crtc_state,
-						  DRM_PLANE_NO_SCALING,
-						  DRM_PLANE_NO_SCALING,
-						  false, false);
-	if (ret)
-		return ret;
-	else if (!new_plane_state->visible)
-		return 0;
-
-	drm_atomic_helper_damage_iter_init(&iter, old_plane_state, new_plane_state);
+	drm_atomic_helper_damage_iter_init(&iter, NULL, new_plane_state);
 	drm_atomic_for_each_plane_damage(&iter, &damage) {
 		frames_size += struct_size((struct appletbdrm_frame *)0, buf, rect_size(&damage));
 	}
@@ -366,6 +349,29 @@ static int appletbdrm_primary_plane_helper_atomic_check(struct drm_plane *plane,
 	appletbdrm_state->request_size = request_size;
 	appletbdrm_state->frames_size = frames_size;
 
+	return drm_gem_begin_shadow_fb_access(plane, new_plane_state);
+}
+
+static int appletbdrm_primary_plane_helper_atomic_check(struct drm_plane *plane,
+							struct drm_atomic_commit *state)
+{
+	struct drm_plane_state *new_plane_state = drm_atomic_get_new_plane_state(state, plane);
+	struct drm_crtc *new_crtc = new_plane_state->crtc;
+	struct drm_crtc_state *new_crtc_state = NULL;
+	int ret;
+
+	if (new_crtc)
+		new_crtc_state = drm_atomic_get_new_crtc_state(state, new_crtc);
+
+	ret = drm_atomic_helper_check_plane_state(new_plane_state, new_crtc_state,
+						  DRM_PLANE_NO_SCALING,
+						  DRM_PLANE_NO_SCALING,
+						  false, false);
+	if (ret)
+		return ret;
+	else if (!new_plane_state->visible)
+		return 0;
+
 	return 0;
 }
 
@@ -468,7 +474,7 @@ static int appletbdrm_flush_damage(struct appletbdrm_device *adev,
 }
 
 static void appletbdrm_primary_plane_helper_atomic_update(struct drm_plane *plane,
-						     struct drm_atomic_commit *old_state)
+							  struct drm_atomic_commit *old_state)
 {
 	struct appletbdrm_device *adev = drm_to_adev(plane->dev);
 	struct drm_device *drm = plane->dev;
@@ -552,7 +558,8 @@ static void appletbdrm_primary_plane_destroy_state(struct drm_plane *plane,
 }
 
 static const struct drm_plane_helper_funcs appletbdrm_primary_plane_helper_funcs = {
-	DRM_GEM_SHADOW_PLANE_HELPER_FUNCS,
+	.begin_fb_access = appletbdrm_primary_plane_helper_begin_fb_access,
+	.end_fb_access = drm_gem_end_shadow_fb_access,
 	.atomic_check = appletbdrm_primary_plane_helper_atomic_check,
 	.atomic_update = appletbdrm_primary_plane_helper_atomic_update,
 	.atomic_disable = appletbdrm_primary_plane_helper_atomic_disable,
-- 
2.54.0

