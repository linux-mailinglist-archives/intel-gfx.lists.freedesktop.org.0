Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB621688D3
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 22:05:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F23C26F560;
	Fri, 21 Feb 2020 21:04:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5B676F537
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 21:03:55 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id n3so3157405wmk.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 13:03:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yswXnJx/KLRKLZ1EcnAm/PS8U8nl4TZHDp7JDN4HCfc=;
 b=Xft5esFSzVtA4pmWkijpq24ZnfmUxrK92pm84v97BHOklUo3znVjOr9VXuqWQ6YlyD
 WJl+Aw7GmOFLKFisw6IclJMG7pCUmfJ3BJwtL7DNCvoIyxiz4MsPXBzbmvtWR4+hiX3B
 Io/W345RxOXy7NFHpQsphdvZDHQOW5QtwY48c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yswXnJx/KLRKLZ1EcnAm/PS8U8nl4TZHDp7JDN4HCfc=;
 b=EOZ/yLtCun5oO/qh7SCfYkdrDaW75rSvPQjcLNzsuttWy6BfnHhCyaiG9V+n+4TwoS
 duQwIsUJusC1NLqZtmFeIYjcNwY5YtTk3QpqF1RRsQhdA+nHhdOfDQwe1uSXyqdYDfL9
 kv0xCzmDnmCUYexIrut1euvgwRgdDcacvvnm1L1JivMlLIrIuHcIrQ2YgE++aj0LOp7Y
 PtjUQxwQqTnK1fdjWsZaTKNUrtAe8skegOx7vZpz9Zz4IZSP/SIKeqBs5Ac6u8ALknG4
 jLj4/i1c6hQXPH/Z5STo1VWoFxIJQV3HBfJ3oPDiAGNFS0Girf3QkjYpDKFnSCNNy1V6
 CPTA==
X-Gm-Message-State: APjAAAXKDBj1gCTkLyruMXOR5gRcGA6PfDcjlMpGH7B51b67hWc0L1Bv
 4mb9I/ePw93OtGCeU2VR7PsoS9AZ+qo=
X-Google-Smtp-Source: APXvYqxvRLJCu7hDhkUdqPcev5NDLl/59JqHMzXSwKe95y+20WqWDnwn3fucD9mRcvtH5sS0omrkxQ==
X-Received: by 2002:a1c:9602:: with SMTP id y2mr5535034wmd.23.1582319034381;
 Fri, 21 Feb 2020 13:03:54 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z6sm5483930wrw.36.2020.02.21.13.03.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 13:03:53 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 21 Feb 2020 22:02:48 +0100
Message-Id: <20200221210319.2245170-21-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 20/51] drm: Handle dev->unique with drmm_
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
index a36d4604ee18..cc917187a723 100644
--- a/drivers/gpu/drm/drm_managed.c
+++ b/drivers/gpu/drm/drm_managed.c
@@ -149,6 +149,22 @@ void *drmm_kmalloc(struct drm_device *dev, size_t size, gfp_t gfp)
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
 	struct drmres *dr_match = NULL, *dr;
diff --git a/include/drm/drm_managed.h b/include/drm/drm_managed.h
index 7b5df7d09b19..89e6fce9f689 100644
--- a/include/drm/drm_managed.h
+++ b/include/drm/drm_managed.h
@@ -24,6 +24,7 @@ static inline void *drmm_kzalloc(struct drm_device *dev, size_t size, gfp_t gfp)
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
