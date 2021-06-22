Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 699333B0ADB
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 18:55:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41B786E817;
	Tue, 22 Jun 2021 16:55:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 071776E80B
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Jun 2021 16:55:29 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 p8-20020a7bcc880000b02901dbb595a9f1so2714085wma.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Jun 2021 09:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=naYXUUBK9vopSkhhs+SbsF73vr2q6Xr/BYlxTkKgAp0=;
 b=iDYuCEvjyN5+Pfuqb1UsGVxfsga4Ic/bTWJ8nWmsQBk5g2S3VYvlZ3dG/lFUvsZbop
 t0Ibzs1N5/7tRD0ECm8MCxfIWvNsGc0PNNqedHX0wsI16ShJ49dxu16wHmHZZ8Bbg1xD
 vLHE8BKlnMjbWbuNOC4UyF7BT2siUXfkKIwYM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=naYXUUBK9vopSkhhs+SbsF73vr2q6Xr/BYlxTkKgAp0=;
 b=XdXym8v9NpOo/Sd7e0TMYvvhgq4OphVGCs9LGDdUbf1V0Cr5dYrrMWu4urdT260jn3
 8uCXI1Ew78BfmF5Ul01rxzMm4Je02QBYrIMAMpHhccMSPDYDsKx218d4Nq6wwEpThMGi
 Uz/6xwMNOvK96fB2y4077oNf/E4w3zCZqHkzIYQmzBuVqJ8i+z9iOv97HwZ7Y6H6BF0r
 L4E9KIEyZAyHDIj6P+yNxEZfijNrnCPuJuWyELtn1MbqCigdi4jPAmc6sLrxRqYQW9Ru
 Xc2s2wWD2Ogz+fu4sL5jqYjuvzfYjrbx53ZPaCcEOCWkMRO0JDsmGBxpxYqqgCly3vuT
 EbkQ==
X-Gm-Message-State: AOAM530fphivEYEIfhuaKRBWQ2767455IbWhk6cTEyithNAlHCyTGu5C
 4LCSpD9IYjRyIwYw0SPzkLqAqQ==
X-Google-Smtp-Source: ABdhPJw0LKWc1TI6pW6BsmNY5c+TyH8/tdOMgNd0GE908rhXRG0DT8WnDBRncDVrGcFh1olBqutBxQ==
X-Received: by 2002:a05:600c:d8:: with SMTP id
 u24mr5847552wmm.94.1624380927672; 
 Tue, 22 Jun 2021 09:55:27 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l23sm3632342wmc.5.2021.06.22.09.55.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Jun 2021 09:55:27 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 22 Jun 2021 18:55:05 +0200
Message-Id: <20210622165511.3169559-10-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0.rc2
In-Reply-To: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
References: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/15] drm/armada: Remove prepare/cleanup_fb
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
2.32.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
