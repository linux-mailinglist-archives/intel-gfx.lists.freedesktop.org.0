Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D5418F79F
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 15:51:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E7EE6E22A;
	Mon, 23 Mar 2020 14:51:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DF366E1B1
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 14:50:56 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id m3so15135729wmi.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 07:50:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jgFnlWvKa9Z1hvpyvRkexm04Pb9XQq607ntEo0K0hHg=;
 b=GKIG6ORUXK9GRK6H/jnSWIuM0ueeumyS09frGFcuDY+WG8tqfgVvCxKWPOD0C7ZZwn
 cN3j6DwjYVv26B1to/IYSZBi72cM4pW0g0s95dhGqSWDXSNKr5ip3voou3Yjw3yhVp+t
 g8ZKHUorT9/KqkxdU1Y8t78dOSUY+M7OJLR3Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jgFnlWvKa9Z1hvpyvRkexm04Pb9XQq607ntEo0K0hHg=;
 b=KK7qlOO19Gy+amYth0o0xchx3tBtV3GG1/kAYJR4UrZI21A2Dd9vQ06w02Ho0k9REQ
 6cFnomI4sqMlaczs3F3/mnOCJByJ7Ju/wYlukt0iYV+8WZw0qSoWpOhUZL9AEXd/BBSb
 VJbxC2IIIPD4vnjjDIP7lRfYwKLfBR+naO8DID5z5qo/ETIP6LjVbhY/sMmJCXzPg3Ev
 HkSOKqpDVcfioN6h/MevCn8zA/0NdWbCo3y7N5Pxx70wgmni92SxcgGhcY0z5stvOMQT
 /uO5VSmCnSDRWqIBYD/9TZWQLUwHY8a2Zv9PPga9AkghL28t7r81rZezsBiK5+CoNFId
 CWBg==
X-Gm-Message-State: ANhLgQ0llBgKaoB4jXY8bsoIccWtn3ow7D69ahPwPuY+DTzCbbp49OJd
 aWWpbhBYk3uiTaXiSlLuC7R22Q==
X-Google-Smtp-Source: ADFU+vs0XctcqBwc7Ox/IsLM50c8eYGXnIqvT/oJUD2VTKyTwHWW/WeCAXenqgzqGYZr7ajcczoF3w==
X-Received: by 2002:a1c:6745:: with SMTP id b66mr27717152wmc.30.1584975054720; 
 Mon, 23 Mar 2020 07:50:54 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s22sm20376522wmc.16.2020.03.23.07.50.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 07:50:54 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 23 Mar 2020 15:49:40 +0100
Message-Id: <20200323144950.3018436-42-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 41/51] drm/tidss: Drop explicit
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
 Jyri Sarha <jsarha@ti.com>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's right above the drm_dev_put().

This is made possible by a preceeding patch which added a drmm_
cleanup action to drm_mode_config_init(), hence all we need to do to
ensure that drm_mode_config_cleanup() is run on final drm_device
cleanup is check the new error code for _init().

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

v2: Explain why this cleanup is possible (Laurent).

v3: Use drmm_mode_config_init() for more clarity (Sam, Thomas)

Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Acked-by: Jyri Sarha <jsarha@ti.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
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
index 7d419960b030..4bd339a467a4 100644
--- a/drivers/gpu/drm/tidss/tidss_kms.c
+++ b/drivers/gpu/drm/tidss/tidss_kms.c
@@ -258,7 +258,9 @@ int tidss_modeset_init(struct tidss_device *tidss)
 
 	dev_dbg(tidss->dev, "%s\n", __func__);
 
-	drm_mode_config_init(ddev);
+	ret = drmm_mode_config_init(ddev);
+	if (ret)
+		return ret;
 
 	ddev->mode_config.min_width = 8;
 	ddev->mode_config.min_height = 8;
@@ -270,11 +272,11 @@ int tidss_modeset_init(struct tidss_device *tidss)
 
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
@@ -285,15 +287,4 @@ int tidss_modeset_init(struct tidss_device *tidss)
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
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
