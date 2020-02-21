Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D44A71688BF
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 22:04:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78A1C6F551;
	Fri, 21 Feb 2020 21:04:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 744936F528
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 21:03:54 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id b17so3318165wmb.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 13:03:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ONYCQId/Lp3FCDlAAvJmwBxOy0NZM9plHkZx81NotgQ=;
 b=Soz+WxFelpQbyEdnwVaRI4oo2Y4tcI/DD/dxCrFcYXm0A/fluiFfVSj/H7cJ6Mi7+5
 RlwYGUJMOYe2fyY+zK+t+uMbH1C3kQZXwKIU5OwnrtCj2Pf6JdHKfQdp8Xupj8NpCSZh
 ajWGY/sJcL0naIXvbEhHl8vCKwIZoiQs75X14=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ONYCQId/Lp3FCDlAAvJmwBxOy0NZM9plHkZx81NotgQ=;
 b=QkjEKQp+u5aukUFm8aG46WIHIdO/GeyvhmpLQ8OO+2UGV4YzNubPwfyNePrCXRjW93
 r0zwKsdkB1CCujeQzsHbze8Pv0nEiDwP81/zuws3DE36J/vLULHqaoy4PosBQIeKJWlD
 pvaWw9tUjeRzn3qtN+DuodGedmaK1cqf72llJGsxgFHuDaQFjiEr/heESNiKmh9jZC1Z
 4ZmZj68qNJ6iCkbxyV/mnuanaQQ/FeZv9b97mEc78DS0EJ9hKNhK6X9UhRv7xaiyhRoS
 Z7ZgCbGFbkuKigpOqvFVxcAhM7MADI1rfE+Fc6+OEFXFy1VBaTqCBeyF9SzehER1njo7
 SOfQ==
X-Gm-Message-State: APjAAAX10x1q2iZ12PBIqZ4pmFj0dYALmE9p1dLh0HAEHvkfbys9sMM3
 iHRW/OfwjtMVpr1wXoRtUaxAqw==
X-Google-Smtp-Source: APXvYqxpE12SUQdc7vM3FdJpq0AdjPjxVs+gnJt9F7h2CgEqk1rDdIgd298T1UdUVS2bWLSns/YOag==
X-Received: by 2002:a1c:9e89:: with SMTP id h131mr5608286wme.161.1582319033154; 
 Fri, 21 Feb 2020 13:03:53 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z6sm5483930wrw.36.2020.02.21.13.03.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 13:03:52 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 21 Feb 2020 22:02:47 +0100
Message-Id: <20200221210319.2245170-20-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 19/51] drm: Cleanups after drmm_add_final_kfree
 rollout
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

A few things:
- Update the example driver in the documentation.
- We can drop the old kfree in drm_dev_release.
- Add a WARN_ON check in drm_dev_register to make sure everyone calls
  drmm_add_final_kfree and there's no leaks.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/drm_drv.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
index 9e62e28bbc62..1ee606b4a4f9 100644
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
@@ -834,10 +833,6 @@ static void drm_dev_release(struct kref *ref)
 		dev->driver->release(dev);
 	} else {
 		drm_dev_fini(dev);
-		if (!dev->managed.final_kfree) {
-			WARN_ON(!list_empty(&dev->managed.resources));
-			kfree(dev);
-		}
 	}
 
 	drm_managed_release(dev);
@@ -960,6 +955,8 @@ int drm_dev_register(struct drm_device *dev, unsigned long flags)
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
