Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 837F81641C4
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 11:23:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49A866EB94;
	Wed, 19 Feb 2020 10:22:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A1A66EB67
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 10:22:23 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id a6so6144011wme.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 02:22:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rr4O+ONX2Z8M6GReNFE6BySLzR+uhIBS806KKHWYPwI=;
 b=cZYEyvoll2hg561RetSEjP7VjGjvOwOTHoe95zvHlWEXhANThcHVrrsgChhpr/Tyn+
 6DaH/lpywtlxU4+97R03I51fWsEuXIQvc6GIA8MxqSLnXnG6rCv21Mfzry2uZrZ8WBgf
 KWak7Him3+bCeRLDgfls4qzaj0TE2SskFCOqY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rr4O+ONX2Z8M6GReNFE6BySLzR+uhIBS806KKHWYPwI=;
 b=EnXlIqzEYjwXZDoyNq0ITfdRbM30ItCsFtCpI6lhMn5TBG+GA2L9hBvdnLxehBapk7
 Rp61tlDvqoZHYFW7WOe4aeQsi+cWPAEBQO5m3k4Va8QUD5pNjc6D9Sr5EMDFlAGb6dZW
 /n7WgqhGPWyYGjG9kQLX4IyjX+GlzerS7jY1ZJGuQo/RXc0wc26DoZIRftZ80xCV4b0W
 DFqadHyExfDvNvPWri2w34YEE5EFwk2k2NxSrVFGOkMJneHuYU+Xhe16Hdk6WCz9j3OS
 ouq7qAL6Sgmm05LmbYBUYjtM07gilhJlsK59i95pJV2BKISmYpUqGLcWH7UU7dT3PURf
 c5cA==
X-Gm-Message-State: APjAAAVbyHAgIpcI3XO0xBdPYIs6nPgHaqxvWi6LMrkRJ1gV3/cVYCOe
 IEGnxIua7J+RJDwRY0cyX7Y3GA==
X-Google-Smtp-Source: APXvYqwZDBM44gEUF+WK198J6o5bIQn2Yi0j7i8eWZz2CQO+fOVdi51TJ7/t55leB/eX6PBGPcicrQ==
X-Received: by 2002:a1c:1b42:: with SMTP id b63mr9340142wmb.16.1582107741586; 
 Wed, 19 Feb 2020 02:22:21 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s23sm2370339wra.15.2020.02.19.02.22.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 02:22:20 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 19 Feb 2020 11:21:12 +0100
Message-Id: <20200219102122.1607365-43-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 42/52] drm/tidss: Drop explicit
 drm_mode_config_cleanup call
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
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Jyri Sarha <jsarha@ti.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's right above the drm_dev_put().

Aside: Another driver with a bit much devm_kzalloc, which should
probably use drmm_kzalloc instead ...

I'm pretty sure this one blows up already under KASAN because it's
using devm_drm_dev_init, and later on devm_kzalloc. Hence the memory
will get freed before the final drm_dev_put (all from the devres
code), but the cleanup in that final drm_dev_put will access the just
freed memory.

Unfortunately fixing this properly needs slightly more work, namely
drmm_ versions for all the drm objects (planes, crtc, ...), so that
the cleanup actually happens before even drmm_kzalloc would release
the underlying memory. Not quite there yet.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Jyri Sarha <jsarha@ti.com>
Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
---
 drivers/gpu/drm/tidss/tidss_drv.c |  4 ----
 drivers/gpu/drm/tidss/tidss_kms.c | 19 +++++--------------
 drivers/gpu/drm/tidss/tidss_kms.h |  1 -
 3 files changed, 5 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/tidss/tidss_drv.c b/drivers/gpu/drm/tidss/tidss_drv.c
index 460d5e9d0cf4..ad449d104306 100644
--- a/drivers/gpu/drm/tidss/tidss_drv.c
+++ b/drivers/gpu/drm/tidss/tidss_drv.c
@@ -103,11 +103,7 @@ static const struct dev_pm_ops tidss_pm_ops = {
 
 static void tidss_release(struct drm_device *ddev)
 {
-	struct tidss_device *tidss = ddev->dev_private;
-
 	drm_kms_helper_poll_fini(ddev);
-
-	tidss_modeset_cleanup(tidss);
 }
 
 DEFINE_DRM_GEM_CMA_FOPS(tidss_fops);
diff --git a/drivers/gpu/drm/tidss/tidss_kms.c b/drivers/gpu/drm/tidss/tidss_kms.c
index 5311e0f1c551..87e07e0e4eae 100644
--- a/drivers/gpu/drm/tidss/tidss_kms.c
+++ b/drivers/gpu/drm/tidss/tidss_kms.c
@@ -208,7 +208,9 @@ int tidss_modeset_init(struct tidss_device *tidss)
 
 	dev_dbg(tidss->dev, "%s\n", __func__);
 
-	drm_mode_config_init(ddev);
+	ret = drm_mode_config_init(ddev);
+	if (ret)
+		return ret;
 
 	ddev->mode_config.min_width = 8;
 	ddev->mode_config.min_height = 8;
@@ -220,11 +222,11 @@ int tidss_modeset_init(struct tidss_device *tidss)
 
 	ret = tidss_dispc_modeset_init(tidss);
 	if (ret)
-		goto err_mode_config_cleanup;
+		return ret;
 
 	ret = drm_vblank_init(ddev, tidss->num_crtcs);
 	if (ret)
-		goto err_mode_config_cleanup;
+		return ret;
 
 	/* Start with vertical blanking interrupt reporting disabled. */
 	for (i = 0; i < tidss->num_crtcs; ++i)
@@ -235,15 +237,4 @@ int tidss_modeset_init(struct tidss_device *tidss)
 	dev_dbg(tidss->dev, "%s done\n", __func__);
 
 	return 0;
-
-err_mode_config_cleanup:
-	drm_mode_config_cleanup(ddev);
-	return ret;
-}
-
-void tidss_modeset_cleanup(struct tidss_device *tidss)
-{
-	struct drm_device *ddev = &tidss->ddev;
-
-	drm_mode_config_cleanup(ddev);
 }
diff --git a/drivers/gpu/drm/tidss/tidss_kms.h b/drivers/gpu/drm/tidss/tidss_kms.h
index dda5625d0128..99aaff099f22 100644
--- a/drivers/gpu/drm/tidss/tidss_kms.h
+++ b/drivers/gpu/drm/tidss/tidss_kms.h
@@ -10,6 +10,5 @@
 struct tidss_device;
 
 int tidss_modeset_init(struct tidss_device *tidss);
-void tidss_modeset_cleanup(struct tidss_device *tidss);
 
 #endif
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
