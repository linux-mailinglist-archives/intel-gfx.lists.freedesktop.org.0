Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7EF9176712
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 23:27:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F301C6E884;
	Mon,  2 Mar 2020 22:27:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B675B6E88D
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 22:27:06 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id v4so1846213wrs.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Mar 2020 14:27:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=d1AHaQvhN2ion1uFEUr1XcIxdeUJfypsRlQhvEHgQjY=;
 b=JaEoqB0adT53UtWCgSAZO9uQtvNoj6C7Gj9sBYMu4trKLgISu9DE+hUUg0rV48Mlep
 tdic976YpuUlTMMIt5sGfbPjEr1VI5C237EJf+0X+LRUfEr6srZLzoxhV9UpKawiZHfz
 wWfk4JE2UEwsVOaFXbcqOg1uHoXwMlotkBuKw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d1AHaQvhN2ion1uFEUr1XcIxdeUJfypsRlQhvEHgQjY=;
 b=Fd5S3WDERtJSOvKbRbI+WaooDOgzJdGCuV4GTnOoX4mXUQ2gm9GclWaveH7gLgng4m
 GVrVjR1NkIicJ/vg/5tfBvNWdCznCj3RZAQY8+7zrGnK1Ewe13KA8GGldr2kURqiIBlB
 K5h+TbCygPQbzRyuQbIauMFlI/oJ4n2ovBUWHgv0TD7pnQQ5sT8PmQd08HDVNdalonF+
 RiNBO6lLGaQRAtC5/eRxdKa6hrwE1Jg8blqjaDSFnQyy0O3st5d4H0zhBhuSwaNKpEab
 OqJjMn50rVirW0pp9tfsa7YAgB/sX9cYx9mPFooFwnMV2JL87Ufl+3x7R9AuaJGKSeXH
 rVJg==
X-Gm-Message-State: ANhLgQ3IdHRgqvDBazUVoViuRGGSHy4GyEjp9IWk8nAa74pMAaLT/gC5
 CAMCURfqbpigeBAcjcPrdQaIbQ==
X-Google-Smtp-Source: ADFU+vt5sSwD7uAFSOT/9moFiufHOw4jt41eCGj1wv1GoSUB5Qr/yKj/i5Q8VI2B2kI+mKptj0mzRg==
X-Received: by 2002:a5d:4b03:: with SMTP id v3mr1732586wrq.81.1583188025348;
 Mon, 02 Mar 2020 14:27:05 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o18sm26114589wrv.60.2020.03.02.14.27.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 14:27:04 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon,  2 Mar 2020 23:25:59 +0100
Message-Id: <20200302222631.3861340-20-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
References: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
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
 drivers/gpu/drm/drm_drv.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
index 7b84ee8a5eb5..1a048325f30e 100644
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
@@ -961,6 +960,8 @@ int drm_dev_register(struct drm_device *dev, unsigned long flags)
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
