Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B377B18F76B
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 15:51:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 727956E17D;
	Mon, 23 Mar 2020 14:50:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D8B86E201
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 14:50:27 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id a81so9380441wmf.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 07:50:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OIbPEI4QCsUAESUnIm7AfSdp3kY+mjO3stIzLNlS3v8=;
 b=SJWh2xgRzcVMf4vTNpGTayF/No9wF6qIFXzEQrxE8DogVv+uUmHKamdS0qhKrY0hNT
 6bDkn218U6yoGniAp/f59QBzTHN8nRFW3Zb2kKugCzTpQVtXrQ51sJEdYH3/YgHrosjQ
 5jsAxoR2pW87BDm9gCuyiEZcI73OA7XMHmHk4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OIbPEI4QCsUAESUnIm7AfSdp3kY+mjO3stIzLNlS3v8=;
 b=tdJWMlT3fyAjHpCeYv6JrbJcIEPsGa25UHzae782B4RY9PyyEyDN7qWSwPmnhu2UJM
 OTpfAN+zGmTbxAcScg7Ing7abvRdynhFMTuSoPD3ROoSQgUCPxhbGzOponW8SzstFDkF
 gpkE1r2qcvRmOO1liOGUo4zR+MRjYJuRqhK6QHNHcOz56q6icL6tqdvIXV51eCMn7I6s
 Lo9XFIWnLennU507bJydUbc+4MnQ0KYG0JE88AL4vZLoz7m3mtkiFw5QoG2lW+zDMXQh
 j3ALuEfWLKylkoP9c0oF1rDiBvnJlnf8r8Gpq4c9l26YvmMeQR1kTwL1iWdglPx/c/pL
 bsiw==
X-Gm-Message-State: ANhLgQ0fPMHwDjsylrrON7H3+/Mf2kjUftTitogbCi8db96OBMQTlHai
 VCH5wRrdeG8m6CRjv8TC3CZuf/LNK6ovPw==
X-Google-Smtp-Source: ADFU+vt5G6YIgS/PTt3V35/FLfBe3GBS+4FQiar8K/rlo3bq4V1SjWhM9PrUF6WO5sbLk9kHQd0slg==
X-Received: by 2002:a1c:48c1:: with SMTP id v184mr27633208wma.20.1584975025881; 
 Mon, 23 Mar 2020 07:50:25 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s22sm20376522wmc.16.2020.03.23.07.50.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 07:50:25 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 23 Mar 2020 15:49:20 +0100
Message-Id: <20200323144950.3018436-22-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 21/51] drm: Use drmm_ for drm_dev_init cleanup
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

Well for the simple stuff at least, vblank, gem and minor cleanup I
want to further split up as a demonstration.

v2: We need to clear drm_device->dev otherwise the debug drm printing
after our cleanup hook (e.g. in drm_manged_release) will chase
released memory and result in a use-after-free. Not really pretty, but
oh well.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/drm_drv.c | 48 ++++++++++++++++++++-------------------
 1 file changed, 25 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
index c80ebc6811b1..a710c53d13a8 100644
--- a/drivers/gpu/drm/drm_drv.c
+++ b/drivers/gpu/drm/drm_drv.c
@@ -580,6 +580,23 @@ static void drm_fs_inode_free(struct inode *inode)
  *    used.
  */
 
+static void drm_dev_init_release(struct drm_device *dev, void *res)
+{
+	drm_legacy_ctxbitmap_cleanup(dev);
+	drm_legacy_remove_map_hash(dev);
+	drm_fs_inode_free(dev->anon_inode);
+
+	put_device(dev->dev);
+	/* Prevent use-after-free in drm_managed_release when debugging is
+	 * enabled. Slightly awkward, but can't really be helped. */
+	dev->dev = NULL;
+	mutex_destroy(&dev->master_mutex);
+	mutex_destroy(&dev->clientlist_mutex);
+	mutex_destroy(&dev->filelist_mutex);
+	mutex_destroy(&dev->struct_mutex);
+	drm_legacy_destroy_members(dev);
+}
+
 /**
  * drm_dev_init - Initialise new DRM device
  * @dev: DRM device
@@ -647,11 +664,15 @@ int drm_dev_init(struct drm_device *dev,
 	mutex_init(&dev->clientlist_mutex);
 	mutex_init(&dev->master_mutex);
 
+	ret = drmm_add_action(dev, drm_dev_init_release, NULL);
+	if (ret)
+		return ret;
+
 	dev->anon_inode = drm_fs_inode_new();
 	if (IS_ERR(dev->anon_inode)) {
 		ret = PTR_ERR(dev->anon_inode);
 		DRM_ERROR("Cannot allocate anonymous inode: %d\n", ret);
-		goto err_free;
+		goto err;
 	}
 
 	if (drm_core_check_feature(dev, DRIVER_RENDER)) {
@@ -688,19 +709,12 @@ int drm_dev_init(struct drm_device *dev,
 	if (drm_core_check_feature(dev, DRIVER_GEM))
 		drm_gem_destroy(dev);
 err_ctxbitmap:
-	drm_legacy_ctxbitmap_cleanup(dev);
-	drm_legacy_remove_map_hash(dev);
 err_minors:
 	drm_minor_free(dev, DRM_MINOR_PRIMARY);
 	drm_minor_free(dev, DRM_MINOR_RENDER);
-	drm_fs_inode_free(dev->anon_inode);
-err_free:
-	put_device(dev->dev);
-	mutex_destroy(&dev->master_mutex);
-	mutex_destroy(&dev->clientlist_mutex);
-	mutex_destroy(&dev->filelist_mutex);
-	mutex_destroy(&dev->struct_mutex);
-	drm_legacy_destroy_members(dev);
+err:
+	drm_managed_release(dev);
+
 	return ret;
 }
 EXPORT_SYMBOL(drm_dev_init);
@@ -763,20 +777,8 @@ void drm_dev_fini(struct drm_device *dev)
 	if (drm_core_check_feature(dev, DRIVER_GEM))
 		drm_gem_destroy(dev);
 
-	drm_legacy_ctxbitmap_cleanup(dev);
-	drm_legacy_remove_map_hash(dev);
-	drm_fs_inode_free(dev->anon_inode);
-
 	drm_minor_free(dev, DRM_MINOR_PRIMARY);
 	drm_minor_free(dev, DRM_MINOR_RENDER);
-
-	put_device(dev->dev);
-
-	mutex_destroy(&dev->master_mutex);
-	mutex_destroy(&dev->clientlist_mutex);
-	mutex_destroy(&dev->filelist_mutex);
-	mutex_destroy(&dev->struct_mutex);
-	drm_legacy_destroy_members(dev);
 }
 EXPORT_SYMBOL(drm_dev_fini);
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
