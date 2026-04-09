Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4ELoOurg3GnrXgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 14:26:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2453EBED4
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 14:26:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57AFE10E421;
	Mon, 13 Apr 2026 12:26:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="DjUrLR5y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D4B410E836
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2026 17:09:16 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-03.galae.net (Postfix) with ESMTPS id 72F6C4E429AB;
 Thu,  9 Apr 2026 17:09:15 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id 3DCDD603E4;
 Thu,  9 Apr 2026 17:09:15 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 496B2104501B9; 
 Thu,  9 Apr 2026 19:09:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1775754553; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=wX7pWpmziBNvFcnTaf8fwuS1/DS6EX90GHY6UzJaV7c=;
 b=DjUrLR5y0kyp5a69sBPx7vxDI68E2p+JWQxYiCEIdcla6HbZUbQbCnuGg5PCZ+KmSzMpNU
 4SaxwgWrjgqzkivNaTqTWQrunfRupR7MlPkZq1rsyAa/GqaOLnta5kjeIkehhzZM6Zpsd6
 OGOF2N15lIYlAprXd6Qykxh67y7KS2nDRSYiIn2NwkI7E+E2PofJBs5zHiO1JhopqW6plC
 QeqraZs69QyjajhNQkDnbzB8wEtKy7/xn44CRktZdvKafiMdLMsUxWbqGDGrAq0vJbgj0s
 QR5X/f+dXNO+HGqAW8cg7RoCKAiWczknwepO7OI16ymzEg1OrH6MrvEuTGj2bQ==
From: Kory Maincent <kory.maincent@bootlin.com>
Date: Thu, 09 Apr 2026 19:08:22 +0200
Subject: [PATCH RFC 06/12] drm/i915/display: Switch to managed for plane
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260409-feat_link_cap-v1-6-7069e8199ce2@bootlin.com>
References: <20260409-feat_link_cap-v1-0-7069e8199ce2@bootlin.com>
In-Reply-To: <20260409-feat_link_cap-v1-0-7069e8199ce2@bootlin.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Dave Airlie <airlied@redhat.com>, 
 Jesse Barnes <jbarnes@virtuousgeek.org>, Eric Anholt <eric@anholt.net>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Chris Wilson <chris@chris-wilson.co.uk>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Mark Yacoub <markyacoub@google.com>, Sean Paul <seanpaul@google.com>, 
 Louis Chauvet <louis.chauvet@bootlin.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, 
 Simona Vetter <simona.vetter@ffwll.ch>, 
 Kory Maincent <kory.maincent@bootlin.com>
X-Mailer: b4 0.14-dev-d4707
X-Last-TLS-Session-Version: TLSv1.3
X-Mailman-Approved-At: Mon, 13 Apr 2026 12:26:15 +0000
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
X-Spamd-Result: default: False [1.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[91];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:airlied@redhat.com,m:jbarnes@virtuousgeek.org,m:eric@anholt.net,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:chunkuang.hu@kernel.org,m:p.zabel@pengutronix.de,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:chris@chris-wilson.co.uk,m:thomas.petazzoni@bootlin.com,m:markyacoub@google.com,m:seanpaul@google.com,m:louis.chauvet@bootlin.com,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:simona.vetter@ffwll.ch,m:kory.maincent@bootlin.com,m:jernejskrabec@gmail.com,m:matthiasbgg@gmail.c
 om,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,redhat.com,virtuousgeek.org,anholt.net,kernel.org,suse.de,linaro.org,ideasonboard.com,kwiboo.se,pengutronix.de,collabora.com,chris-wilson.co.uk];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[35];
	FORGED_SENDER(0.00)[kory.maincent@bootlin.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kory.maincent@bootlin.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,bootlin.com:dkim,bootlin.com:email,bootlin.com:mid]
X-Rspamd-Queue-Id: 9D2453EBED4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The current i915 driver uses non-managed function to create plane. It
is not an issue yet, but in order to comply with the latest DRM
requirement, convert this code to use drm and device managed helpers.

Assisted-by: Claude Code:2.1.90
Signed-off-by: Kory Maincent <kory.maincent@bootlin.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c          |  97 ++++++++---------
 drivers/gpu/drm/i915/display/intel_cursor.c        |  41 ++++---
 drivers/gpu/drm/i915/display/intel_plane.c         |  45 +-------
 drivers/gpu/drm/i915/display/intel_plane.h         |   5 +-
 drivers/gpu/drm/i915/display/intel_sprite.c        | 119 ++++++++++-----------
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 102 +++++++++---------
 6 files changed, 181 insertions(+), 228 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 9c16753a1f3ba..032c56b478dfc 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -8,6 +8,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_blend.h>
 #include <drm/drm_fourcc.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_print.h>
 
 #include "i9xx_plane.h"
@@ -882,7 +883,6 @@ static unsigned int i9xx_plane_min_alignment(struct intel_plane *plane,
 static const struct drm_plane_funcs i965_plane_funcs = {
 	.update_plane = drm_atomic_helper_update_plane,
 	.disable_plane = drm_atomic_helper_disable_plane,
-	.destroy = intel_plane_destroy,
 	.atomic_duplicate_state = intel_plane_duplicate_state,
 	.atomic_destroy_state = intel_plane_destroy_state,
 	.format_mod_supported = i965_plane_format_mod_supported,
@@ -892,7 +892,6 @@ static const struct drm_plane_funcs i965_plane_funcs = {
 static const struct drm_plane_funcs i8xx_plane_funcs = {
 	.update_plane = drm_atomic_helper_update_plane,
 	.disable_plane = drm_atomic_helper_disable_plane,
-	.destroy = intel_plane_destroy,
 	.atomic_duplicate_state = intel_plane_duplicate_state,
 	.atomic_destroy_state = intel_plane_destroy_state,
 	.format_mod_supported = i8xx_plane_format_mod_supported,
@@ -923,32 +922,15 @@ static void i9xx_disable_tiling(struct intel_plane *plane)
 struct intel_plane *
 intel_primary_plane_create(struct intel_display *display, enum pipe pipe)
 {
+	struct intel_plane_state *plane_state;
 	struct intel_plane *plane;
 	const struct drm_plane_funcs *plane_funcs;
 	unsigned int supported_rotations;
 	const u64 *modifiers;
 	const u32 *formats;
 	int num_formats;
-	int ret, zpos;
-
-	plane = intel_plane_alloc();
-	if (IS_ERR(plane))
-		return plane;
-
-	plane->pipe = pipe;
-	/*
-	 * On gen2/3 only plane A can do FBC, but the panel fitter and LVDS
-	 * port is hooked to pipe B. Hence we want plane A feeding pipe B.
-	 */
-	if (HAS_FBC(display) && DISPLAY_VER(display) < 4 &&
-	    INTEL_NUM_PIPES(display) == 2)
-		plane->i9xx_plane = (enum i9xx_plane_id) !pipe;
-	else
-		plane->i9xx_plane = (enum i9xx_plane_id) pipe;
-	plane->id = PLANE_PRIMARY;
-	plane->frontbuffer_bit = INTEL_FRONTBUFFER(pipe, plane->id);
-
-	intel_fbc_add_plane(i9xx_plane_fbc(display, plane->i9xx_plane), plane);
+	enum i9xx_plane_id i9xx_plane;
+	int zpos;
 
 	if (display->platform.valleyview || display->platform.cherryview) {
 		formats = vlv_primary_formats;
@@ -984,6 +966,46 @@ intel_primary_plane_create(struct intel_display *display, enum pipe pipe)
 	else
 		plane_funcs = &i8xx_plane_funcs;
 
+	/*
+	 * On gen2/3 only plane A can do FBC, but the panel fitter and LVDS
+	 * port is hooked to pipe B. Hence we want plane A feeding pipe B.
+	 */
+	if (HAS_FBC(display) && DISPLAY_VER(display) < 4 &&
+	    INTEL_NUM_PIPES(display) == 2)
+		i9xx_plane = (enum i9xx_plane_id)!pipe;
+	else
+		i9xx_plane = (enum i9xx_plane_id)pipe;
+
+	modifiers = intel_fb_plane_get_modifiers(display, INTEL_PLANE_CAP_TILING_X);
+
+	if (DISPLAY_VER(display) >= 5 || display->platform.g4x)
+		plane = drmm_universal_plane_alloc(display->drm, struct intel_plane, base,
+						   0, plane_funcs,
+						   formats, num_formats,
+						   modifiers,
+						   DRM_PLANE_TYPE_PRIMARY,
+						   "primary %c", pipe_name(pipe));
+	else
+		plane = drmm_universal_plane_alloc(display->drm, struct intel_plane, base,
+						   0, plane_funcs,
+						   formats, num_formats,
+						   modifiers,
+						   DRM_PLANE_TYPE_PRIMARY,
+						   "plane %c",
+						   plane_name(i9xx_plane));
+
+	kfree(modifiers);
+
+	if (IS_ERR(plane))
+		return plane;
+
+	plane->pipe = pipe;
+	plane->i9xx_plane = i9xx_plane;
+	plane->id = PLANE_PRIMARY;
+	plane->frontbuffer_bit = INTEL_FRONTBUFFER(pipe, plane->id);
+
+	intel_fbc_add_plane(i9xx_plane_fbc(display, plane->i9xx_plane), plane);
+
 	if (display->platform.valleyview || display->platform.cherryview)
 		plane->min_cdclk = vlv_plane_min_cdclk;
 	else if (display->platform.broadwell || display->platform.haswell)
@@ -1069,28 +1091,12 @@ intel_primary_plane_create(struct intel_display *display, enum pipe pipe)
 
 	plane->disable_tiling = i9xx_disable_tiling;
 
-	modifiers = intel_fb_plane_get_modifiers(display, INTEL_PLANE_CAP_TILING_X);
-
-	if (DISPLAY_VER(display) >= 5 || display->platform.g4x)
-		ret = drm_universal_plane_init(display->drm, &plane->base,
-					       0, plane_funcs,
-					       formats, num_formats,
-					       modifiers,
-					       DRM_PLANE_TYPE_PRIMARY,
-					       "primary %c", pipe_name(pipe));
-	else
-		ret = drm_universal_plane_init(display->drm, &plane->base,
-					       0, plane_funcs,
-					       formats, num_formats,
-					       modifiers,
-					       DRM_PLANE_TYPE_PRIMARY,
-					       "plane %c",
-					       plane_name(plane->i9xx_plane));
-
-	kfree(modifiers);
+	plane_state = kzalloc_obj(*plane_state);
+	if (!plane_state)
+		return ERR_PTR(-ENOMEM);
 
-	if (ret)
-		goto fail;
+	intel_plane_state_reset(plane_state, plane);
+	plane->base.state = &plane_state->uapi;
 
 	if (display->platform.cherryview && pipe == PIPE_B) {
 		supported_rotations =
@@ -1114,11 +1120,6 @@ intel_primary_plane_create(struct intel_display *display, enum pipe pipe)
 	intel_plane_helper_add(plane);
 
 	return plane;
-
-fail:
-	intel_plane_free(plane);
-
-	return ERR_PTR(ret);
 }
 
 static int i9xx_format_to_fourcc(int format)
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 18d1014de3613..2493baf25fbe2 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -9,6 +9,7 @@
 #include <drm/drm_blend.h>
 #include <drm/drm_damage_helper.h>
 #include <drm/drm_fourcc.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_print.h>
 #include <drm/drm_vblank.h>
 
@@ -971,7 +972,6 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 static const struct drm_plane_funcs intel_cursor_plane_funcs = {
 	.update_plane = intel_legacy_cursor_update,
 	.disable_plane = drm_atomic_helper_disable_plane,
-	.destroy = intel_plane_destroy,
 	.atomic_duplicate_state = intel_plane_duplicate_state,
 	.atomic_destroy_state = intel_plane_destroy_state,
 	.format_mod_supported = intel_cursor_format_mod_supported,
@@ -1004,11 +1004,23 @@ struct intel_plane *
 intel_cursor_plane_create(struct intel_display *display,
 			  enum pipe pipe)
 {
+	struct intel_plane_state *plane_state;
 	struct intel_plane *cursor;
-	int ret, zpos;
+	int zpos;
 	u64 *modifiers;
 
-	cursor = intel_plane_alloc();
+	modifiers = intel_fb_plane_get_modifiers(display, INTEL_PLANE_CAP_NONE);
+
+	cursor = drmm_universal_plane_alloc(display->drm, struct intel_plane, base,
+					    0, &intel_cursor_plane_funcs,
+					    intel_cursor_formats,
+					    ARRAY_SIZE(intel_cursor_formats),
+					    modifiers,
+					    DRM_PLANE_TYPE_CURSOR,
+					    "cursor %c", pipe_name(pipe));
+
+	kfree(modifiers);
+
 	if (IS_ERR(cursor))
 		return cursor;
 
@@ -1056,20 +1068,12 @@ intel_cursor_plane_create(struct intel_display *display,
 	if (display->platform.i845g || display->platform.i865g || HAS_CUR_FBC(display))
 		cursor->cursor.size = ~0;
 
-	modifiers = intel_fb_plane_get_modifiers(display, INTEL_PLANE_CAP_NONE);
-
-	ret = drm_universal_plane_init(display->drm, &cursor->base,
-				       0, &intel_cursor_plane_funcs,
-				       intel_cursor_formats,
-				       ARRAY_SIZE(intel_cursor_formats),
-				       modifiers,
-				       DRM_PLANE_TYPE_CURSOR,
-				       "cursor %c", pipe_name(pipe));
-
-	kfree(modifiers);
+	plane_state = kzalloc_obj(*plane_state);
+	if (!plane_state)
+		return ERR_PTR(-ENOMEM);
 
-	if (ret)
-		goto fail;
+	intel_plane_state_reset(plane_state, cursor);
+	cursor->base.state = &plane_state->uapi;
 
 	if (DISPLAY_VER(display) >= 4)
 		drm_plane_create_rotation_property(&cursor->base,
@@ -1088,11 +1092,6 @@ intel_cursor_plane_create(struct intel_display *display,
 	intel_plane_helper_add(cursor);
 
 	return cursor;
-
-fail:
-	intel_plane_free(cursor);
-
-	return ERR_PTR(ret);
 }
 
 void intel_cursor_mode_config_init(struct intel_display *display)
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 5390ceb21ca42..05c2dc0902f5c 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -62,8 +62,8 @@
 #include "skl_universal_plane.h"
 #include "skl_watermark.h"
 
-static void intel_plane_state_reset(struct intel_plane_state *plane_state,
-				    struct intel_plane *plane)
+void intel_plane_state_reset(struct intel_plane_state *plane_state,
+			     struct intel_plane *plane)
 {
 	memset(plane_state, 0, sizeof(*plane_state));
 
@@ -72,47 +72,6 @@ static void intel_plane_state_reset(struct intel_plane_state *plane_state,
 	plane_state->scaler_id = -1;
 }
 
-struct intel_plane *intel_plane_alloc(void)
-{
-	struct intel_plane_state *plane_state;
-	struct intel_plane *plane;
-
-	plane = kzalloc_obj(*plane);
-	if (!plane)
-		return ERR_PTR(-ENOMEM);
-
-	plane_state = kzalloc_obj(*plane_state);
-	if (!plane_state) {
-		kfree(plane);
-		return ERR_PTR(-ENOMEM);
-	}
-
-	intel_plane_state_reset(plane_state, plane);
-
-	plane->base.state = &plane_state->uapi;
-
-	return plane;
-}
-
-void intel_plane_free(struct intel_plane *plane)
-{
-	intel_plane_destroy_state(&plane->base, plane->base.state);
-	kfree(plane);
-}
-
-/**
- * intel_plane_destroy - destroy a plane
- * @plane: plane to destroy
- *
- * Common destruction function for all types of planes (primary, cursor,
- * sprite).
- */
-void intel_plane_destroy(struct drm_plane *plane)
-{
-	drm_plane_cleanup(plane);
-	kfree(to_intel_plane(plane));
-}
-
 /**
  * intel_plane_duplicate_state - duplicate plane state
  * @plane: drm plane
diff --git a/drivers/gpu/drm/i915/display/intel_plane.h b/drivers/gpu/drm/i915/display/intel_plane.h
index 5a8f2f3baab5f..56221619a2b29 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_plane.h
@@ -55,9 +55,8 @@ void intel_plane_update_arm(struct intel_dsb *dsb,
 void intel_plane_disable_arm(struct intel_dsb *dsb,
 			     struct intel_plane *plane,
 			     const struct intel_crtc_state *crtc_state);
-struct intel_plane *intel_plane_alloc(void);
-void intel_plane_free(struct intel_plane *plane);
-void intel_plane_destroy(struct drm_plane *plane);
+void intel_plane_state_reset(struct intel_plane_state *plane_state,
+			     struct intel_plane *plane);
 struct drm_plane_state *intel_plane_duplicate_state(struct drm_plane *plane);
 void intel_plane_destroy_state(struct drm_plane *plane,
 			       struct drm_plane_state *state);
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 6a65f92e8a031..f285d15734ee5 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -36,6 +36,7 @@
 #include <drm/drm_blend.h>
 #include <drm/drm_color_mgmt.h>
 #include <drm/drm_fourcc.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_print.h>
 #include <drm/drm_rect.h>
 
@@ -1563,7 +1564,6 @@ static bool vlv_sprite_format_mod_supported(struct drm_plane *_plane,
 static const struct drm_plane_funcs g4x_sprite_funcs = {
 	.update_plane = drm_atomic_helper_update_plane,
 	.disable_plane = drm_atomic_helper_disable_plane,
-	.destroy = intel_plane_destroy,
 	.atomic_duplicate_state = intel_plane_duplicate_state,
 	.atomic_destroy_state = intel_plane_destroy_state,
 	.format_mod_supported = g4x_sprite_format_mod_supported,
@@ -1573,7 +1573,6 @@ static const struct drm_plane_funcs g4x_sprite_funcs = {
 static const struct drm_plane_funcs snb_sprite_funcs = {
 	.update_plane = drm_atomic_helper_update_plane,
 	.disable_plane = drm_atomic_helper_disable_plane,
-	.destroy = intel_plane_destroy,
 	.atomic_duplicate_state = intel_plane_duplicate_state,
 	.atomic_destroy_state = intel_plane_destroy_state,
 	.format_mod_supported = snb_sprite_format_mod_supported,
@@ -1583,7 +1582,6 @@ static const struct drm_plane_funcs snb_sprite_funcs = {
 static const struct drm_plane_funcs vlv_sprite_funcs = {
 	.update_plane = drm_atomic_helper_update_plane,
 	.disable_plane = drm_atomic_helper_disable_plane,
-	.destroy = intel_plane_destroy,
 	.atomic_duplicate_state = intel_plane_duplicate_state,
 	.atomic_destroy_state = intel_plane_destroy_state,
 	.format_mod_supported = vlv_sprite_format_mod_supported,
@@ -1594,18 +1592,69 @@ struct intel_plane *
 intel_sprite_plane_create(struct intel_display *display,
 			  enum pipe pipe, int sprite)
 {
+	struct intel_plane_state *plane_state;
 	struct intel_plane *plane;
 	const struct drm_plane_funcs *plane_funcs;
 	unsigned int supported_rotations;
 	const u64 *modifiers;
 	const u32 *formats;
 	int num_formats;
-	int ret, zpos;
+	int zpos;
+
+	if (display->platform.valleyview || display->platform.cherryview) {
+		if (display->platform.cherryview && pipe == PIPE_B) {
+			formats = chv_pipe_b_sprite_formats;
+			num_formats = ARRAY_SIZE(chv_pipe_b_sprite_formats);
+		} else {
+			formats = vlv_sprite_formats;
+			num_formats = ARRAY_SIZE(vlv_sprite_formats);
+		}
+
+		plane_funcs = &vlv_sprite_funcs;
+	} else if (DISPLAY_VER(display) >= 7) {
+		formats = snb_sprite_formats;
+		num_formats = ARRAY_SIZE(snb_sprite_formats);
+
+		plane_funcs = &snb_sprite_funcs;
+	} else {
+		if (display->platform.sandybridge) {
+			formats = snb_sprite_formats;
+			num_formats = ARRAY_SIZE(snb_sprite_formats);
+
+			plane_funcs = &snb_sprite_funcs;
+		} else {
+			formats = g4x_sprite_formats;
+			num_formats = ARRAY_SIZE(g4x_sprite_formats);
+
+			plane_funcs = &g4x_sprite_funcs;
+		}
+	}
+
+	if (display->platform.cherryview && pipe == PIPE_B) {
+		supported_rotations =
+			DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180 |
+			DRM_MODE_REFLECT_X;
+	} else {
+		supported_rotations =
+			DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180;
+	}
+
+	modifiers = intel_fb_plane_get_modifiers(display, INTEL_PLANE_CAP_TILING_X);
+
+	plane = drmm_universal_plane_alloc(display->drm, struct intel_plane, base,
+					   0, plane_funcs,
+					   formats, num_formats, modifiers,
+					   DRM_PLANE_TYPE_OVERLAY,
+					   "sprite %c", sprite_name(display, pipe, sprite));
+	kfree(modifiers);
 
-	plane = intel_plane_alloc();
 	if (IS_ERR(plane))
 		return plane;
 
+	plane->pipe = pipe;
+	plane->id = PLANE_SPRITE0 + sprite;
+	plane->frontbuffer_bit = INTEL_FRONTBUFFER(pipe, plane->id);
+
 	if (display->platform.valleyview || display->platform.cherryview) {
 		plane->update_noarm = vlv_sprite_update_noarm;
 		plane->update_arm = vlv_sprite_update_arm;
@@ -1621,16 +1670,6 @@ intel_sprite_plane_create(struct intel_display *display,
 		/* FIXME undocumented for VLV/CHV so not sure what's actually needed */
 		if (intel_scanout_needs_vtd_wa(display))
 			plane->vtd_guard = 128;
-
-		if (display->platform.cherryview && pipe == PIPE_B) {
-			formats = chv_pipe_b_sprite_formats;
-			num_formats = ARRAY_SIZE(chv_pipe_b_sprite_formats);
-		} else {
-			formats = vlv_sprite_formats;
-			num_formats = ARRAY_SIZE(vlv_sprite_formats);
-		}
-
-		plane_funcs = &vlv_sprite_funcs;
 	} else if (DISPLAY_VER(display) >= 7) {
 		plane->update_noarm = ivb_sprite_update_noarm;
 		plane->update_arm = ivb_sprite_update_arm;
@@ -1652,11 +1691,6 @@ intel_sprite_plane_create(struct intel_display *display,
 
 		if (intel_scanout_needs_vtd_wa(display))
 			plane->vtd_guard = 64;
-
-		formats = snb_sprite_formats;
-		num_formats = ARRAY_SIZE(snb_sprite_formats);
-
-		plane_funcs = &snb_sprite_funcs;
 	} else {
 		plane->update_noarm = g4x_sprite_update_noarm;
 		plane->update_arm = g4x_sprite_update_arm;
@@ -1671,44 +1705,14 @@ intel_sprite_plane_create(struct intel_display *display,
 
 		if (intel_scanout_needs_vtd_wa(display))
 			plane->vtd_guard = 64;
-
-		if (display->platform.sandybridge) {
-			formats = snb_sprite_formats;
-			num_formats = ARRAY_SIZE(snb_sprite_formats);
-
-			plane_funcs = &snb_sprite_funcs;
-		} else {
-			formats = g4x_sprite_formats;
-			num_formats = ARRAY_SIZE(g4x_sprite_formats);
-
-			plane_funcs = &g4x_sprite_funcs;
-		}
 	}
 
-	if (display->platform.cherryview && pipe == PIPE_B) {
-		supported_rotations =
-			DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180 |
-			DRM_MODE_REFLECT_X;
-	} else {
-		supported_rotations =
-			DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180;
-	}
+	plane_state = kzalloc_obj(*plane_state);
+	if (!plane_state)
+		return ERR_PTR(-ENOMEM);
 
-	plane->pipe = pipe;
-	plane->id = PLANE_SPRITE0 + sprite;
-	plane->frontbuffer_bit = INTEL_FRONTBUFFER(pipe, plane->id);
-
-	modifiers = intel_fb_plane_get_modifiers(display, INTEL_PLANE_CAP_TILING_X);
-
-	ret = drm_universal_plane_init(display->drm, &plane->base,
-				       0, plane_funcs,
-				       formats, num_formats, modifiers,
-				       DRM_PLANE_TYPE_OVERLAY,
-				       "sprite %c", sprite_name(display, pipe, sprite));
-	kfree(modifiers);
-
-	if (ret)
-		goto fail;
+	intel_plane_state_reset(plane_state, plane);
+	plane->base.state = &plane_state->uapi;
 
 	drm_plane_create_rotation_property(&plane->base,
 					   DRM_MODE_ROTATE_0,
@@ -1728,9 +1732,4 @@ intel_sprite_plane_create(struct intel_display *display,
 	intel_plane_helper_add(plane);
 
 	return plane;
-
-fail:
-	intel_plane_free(plane);
-
-	return ERR_PTR(ret);
 }
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 11ba42c67e3ed..6d6b108bf7e46 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -7,6 +7,7 @@
 #include <drm/drm_blend.h>
 #include <drm/drm_damage_helper.h>
 #include <drm/drm_fourcc.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_print.h>
 
 #include "intel_bo.h"
@@ -2690,7 +2691,6 @@ static bool tgl_plane_format_mod_supported(struct drm_plane *_plane,
 static const struct drm_plane_funcs skl_plane_funcs = {
 	.update_plane = drm_atomic_helper_update_plane,
 	.disable_plane = drm_atomic_helper_disable_plane,
-	.destroy = intel_plane_destroy,
 	.atomic_duplicate_state = intel_plane_duplicate_state,
 	.atomic_destroy_state = intel_plane_destroy_state,
 	.format_mod_supported = skl_plane_format_mod_supported,
@@ -2700,7 +2700,6 @@ static const struct drm_plane_funcs skl_plane_funcs = {
 static const struct drm_plane_funcs icl_plane_funcs = {
 	.update_plane = drm_atomic_helper_update_plane,
 	.disable_plane = drm_atomic_helper_disable_plane,
-	.destroy = intel_plane_destroy,
 	.atomic_duplicate_state = intel_plane_duplicate_state,
 	.atomic_destroy_state = intel_plane_destroy_state,
 	.format_mod_supported = icl_plane_format_mod_supported,
@@ -2710,7 +2709,6 @@ static const struct drm_plane_funcs icl_plane_funcs = {
 static const struct drm_plane_funcs tgl_plane_funcs = {
 	.update_plane = drm_atomic_helper_update_plane,
 	.disable_plane = drm_atomic_helper_disable_plane,
-	.destroy = intel_plane_destroy,
 	.atomic_duplicate_state = intel_plane_duplicate_state,
 	.atomic_destroy_state = intel_plane_destroy_state,
 	.format_mod_supported = tgl_plane_format_mod_supported,
@@ -2850,6 +2848,7 @@ struct intel_plane *
 skl_universal_plane_create(struct intel_display *display,
 			   enum pipe pipe, enum plane_id plane_id)
 {
+	struct intel_plane_state *plane_state;
 	const struct drm_plane_funcs *plane_funcs;
 	struct intel_plane *plane;
 	enum drm_plane_type plane_type;
@@ -2858,10 +2857,50 @@ skl_universal_plane_create(struct intel_display *display,
 	const u64 *modifiers;
 	const u32 *formats;
 	int num_formats;
-	int ret;
 	u8 caps;
 
-	plane = intel_plane_alloc();
+	if (DISPLAY_VER(display) >= 11)
+		formats = icl_get_plane_formats(display, pipe,
+						plane_id, &num_formats);
+	else if (DISPLAY_VER(display) >= 10)
+		formats = glk_get_plane_formats(display, pipe,
+						plane_id, &num_formats);
+	else
+		formats = skl_get_plane_formats(display, pipe,
+						plane_id, &num_formats);
+
+	if (DISPLAY_VER(display) >= 12)
+		plane_funcs = &tgl_plane_funcs;
+	else if (DISPLAY_VER(display) == 11)
+		plane_funcs = &icl_plane_funcs;
+	else
+		plane_funcs = &skl_plane_funcs;
+
+	if (plane_id == PLANE_1)
+		plane_type = DRM_PLANE_TYPE_PRIMARY;
+	else
+		plane_type = DRM_PLANE_TYPE_OVERLAY;
+
+	if (DISPLAY_VER(display) >= 12)
+		caps = tgl_plane_caps(display, pipe, plane_id);
+	else if (DISPLAY_VER(display) == 11)
+		caps = icl_plane_caps(display, pipe, plane_id);
+	else if (DISPLAY_VER(display) == 10)
+		caps = glk_plane_caps(display, pipe, plane_id);
+	else
+		caps = skl_plane_caps(display, pipe, plane_id);
+
+	modifiers = intel_fb_plane_get_modifiers(display, caps);
+
+	plane = drmm_universal_plane_alloc(display->drm, struct intel_plane, base,
+					   0, plane_funcs,
+					   formats, num_formats, modifiers,
+					   plane_type,
+					   "plane %d%c", plane_id + 1,
+					   pipe_name(pipe));
+
+	kfree(modifiers);
+
 	if (IS_ERR(plane))
 		return plane;
 
@@ -2940,50 +2979,12 @@ skl_universal_plane_create(struct intel_display *display,
 			plane->can_async_flip = skl_plane_can_async_flip;
 	}
 
-	if (DISPLAY_VER(display) >= 11)
-		formats = icl_get_plane_formats(display, pipe,
-						plane_id, &num_formats);
-	else if (DISPLAY_VER(display) >= 10)
-		formats = glk_get_plane_formats(display, pipe,
-						plane_id, &num_formats);
-	else
-		formats = skl_get_plane_formats(display, pipe,
-						plane_id, &num_formats);
+	plane_state = kzalloc_obj(*plane_state);
+	if (!plane_state)
+		return ERR_PTR(-ENOMEM);
 
-	if (DISPLAY_VER(display) >= 12)
-		plane_funcs = &tgl_plane_funcs;
-	else if (DISPLAY_VER(display) == 11)
-		plane_funcs = &icl_plane_funcs;
-	else
-		plane_funcs = &skl_plane_funcs;
-
-	if (plane_id == PLANE_1)
-		plane_type = DRM_PLANE_TYPE_PRIMARY;
-	else
-		plane_type = DRM_PLANE_TYPE_OVERLAY;
-
-	if (DISPLAY_VER(display) >= 12)
-		caps = tgl_plane_caps(display, pipe, plane_id);
-	else if (DISPLAY_VER(display) == 11)
-		caps = icl_plane_caps(display, pipe, plane_id);
-	else if (DISPLAY_VER(display) == 10)
-		caps = glk_plane_caps(display, pipe, plane_id);
-	else
-		caps = skl_plane_caps(display, pipe, plane_id);
-
-	modifiers = intel_fb_plane_get_modifiers(display, caps);
-
-	ret = drm_universal_plane_init(display->drm, &plane->base,
-				       0, plane_funcs,
-				       formats, num_formats, modifiers,
-				       plane_type,
-				       "plane %d%c", plane_id + 1,
-				       pipe_name(pipe));
-
-	kfree(modifiers);
-
-	if (ret)
-		goto fail;
+	intel_plane_state_reset(plane_state, plane);
+	plane->base.state = &plane_state->uapi;
 
 	if (DISPLAY_VER(display) >= 13)
 		supported_rotations = DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180;
@@ -3033,11 +3034,6 @@ skl_universal_plane_create(struct intel_display *display,
 	intel_plane_helper_add(plane);
 
 	return plane;
-
-fail:
-	intel_plane_free(plane);
-
-	return ERR_PTR(ret);
 }
 
 void

-- 
2.43.0

