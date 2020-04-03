Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 394EE19D81A
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 15:58:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 943E36EB93;
	Fri,  3 Apr 2020 13:58:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3B8D6EB98
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 13:58:38 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id w15so2402047wrv.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 06:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZvQk3UMKpREQEavn6f6GQzxxPYg6kB+MDR96aSBynH8=;
 b=hn5toAuWexXQacUEAkpYAIgsv7Oo7PAH/u1rhcYDU5cWbSGUN1DVpW8q69DgmfmPch
 osemnEu2z04NUBXv9v00+9agSxmJVLLMh7Ssi9kebr1Nz/OU6Tf77ygKJLp7xkJrm+pC
 CBvK/VUNNEW7b+3X+7LH6Albl9X6TN6TOiegk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZvQk3UMKpREQEavn6f6GQzxxPYg6kB+MDR96aSBynH8=;
 b=hsO/kBR8XAuF/aAMeWxDiqVjXuK7baCKfhbVQIuDzW36gM5FNWu9+fQ/f/RNavVO4h
 uYpf8WnSq+qxj79K85md8RBvPkrjo8GqAIIZ9zK0+s9KV6z3i6EB7mD3ORV3TbC5odiH
 5T4PowJLIVjaH/KTm4BmD6aIXqzwGFCNyDBZMFQhRH9bCQTSfZ5IuDIqKdqKAzG+5DsA
 XH4+eGf0wU1xCGAvvm28uzY+1u5ooorJCD9SUdvKaBuJaV9Vh7Tpjqqn+DxupmkR2iqS
 O8LfILCKulQZ4WtLi1yOHpflcJvXiizQPmCBev+KjivikJ5KcmbmolAEkTb/ZTGzJ+q4
 K2Cg==
X-Gm-Message-State: AGi0PuaT/AOLk78MnORR2WCWtxVKAQ7HXnN+QbbdE9aSbb4t/pToipUg
 RCqZW21CWsJDPxgWFtB0XQqAwg==
X-Google-Smtp-Source: APiQypI8sdDjkxp06BsFDCjCyHreLBQ7T+9979inZfvcf9IZONWHcYcneWQRyczz9VbyozvRD2V3Ig==
X-Received: by 2002:adf:f58c:: with SMTP id f12mr9751287wro.207.1585922317585; 
 Fri, 03 Apr 2020 06:58:37 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f141sm11783919wmf.3.2020.04.03.06.58.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 06:58:36 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  3 Apr 2020 15:57:46 +0200
Message-Id: <20200403135828.2542770-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/44] drm: Add devm_drm_dev_alloc macro
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The kerneldoc is only added for this new function. Existing kerneldoc
and examples will be udated at the very end, since once all drivers
are converted over to devm_drm_dev_alloc we can unexport a lot of
interim functions and make the documentation for driver authors a lot
cleaner and less confusing. There will be only one true way to
initialize a drm_device at the end of this, which is going to be
devm_drm_dev_alloc.

Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/drm_drv.c | 23 +++++++++++++++++++++++
 include/drm/drm_drv.h     | 33 +++++++++++++++++++++++++++++++++
 2 files changed, 56 insertions(+)

diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
index 1bb4f636b83c..9e60b784b3ac 100644
--- a/drivers/gpu/drm/drm_drv.c
+++ b/drivers/gpu/drm/drm_drv.c
@@ -739,6 +739,29 @@ int devm_drm_dev_init(struct device *parent,
 }
 EXPORT_SYMBOL(devm_drm_dev_init);
 
+void* __devm_drm_dev_alloc(struct device *parent, struct drm_driver *driver,
+			   size_t size, size_t offset)
+{
+	void *container;
+	struct drm_device *drm;
+	int ret;
+
+	container = kzalloc(size, GFP_KERNEL);
+	if (!container)
+		return ERR_PTR(-ENOMEM);
+
+	drm = container + offset;
+	ret = devm_drm_dev_init(parent, drm, driver);
+	if (ret) {
+		kfree(container);
+		return ERR_PTR(ret);
+	}
+	drmm_add_final_kfree(drm, container);
+
+	return container;
+}
+EXPORT_SYMBOL(__devm_drm_dev_alloc);
+
 /**
  * drm_dev_alloc - Allocate new DRM device
  * @driver: DRM driver to allocate device for
diff --git a/include/drm/drm_drv.h b/include/drm/drm_drv.h
index e7c6ea261ed1..26776be5a21e 100644
--- a/include/drm/drm_drv.h
+++ b/include/drm/drm_drv.h
@@ -626,6 +626,39 @@ int devm_drm_dev_init(struct device *parent,
 		      struct drm_device *dev,
 		      struct drm_driver *driver);
 
+void* __devm_drm_dev_alloc(struct device *parent, struct drm_driver *driver,
+			   size_t size, size_t offset);
+
+/**
+ * devm_drm_dev_alloc - Resource managed allocation of a &drm_device instance
+ * @parent: Parent device object
+ * @driver: DRM driver
+ * @type: the type of the struct which contains struct &drm_device
+ * @member: the name of the &drm_device within @type.
+ *
+ * This allocates and initialize a new DRM device. No device registration is done.
+ * Call drm_dev_register() to advertice the device to user space and register it
+ * with other core subsystems. This should be done last in the device
+ * initialization sequence to make sure userspace can't access an inconsistent
+ * state.
+ *
+ * The initial ref-count of the object is 1. Use drm_dev_get() and
+ * drm_dev_put() to take and drop further ref-counts.
+ *
+ * It is recommended that drivers embed &struct drm_device into their own device
+ * structure.
+ *
+ * Note that this manages the lifetime of the resulting &drm_device
+ * automatically using devres. The DRM device initialized with this function is
+ * automatically put on driver detach using drm_dev_put().
+ *
+ * RETURNS:
+ * Pointer to new DRM device, or ERR_PTR on failure.
+ */
+#define devm_drm_dev_alloc(parent, driver, type, member) \
+	((type *) __devm_drm_dev_alloc(parent, driver, sizeof(type), \
+				       offsetof(type, member)))
+
 struct drm_device *drm_dev_alloc(struct drm_driver *driver,
 				 struct device *parent);
 int drm_dev_register(struct drm_device *dev, unsigned long flags);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
