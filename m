Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA0238C2C8
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 11:10:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB9896F601;
	Fri, 21 May 2021 09:10:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D4CB6F5F5
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 09:10:15 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 f6-20020a1c1f060000b0290175ca89f698so6942934wmf.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 02:10:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ha+Y330PiG+WhADsfqhs0mPTOOIZSdzfXUOegqxr7Y0=;
 b=fHzPCgrGxBZPqdJFf4u1SPeUDoO9odZe/AfIDRZxxFCB3iLbceoaENMrq16CnThHM0
 FQGxmf5FXsyK56qxtvCu8ZD6rRkTqMLG9Bi8wDp2SQbHi05Qg969DXl3QL7pDEgMAOb6
 MBlfHPJIV4TIMJKz2QyzwTB/Wsvbtc2xecr4U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ha+Y330PiG+WhADsfqhs0mPTOOIZSdzfXUOegqxr7Y0=;
 b=EtF+pQ+2SYc5C244yisVd15e1eDydyPtSxggCTboNVBtwWXr1QHUC/T2md6RaoxqJi
 C2UgWswT+mtavjisXDrptHgFwwaLNRiyRlxZ/qkms/aI0aMhjaCsTCQYJ2TbEBuCAzyQ
 XBx1U4+xzOB0jbacyljnxxi6d/iBrxTZyC7V0lvVJVSlGlrPu6pwRO9OWdlN9MHAgXZB
 +T+u1euF2VtAaYYZDmsPJBX7fH6mUIT5PwQnAPvf3zqoVgmCrcjIIiUbiJtMCWBv0mCO
 aB7AoF4259KzbJjPl6wEZcyQwwV5qJ/AcujfCWIy3vFsJ9xPL53H0yrton8NiSOedWv1
 hrYw==
X-Gm-Message-State: AOAM531ElASds8NBXuBZQye37yGMooigYgDyqDCbDeWKLLY26FUexcER
 /zSmH+UK4cgr/gCh7p6ZRRpg8A==
X-Google-Smtp-Source: ABdhPJw3vVBNKN9S+fmN5I3OqzZo3J2mH9Nw6A8Vr9auGpKPKiY6kj3t36ik9ZU+M000HAYtb2SBjQ==
X-Received: by 2002:a1c:9a4a:: with SMTP id c71mr8327991wme.136.1621588214150; 
 Fri, 21 May 2021 02:10:14 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y2sm13589457wmq.45.2021.05.21.02.10.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 May 2021 02:10:13 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 21 May 2021 11:09:58 +0200
Message-Id: <20210521090959.1663703-10-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
References: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/11] drm/simple-helper:
 drm_gem_simple_display_pipe_prepare_fb as default
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

It's tedious to review this all the time, and my audit showed that
arcpgu actually forgot to set this.

Make this the default and stop worrying.

Again I sprinkled WARN_ON_ONCE on top to make sure we don't have
strange combinations of hooks: cleanup_fb without prepare_fb doesn't
make sense, and since simpler drivers are all new they better be GEM
based drivers.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
---
 drivers/gpu/drm/drm_simple_kms_helper.c | 12 ++++++++++--
 include/drm/drm_simple_kms_helper.h     |  7 +++++--
 2 files changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/drm_simple_kms_helper.c b/drivers/gpu/drm/drm_simple_kms_helper.c
index 0b095a313c44..1a97571d97d9 100644
--- a/drivers/gpu/drm/drm_simple_kms_helper.c
+++ b/drivers/gpu/drm/drm_simple_kms_helper.c
@@ -9,6 +9,8 @@
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_bridge.h>
+#include <drm/drm_drv.h>
+#include <drm/drm_gem_atomic_helper.h>
 #include <drm/drm_managed.h>
 #include <drm/drm_plane_helper.h>
 #include <drm/drm_probe_helper.h>
@@ -225,8 +227,14 @@ static int drm_simple_kms_plane_prepare_fb(struct drm_plane *plane,
 	struct drm_simple_display_pipe *pipe;
 
 	pipe = container_of(plane, struct drm_simple_display_pipe, plane);
-	if (!pipe->funcs || !pipe->funcs->prepare_fb)
-		return 0;
+	if (!pipe->funcs || !pipe->funcs->prepare_fb) {
+		if (WARN_ON_ONCE(drm_core_check_feature(plane->dev, DRIVER_GEM)))
+			return 0;
+
+		WARN_ON_ONCE(pipe->funcs && pipe->funcs->cleanup_fb);
+
+		return drm_gem_simple_display_pipe_prepare_fb(pipe, state);
+	}
 
 	return pipe->funcs->prepare_fb(pipe, state);
 }
diff --git a/include/drm/drm_simple_kms_helper.h b/include/drm/drm_simple_kms_helper.h
index ef9944e9c5fc..363a9a8c3587 100644
--- a/include/drm/drm_simple_kms_helper.h
+++ b/include/drm/drm_simple_kms_helper.h
@@ -116,8 +116,11 @@ struct drm_simple_display_pipe_funcs {
 	 * the documentation for the &drm_plane_helper_funcs.prepare_fb hook for
 	 * more details.
 	 *
-	 * Drivers which always have their buffers pinned should use
-	 * drm_gem_simple_display_pipe_prepare_fb() for this hook.
+	 * For GEM drivers who neither have a @prepare_fb not @cleanup_fb hook
+	 * set drm_gem_simple_display_pipe_prepare_fb() is called automatically
+	 * to implement this. Other drivers which need additional plane
+	 * processing can call drm_gem_simple_display_pipe_prepare_fb() from
+	 * their @prepare_fb hook.
 	 */
 	int (*prepare_fb)(struct drm_simple_display_pipe *pipe,
 			  struct drm_plane_state *plane_state);
-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
