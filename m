Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C57BB164188
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 11:22:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66F0C6EB4B;
	Wed, 19 Feb 2020 10:21:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 265276EB3C
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 10:21:49 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id t23so5866510wmi.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 02:21:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Awh1scCBZDnbimNWmMKzFzKs8NB+SPqvHt1ZzjCLXAI=;
 b=FmvyzuSl+pmrkYjBI0DeBrdSGOIE1lfL7FXOjhs/m+oB8RasJiMok7FRdA1KwrxNk7
 AFA9L1n2UDW8INzF8mWugQlol2Q1DSGzq7r83MaWOn8J1uvEwuJkkP5JCY7hIxnj6aKl
 fS0McxE6pQS2oEA0AfnRd14do/Z+NPGClHnWg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Awh1scCBZDnbimNWmMKzFzKs8NB+SPqvHt1ZzjCLXAI=;
 b=beUSAOMRFjEUbSUrRc+YiA43Acl36pKNB8i4xIQ6TX/CDP33nyxN3pIKemL7ngU4ka
 YHg4WCBy4QOVS50OO/ZUHhfSKJZ0lvAJd64U1XJ+I6hxHOJT8btTyqCSMNMq5SRjuOxc
 zqPFz+U5BqksXNNkW3+YHYQiuyoSXR5X5j9mOjmJNx2bn4cTsUVEFALf7FN/J0wru4L9
 u6VRasOQJqA2OIxzNgCoBPPOSCN89sUXQ2bszzmB/cgjcBSXBItqm84GQ/2qN1chjxWU
 krVz79/LwaUYU6w2NRWg8HQiCIpA7lBNk49jDqrNd5fQQlJlyqotcofBJPmzLFSoO5BH
 VjCQ==
X-Gm-Message-State: APjAAAUJHAdvAMmXtQPDkQSY8oJQ6XWaiEdlQyVNWBOlk3c0CUuBkrnj
 LTK/oCtt2jZPLHiWwIvnmsh8AA==
X-Google-Smtp-Source: APXvYqx2SvHJQwuUcvRrt4QP5p4B0FlZZeW3EYRcYR9yNJMPIuCmhlKP3LfR87UDeWPB8Nt74GVMww==
X-Received: by 2002:a1c:ac46:: with SMTP id v67mr8890698wme.153.1582107707851; 
 Wed, 19 Feb 2020 02:21:47 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s23sm2370339wra.15.2020.02.19.02.21.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 02:21:47 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 19 Feb 2020 11:20:44 +0100
Message-Id: <20200219102122.1607365-15-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/52] drm/vgem: Use drmm_add_final_kfree
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
Cc: Rob Clark <robdclark@chromium.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Eric Anholt <eric@anholt.net>, Sean Paul <seanpaul@chromium.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With this we can drop the final kfree from the release function.

v2: After drm_dev_init/drmm_add_final_kfree we need to clean up
everything through a drm_dev_put. Rework the unwind code to match
that.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Emil Velikov <emil.velikov@collabora.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Sean Paul <seanpaul@chromium.org>
Cc: Eric Anholt <eric@anholt.net>
Cc: Rob Clark <robdclark@chromium.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/gpu/drm/vgem/vgem_drv.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/vgem/vgem_drv.c b/drivers/gpu/drm/vgem/vgem_drv.c
index 909eba43664a..7486014e9149 100644
--- a/drivers/gpu/drm/vgem/vgem_drv.c
+++ b/drivers/gpu/drm/vgem/vgem_drv.c
@@ -39,6 +39,7 @@
 #include <drm/drm_drv.h>
 #include <drm/drm_file.h>
 #include <drm/drm_ioctl.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_prime.h>
 
 #include "vgem_drv.h"
@@ -432,8 +433,6 @@ static void vgem_release(struct drm_device *dev)
 
 	platform_device_unregister(vgem->platform);
 	drm_dev_fini(&vgem->drm);
-
-	kfree(vgem);
 }
 
 static struct drm_driver vgem_driver = {
@@ -489,16 +488,19 @@ static int __init vgem_init(void)
 			   &vgem_device->platform->dev);
 	if (ret)
 		goto out_unregister;
+	drmm_add_final_kfree(&vgem_device->drm, vgem_device);
 
 	/* Final step: expose the device/driver to userspace */
-	ret  = drm_dev_register(&vgem_device->drm, 0);
+	ret = drm_dev_register(&vgem_device->drm, 0);
 	if (ret)
-		goto out_fini;
+		goto out_put;
 
 	return 0;
 
-out_fini:
-	drm_dev_fini(&vgem_device->drm);
+out_put:
+	drm_dev_put(&vgem_device->drm);
+	return ret;
+
 out_unregister:
 	platform_device_unregister(vgem_device->platform);
 out_free:
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
