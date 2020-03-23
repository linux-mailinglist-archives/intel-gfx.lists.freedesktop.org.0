Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA62918F75E
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 15:51:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E83636E1B2;
	Mon, 23 Mar 2020 14:50:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED44F6E150
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 14:50:07 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id w10so17454808wrm.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 07:50:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8EEdhlDxPGCszNH39KDQNapCEw4c4r8sQpDp4YCg1tQ=;
 b=k6urjDIZuhuoPs7ZD1FcgK966/qfJ2UPTH/pF2x/0l3M2i5NjEOO2+CAPg/c5Jgmy7
 Xqox1R+kNuDHbksH1YUUSK19MipDveHSjMjRL/WnIAQU+7rjQkYIBFV8dOhNc4rjoz9u
 QPYbQbxCarRmHX4lypKkyIWHvlxsSzatXbFp8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8EEdhlDxPGCszNH39KDQNapCEw4c4r8sQpDp4YCg1tQ=;
 b=JvZ/1Bweb0TVDdqmQ8+R5q6vXhj2JDo3eaiWmxFexe3AjVVuuoJ0U1cRDRLO4jGfaX
 6V1wXrZNUCP5kYhRczVI1qKy3hwwa3xbYGcGhzp/qbm1dXQM85OTq8eonyakM2zpMyKf
 m3JzBH7Re5ANSDXnpWAhdU0iHfAsKFGQnwEGwxkH+Y40XbnAbBT96IoVVYnOkBuPv2OI
 HVpoSrvJtMK6dv3arIgKYZdlNQrLeQdkqx1mNQMZou0i+dMv6i1hxb1xHefy4yqljvLA
 q7n4fptp/77ZYzJQRh2M+rApP9/mRGwsBbxcVeeluY14fk4+f3mbx2E5sUZA5Uqydq5N
 i7yQ==
X-Gm-Message-State: ANhLgQ1TOQYyb8PRC0KLWJnOZfUyVkj9SirXn05xDljzQ+Rp69ulny/Z
 3cG7aVSNddJJFqzTM+71Rs1zfg==
X-Google-Smtp-Source: ADFU+vvH2AC0AyJuWazp1JxP6K2wqcG7brSho8DLZzVQcpb9YvutEdwaVpcxqLcib+NAIqWSIGA0qA==
X-Received: by 2002:a5d:5286:: with SMTP id c6mr30023307wrv.418.1584975006564; 
 Mon, 23 Mar 2020 07:50:06 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s22sm20376522wmc.16.2020.03.23.07.50.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 07:50:05 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 23 Mar 2020 15:49:06 +0100
Message-Id: <20200323144950.3018436-8-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/51] drm/qxl: Use drmm_add_final_kfree
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
Cc: spice-devel@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 virtualization@lists.linux-foundation.org, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With this we can drop the final kfree from the release function.

Acked-by: Gerd Hoffmann <kraxel@redhat.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Dave Airlie <airlied@redhat.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: virtualization@lists.linux-foundation.org
Cc: spice-devel@lists.freedesktop.org
---
 drivers/gpu/drm/qxl/qxl_drv.c | 2 --
 drivers/gpu/drm/qxl/qxl_kms.c | 2 ++
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/qxl/qxl_drv.c b/drivers/gpu/drm/qxl/qxl_drv.c
index 4fda3f9b29f4..09102e2efabc 100644
--- a/drivers/gpu/drm/qxl/qxl_drv.c
+++ b/drivers/gpu/drm/qxl/qxl_drv.c
@@ -144,8 +144,6 @@ static void qxl_drm_release(struct drm_device *dev)
 	 */
 	qxl_modeset_fini(qdev);
 	qxl_device_fini(qdev);
-	dev->dev_private = NULL;
-	kfree(qdev);
 }
 
 static void
diff --git a/drivers/gpu/drm/qxl/qxl_kms.c b/drivers/gpu/drm/qxl/qxl_kms.c
index 70b20ee4741a..09d7b5f6d172 100644
--- a/drivers/gpu/drm/qxl/qxl_kms.c
+++ b/drivers/gpu/drm/qxl/qxl_kms.c
@@ -27,6 +27,7 @@
 #include <linux/pci.h>
 
 #include <drm/drm_drv.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_probe_helper.h>
 
 #include "qxl_drv.h"
@@ -121,6 +122,7 @@ int qxl_device_init(struct qxl_device *qdev,
 	qdev->ddev.pdev = pdev;
 	pci_set_drvdata(pdev, &qdev->ddev);
 	qdev->ddev.dev_private = qdev;
+	drmm_add_final_kfree(&qdev->ddev, qdev);
 
 	mutex_init(&qdev->gem.mutex);
 	mutex_init(&qdev->update_area_mutex);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
