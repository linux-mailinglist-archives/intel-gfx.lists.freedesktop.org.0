Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5017A3B0AD8
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 18:55:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D90386E7FA;
	Tue, 22 Jun 2021 16:55:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A3B46E7E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Jun 2021 16:55:26 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id j10so6482539wms.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Jun 2021 09:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ns8oCqJk+e6qNGAKlDTwhSsIi+A9rXsw+koW7JPvGJ0=;
 b=YBdZq9G2kDtV3LmMYYqftQ1x7ekLyK8VwrAl4xgx+q8H99RyEHkLF1OiraWwAZuKcP
 4AJNfd+O7CEV9++ttKQsQbYin2QcPP6RHeh0pBF5SQhldbxhAC8KLaMa4JJVvWAQA+Rk
 PmdCEjW2z/AHbHwyOa4odrNiDvWaGp/1OFA9g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ns8oCqJk+e6qNGAKlDTwhSsIi+A9rXsw+koW7JPvGJ0=;
 b=uISY7wK1nnygnb+LXRrJLVlUf3COfZWbc7oHrtblLWEKQori0HkPgwgXixfYFXpe9s
 bLztaOX7x3vR7uTSrEfEaBEL74QH7GxOl0S/HKj8mdp2EwU2ZIqwRNK4DLHx6y17xKjg
 x30QOeoFTYVEUsxqz1ZkpldLb0hXra38zm/jt4tP3xeUQvQ5alOXFgQcfStYEAMkOq4A
 jJ7cJj0feY3ujMvlV5d/ieXIMEz/HZ0gpVdV9YsbRhOjcxRpbAyL6pJbPg+55r0vBLIs
 juCRQtfEhSf1D/DsUS5pZdX/OjYXy5eH+v4/11E6Vnnfgy09erXqglhFnr3WRRP39stw
 j5ng==
X-Gm-Message-State: AOAM5325f4VGE6lZpBTYY3bfeMtNJSnGkmaSkKYX2oeQwfuRgH5T5qMV
 NFn88KHPXnLZHinKDMG7K9dWsg==
X-Google-Smtp-Source: ABdhPJxuAIozMsm/qjvHFXYnBymKvcmvWUn4e9oIgnx9mBgo1l901ZFuUSawmDWlAhxw2CfLKYQizg==
X-Received: by 2002:a1c:4682:: with SMTP id t124mr5611004wma.161.1624380925145; 
 Tue, 22 Jun 2021 09:55:25 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l23sm3632342wmc.5.2021.06.22.09.55.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Jun 2021 09:55:24 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 22 Jun 2021 18:55:03 +0200
Message-Id: <20210622165511.3169559-8-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0.rc2
In-Reply-To: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
References: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/15] drm/atomic-helper: make
 drm_gem_plane_helper_prepare_fb the default
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

There's a bunch of atomic drivers who don't do this quite correctly,
luckily most of them aren't in wide use or people would have noticed
the tearing.

By making this the default we avoid the constant audit pain and can
additionally remove a ton of lines from vfuncs for a bit more clarity
in smaller drivers.

While at it complain if there's a cleanup_fb hook but no prepare_fb
hook, because that makes no sense. I haven't found any driver which
violates this, but better safe than sorry.

Subsequent patches will reap the benefits.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
---
 drivers/gpu/drm/drm_atomic_helper.c      | 10 ++++++++++
 drivers/gpu/drm/drm_gem_atomic_helper.c  |  3 +++
 include/drm/drm_modeset_helper_vtables.h |  7 +++++--
 3 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
index 531f2374b072..9f6c5f21c4d6 100644
--- a/drivers/gpu/drm/drm_atomic_helper.c
+++ b/drivers/gpu/drm/drm_atomic_helper.c
@@ -35,6 +35,7 @@
 #include <drm/drm_damage_helper.h>
 #include <drm/drm_device.h>
 #include <drm/drm_drv.h>
+#include <drm/drm_gem_atomic_helper.h>
 #include <drm/drm_plane_helper.h>
 #include <drm/drm_print.h>
 #include <drm/drm_self_refresh_helper.h>
@@ -2408,6 +2409,15 @@ int drm_atomic_helper_prepare_planes(struct drm_device *dev,
 			ret = funcs->prepare_fb(plane, new_plane_state);
 			if (ret)
 				goto fail;
+		} else {
+			WARN_ON_ONCE(funcs->cleanup_fb);
+
+			if (!drm_core_check_feature(dev, DRIVER_GEM))
+				continue;
+
+			ret = drm_gem_plane_helper_prepare_fb(plane, new_plane_state);
+			if (ret)
+				goto fail;
 		}
 	}
 
diff --git a/drivers/gpu/drm/drm_gem_atomic_helper.c b/drivers/gpu/drm/drm_gem_atomic_helper.c
index a27135084ae5..bc9396f2a0ed 100644
--- a/drivers/gpu/drm/drm_gem_atomic_helper.c
+++ b/drivers/gpu/drm/drm_gem_atomic_helper.c
@@ -135,6 +135,9 @@
  * GEM based framebuffer drivers which have their buffers always pinned in
  * memory.
  *
+ * This function is the default implementation for GEM drivers of
+ * &drm_plane_helper_funcs.prepare_fb if no callback is provided.
+ *
  * See drm_atomic_set_fence_for_plane() for a discussion of implicit and
  * explicit fencing in atomic modeset updates.
  */
diff --git a/include/drm/drm_modeset_helper_vtables.h b/include/drm/drm_modeset_helper_vtables.h
index f3a4b47b3986..4e727261dca5 100644
--- a/include/drm/drm_modeset_helper_vtables.h
+++ b/include/drm/drm_modeset_helper_vtables.h
@@ -1178,8 +1178,11 @@ struct drm_plane_helper_funcs {
 	 * equivalent functionality should be implemented through private
 	 * members in the plane structure.
 	 *
-	 * Drivers which always have their buffers pinned should use
-	 * drm_gem_plane_helper_prepare_fb() for this hook.
+	 * For GEM drivers who neither have a @prepare_fb not @cleanup_fb hook
+	 * set drm_gem_plane_helper_prepare_fb() is called automatically to
+	 * implement this. Other drivers which need additional plane processing
+	 * can call drm_gem_plane_helper_prepare_fb() from their @prepare_fb
+	 * hook.
 	 *
 	 * The helpers will call @cleanup_fb with matching arguments for every
 	 * successful call to this hook.
-- 
2.32.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
