Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1056838C2B8
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 11:10:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34B4E6F5EC;
	Fri, 21 May 2021 09:10:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3EF16F5EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 09:10:12 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id
 y184-20020a1ce1c10000b02901769b409001so6759263wmg.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 02:10:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aZjMrb/4KSZyVTX0Ekp5rfo9dwoXiXtCmd1WjGIP9Hg=;
 b=CVxhozF6vO2ymV/lf8STCb9FJvgnVIHl4nFcdNY/ow7goUK43fEJh94zU7sCo/TKrT
 Kit977Ii/ZBP7uisD1EbFWyV3KpOIaWnZ4KGRY2+aRH3x1MX92XMqf0ny5I6igOb0ofY
 3CXRYaXxwIxZDmiYXY5062b3+bRKoKri1qq+A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aZjMrb/4KSZyVTX0Ekp5rfo9dwoXiXtCmd1WjGIP9Hg=;
 b=WEeAEPumzUI9Jq76G/Pz49EsdA1rBS42udC5kg/RwlGEy61oL3+pjwXT9KwLL2E1Ay
 XDu1QAf7/VDJ/xDfDRgByMcn6478D3boUu7Pltkgti3bQVqcmOcQymHfez8Yzt9ph04S
 T2sZ8S8b1tG9DpzNohgvXbKRWZPZ8EdGjh/wG77rGH1Pq4a+KjXINuOdblsle2O3wotO
 PiFFWdp9IeGJVUOkMXpI8mN1kjjl0GhBTF8ofis6c0eoypWkJRpYr91js5Hja/1pY/vS
 p+V6KZV+ClFxq5BVbV5ld3MaeMICsnV9OZaEKIX84w9Nv1RhQ1+bHdUju5WdK2STAuR/
 wTuw==
X-Gm-Message-State: AOAM5325ZEJcMdQ83TtKZ8Zn1qfvAt8/1wWc6MgBN5KnpngLCYw9gJeW
 ld28augNACi4JxCEfaBwxi3psg==
X-Google-Smtp-Source: ABdhPJwJgEGwArUytD2sQWZfZYZMAOf5nVi0zTcEvXGLWgH7xi8lzhX2vxONioqGPjPQoC16pXuyng==
X-Received: by 2002:a1c:6a0f:: with SMTP id f15mr5602987wmc.29.1621588211398; 
 Fri, 21 May 2021 02:10:11 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y2sm13589457wmq.45.2021.05.21.02.10.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 May 2021 02:10:10 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 21 May 2021 11:09:55 +0200
Message-Id: <20210521090959.1663703-7-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
References: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/11] drm/armada: Remove prepare/cleanup_fb
 hooks
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
 Russell King <linux@armlinux.org.uk>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

All they do is refcount the fb, which the atomic helpers already do.

This is was necessary with the legacy helpers and I guess just carry
over in the conversion. drm_plane_state always has a full reference
for its ->fb pointer during its entire lifetime,
see __drm_atomic_helper_plane_destroy_state()

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Russell King <linux@armlinux.org.uk>
---
 drivers/gpu/drm/armada/armada_overlay.c |  2 --
 drivers/gpu/drm/armada/armada_plane.c   | 29 -------------------------
 drivers/gpu/drm/armada/armada_plane.h   |  2 --
 3 files changed, 33 deletions(-)

diff --git a/drivers/gpu/drm/armada/armada_overlay.c b/drivers/gpu/drm/armada/armada_overlay.c
index d3e3e5fdc390..424250535fed 100644
--- a/drivers/gpu/drm/armada/armada_overlay.c
+++ b/drivers/gpu/drm/armada/armada_overlay.c
@@ -247,8 +247,6 @@ static void armada_drm_overlay_plane_atomic_disable(struct drm_plane *plane,
 }
 
 static const struct drm_plane_helper_funcs armada_overlay_plane_helper_funcs = {
-	.prepare_fb	= armada_drm_plane_prepare_fb,
-	.cleanup_fb	= armada_drm_plane_cleanup_fb,
 	.atomic_check	= armada_drm_plane_atomic_check,
 	.atomic_update	= armada_drm_overlay_plane_atomic_update,
 	.atomic_disable	= armada_drm_overlay_plane_atomic_disable,
diff --git a/drivers/gpu/drm/armada/armada_plane.c b/drivers/gpu/drm/armada/armada_plane.c
index 40f5c34fb4d8..1c56a2883b91 100644
--- a/drivers/gpu/drm/armada/armada_plane.c
+++ b/drivers/gpu/drm/armada/armada_plane.c
@@ -78,33 +78,6 @@ void armada_drm_plane_calc(struct drm_plane_state *state, u32 addrs[2][3],
 	}
 }
 
-int armada_drm_plane_prepare_fb(struct drm_plane *plane,
-	struct drm_plane_state *state)
-{
-	DRM_DEBUG_KMS("[PLANE:%d:%s] [FB:%d]\n",
-		plane->base.id, plane->name,
-		state->fb ? state->fb->base.id : 0);
-
-	/*
-	 * Take a reference on the new framebuffer - we want to
-	 * hold on to it while the hardware is displaying it.
-	 */
-	if (state->fb)
-		drm_framebuffer_get(state->fb);
-	return 0;
-}
-
-void armada_drm_plane_cleanup_fb(struct drm_plane *plane,
-	struct drm_plane_state *old_state)
-{
-	DRM_DEBUG_KMS("[PLANE:%d:%s] [FB:%d]\n",
-		plane->base.id, plane->name,
-		old_state->fb ? old_state->fb->base.id : 0);
-
-	if (old_state->fb)
-		drm_framebuffer_put(old_state->fb);
-}
-
 int armada_drm_plane_atomic_check(struct drm_plane *plane,
 	struct drm_atomic_state *state)
 {
@@ -282,8 +255,6 @@ static void armada_drm_primary_plane_atomic_disable(struct drm_plane *plane,
 }
 
 static const struct drm_plane_helper_funcs armada_primary_plane_helper_funcs = {
-	.prepare_fb	= armada_drm_plane_prepare_fb,
-	.cleanup_fb	= armada_drm_plane_cleanup_fb,
 	.atomic_check	= armada_drm_plane_atomic_check,
 	.atomic_update	= armada_drm_primary_plane_atomic_update,
 	.atomic_disable	= armada_drm_primary_plane_atomic_disable,
diff --git a/drivers/gpu/drm/armada/armada_plane.h b/drivers/gpu/drm/armada/armada_plane.h
index 51dab8d8da22..368415c609a6 100644
--- a/drivers/gpu/drm/armada/armada_plane.h
+++ b/drivers/gpu/drm/armada/armada_plane.h
@@ -21,8 +21,6 @@ struct armada_plane_state {
 
 void armada_drm_plane_calc(struct drm_plane_state *state, u32 addrs[2][3],
 	u16 pitches[3], bool interlaced);
-int armada_drm_plane_prepare_fb(struct drm_plane *plane,
-	struct drm_plane_state *state);
 void armada_drm_plane_cleanup_fb(struct drm_plane *plane,
 	struct drm_plane_state *old_state);
 int armada_drm_plane_atomic_check(struct drm_plane *plane,
-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
