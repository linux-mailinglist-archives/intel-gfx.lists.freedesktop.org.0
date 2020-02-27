Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D40C1726B3
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 19:17:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4527B6E96D;
	Thu, 27 Feb 2020 18:16:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C17D6E96D
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 18:16:23 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id x7so2147939wrr.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 10:16:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6xxO8OX+356rtNr+zWn5/84ToVuDZ2KgU/fjOoS0S1s=;
 b=CBU1SprtShU+Rbz9p6GiG1kLJDs+PKJoJ4pMhfTD2+3kqFbW/JLVclx2cPuQMRPj4d
 KNgA/l/9kpFqBh5tfn/rLDUrpdBnt4GVDCWOxhXI6xDqLK7asLthavnA9QqbInn1oA71
 vwHs9DcVXkc/fFNcq3hPob8RGCNFuHvHCsaWI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6xxO8OX+356rtNr+zWn5/84ToVuDZ2KgU/fjOoS0S1s=;
 b=DeZfsN7XL6vxDF5DDHCiP2MdET4CFVsC/DRVjkPwVkCAASKiVH6eRxYHupIxMC1RJv
 ZW2OoFXqQSAxCdXtbOfyT1i73N7DTXi/y5yVbyQR5ymmoo3mQq/bTVDUuFXTLjGU+7/F
 6Gaioe53RCcghUetn1nasn8fYLFjmXnlsqDe3g0P9jT1qz9xw7uyWxMyn5/pUAZGyDQU
 ztXIz+cHFazvFqj2DJkyl+D6hPDXDY/UDXemyH9q3yyLdPq+sxq4lfix1isyIlSPDEkb
 ++P/VRCZXzSIHa6r4wsZ0C8skoh+olv+ZZ9QOvXfHmf3PhzJ95IWn89IDbJCvJ5i8vGZ
 RDfQ==
X-Gm-Message-State: APjAAAUCQdi+8gGU8Bbv/2l7I0Rv10UIZXNlp844HNQC+zHaD63hBopY
 XYbKN1r7bjtOrM78ackSenPQfg==
X-Google-Smtp-Source: APXvYqzK5DGJboX3fOnYZu01Ax+JSPJre8an/MEEhSbbE675H6Dlz4+tbKF8mlWvxaPq5lLrBAVKHg==
X-Received: by 2002:adf:a48f:: with SMTP id g15mr162064wrb.42.1582827381894;
 Thu, 27 Feb 2020 10:16:21 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q1sm8551152wrw.5.2020.02.27.10.16.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 10:16:21 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu, 27 Feb 2020 19:15:12 +0100
Message-Id: <20200227181522.2711142-42-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
References: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
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
 m.felsch@pengutronix.de, Jyri Sarha <jsarha@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel.vetter@intel.com>, l.stach@pengutronix.de
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
index 3b6f8d54a016..d13b896f184a 100644
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
