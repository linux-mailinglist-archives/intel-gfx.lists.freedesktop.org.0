Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A045A1641C2
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 11:23:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B5AB6EB9C;
	Wed, 19 Feb 2020 10:22:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2A8B6EB58
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 10:22:07 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id p17so6157054wma.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 02:22:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K+RCM7OGLp0sj4XNOhBb/9kV77IO3yK5rPXjkzGkq2k=;
 b=QQ3nm20HULYBx3JSC0zpqn56i4gOZPwrfdguKg5FrnRzRv6njWr1ZJsSYTBQed/BM6
 FM7Q15+6P0jm15Ud/yXWwDEDp5XGcNggWAhacq+aJu/6cL4xRxVcyh0SVZW+39mwiysT
 oEpWP+1eCzO2VE4o6tbTgAMAlHeCXVnSogeTc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K+RCM7OGLp0sj4XNOhBb/9kV77IO3yK5rPXjkzGkq2k=;
 b=nxurIfiW6GbKYwguFhaU9PDT2fOj2G7eU2FcMK7mnGG1pAb1isSsrdmFhj2ynKOF5Q
 qHlBCOurCWnEFAvWUqoCUzb1sTeiPHWoYMUNT+OfyyQ6sbjdAGZBDXDxjvgd4Zwpg72u
 eubtU1mwuHV6gMPCLUAMyNzB6Eex9urZYHhtnuJVtdSH0C6WNESipA+SrOs32YjYIPFL
 wK3ArgShdSWuDP2jHrC2qNpGjqRttzDmrsHFI+B2SelhE9lxgCT7OwjL8jcpNGTtPu0S
 ykD+A0YlSWDGzhHrXvqIWzfI0/TS3YoB9/ynEX43PW3HM+59DMxnvffPRpTlnHH5ChJJ
 UeAw==
X-Gm-Message-State: APjAAAWC89Cdm9UHbKM5OAFocqjCXsb+gMI3VKmiVEHhwQRiRjo7KoTT
 N9O8siGbayUxhiGKuvb7vGb97x/Zf3w=
X-Google-Smtp-Source: APXvYqzz0NHu690NFEZSG9ElH+C9Q5tMi7NrI6F5pLTHmsTpg4OqLrnSwJHqzwlq7CvPGBlxwjkicA==
X-Received: by 2002:a05:600c:149:: with SMTP id
 w9mr8631795wmm.132.1582107726274; 
 Wed, 19 Feb 2020 02:22:06 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s23sm2370339wra.15.2020.02.19.02.22.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 02:22:05 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 19 Feb 2020 11:20:59 +0100
Message-Id: <20200219102122.1607365-30-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 29/52] drm/bochs: Drop explicit
 drm_mode_config_cleanup
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
 virtualization@lists.linux-foundation.org, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Instead rely on the automatic clean, for which we just need to check
that drm_mode_config_init succeeded. To avoid an inversion in the
cleanup we also have to move the dev_private allocation over to
drmm_kzalloc.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: virtualization@lists.linux-foundation.org
---
 drivers/gpu/drm/bochs/bochs.h     |  1 -
 drivers/gpu/drm/bochs/bochs_drv.c |  6 ++----
 drivers/gpu/drm/bochs/bochs_kms.c | 14 +++++---------
 3 files changed, 7 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/bochs/bochs.h b/drivers/gpu/drm/bochs/bochs.h
index 917767173ee6..e5bd1d517a18 100644
--- a/drivers/gpu/drm/bochs/bochs.h
+++ b/drivers/gpu/drm/bochs/bochs.h
@@ -92,7 +92,6 @@ void bochs_mm_fini(struct bochs_device *bochs);
 
 /* bochs_kms.c */
 int bochs_kms_init(struct bochs_device *bochs);
-void bochs_kms_fini(struct bochs_device *bochs);
 
 /* bochs_fbdev.c */
 extern const struct drm_mode_config_funcs bochs_mode_funcs;
diff --git a/drivers/gpu/drm/bochs/bochs_drv.c b/drivers/gpu/drm/bochs/bochs_drv.c
index addb0568c1af..e18c51de1196 100644
--- a/drivers/gpu/drm/bochs/bochs_drv.c
+++ b/drivers/gpu/drm/bochs/bochs_drv.c
@@ -7,6 +7,7 @@
 
 #include <drm/drm_drv.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_managed.h>
 
 #include "bochs.h"
 
@@ -21,10 +22,7 @@ static void bochs_unload(struct drm_device *dev)
 {
 	struct bochs_device *bochs = dev->dev_private;
 
-	bochs_kms_fini(bochs);
 	bochs_mm_fini(bochs);
-	kfree(bochs);
-	dev->dev_private = NULL;
 }
 
 static int bochs_load(struct drm_device *dev)
@@ -32,7 +30,7 @@ static int bochs_load(struct drm_device *dev)
 	struct bochs_device *bochs;
 	int ret;
 
-	bochs = kzalloc(sizeof(*bochs), GFP_KERNEL);
+	bochs = drmm_kzalloc(dev, sizeof(*bochs), GFP_KERNEL);
 	if (bochs == NULL)
 		return -ENOMEM;
 	dev->dev_private = bochs;
diff --git a/drivers/gpu/drm/bochs/bochs_kms.c b/drivers/gpu/drm/bochs/bochs_kms.c
index e8cc8156d773..8285c03a6a95 100644
--- a/drivers/gpu/drm/bochs/bochs_kms.c
+++ b/drivers/gpu/drm/bochs/bochs_kms.c
@@ -134,7 +134,11 @@ const struct drm_mode_config_funcs bochs_mode_funcs = {
 
 int bochs_kms_init(struct bochs_device *bochs)
 {
-	drm_mode_config_init(bochs->dev);
+	int ret;
+
+	ret = drm_mode_config_init(bochs->dev);
+	if (ret)
+		return ret;
 
 	bochs->dev->mode_config.max_width = 8192;
 	bochs->dev->mode_config.max_height = 8192;
@@ -160,11 +164,3 @@ int bochs_kms_init(struct bochs_device *bochs)
 
 	return 0;
 }
-
-void bochs_kms_fini(struct bochs_device *bochs)
-{
-	if (!bochs->dev->mode_config.num_connector)
-		return;
-
-	drm_mode_config_cleanup(bochs->dev);
-}
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
