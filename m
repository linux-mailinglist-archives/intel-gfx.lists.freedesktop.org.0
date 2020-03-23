Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9739B18F73F
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 15:50:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED6006E151;
	Mon, 23 Mar 2020 14:50:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06B356E13D
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 14:50:04 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id c187so14946923wme.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 07:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Dv+T7hx3shnxcC2cGhwCfqmDdpFuiZgbqKQsTy1SFQw=;
 b=J/mP5ABXoR/QChjydf1fFw7SlvAmlpghjfuOxFmprDV0BmAPEVe33QWLhG5h0vt65R
 JCG1joLLUG9QtHhO8+l4911MEiNq/D70AoMAxtpt901OP9kWUTL8qxkreP4ImaT/tSHT
 KpELqFVo9o/NtkIG4+D1z8FGFLg7ZZXS9Ipdo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Dv+T7hx3shnxcC2cGhwCfqmDdpFuiZgbqKQsTy1SFQw=;
 b=V8IBPMWW8nJWEhA37cEYXeZINbiYEol9IpdTyKjHscQ1rzFI5BhxMqrbUbf7EmMyr6
 QYh5HjhuGubeVNMSdxcNHPp63U5bk7dLf+tV7qwKM0iqpGLYuCBzWF+QbkJcNKL6I21T
 75Z2tKbaxYBTBP1ESF91ELIR6n3AjbeyiBkuMC/4rqCvSBTJf8UyP6Rx6a40bDzzwGja
 Y0HMO6wQx4dW+0AtBlaQFPBU+ju4Ufqn22OxuU1Qj8Kxdpo4VvJY1VF6P/ArNbsHmPPj
 DNPC01SPeZtC/qXhlcF/FnTJcV5g5U/Hfs9OUXuzYiL3pmYzrrUYlx59UKZMLIOkaS+5
 KmbA==
X-Gm-Message-State: ANhLgQ2imk5G7Id9FpVDp5u63CoM+oArFyYrdQEHpJajkj0MXvNcuEpo
 zs0O8g9zViQ8x01IU6C2N83lDA==
X-Google-Smtp-Source: ADFU+vsm1kCaomWxE/lOuq1Ntg4UGf1m8M8LhErx1auiFhuoXr4+ZwhV6pgLnBjuXKTrfI2+TYCPNg==
X-Received: by 2002:a1c:cc0a:: with SMTP id h10mr6348797wmb.127.1584975002190; 
 Mon, 23 Mar 2020 07:50:02 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s22sm20376522wmc.16.2020.03.23.07.50.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 07:50:01 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 23 Mar 2020 15:49:03 +0100
Message-Id: <20200323144950.3018436-5-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/51] drm: Set final_kfree in drm_dev_alloc
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
Cc: Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Gerd Hoffmann <kraxel@redhat.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, xen-devel@lists.xenproject.org,
 Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I also did a full review of all callers, and only the xen driver
forgot to call drm_dev_put in the failure path. Fix that up too.

v2: I noticed that xen has a drm_driver.release hook, and uses
drm_dev_alloc(). We need to remove the kfree from
xen_drm_drv_release().

bochs also has a release hook, but leaked the drm_device ever since

commit 0a6659bdc5e8221da99eebb176fd9591435e38de
Author: Gerd Hoffmann <kraxel@redhat.com>
Date:   Tue Dec 17 18:04:46 2013 +0100

    drm/bochs: new driver

This patch here fixes that leak.

Same for virtio, started leaking with

commit b1df3a2b24a917f8853d43fe9683c0e360d2c33a
Author: Gerd Hoffmann <kraxel@redhat.com>
Date:   Tue Feb 11 14:58:04 2020 +0100

    drm/virtio: add drm_driver.release callback.

Acked-by: Gerd Hoffmann <kraxel@redhat.com>
Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
Reviewed-by: Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>
Cc: xen-devel@lists.xenproject.org
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>
Cc: xen-devel@lists.xenproject.org
---
 drivers/gpu/drm/drm_drv.c           | 3 +++
 drivers/gpu/drm/xen/xen_drm_front.c | 2 +-
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
index 1b9be23b93b0..877ded348b6e 100644
--- a/drivers/gpu/drm/drm_drv.c
+++ b/drivers/gpu/drm/drm_drv.c
@@ -39,6 +39,7 @@
 #include <drm/drm_color_mgmt.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_file.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_mode_object.h>
 #include <drm/drm_print.h>
 
@@ -819,6 +820,8 @@ struct drm_device *drm_dev_alloc(struct drm_driver *driver,
 		return ERR_PTR(ret);
 	}
 
+	drmm_add_final_kfree(dev, dev);
+
 	return dev;
 }
 EXPORT_SYMBOL(drm_dev_alloc);
diff --git a/drivers/gpu/drm/xen/xen_drm_front.c b/drivers/gpu/drm/xen/xen_drm_front.c
index 4be49c1aef51..d22b5da38935 100644
--- a/drivers/gpu/drm/xen/xen_drm_front.c
+++ b/drivers/gpu/drm/xen/xen_drm_front.c
@@ -461,7 +461,6 @@ static void xen_drm_drv_release(struct drm_device *dev)
 	drm_mode_config_cleanup(dev);
 
 	drm_dev_fini(dev);
-	kfree(dev);
 
 	if (front_info->cfg.be_alloc)
 		xenbus_switch_state(front_info->xb_dev,
@@ -561,6 +560,7 @@ static int xen_drm_drv_init(struct xen_drm_front_info *front_info)
 fail_modeset:
 	drm_kms_helper_poll_fini(drm_dev);
 	drm_mode_config_cleanup(drm_dev);
+	drm_dev_put(drm_dev);
 fail:
 	kfree(drm_info);
 	return ret;
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
