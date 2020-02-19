Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6DE1164186
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 11:22:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B27666EB4C;
	Wed, 19 Feb 2020 10:21:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76FB46EB3D
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 10:21:54 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id q9so5840949wmj.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 02:21:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FldPWxhzELhYbW6ZcVnvMkTgkkuNURV+FBfGKe9d6tY=;
 b=leaUZqEI8FKwCmANwgAS926f3CPRxOUWdnJPNcMV9Bekz6aRtYmRQkSiVNObL7bmEo
 oUWxTBTJfkZRjBlFCPtr6wBmmixfrejNPMvp14LrUWT2obDZl+N/U1hc7pBre6f9QanC
 GgcJEttbkxmEUL9vI+N++xK7tkooH0lkwPzUE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FldPWxhzELhYbW6ZcVnvMkTgkkuNURV+FBfGKe9d6tY=;
 b=T0EmoyG+vOPsOiw/HP1OOXRq/jaAtlErLMhSDfUnrOE4NI0LupTnoHCZ6WKlgpXguN
 awJEO81ajGaRrQy6+c8kGXypQR+hXsqMVD0w+H3I4MRg/k3KvUXB4tRVd6V7N5sKDaoV
 G9OJV0HnVhYvATuktrgWHz0DlHKGAJhjvpGpfq0tv9mKTytkBXgmsPbMZ0B+FLX8RjLy
 b+fjCRotDQqlblhbkuWDU6VUnoQVo4kNsBkC8ylAKBya3FhBHDAr5FunSW47nj8ij7lu
 IcHnNvj8JcaSwJrr2CKF+8ayLWbN+HmjKtwhJtP/1Qxqkjf2rp+FnXcKvwGZCYvEUjwz
 iKwA==
X-Gm-Message-State: APjAAAXY86UIGUO3ZXObo8kOOu6O4aWYYC1DFKfpAFQnROjdqw1iojHI
 plSSyuXo7srCyGVbeLsPFlQKzP7mA14=
X-Google-Smtp-Source: APXvYqw5OoalXX1KOYcM1QyFFNPcafOfknOJ0qHnQqTpL0z/D6jEXC/K8qAseuQm3aDL/rNYoZNaJg==
X-Received: by 2002:a05:600c:2254:: with SMTP id
 a20mr8714517wmm.188.1582107713215; 
 Wed, 19 Feb 2020 02:21:53 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s23sm2370339wra.15.2020.02.19.02.21.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 02:21:52 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 19 Feb 2020 11:20:48 +0100
Message-Id: <20200219102122.1607365-19-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 18/52] drm/gm12u320: Use drmm_add_final_kfree
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
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With this we can drop the final kfree from the release function.

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
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
