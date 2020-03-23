Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AEADA18F77B
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 15:51:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8370B6E1F6;
	Mon, 23 Mar 2020 14:50:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24E2D6E1E5
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 14:50:36 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id a25so17466581wrd.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 07:50:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LAjebl4oWZaUB8QZzuBxoe0BijHChGG74W9NC4lYj9o=;
 b=CVeI7CglOpk53Jbu38NSc5uumtnfqmjVARZSklkRPF9jGiPcZBFKmFw0qeFcIk6rIn
 aumqOns6etxQVMNZVlkDNM74KkhGL2yZZwcOIxGzMUxMO0om1GgYiD96g8Oz6ywgXRQ6
 0GLsxTUeozX3N6M7OzW9iRGnz+S4ZIe8o7SGU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LAjebl4oWZaUB8QZzuBxoe0BijHChGG74W9NC4lYj9o=;
 b=UM6Ho8PUjRG24B5k3nbGFLm13LufldQrBL/4UqvlFBwbOTQdwZszS3LleRyb8bM8Xw
 NqcCYLss5qLFMsyGiDkBobA+V0krw/GOVG6ZNrNYBfrXUtVKYGxDsF3DqdBm4ITMt4KO
 0a/vh58NAiFymkJMxXgM2XcJcwpST3XYfDWI7IXBr9OiFUcDmuAzE1ojNkmSGxcs3Jzc
 JtTq6AIL/w3T0mAf+r40R8s+kICPNx5Yt18brf0ptdBdYAxMZ6oWEypbEqBw2+mc/lTh
 WNIpoLw3W7ferwM2X8UE11LfH7CPw005d229OLlY2y3J2RcRhWs3iGCKYXKBUxc99jv9
 fseA==
X-Gm-Message-State: ANhLgQ0LE4s251C0y90kNFuKA/XAYMSYJNGuahL1NQ/fP5thmj4Unmu8
 mvHognjBRAYBrY5rHgkpwDIx8w==
X-Google-Smtp-Source: ADFU+vtQnwT2wHSXNP++KtM4pfXVMK4X4lkQuFKGlbfP+S8m32dR2YQ7Q8a/bYaKVJvmqSX7TubKwQ==
X-Received: by 2002:adf:f2c7:: with SMTP id d7mr919892wrp.184.1584975034846;
 Mon, 23 Mar 2020 07:50:34 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s22sm20376522wmc.16.2020.03.23.07.50.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 07:50:34 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 23 Mar 2020 15:49:27 +0100
Message-Id: <20200323144950.3018436-29-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 28/51] drm/bochs: Drop explicit
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
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Instead rely on the automatic clean, for which we just need to check
that drm_mode_config_init succeeded. To avoid an inversion in the
cleanup we also have to move the dev_private allocation over to
drmm_kzalloc.

This is made possible by a preceeding patch which added a drmm_
cleanup action to drm_mode_config_init(), hence all we need to do to
ensure that drm_mode_config_cleanup() is run on final drm_device
cleanup is check the new error code for _init().

v2: Explain why this cleanup is possible (Laurent).

v3: Use drmm_mode_config_init() for more clarity (Sam, Thomas)

Acked-by: Gerd Hoffmann <kraxel@redhat.com>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
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
index e8cc8156d773..7f4bcfad87e9 100644
--- a/drivers/gpu/drm/bochs/bochs_kms.c
+++ b/drivers/gpu/drm/bochs/bochs_kms.c
@@ -134,7 +134,11 @@ const struct drm_mode_config_funcs bochs_mode_funcs = {
 
 int bochs_kms_init(struct bochs_device *bochs)
 {
-	drm_mode_config_init(bochs->dev);
+	int ret;
+
+	ret = drmm_mode_config_init(bochs->dev);
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
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
