Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93EE218F765
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 15:51:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F5296E14E;
	Mon, 23 Mar 2020 14:50:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED28D6E1B3
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 14:50:24 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id w10so17456267wrm.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 07:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wbQinXd5DZXxt7LdVAdqB2f0eyOj50kSIUYvaFBmLN8=;
 b=eq4ziTidBhyZBroI35ycA2HCNRnZOjZKi3rnMt8A5Xg7kuQlUPvPsK+JoYVgt67wG2
 QLAqoP/T/DLWeM49FZGSR4Sg5FM+nswQ5PRHJf6G2V2mbab/aarBTwgaphv70q2nm1+K
 UyMHucqvMd8e3NuuS5cLx5t6AmUW/OejZL6/I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wbQinXd5DZXxt7LdVAdqB2f0eyOj50kSIUYvaFBmLN8=;
 b=EU+WNquNbRhAfkSoqiFryvbCNSmU2kNSFxjm5HeyxQwLDLXL3AZhYCKJ88FI2FBbvE
 w4cHeptBnWO7aP+C6mJjwZW6ykSHlMvxYSp5RCSVh0jKwBHYnRSikvaUvH7kJKtsZI3Y
 DNYDKhHa26hp/DVlVRkCyzXM3m1LTBH1YP+niM3BvsVXReFqqVUemoe+FSFbM4PT5ymE
 wjS6M5QSV1KhlaExixvqi0MWJZkKP+v4sWwSHt9Lv/Ha96x9WgnKoQgUVbZRM9E6j8m7
 SbBQyfmlo6rT2PWdmvt19lb/f72qq6mvbX3gGhGXxLxrOMzBuj25u7edE34Ca4AIs4ri
 vgmg==
X-Gm-Message-State: ANhLgQ1J6u4LbmFjRhkg9w3d7ToHHlyfmNCEmKOX9izAjhf/RWeN21Xh
 UsJV4GNsA+Tg3J8nSrKRxn6YpQ==
X-Google-Smtp-Source: ADFU+vuSS/hf88juTiTl9KVrdD+swSmePhb7SJ2g/kWk43JgmWcomRRI3zskGlP7zXrPisLv+mOEkA==
X-Received: by 2002:adf:9321:: with SMTP id 30mr29271818wro.330.1584975023424; 
 Mon, 23 Mar 2020 07:50:23 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s22sm20376522wmc.16.2020.03.23.07.50.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 07:50:22 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 23 Mar 2020 15:49:18 +0100
Message-Id: <20200323144950.3018436-20-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
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
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
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

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/drm_drv.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
index 877ded348b6e..7f9d7ea543a0 100644
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
@@ -837,10 +836,7 @@ static void drm_dev_release(struct kref *ref)
 
 	drm_managed_release(dev);
 
-	if (!dev->driver->release && !dev->managed.final_kfree) {
-		WARN_ON(!list_empty(&dev->managed.resources));
-		kfree(dev);
-	} else if (dev->managed.final_kfree)
+	if (dev->managed.final_kfree)
 		kfree(dev->managed.final_kfree);
 }
 
@@ -961,6 +957,8 @@ int drm_dev_register(struct drm_device *dev, unsigned long flags)
 	if (!driver->load)
 		drm_mode_config_validate(dev);
 
+	WARN_ON(!dev->managed.final_kfree);
+
 	if (drm_dev_needs_global_mutex(dev))
 		mutex_lock(&drm_global_mutex);
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
