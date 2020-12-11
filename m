Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8AC52D70D8
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 08:29:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59AE66EC6A;
	Fri, 11 Dec 2020 07:29:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DCA76EC6C
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Dec 2020 07:29:40 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-14-lgUNu_l4P-u8LLRXAUKLqA-1; Fri, 11 Dec 2020 02:29:37 -0500
X-MC-Unique: lgUNu_l4P-u8LLRXAUKLqA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CE6BF6D520
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Dec 2020 07:29:36 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.32.209])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 41E8B60862
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Dec 2020 07:29:36 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Dec 2020 17:29:22 +1000
Message-Id: <20201211072922.19101-12-airlied@gmail.com>
In-Reply-To: <20201211072922.19101-1-airlied@gmail.com>
References: <20201211072922.19101-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Subject: [Intel-gfx] [PATCH 11/11] drm/i915: split fb scalable checks into
 g4x and skl versions
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Dave Airlie <airlied@redhat.com>

This just cleans these up a bit.

Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_gen9_plane.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_sprite.c     | 7 +++----
 2 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_gen9_plane.c b/drivers/gpu/drm/i915/display/intel_gen9_plane.c
index d547edabb5ce..487bc0166e31 100644
--- a/drivers/gpu/drm/i915/display/intel_gen9_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_gen9_plane.c
@@ -2139,7 +2139,7 @@ static int skl_check_plane_surface(struct intel_plane_state *plane_state)
 	return 0;
 }
 
-static bool intel_fb_scalable(const struct drm_framebuffer *fb)
+static bool skl_fb_scalable(const struct drm_framebuffer *fb)
 {
 	if (!fb)
 		return false;
@@ -2172,7 +2172,7 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
 		return ret;
 
 	/* use scaler when colorkey is not required */
-	if (!plane_state->ckey.flags && intel_fb_scalable(fb)) {
+	if (!plane_state->ckey.flags && skl_fb_scalable(fb)) {
 		min_scale = 1;
 		max_scale = skl_plane_max_scale(dev_priv, fb);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index cc3bec42d04c..4cb6339d12be 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -1282,19 +1282,18 @@ g4x_plane_get_hw_state(struct intel_plane *plane,
 	return ret;
 }
 
-static bool intel_fb_scalable(const struct drm_framebuffer *fb)
+static bool g4x_fb_scalable(const struct drm_framebuffer *fb)
 {
 	if (!fb)
 		return false;
 
 	switch (fb->format->format) {
 	case DRM_FORMAT_C8:
-		return false;
 	case DRM_FORMAT_XRGB16161616F:
 	case DRM_FORMAT_ARGB16161616F:
 	case DRM_FORMAT_XBGR16161616F:
 	case DRM_FORMAT_ABGR16161616F:
-		return INTEL_GEN(to_i915(fb->dev)) >= 11;
+		return false;
 	default:
 		return true;
 	}
@@ -1371,7 +1370,7 @@ g4x_sprite_check(struct intel_crtc_state *crtc_state,
 	int max_scale = DRM_PLANE_HELPER_NO_SCALING;
 	int ret;
 
-	if (intel_fb_scalable(plane_state->hw.fb)) {
+	if (g4x_fb_scalable(plane_state->hw.fb)) {
 		if (INTEL_GEN(dev_priv) < 7) {
 			min_scale = 1;
 			max_scale = 16 << 16;
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
