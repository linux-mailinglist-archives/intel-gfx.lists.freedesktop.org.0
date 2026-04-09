Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ALslBu/g3GmKXwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 14:26:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE683EBF16
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 14:26:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F4A510E42E;
	Mon, 13 Apr 2026 12:26:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="NsNneuci";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A615810E063;
 Thu,  9 Apr 2026 17:09:12 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-03.galae.net (Postfix) with ESMTPS id 8E4634E429AD;
 Thu,  9 Apr 2026 17:09:11 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id 5B165603E4;
 Thu,  9 Apr 2026 17:09:11 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 4B362104501CC; 
 Thu,  9 Apr 2026 19:09:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1775754549; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=gLCKdJRpfKPoB5WWQAXBdqHs5x4sKwWXgZVhJIjP7RQ=;
 b=NsNneuciB3J5k/khO3wOG9JznpaYRpPkooz/Oq4DtiNephghulGNOFQz596h3I9V2Humf1
 e6PbTovsstxzMUZIwx+NkLGQBcfANB9dSd16qfZ0pM1kqH9xjb8ErmbqkiD3PJOn9+jRjm
 +8qFFiXIzE8c1NbwFZUpEHa81fGdRnZQgVRCcaYss/e71EcOB1xfBnDKqJT7dzystwCwPw
 ZuIPCtsJI0GQNPzsuj5VGyZxC8v/wbVsUlTSqVaZTcUDzi/pdUWvs+VpkiW1tvdQgb1RxZ
 lwZGrYfjNxpwEv3MLe3fmyFwboJORD5neDvsKug/g6GDuYMg4c9IJ15OpG7plQ==
From: Kory Maincent <kory.maincent@bootlin.com>
Date: Thu, 09 Apr 2026 19:08:21 +0200
Subject: [PATCH RFC 05/12] drm/i915/display: Switch to managed for crtc
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260409-feat_link_cap-v1-5-7069e8199ce2@bootlin.com>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,redhat.com,virtuousgeek.org,anholt.net,kernel.org,suse.de,linaro.org,ideasonboard.com,kwiboo.se,pengutronix.de,collabora.com,chris-wilson.co.uk];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[35];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[kory.maincent@bootlin.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:email,bootlin.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: BCE683EBF16
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The current i915 driver uses non-managed function to create crtc. It
is not an issue yet, but in order to comply with the latest DRM
requirement, convert this code to use drm and device managed helpers.

Assisted-by: Claude Code:2.1.90
Signed-off-by: Kory Maincent <kory.maincent@bootlin.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 102 ++++++++++--------------------
 1 file changed, 35 insertions(+), 67 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index b8189cd5d864a..e2f995313acf2 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -8,6 +8,7 @@
 
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_fourcc.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_plane.h>
 #include <drm/drm_print.h>
 #include <drm/drm_vblank.h>
@@ -191,41 +192,11 @@ void intel_crtc_state_reset(struct intel_crtc_state *crtc_state,
 	crtc_state->max_link_bpp_x16 = INT_MAX;
 }
 
-static struct intel_crtc *intel_crtc_alloc(void)
+static void intel_crtc_vblank_pm_qos_cleanup(struct drm_device *drm, void *data)
 {
-	struct intel_crtc_state *crtc_state;
-	struct intel_crtc *crtc;
-
-	crtc = kzalloc_obj(*crtc);
-	if (!crtc)
-		return ERR_PTR(-ENOMEM);
-
-	crtc_state = intel_crtc_state_alloc(crtc);
-	if (!crtc_state) {
-		kfree(crtc);
-		return ERR_PTR(-ENOMEM);
-	}
-
-	crtc->base.state = &crtc_state->uapi;
-	crtc->config = crtc_state;
-
-	return crtc;
-}
-
-static void intel_crtc_free(struct intel_crtc *crtc)
-{
-	intel_crtc_destroy_state(&crtc->base, crtc->base.state);
-	kfree(crtc);
-}
-
-static void intel_crtc_destroy(struct drm_crtc *_crtc)
-{
-	struct intel_crtc *crtc = to_intel_crtc(_crtc);
+	struct intel_crtc *crtc = data;
 
 	cpu_latency_qos_remove_request(&crtc->vblank_pm_qos);
-
-	drm_crtc_cleanup(&crtc->base);
-	kfree(crtc);
 }
 
 static int intel_crtc_late_register(struct drm_crtc *crtc)
@@ -236,7 +207,6 @@ static int intel_crtc_late_register(struct drm_crtc *crtc)
 
 #define INTEL_CRTC_FUNCS \
 	.set_config = drm_atomic_helper_set_config, \
-	.destroy = intel_crtc_destroy, \
 	.page_flip = drm_atomic_helper_page_flip, \
 	.atomic_duplicate_state = intel_crtc_duplicate_state, \
 	.atomic_destroy_state = intel_crtc_destroy_state, \
@@ -311,28 +281,19 @@ static const struct drm_crtc_funcs i8xx_crtc_funcs = {
 static int __intel_crtc_init(struct intel_display *display, enum pipe pipe)
 {
 	struct intel_plane *primary, *cursor;
+	struct intel_crtc_state *crtc_state;
 	const struct drm_crtc_funcs *funcs;
 	struct intel_crtc *crtc;
+	u32 plane_ids_mask = 0;
 	int sprite, ret;
 
-	crtc = intel_crtc_alloc();
-	if (IS_ERR(crtc))
-		return PTR_ERR(crtc);
-
-	crtc->pipe = pipe;
-	crtc->num_scalers = DISPLAY_RUNTIME_INFO(display)->num_scalers[pipe];
-
 	if (DISPLAY_VER(display) >= 9)
 		primary = skl_universal_plane_create(display, pipe, PLANE_1);
 	else
 		primary = intel_primary_plane_create(display, pipe);
-	if (IS_ERR(primary)) {
-		ret = PTR_ERR(primary);
-		goto fail;
-	}
-	crtc->plane_ids_mask |= BIT(primary->id);
-
-	intel_init_fifo_underrun_reporting(display, crtc, false);
+	if (IS_ERR(primary))
+		return PTR_ERR(primary);
+	plane_ids_mask |= BIT(primary->id);
 
 	for_each_sprite(display, pipe, sprite) {
 		struct intel_plane *plane;
@@ -341,19 +302,15 @@ static int __intel_crtc_init(struct intel_display *display, enum pipe pipe)
 			plane = skl_universal_plane_create(display, pipe, PLANE_2 + sprite);
 		else
 			plane = intel_sprite_plane_create(display, pipe, sprite);
-		if (IS_ERR(plane)) {
-			ret = PTR_ERR(plane);
-			goto fail;
-		}
-		crtc->plane_ids_mask |= BIT(plane->id);
+		if (IS_ERR(plane))
+			return PTR_ERR(plane);
+		plane_ids_mask |= BIT(plane->id);
 	}
 
 	cursor = intel_cursor_plane_create(display, pipe);
-	if (IS_ERR(cursor)) {
-		ret = PTR_ERR(cursor);
-		goto fail;
-	}
-	crtc->plane_ids_mask |= BIT(cursor->id);
+	if (IS_ERR(cursor))
+		return PTR_ERR(cursor);
+	plane_ids_mask |= BIT(cursor->id);
 
 	if (HAS_GMCH(display)) {
 		if (display->platform.cherryview ||
@@ -376,11 +333,23 @@ static int __intel_crtc_init(struct intel_display *display, enum pipe pipe)
 			funcs = &ilk_crtc_funcs;
 	}
 
-	ret = drm_crtc_init_with_planes(display->drm, &crtc->base,
-					&primary->base, &cursor->base,
-					funcs, "pipe %c", pipe_name(pipe));
-	if (ret)
-		goto fail;
+	crtc = drmm_crtc_alloc_with_planes(display->drm, struct intel_crtc, base,
+					   &primary->base, &cursor->base,
+					   funcs, "pipe %c", pipe_name(pipe));
+	if (IS_ERR(crtc))
+		return PTR_ERR(crtc);
+
+	crtc->pipe = pipe;
+	crtc->num_scalers = DISPLAY_RUNTIME_INFO(display)->num_scalers[pipe];
+	crtc->plane_ids_mask = plane_ids_mask;
+
+	crtc_state = intel_crtc_state_alloc(crtc);
+	if (!crtc_state)
+		return -ENOMEM;
+	crtc->base.state = &crtc_state->uapi;
+	crtc->config = crtc_state;
+
+	intel_init_fifo_underrun_reporting(display, crtc, false);
 
 	if (DISPLAY_VER(display) >= 11)
 		drm_crtc_create_scaling_filter_property(&crtc->base,
@@ -393,17 +362,16 @@ static int __intel_crtc_init(struct intel_display *display, enum pipe pipe)
 
 	cpu_latency_qos_add_request(&crtc->vblank_pm_qos, PM_QOS_DEFAULT_VALUE);
 
+	ret = drmm_add_action_or_reset(display->drm, intel_crtc_vblank_pm_qos_cleanup, crtc);
+	if (ret)
+		return ret;
+
 	drm_WARN_ON(display->drm, drm_crtc_index(&crtc->base) != crtc->pipe);
 
 	if (HAS_CASF(display) && crtc->num_scalers >= 2)
 		drm_crtc_create_sharpness_strength_property(&crtc->base);
 
 	return 0;
-
-fail:
-	intel_crtc_free(crtc);
-
-	return ret;
 }
 
 int intel_crtc_init(struct intel_display *display)

-- 
2.43.0

