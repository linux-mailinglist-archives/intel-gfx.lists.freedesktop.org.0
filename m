Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC95E3DB674
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 11:53:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A76DD6F415;
	Fri, 30 Jul 2021 09:53:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06E2B6F414
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Jul 2021 09:53:01 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id m19so5608408wms.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Jul 2021 02:53:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9hNncW7kDG+JwLCE1KCQedAYc2ZPJ4lclsnnOfdg41I=;
 b=UctVT09GV9nZEShUW3V0PhCXyUvym3tCY93hnp5XDrt4guel4mn2Vp9zQ9AwOnEc8m
 TVGDH/zTexX6Gm1q+uIj9nV0fx0bjatv4csXE8lWSdyqQD/vi1RigBAfV7jnZktfbD3D
 RZLp2D5hbgsq5zhPDT2whVG2isnx1C2JYLUk4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9hNncW7kDG+JwLCE1KCQedAYc2ZPJ4lclsnnOfdg41I=;
 b=b9K63hpRoPi1fl4S1fLtLjACJT06quatuQW3HqoivJTpGXXWvZzEk+WGpyV51Mfz10
 1GmA99YcKXG4ZojZpERlx7ryxZRfjZUwJR6+wUtzq298NfwvjDwYfmEJ/QT3St+0+Us+
 phJAzj0969Ht1/7H0y0vGkIerDdFoKj6CwsRLFnKKHLp+NktDktv8QwSles2DVr4kDw5
 vwmJfO6J9Yoyva9RnN8aZ1CFdgXkjcTxzKx21qBbl5WztlNETd567ABOj/BHoB6xyMNC
 jNANywUajdebX1mQMH+OD0eJHYVgwSomxVOIcegtP1zrtlRkqn7i/u1No9u9bjOhKviT
 NtPg==
X-Gm-Message-State: AOAM530oWUQX8hgk9kloSvkDcR+/V/yr92UeeUkqslALFHPu815N+3Yq
 VTladgPwdT8Vz1Vll+jLiIWBcQ==
X-Google-Smtp-Source: ABdhPJwKCzXRXyUtsjFGAFmBaOGrBPP3aXytLz9XUEANZGFwOS/xz4Xp0PLXARFm4bSqEml45F+yUw==
X-Received: by 2002:a05:600c:4308:: with SMTP id
 p8mr2156734wme.45.1627638779376; 
 Fri, 30 Jul 2021 02:52:59 -0700 (PDT)
Received: from wespe.ffwll.local ([2a02:168:57f4:0:14bf:8268:f662:5b91])
 by smtp.gmail.com with ESMTPSA id z6sm1125529wmp.1.2021.07.30.02.52.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Jul 2021 02:52:58 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 30 Jul 2021 11:52:51 +0200
Message-Id: <20210730095251.4343-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm: Fix oops in damage self-tests by mocking
 damage property
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I've added a new check to make sure that drivers which insepct the
damage property have it set up correctly, but somehow missed that this
borke the damage selftest in the CI result noise.

Fix it up by mocking enough of drm_device and drm_plane so we can call
drm_plane_enable_fb_damage_clips() to make the new check happy.

Since there's a lot of duplicated mock code already copy-pasted into
each test I've also refactored this a bit to trim it down.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Fixes: c7fcbf251397 ("drm/plane: check that fb_damage is set up when used")
Cc: José Roberto de Souza <jose.souza@intel.com> (v1)
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Hans de Goede <hdegoede@redhat.com>
Cc: Daniel Vetter <daniel.vetter@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
---
 .../drm/selftests/test-drm_damage_helper.c    | 287 +++++-------------
 1 file changed, 71 insertions(+), 216 deletions(-)

diff --git a/drivers/gpu/drm/selftests/test-drm_damage_helper.c b/drivers/gpu/drm/selftests/test-drm_damage_helper.c
index 9d2bcdf8bc29..1b585c13e042 100644
--- a/drivers/gpu/drm/selftests/test-drm_damage_helper.c
+++ b/drivers/gpu/drm/selftests/test-drm_damage_helper.c
@@ -6,9 +6,37 @@
 #define pr_fmt(fmt) "drm_damage_helper: " fmt
 
 #include <drm/drm_damage_helper.h>
+#include <drm/drm_plane.h>
+#include <drm/drm_drv.h>
 
 #include "test-drm_modeset_common.h"
 
+struct drm_driver mock_driver;
+struct drm_device mock_device;
+struct drm_object_properties mock_obj_props;
+struct drm_plane mock_plane;
+struct drm_property mock_prop;
+
+static void mock_setup(struct drm_plane_state *state)
+{
+	static bool setup_done = false;
+
+	state->plane = &mock_plane;
+
+	if (setup_done)
+		return;
+
+	/* just enough so that drm_plane_enable_fb_damage_clips() works */
+	mock_device.driver = &mock_driver;
+	mock_device.mode_config.prop_fb_damage_clips = &mock_prop;
+	mock_plane.dev = &mock_device;
+	mock_plane.base.properties = &mock_obj_props;
+	mock_prop.base.id = 1; /* 0 is an invalid id */
+	mock_prop.dev = &mock_device;
+
+	drm_plane_enable_fb_damage_clips(&mock_plane);
+}
+
 static void set_plane_src(struct drm_plane_state *state, int x1, int y1, int x2,
 			  int y2)
 {
@@ -70,23 +98,29 @@ static bool check_damage_clip(struct drm_plane_state *state, struct drm_rect *r,
 	return true;
 }
 
+const struct drm_framebuffer fb = {
+	.width = 2048,
+	.height = 2048
+};
+
+/* common mocked structs many tests need */
+#define MOCK_VARIABLES() \
+	struct drm_plane_state old_state; \
+	struct drm_plane_state state = { \
+		.crtc = ZERO_SIZE_PTR, \
+		.fb = (struct drm_framebuffer *) &fb, \
+		.visible = true, \
+	}; \
+	mock_setup(&old_state); \
+	mock_setup(&state);
+
 int igt_damage_iter_no_damage(void *ignored)
 {
 	struct drm_atomic_helper_damage_iter iter;
-	struct drm_plane_state old_state;
 	struct drm_rect clip;
 	uint32_t num_hits = 0;
 
-	struct drm_framebuffer fb = {
-		.width = 2048,
-		.height = 2048
-	};
-
-	struct drm_plane_state state = {
-		.crtc = ZERO_SIZE_PTR,
-		.fb = &fb,
-		.visible = true,
-	};
+	MOCK_VARIABLES();
 
 	/* Plane src same as fb size. */
 	set_plane_src(&old_state, 0, 0, fb.width << 16, fb.height << 16);
@@ -104,20 +138,10 @@ int igt_damage_iter_no_damage(void *ignored)
 int igt_damage_iter_no_damage_fractional_src(void *ignored)
 {
 	struct drm_atomic_helper_damage_iter iter;
-	struct drm_plane_state old_state;
 	struct drm_rect clip;
 	uint32_t num_hits = 0;
 
-	struct drm_framebuffer fb = {
-		.width = 2048,
-		.height = 2048
-	};
-
-	struct drm_plane_state state = {
-		.crtc = ZERO_SIZE_PTR,
-		.fb = &fb,
-		.visible = true,
-	};
+	MOCK_VARIABLES();
 
 	/* Plane src has fractional part. */
 	set_plane_src(&old_state, 0x3fffe, 0x3fffe,
@@ -137,20 +161,10 @@ int igt_damage_iter_no_damage_fractional_src(void *ignored)
 int igt_damage_iter_no_damage_src_moved(void *ignored)
 {
 	struct drm_atomic_helper_damage_iter iter;
-	struct drm_plane_state old_state;
 	struct drm_rect clip;
 	uint32_t num_hits = 0;
 
-	struct drm_framebuffer fb = {
-		.width = 2048,
-		.height = 2048
-	};
-
-	struct drm_plane_state state = {
-		.crtc = ZERO_SIZE_PTR,
-		.fb = &fb,
-		.visible = true,
-	};
+	MOCK_VARIABLES();
 
 	/* Plane src moved since old plane state. */
 	set_plane_src(&old_state, 0, 0, 1024 << 16, 768 << 16);
@@ -169,20 +183,10 @@ int igt_damage_iter_no_damage_src_moved(void *ignored)
 int igt_damage_iter_no_damage_fractional_src_moved(void *ignored)
 {
 	struct drm_atomic_helper_damage_iter iter;
-	struct drm_plane_state old_state;
 	struct drm_rect clip;
 	uint32_t num_hits = 0;
 
-	struct drm_framebuffer fb = {
-		.width = 2048,
-		.height = 2048
-	};
-
-	struct drm_plane_state state = {
-		.crtc = ZERO_SIZE_PTR,
-		.fb = &fb,
-		.visible = true,
-	};
+	MOCK_VARIABLES();
 
 	/* Plane src has fractional part and it moved since old plane state. */
 	set_plane_src(&old_state, 0x3fffe, 0x3fffe,
@@ -202,20 +206,14 @@ int igt_damage_iter_no_damage_fractional_src_moved(void *ignored)
 int igt_damage_iter_no_damage_not_visible(void *ignored)
 {
 	struct drm_atomic_helper_damage_iter iter;
-	struct drm_plane_state old_state;
 	struct drm_rect clip;
 	uint32_t num_hits = 0;
 
-	struct drm_framebuffer fb = {
-		.width = 2048,
-		.height = 2048
-	};
+	MOCK_VARIABLES();
 
-	struct drm_plane_state state = {
-		.crtc = ZERO_SIZE_PTR,
-		.fb = &fb,
-		.visible = false,
-	};
+	state.visible = false;
+
+	mock_setup(&old_state);
 
 	set_plane_src(&old_state, 0, 0, 1024 << 16, 768 << 16);
 	set_plane_src(&state, 0, 0, 1024 << 16, 768 << 16);
@@ -231,19 +229,12 @@ int igt_damage_iter_no_damage_not_visible(void *ignored)
 int igt_damage_iter_no_damage_no_crtc(void *ignored)
 {
 	struct drm_atomic_helper_damage_iter iter;
-	struct drm_plane_state old_state;
 	struct drm_rect clip;
 	uint32_t num_hits = 0;
 
-	struct drm_framebuffer fb = {
-		.width = 2048,
-		.height = 2048
-	};
+	MOCK_VARIABLES();
 
-	struct drm_plane_state state = {
-		.crtc = 0,
-		.fb = &fb,
-	};
+	state.crtc = NULL;
 
 	set_plane_src(&old_state, 0, 0, 1024 << 16, 768 << 16);
 	set_plane_src(&state, 0, 0, 1024 << 16, 768 << 16);
@@ -268,6 +259,8 @@ int igt_damage_iter_no_damage_no_fb(void *ignored)
 		.fb = 0,
 	};
 
+	mock_setup(&old_state);
+
 	set_plane_src(&old_state, 0, 0, 1024 << 16, 768 << 16);
 	set_plane_src(&state, 0, 0, 1024 << 16, 768 << 16);
 	drm_atomic_helper_damage_iter_init(&iter, &old_state, &state);
@@ -282,22 +275,12 @@ int igt_damage_iter_no_damage_no_fb(void *ignored)
 int igt_damage_iter_simple_damage(void *ignored)
 {
 	struct drm_atomic_helper_damage_iter iter;
-	struct drm_plane_state old_state;
 	struct drm_property_blob damage_blob;
 	struct drm_mode_rect damage;
 	struct drm_rect clip;
 	uint32_t num_hits = 0;
 
-	struct drm_framebuffer fb = {
-		.width = 2048,
-		.height = 2048
-	};
-
-	struct drm_plane_state state = {
-		.crtc = ZERO_SIZE_PTR,
-		.fb = &fb,
-		.visible = true,
-	};
+	MOCK_VARIABLES();
 
 	set_plane_src(&old_state, 0, 0, 1024 << 16, 768 << 16);
 	set_plane_src(&state, 0, 0, 1024 << 16, 768 << 16);
@@ -318,22 +301,12 @@ int igt_damage_iter_simple_damage(void *ignored)
 int igt_damage_iter_single_damage(void *ignored)
 {
 	struct drm_atomic_helper_damage_iter iter;
-	struct drm_plane_state old_state;
 	struct drm_property_blob damage_blob;
 	struct drm_mode_rect damage;
 	struct drm_rect clip;
 	uint32_t num_hits = 0;
 
-	struct drm_framebuffer fb = {
-		.width = 2048,
-		.height = 2048
-	};
-
-	struct drm_plane_state state = {
-		.crtc = ZERO_SIZE_PTR,
-		.fb = &fb,
-		.visible = true,
-	};
+	MOCK_VARIABLES();
 
 	set_plane_src(&old_state, 0, 0, 1024 << 16, 768 << 16);
 	set_plane_src(&state, 0, 0, 1024 << 16, 768 << 16);
@@ -353,22 +326,12 @@ int igt_damage_iter_single_damage(void *ignored)
 int igt_damage_iter_single_damage_intersect_src(void *ignored)
 {
 	struct drm_atomic_helper_damage_iter iter;
-	struct drm_plane_state old_state;
 	struct drm_property_blob damage_blob;
 	struct drm_mode_rect damage;
 	struct drm_rect clip;
 	uint32_t num_hits = 0;
 
-	struct drm_framebuffer fb = {
-		.width = 2048,
-		.height = 2048
-	};
-
-	struct drm_plane_state state = {
-		.crtc = ZERO_SIZE_PTR,
-		.fb = &fb,
-		.visible = true,
-	};
+	MOCK_VARIABLES();
 
 	set_plane_src(&old_state, 0, 0, 1024 << 16, 768 << 16);
 	set_plane_src(&state, 0, 0, 1024 << 16, 768 << 16);
@@ -389,22 +352,12 @@ int igt_damage_iter_single_damage_intersect_src(void *ignored)
 int igt_damage_iter_single_damage_outside_src(void *ignored)
 {
 	struct drm_atomic_helper_damage_iter iter;
-	struct drm_plane_state old_state;
 	struct drm_property_blob damage_blob;
 	struct drm_mode_rect damage;
 	struct drm_rect clip;
 	uint32_t num_hits = 0;
 
-	struct drm_framebuffer fb = {
-		.width = 2048,
-		.height = 2048
-	};
-
-	struct drm_plane_state state = {
-		.crtc = ZERO_SIZE_PTR,
-		.fb = &fb,
-		.visible = true,
-	};
+	MOCK_VARIABLES();
 
 	set_plane_src(&old_state, 0, 0, 1024 << 16, 768 << 16);
 	set_plane_src(&state, 0, 0, 1024 << 16, 768 << 16);
@@ -424,22 +377,12 @@ int igt_damage_iter_single_damage_outside_src(void *ignored)
 int igt_damage_iter_single_damage_fractional_src(void *ignored)
 {
 	struct drm_atomic_helper_damage_iter iter;
-	struct drm_plane_state old_state;
 	struct drm_property_blob damage_blob;
 	struct drm_mode_rect damage;
 	struct drm_rect clip;
 	uint32_t num_hits = 0;
 
-	struct drm_framebuffer fb = {
-		.width = 2048,
-		.height = 2048
-	};
-
-	struct drm_plane_state state = {
-		.crtc = ZERO_SIZE_PTR,
-		.fb = &fb,
-		.visible = true,
-	};
+	MOCK_VARIABLES();
 
 	/* Plane src has fractional part. */
 	set_plane_src(&old_state, 0x40002, 0x40002,
@@ -462,22 +405,12 @@ int igt_damage_iter_single_damage_fractional_src(void *ignored)
 int igt_damage_iter_single_damage_intersect_fractional_src(void *ignored)
 {
 	struct drm_atomic_helper_damage_iter iter;
-	struct drm_plane_state old_state;
 	struct drm_property_blob damage_blob;
 	struct drm_mode_rect damage;
 	struct drm_rect clip;
 	uint32_t num_hits = 0;
 
-	struct drm_framebuffer fb = {
-		.width = 2048,
-		.height = 2048
-	};
-
-	struct drm_plane_state state = {
-		.crtc = ZERO_SIZE_PTR,
-		.fb = &fb,
-		.visible = true,
-	};
+	MOCK_VARIABLES();
 
 	/* Plane src has fractional part. */
 	set_plane_src(&old_state, 0x40002, 0x40002,
@@ -501,22 +434,12 @@ int igt_damage_iter_single_damage_intersect_fractional_src(void *ignored)
 int igt_damage_iter_single_damage_outside_fractional_src(void *ignored)
 {
 	struct drm_atomic_helper_damage_iter iter;
-	struct drm_plane_state old_state;
 	struct drm_property_blob damage_blob;
 	struct drm_mode_rect damage;
 	struct drm_rect clip;
 	uint32_t num_hits = 0;
 
-	struct drm_framebuffer fb = {
-		.width = 2048,
-		.height = 2048
-	};
-
-	struct drm_plane_state state = {
-		.crtc = ZERO_SIZE_PTR,
-		.fb = &fb,
-		.visible = true,
-	};
+	MOCK_VARIABLES();
 
 	/* Plane src has fractional part. */
 	set_plane_src(&old_state, 0x40002, 0x40002,
@@ -539,22 +462,12 @@ int igt_damage_iter_single_damage_outside_fractional_src(void *ignored)
 int igt_damage_iter_single_damage_src_moved(void *ignored)
 {
 	struct drm_atomic_helper_damage_iter iter;
-	struct drm_plane_state old_state;
 	struct drm_property_blob damage_blob;
 	struct drm_mode_rect damage;
 	struct drm_rect clip;
 	uint32_t num_hits = 0;
 
-	struct drm_framebuffer fb = {
-		.width = 2048,
-		.height = 2048
-	};
-
-	struct drm_plane_state state = {
-		.crtc = ZERO_SIZE_PTR,
-		.fb = &fb,
-		.visible = true,
-	};
+	MOCK_VARIABLES();
 
 	/* Plane src moved since old plane state. */
 	set_plane_src(&old_state, 0, 0, 1024 << 16, 768 << 16);
@@ -576,22 +489,12 @@ int igt_damage_iter_single_damage_src_moved(void *ignored)
 int igt_damage_iter_single_damage_fractional_src_moved(void *ignored)
 {
 	struct drm_atomic_helper_damage_iter iter;
-	struct drm_plane_state old_state;
 	struct drm_property_blob damage_blob;
 	struct drm_mode_rect damage;
 	struct drm_rect clip;
 	uint32_t num_hits = 0;
 
-	struct drm_framebuffer fb = {
-		.width = 2048,
-		.height = 2048
-	};
-
-	struct drm_plane_state state = {
-		.crtc = ZERO_SIZE_PTR,
-		.fb = &fb,
-		.visible = true,
-	};
+	MOCK_VARIABLES();
 
 	/* Plane src with fractional part moved since old plane state. */
 	set_plane_src(&old_state, 0x3fffe, 0x3fffe,
@@ -615,22 +518,12 @@ int igt_damage_iter_single_damage_fractional_src_moved(void *ignored)
 int igt_damage_iter_damage(void *ignored)
 {
 	struct drm_atomic_helper_damage_iter iter;
-	struct drm_plane_state old_state;
 	struct drm_property_blob damage_blob;
 	struct drm_mode_rect damage[2];
 	struct drm_rect clip;
 	uint32_t num_hits = 0;
 
-	struct drm_framebuffer fb = {
-		.width = 2048,
-		.height = 2048
-	};
-
-	struct drm_plane_state state = {
-		.crtc = ZERO_SIZE_PTR,
-		.fb = &fb,
-		.visible = true,
-	};
+	MOCK_VARIABLES();
 
 	set_plane_src(&old_state, 0, 0, 1024 << 16, 768 << 16);
 	set_plane_src(&state, 0, 0, 1024 << 16, 768 << 16);
@@ -656,22 +549,12 @@ int igt_damage_iter_damage(void *ignored)
 int igt_damage_iter_damage_one_intersect(void *ignored)
 {
 	struct drm_atomic_helper_damage_iter iter;
-	struct drm_plane_state old_state;
 	struct drm_property_blob damage_blob;
 	struct drm_mode_rect damage[2];
 	struct drm_rect clip;
 	uint32_t num_hits = 0;
 
-	struct drm_framebuffer fb = {
-		.width = 2048,
-		.height = 2048
-	};
-
-	struct drm_plane_state state = {
-		.crtc = ZERO_SIZE_PTR,
-		.fb = &fb,
-		.visible = true,
-	};
+	MOCK_VARIABLES();
 
 	set_plane_src(&old_state, 0x40002, 0x40002,
 		      0x40002 + (1024 << 16), 0x40002 + (768 << 16));
@@ -699,22 +582,12 @@ int igt_damage_iter_damage_one_intersect(void *ignored)
 int igt_damage_iter_damage_one_outside(void *ignored)
 {
 	struct drm_atomic_helper_damage_iter iter;
-	struct drm_plane_state old_state;
 	struct drm_property_blob damage_blob;
 	struct drm_mode_rect damage[2];
 	struct drm_rect clip;
 	uint32_t num_hits = 0;
 
-	struct drm_framebuffer fb = {
-		.width = 2048,
-		.height = 2048
-	};
-
-	struct drm_plane_state state = {
-		.crtc = ZERO_SIZE_PTR,
-		.fb = &fb,
-		.visible = true,
-	};
+	MOCK_VARIABLES();
 
 	set_plane_src(&old_state, 0, 0, 1024 << 16, 768 << 16);
 	set_plane_src(&state, 0, 0, 1024 << 16, 768 << 16);
@@ -736,22 +609,12 @@ int igt_damage_iter_damage_one_outside(void *ignored)
 int igt_damage_iter_damage_src_moved(void *ignored)
 {
 	struct drm_atomic_helper_damage_iter iter;
-	struct drm_plane_state old_state;
 	struct drm_property_blob damage_blob;
 	struct drm_mode_rect damage[2];
 	struct drm_rect clip;
 	uint32_t num_hits = 0;
 
-	struct drm_framebuffer fb = {
-		.width = 2048,
-		.height = 2048
-	};
-
-	struct drm_plane_state state = {
-		.crtc = ZERO_SIZE_PTR,
-		.fb = &fb,
-		.visible = true,
-	};
+	MOCK_VARIABLES();
 
 	set_plane_src(&old_state, 0x40002, 0x40002,
 		      0x40002 + (1024 << 16), 0x40002 + (768 << 16));
@@ -775,22 +638,14 @@ int igt_damage_iter_damage_src_moved(void *ignored)
 int igt_damage_iter_damage_not_visible(void *ignored)
 {
 	struct drm_atomic_helper_damage_iter iter;
-	struct drm_plane_state old_state;
 	struct drm_property_blob damage_blob;
 	struct drm_mode_rect damage[2];
 	struct drm_rect clip;
 	uint32_t num_hits = 0;
 
-	struct drm_framebuffer fb = {
-		.width = 2048,
-		.height = 2048
-	};
+	MOCK_VARIABLES();
 
-	struct drm_plane_state state = {
-		.crtc = ZERO_SIZE_PTR,
-		.fb = &fb,
-		.visible = false,
-	};
+	state.visible = false;
 
 	set_plane_src(&old_state, 0x40002, 0x40002,
 		      0x40002 + (1024 << 16), 0x40002 + (768 << 16));
-- 
2.24.1

