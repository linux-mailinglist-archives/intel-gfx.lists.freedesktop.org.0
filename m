Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5EC164194
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 11:22:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB5256EB56;
	Wed, 19 Feb 2020 10:22:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0F2B6EB55
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 10:21:58 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id c84so6136400wme.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 02:21:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PjVhUH7zbHcsa41VUx/uj7E36n3v+QpbT1j8xCe4w8c=;
 b=ZFEgmxmBmaOurWVI9aVvHBBVbi8jEFViS8jbG3pXw3J47rPWmUkhmtBzJdOdmQNCZi
 FdbDei23uETvhNfDlVqiI4XdLuTBgzwUngddDIzb9DzvPivS5juoV8hwFz42SUkut/hD
 3upSFQ3q89YEDDdxE4JcZY6r9LmFbgkhnkf20=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PjVhUH7zbHcsa41VUx/uj7E36n3v+QpbT1j8xCe4w8c=;
 b=Cm8/Zb9KHLYoDeOsIrccojPhiavYL/+KKPuQ7POP4ZjvDlJmRXUrQCt2rxALrH2vvo
 /Un/wDxhcj2aUBvPZhlKkaawwurUw5sQkKGdqOCpG1Pju8UMouF707L0qrKJrCzyE6fc
 sOUHkEIO+43VWtlfXo6qFgJrofTFb1pVQZV6R8vjHUNNh1ppV6Gm2vgq1vD6AoDXKigi
 g1a6Tn3X60JH591COCkoddVwfuvVgi80A+W/xNYOu4mFVeuPVL4W2d+mqB0ferFrZUGw
 tNQeEEyJsUVAzTQkT04ZRQe69XEnbh/xtbtJ7Xtjnhea7gcCHnlUhAIS4wDht1EyQiGX
 9PFA==
X-Gm-Message-State: APjAAAVyH9RH+3WZ1J21CnLzxw9G46hkgziWH3cG79a8iP3ev006zr6h
 EHjn7+SXoVvZXeiUv+4IbnoQEQ==
X-Google-Smtp-Source: APXvYqyQPimGbtYLdEUXWCHZ856exVNGDRM2NggBj1M6XoTv80pu8BCSCI4lWbOmgd6YbxLFGfKXIw==
X-Received: by 2002:a7b:c3d1:: with SMTP id t17mr9098181wmj.27.1582107716715; 
 Wed, 19 Feb 2020 02:21:56 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s23sm2370339wra.15.2020.02.19.02.21.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 02:21:56 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 19 Feb 2020 11:20:51 +0100
Message-Id: <20200219102122.1607365-22-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 21/52] drm: Handle dev->unique with drmm_
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

We need to add a drmm_kstrdup for this, but let's start somewhere.

This is not exactly perfect onion unwinding, but it's jsut a kfree so
doesn't really matter at all.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/drm_drv.c     |  5 ++---
 drivers/gpu/drm/drm_managed.c | 16 ++++++++++++++++
 include/drm/drm_managed.h     |  1 +
 3 files changed, 19 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
index 1ee606b4a4f9..782fd5d6f8b2 100644
--- a/drivers/gpu/drm/drm_drv.c
+++ b/drivers/gpu/drm/drm_drv.c
@@ -777,7 +777,6 @@ void drm_dev_fini(struct drm_device *dev)
 	mutex_destroy(&dev->filelist_mutex);
 	mutex_destroy(&dev->struct_mutex);
 	drm_legacy_destroy_members(dev);
-	kfree(dev->unique);
 }
 EXPORT_SYMBOL(drm_dev_fini);
 
@@ -1063,8 +1062,8 @@ EXPORT_SYMBOL(drm_dev_unregister);
  */
 int drm_dev_set_unique(struct drm_device *dev, const char *name)
 {
-	kfree(dev->unique);
-	dev->unique = kstrdup(name, GFP_KERNEL);
+	drmm_kfree(dev, dev->unique);
+	dev->unique = drmm_kstrdup(dev, name, GFP_KERNEL);
 
 	return dev->unique ? 0 : -ENOMEM;
 }
diff --git a/drivers/gpu/drm/drm_managed.c b/drivers/gpu/drm/drm_managed.c
index ee7c7253af61..d8a484e19830 100644
--- a/drivers/gpu/drm/drm_managed.c
+++ b/drivers/gpu/drm/drm_managed.c
@@ -147,6 +147,22 @@ void *drmm_kmalloc(struct drm_device *dev, size_t size, gfp_t gfp)
 }
 EXPORT_SYMBOL(drmm_kmalloc);
 
+char *drmm_kstrdup(struct drm_device *dev, const char *s, gfp_t gfp)
+{
+	size_t size;
+	char *buf;
+
+	if (!s)
+		return NULL;
+
+	size = strlen(s) + 1;
+	buf = drmm_kmalloc(dev, size, gfp);
+	if (buf)
+		memcpy(buf, s, size);
+	return buf;
+}
+EXPORT_SYMBOL_GPL(drmm_kstrdup);
+
 void drmm_kfree(struct drm_device *dev, void *data)
 {
 	struct drmres *dr = NULL, *tmp;
diff --git a/include/drm/drm_managed.h b/include/drm/drm_managed.h
index 75f2c8932c69..240edd395e88 100644
--- a/include/drm/drm_managed.h
+++ b/include/drm/drm_managed.h
@@ -21,5 +21,6 @@ static inline void *drmm_kzalloc(struct drm_device *dev, size_t size, gfp_t gfp)
 {
 	return drmm_kmalloc(dev, size, gfp | __GFP_ZERO);
 }
+char *drmm_kstrdup(struct drm_device *dev, const char *s, gfp_t gfp);
 
 void drmm_kfree(struct drm_device *dev, void *data);
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
