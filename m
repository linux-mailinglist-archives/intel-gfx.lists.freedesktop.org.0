Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C68F42940EE
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Oct 2020 18:57:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A5DB6EC79;
	Tue, 20 Oct 2020 16:56:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56B156EC79
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Oct 2020 16:56:58 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id j7so3021938wrt.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Oct 2020 09:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WpciX4s5+nlfIa0YzJ767hWGBGfbGF0VES+27qIdEFs=;
 b=jtOgf81MVFtWhMgzRhhGU0KM3xMlW7ujP/3eB3k+xgKEEUbBehzZBmDJt3tA1IvIsE
 lkUQN5mBibn8WKTQZkgBO8JpinqUD8R/0vjYWykSOzTqIJJ7g7oiZBsD8SP28BnzYR3v
 Nf8fMMeKfSC7eSrREi01wgTQNBCOwtSlSSStM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WpciX4s5+nlfIa0YzJ767hWGBGfbGF0VES+27qIdEFs=;
 b=jH59I5DJBr0La8ER+wgO9Nc4XIHSAitkly4K9N1TKAtd/dUG/OBNY76qwYU+I/7w7l
 3PZ6xp92958T5kZnsOYFkOUo69GrPZ++yrJs0shfVRfjlFpXYConxFkXGl7AA1279x1d
 Aa1WGv0L4AM8v5EaqAYQRausavo2cqELjWUqYxm+HF6EBhSaGY8OJ/KKvN81jHhShFDW
 CdXZj7ns9KnujYLcz5dnbWiWnIJ+C/LLtFxc+PWSfBGUVH3GweTb3ybcKTjuP0H/ogKH
 uS/4up6SeybIl9Wba8lTJvrSLK/UKOnQomTvvm6RrVLdgZ65Eg3GvD9ksWZkPXVjClMj
 vcrw==
X-Gm-Message-State: AOAM530dow0VpDS/cSUED27pTRYzeLEn7xZHtTnVxg4YdxgP2XynLekF
 hCEhqxbfBRurmHBCiiFrl4SEkA==
X-Google-Smtp-Source: ABdhPJyRungpZvhfJTjHM/mmWcYOuX3Dj70qUNrfd0irchBaMX2PD715lntgvHH/JoMaC+Wpb5S1fw==
X-Received: by 2002:a5d:4d8a:: with SMTP id b10mr4667457wru.5.1603213017022;
 Tue, 20 Oct 2020 09:56:57 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y4sm3921360wrp.74.2020.10.20.09.56.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Oct 2020 09:56:56 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 20 Oct 2020 18:56:48 +0200
Message-Id: <20201020165648.1091443-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201020143936.1089259-1-daniel.vetter@ffwll.ch>
References: <20201020143936.1089259-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/doc: Document legacy_cursor_update better
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's the horror and shouldn't be used. Realized we're not clear on
this in a discussion with Rob about what msm is doing to better
support async commits.

v2: Refine existing todo item to include this (Thomas)

Cc: Sean Paul <sean@poorly.run>
Cc: Rob Clark <robdclark@gmail.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
---
 Documentation/gpu/todo.rst |  4 ++++
 include/drm/drm_atomic.h   | 12 +++++++++++-
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/Documentation/gpu/todo.rst b/Documentation/gpu/todo.rst
index 700637e25ecd..6b224ef14455 100644
--- a/Documentation/gpu/todo.rst
+++ b/Documentation/gpu/todo.rst
@@ -105,6 +105,10 @@ converted over to the new infrastructure.
 One issue with the helpers is that they require that drivers handle completion
 events for atomic commits correctly. But fixing these bugs is good anyway.
 
+Somewhat related is the legacy_cursor_update hack, which should be replaced with
+the new atomic_async_check/commit functionality in the helpers in drivers that
+still look at that flag.
+
 Contact: Daniel Vetter, respective driver maintainers
 
 Level: Advanced
diff --git a/include/drm/drm_atomic.h b/include/drm/drm_atomic.h
index d07c851d255b..413fd0ca56a8 100644
--- a/include/drm/drm_atomic.h
+++ b/include/drm/drm_atomic.h
@@ -308,7 +308,6 @@ struct __drm_private_objs_state {
  * struct drm_atomic_state - the global state object for atomic updates
  * @ref: count of all references to this state (will not be freed until zero)
  * @dev: parent DRM device
- * @legacy_cursor_update: hint to enforce legacy cursor IOCTL semantics
  * @async_update: hint for asynchronous plane update
  * @planes: pointer to array of structures with per-plane data
  * @crtcs: pointer to array of CRTC pointers
@@ -336,6 +335,17 @@ struct drm_atomic_state {
 	 * drm_atomic_crtc_needs_modeset().
 	 */
 	bool allow_modeset : 1;
+	/**
+	 * @legacy_cursor_update:
+	 *
+	 * Hint to enforce legacy cursor IOCTL semantics.
+	 *
+	 * WARNING: This is thoroughly broken and pretty much impossible to
+	 * implement correctly. Drivers must ignore this and should instead
+	 * implement &drm_plane_helper_funcs.atomic_async_check and
+	 * &drm_plane_helper_funcs.atomic_async_commit hooks. New users of this
+	 * flag are not allowed.
+	 */
 	bool legacy_cursor_update : 1;
 	bool async_update : 1;
 	/**
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
