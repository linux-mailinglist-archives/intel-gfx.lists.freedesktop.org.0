Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94375177176
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 09:45:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BEAB6EA30;
	Tue,  3 Mar 2020 08:45:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56CD96EA30
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 08:45:27 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id h9so2267737wrr.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Mar 2020 00:45:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4JJGYJYm4GOQZGP6Gc1JmSDn+M/hfvgpxpV5MfL1wQs=;
 b=UW/Y79L8vvv/N6uqd2YTqPBJM4qvf7bIay1ojRixo2HNfFj1ZBvAkkNAPzxT7U6vHF
 s3vOx66YTIhl/eUpDYrYKL5sYrEqAXslPpVw6jGufXSAbIljukXoWHw4ggaiWNFQ4AdO
 A4BJ0fKh6ZCng1FecKYxKgBWTqNYHtt9Pcosw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4JJGYJYm4GOQZGP6Gc1JmSDn+M/hfvgpxpV5MfL1wQs=;
 b=drtV8C597xkv8TaUyHOywMROnUqfmFVR3hu4tJJij0YAOBAwZC87nlt1jEetep4aKm
 dqFN4d/WYT9nmwdeZISgJjjN5LIJonWaEW7ql+V3sYClsA3WsKRYWTFHSb+p+OpnAIIb
 YNiud9XV923ulg6J4PljrqZB7OgKrJNo/ydTB/0tdQnqRzGfEelMQvAO6QQWUfBXZjA0
 kigaMhouCttBHfM9LxBM8LLF3rgHqrsW/8OvZ5myrzOxvVADT8T5gI//HTRNYmMv5U1J
 TXi2+Ncil/NiBlsy7KNah76MA7HB+X+66TsXP9y6RYyK8/IdFSFDXYTh+b7PN5J2aRWg
 BHVQ==
X-Gm-Message-State: ANhLgQ31yLl8p7+kccnig0mGhyALnqXZhl/Bp+yIUqilCunwpfNnDhNt
 1kabtFq/OhGTvXb74TkBQpvTr+NVtfo=
X-Google-Smtp-Source: ADFU+vvshH+KgGJ7SPyt7c7666wbQJtKdXUqJvpV0gC3mqrD1ftf60u+6OUe6wDjovJ0t/WdQo19TA==
X-Received: by 2002:adf:fc81:: with SMTP id g1mr4584656wrr.410.1583225126073; 
 Tue, 03 Mar 2020 00:45:26 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l8sm2883955wmj.2.2020.03.03.00.45.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 00:45:25 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  3 Mar 2020 09:45:20 +0100
Message-Id: <20200303084520.3886414-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200302222631.3861340-20-daniel.vetter@ffwll.ch>
References: <20200302222631.3861340-20-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm: Cleanups after drmm_add_final_kfree rollout
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
 Sam Ravnborg <sam@ravnborg.org>, Dan Carpenter <dan.carpenter@oracle.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A few things:
- Update the example driver in the documentation.
- We can drop the old kfree in drm_dev_release.
- Add a WARN_ON check in drm_dev_register to make sure everyone calls
  drmm_add_final_kfree and there's no leaks.

v2: Restore the full cleanup, I accidentally left some moved code
behind when fixing the bisectability of the series.

Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/drm_drv.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
index 80cfd0f14475..1ee606b4a4f9 100644
--- a/drivers/gpu/drm/drm_drv.c
+++ b/drivers/gpu/drm/drm_drv.c
@@ -297,8 +297,6 @@ void drm_minor_release(struct drm_minor *minor)
  *
  *		drm_mode_config_cleanup(drm);
  *		drm_dev_fini(drm);
- *		kfree(priv->userspace_facing);
- *		kfree(priv);
  *	}
  *
  *	static struct drm_driver driver_drm_driver = {
@@ -326,10 +324,11 @@ void drm_minor_release(struct drm_minor *minor)
  *			kfree(drm);
  *			return ret;
  *		}
+ *		drmm_add_final_kfree(drm, priv);
  *
  *		drm_mode_config_init(drm);
  *
- *		priv->userspace_facing = kzalloc(..., GFP_KERNEL);
+ *		priv->userspace_facing = drmm_kzalloc(..., GFP_KERNEL);
  *		if (!priv->userspace_facing)
  *			return -ENOMEM;
  *
@@ -838,10 +837,7 @@ static void drm_dev_release(struct kref *ref)
 
 	drm_managed_release(dev);
 
-	if (!dev->driver->release && !dev->managed.final_kfree) {
-		WARN_ON(!list_empty(&dev->managed.resources));
-		kfree(dev);
-	} else if (dev->managed.final_kfree)
+	if (dev->managed.final_kfree)
 		kfree(dev->managed.final_kfree);
 }
 
@@ -959,6 +955,8 @@ int drm_dev_register(struct drm_device *dev, unsigned long flags)
 	struct drm_driver *driver = dev->driver;
 	int ret;
 
+	WARN_ON(!dev->managed.final_kfree);
+
 	if (drm_dev_needs_global_mutex(dev))
 		mutex_lock(&drm_global_mutex);
 
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
