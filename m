Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 420F517264E
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 19:15:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 905DA6EC36;
	Thu, 27 Feb 2020 18:15:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2019B6E96D
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 18:15:36 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id c84so405924wme.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 10:15:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jyV7bNjLu1SQ7vKcBd294xD9HrCo7tzU5S6Usg9xWsM=;
 b=iuZKAXQhruuVsFLUktBVg7py+mMqJxsH6IWepRR2Qdsx+kSrzXeemepz+H1XbKBw71
 m7tZxW+SYKH+XWKDS6BzHZuIfcD3nYPcadw6X+2eqfcGwk0WFWIMA5DuBuxHBtYEq88J
 pIg952ThHq0ILPYGTY9qbGh/U9uPXXw7tRTaE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jyV7bNjLu1SQ7vKcBd294xD9HrCo7tzU5S6Usg9xWsM=;
 b=GJcZ/KuMcsevRnfbUjIcRLNPDFSmm3uxrz03xMuIKU+eRjRGFA3G41fxO+bF2bocR3
 lFsbXw7g1MeTN74CqYkPRSoPITn679danjrN6cC86tAiRT3h+VxhO5wNx8wbMG0yvUry
 63trrd6D2EJAAVxu85DXNu090MslfXxyc8uAqTkoUVnsw2VVXbFh9D3uKekj222A6AQT
 4f8KpNCO1Jz45usDiOfadf+dRYZabpuo2iDdvOE6UzeJXNnnXmKqZsfzRcbHNbGcnJS6
 5b5+vmSqENJnerK6zCUwJ6ftai56ra9MJEgufTPojJO/E57ibhRKfcS/zs6gcJYIAf44
 gjAg==
X-Gm-Message-State: APjAAAV3PAVi6i5B2jtKd2cemEuVWcamLghC0oua1ruu4rtzQXSb6G5h
 dm+bRZm3YIuqN1sW4A7LHJindg==
X-Google-Smtp-Source: APXvYqy1KGIqvDWaP9y/317NhLPsMTyJxxslCUMo+xlRnY58XN0X93cIaXfyPqnzF+0nskv3/XteqA==
X-Received: by 2002:a1c:25c6:: with SMTP id l189mr49006wml.104.1582827333846; 
 Thu, 27 Feb 2020 10:15:33 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q1sm8551152wrw.5.2020.02.27.10.15.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 10:15:33 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu, 27 Feb 2020 19:14:35 +0100
Message-Id: <20200227181522.2711142-5-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
References: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
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
 m.felsch@pengutronix.de, Maxime Ripard <mripard@kernel.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, xen-devel@lists.xenproject.org,
 l.stach@pengutronix.de
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

Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>
Cc: xen-devel@lists.xenproject.org

Reviewed-by: Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>
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
index 3e5627d6eba6..9e62e28bbc62 100644
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
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
