Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C03AF17670D
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 23:27:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38ED36E890;
	Mon,  2 Mar 2020 22:27:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25C546E884
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 22:27:04 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id y17so1858592wrn.6
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Mar 2020 14:27:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=azWGJfq+4gUQku9CpJXjJjTVXvkNs3RIP5rZa0E3LE8=;
 b=ZEYxEpN3h2Ishc/kIsXvbdv27Zb6F760M+mGaS8VZkVrfGD9AkUVNaObmVXd54WolO
 leCH5BlaUAWlYcZVW7uQ26Vd9VQ8LaTJtjFxfAYS+8K2/+dOLu00iWmUp6q+0sh3Z2sj
 u+dqZGxH4bbDwoBFlqP8Fridw4wX8NgcCU5Ck=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=azWGJfq+4gUQku9CpJXjJjTVXvkNs3RIP5rZa0E3LE8=;
 b=pWIOPKSI0pC3myOXt4ooC0cuPRIpsM6bav74NKH3BD3+FiTlOgwTxIqQGMQeXbTZET
 dbLxfYV7XA916ytmTYGfKQGe6A3wzrb+G9EJ7tReskN5pZFgU0Z1kIuIL0sV44O+Y087
 RbzwH8kJFobnUHF5NVYQtsLjlfTjX3Ik04UXLP2VKyUKi7uLomKvK0ww0hY+V25RhGLO
 TERDAdPrbBfqTM6DrGznolNx54Wx38ybM/svgACadAgOk5oTfT2FdpSHbRLb/m4lWTqw
 3U+z+o0OgWcx8eZvFHxSNdf5S0MMd/Jkse7v6xw7KNHitnOqIHIWT6JzJXZlXw488+NT
 zgsg==
X-Gm-Message-State: ANhLgQ0ZYzaHKcUWF/7A8HHzK76joDvOoDQq2T6mCi6RNT1bgq8qaSDH
 JjlDWcefJDYY47g6wVLk8/eHeg==
X-Google-Smtp-Source: ADFU+vvFrjcgVZFeJYQyIv/sqOGvHdt85ub/0aBlvt6zONAoEL3Thfgft0N7iA3hCThdrPL01V0jeg==
X-Received: by 2002:a5d:5706:: with SMTP id a6mr1553765wrv.318.1583188022907; 
 Mon, 02 Mar 2020 14:27:02 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o18sm26114589wrv.60.2020.03.02.14.27.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 14:27:02 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon,  2 Mar 2020 23:25:57 +0100
Message-Id: <20200302222631.3861340-18-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
References: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
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
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With this we can drop the final kfree from the release function.

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
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
