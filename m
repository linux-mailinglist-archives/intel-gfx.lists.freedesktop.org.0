Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EECCB18F766
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 15:51:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9A4D6E1B5;
	Mon, 23 Mar 2020 14:50:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 883276E17D
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 14:50:21 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id a81so9379959wmf.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 07:50:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CXqRR0rGkpy8qrdQ866VDfCOHi+Vl+Vnh07hczoQ6o0=;
 b=jUra0S/zv3IxuxbaiN7QsXuOFPnQxaFuGmOApVf8JvhtW8S3DeELhzIZG8wm8pioJ8
 ul7GgNSK4HdtyO5L+7VDWjgaNBD/CCMY6IQDUCJXFqpTXKPLGg6zXfDnLJzg85tyPFfe
 X+lBfRwLj1b8CAl3pQRf0JTO9OxewKRj5Ma3c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CXqRR0rGkpy8qrdQ866VDfCOHi+Vl+Vnh07hczoQ6o0=;
 b=j80Nc9V2eEWk7Zjyg9dsw9603cGMbcEBOY0/cLvRX5A2BJoN+FkD6NUZeKLFJSyQK/
 sAmOBPRd+6xOAPSfku9pl2gOMUnFeDSI/e0L2wMkPUOcAmiG2reQCmMr7v79rcSUfKd2
 4XE3QGvk57ThdwabRBWNFeAuMoFBAnfWL4MM6lN9AxfIBUYPgPNRB3b85/i5YoEcunTz
 5rAEsnFXKD6wC1aQ1eXLYYM+tqbDgDoUlQrgubQbB+Gf8sGCL7sfqSaTu8RK/0u2GhG3
 fcwooTJonL8X2CiLgV0H0+u0oyyjoycTk2CqddAZhmdTohkf0gdcZlZSRVwPwl8nVSZo
 NFXw==
X-Gm-Message-State: ANhLgQ3Tfd/YvEuTd1YR0opJdevjbKjGTZq8pCuL6InRIDL9ukFKnE7z
 pfmDb8uuVavxdicoQHfBCmigog==
X-Google-Smtp-Source: ADFU+vuETD3HO60CC15DZuYT1AjvXhVaos+IwuMI8BoAoxSwb4xCoHw4S2vmGccf5q7xqmZr8CBFcw==
X-Received: by 2002:a1c:a5d4:: with SMTP id o203mr18417358wme.47.1584975020246; 
 Mon, 23 Mar 2020 07:50:20 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s22sm20376522wmc.16.2020.03.23.07.50.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 07:50:19 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 23 Mar 2020 15:49:16 +0100
Message-Id: <20200323144950.3018436-18-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 17/51] drm/gm12u320: Use drmm_add_final_kfree
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With this we can drop the final kfree from the release function.

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Reviewed-by: Hans de Goede <hdegoede@redhat.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Hans de Goede <hdegoede@redhat.com>
---
 drivers/gpu/drm/tiny/gm12u320.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/tiny/gm12u320.c b/drivers/gpu/drm/tiny/gm12u320.c
index a48173441ae0..524ca0941cf9 100644
--- a/drivers/gpu/drm/tiny/gm12u320.c
+++ b/drivers/gpu/drm/tiny/gm12u320.c
@@ -19,6 +19,7 @@
 #include <drm/drm_gem_shmem_helper.h>
 #include <drm/drm_gem_framebuffer_helper.h>
 #include <drm/drm_ioctl.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_modeset_helper_vtables.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_simple_kms_helper.h>
@@ -637,7 +638,6 @@ static void gm12u320_driver_release(struct drm_device *dev)
 	gm12u320_usb_free(gm12u320);
 	drm_mode_config_cleanup(dev);
 	drm_dev_fini(dev);
-	kfree(gm12u320);
 }
 
 DEFINE_DRM_GEM_FOPS(gm12u320_fops);
@@ -692,6 +692,7 @@ static int gm12u320_usb_probe(struct usb_interface *interface,
 		return ret;
 	}
 	dev->dev_private = gm12u320;
+	drmm_add_final_kfree(dev, gm12u320);
 
 	drm_mode_config_init(dev);
 	dev->mode_config.min_width = GM12U320_USER_WIDTH;
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
