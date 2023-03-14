Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5818B6B8888
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 03:28:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A136810E6CD;
	Tue, 14 Mar 2023 02:28:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 394E010E6CA;
 Tue, 14 Mar 2023 02:28:11 +0000 (UTC)
Received: from workpc.. (109-252-120-116.nat.spd-mgts.ru [109.252.120.116])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 (Authenticated sender: dmitry.osipenko)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id 1513B6602173;
 Tue, 14 Mar 2023 02:28:07 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1678760890;
 bh=vUKXk81qka0zQY/A/PT9otvyoQLzz6m+Uz83dLMP8L0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RMfz9vO3gE6S3hbW7psQPq/LLg4CPAVLTPe6KGgNJgHk9cSWmaPhyrF6z2og6SZLh
 9nZ5PqMRxNZQsp57/9uvE/XzFOVAeNFjpPuUF+74WpgZpHMuqHWaLgorTeSdtcnE16
 T4PFdmLgSinaj4anSbi2RVcCFp2gL1sKT/gp7NXrcaPRQ2kX4SreyhuzYsZH5J5yUs
 EwuN74fUwck7e8Y3aK/KJXPTTJCTCapDCtVfiHbkqr3ay3KwY5FnXJxsymTHah0E25
 VheNWgRojMueqnPdqQx9ICtB4r2KfxycBL89a0kEZ/MddMCFLz4h/T4zjzMT8sClVG
 MScr6ffX7APug==
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: David Airlie <airlied@gmail.com>, Gerd Hoffmann <kraxel@redhat.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>,
 Chia-I Wu <olvaffe@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 Daniel Stone <daniel@fooishbar.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Qiang Yu <yuq825@gmail.com>, Steven Price <steven.price@arm.com>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Rob Herring <robh@kernel.org>
Date: Tue, 14 Mar 2023 05:26:51 +0300
Message-Id: <20230314022659.1816246-3-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230314022659.1816246-1-dmitry.osipenko@collabora.com>
References: <20230314022659.1816246-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v13 02/10] drm/shmem-helper: Factor out pages
 alloc/release from drm_gem_shmem_get/put_pages()
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
Cc: intel-gfx@lists.freedesktop.org, kernel@collabora.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Factor out pages allocation from drm_gem_shmem_get_pages() into
drm_gem_shmem_acquire_pages() function and similar for the put_pages()
in a preparation for addition of shrinker support to drm-shmem.

Once shrinker will be added, the pages_use_count>0 will no longer determine
whether pages are pinned because pages could be swapped out by the shrinker
and then pages_use_count will be greater than 0 in this case. We will add
new pages_pin_count in a later patch.

The new common drm_gem_shmem_acquire/release_pages() will be used by
shrinker code for performing the page swapping.

Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 drivers/gpu/drm/drm_gem_shmem_helper.c | 67 +++++++++++++++++++++-----
 1 file changed, 54 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/drm/drm_gem_shmem_helper.c
index 8fc2a3277486..4da9c9c39b9a 100644
--- a/drivers/gpu/drm/drm_gem_shmem_helper.c
+++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
@@ -165,19 +165,26 @@ void drm_gem_shmem_free(struct drm_gem_shmem_object *shmem)
 }
 EXPORT_SYMBOL_GPL(drm_gem_shmem_free);
 
-static int drm_gem_shmem_get_pages(struct drm_gem_shmem_object *shmem)
+static int
+drm_gem_shmem_acquire_pages(struct drm_gem_shmem_object *shmem)
 {
 	struct drm_gem_object *obj = &shmem->base;
 	struct page **pages;
 
-	if (shmem->pages_use_count++ > 0)
-		return 0;
+	dma_resv_assert_held(shmem->base.resv);
+
+	if (shmem->madv < 0) {
+		drm_WARN_ON(obj->dev, shmem->pages);
+		return -ENOMEM;
+	}
+
+	if (drm_WARN_ON(obj->dev, !shmem->pages_use_count))
+		return -EINVAL;
 
 	pages = drm_gem_get_pages(obj);
 	if (IS_ERR(pages)) {
 		drm_dbg_kms(obj->dev, "Failed to get pages (%ld)\n",
 			    PTR_ERR(pages));
-		shmem->pages_use_count = 0;
 		return PTR_ERR(pages);
 	}
 
@@ -196,6 +203,48 @@ static int drm_gem_shmem_get_pages(struct drm_gem_shmem_object *shmem)
 	return 0;
 }
 
+static int drm_gem_shmem_get_pages(struct drm_gem_shmem_object *shmem)
+{
+	int err;
+
+	dma_resv_assert_held(shmem->base.resv);
+
+	if (shmem->madv < 0)
+		return -ENOMEM;
+
+	if (shmem->pages_use_count++ > 0)
+		return 0;
+
+	err = drm_gem_shmem_acquire_pages(shmem);
+	if (err)
+		goto err_zero_use;
+
+	return 0;
+
+err_zero_use:
+	shmem->pages_use_count = 0;
+
+	return err;
+}
+
+static void
+drm_gem_shmem_release_pages(struct drm_gem_shmem_object *shmem)
+{
+	struct drm_gem_object *obj = &shmem->base;
+
+	dma_resv_assert_held(shmem->base.resv);
+
+#ifdef CONFIG_X86
+	if (shmem->map_wc)
+		set_pages_array_wb(shmem->pages, obj->size >> PAGE_SHIFT);
+#endif
+
+	drm_gem_put_pages(obj, shmem->pages,
+			  shmem->pages_mark_dirty_on_put,
+			  shmem->pages_mark_accessed_on_put);
+	shmem->pages = NULL;
+}
+
 /*
  * drm_gem_shmem_put_pages - Decrease use count on the backing pages for a shmem GEM object
  * @shmem: shmem GEM object
@@ -214,15 +263,7 @@ void drm_gem_shmem_put_pages(struct drm_gem_shmem_object *shmem)
 	if (--shmem->pages_use_count > 0)
 		return;
 
-#ifdef CONFIG_X86
-	if (shmem->map_wc)
-		set_pages_array_wb(shmem->pages, obj->size >> PAGE_SHIFT);
-#endif
-
-	drm_gem_put_pages(obj, shmem->pages,
-			  shmem->pages_mark_dirty_on_put,
-			  shmem->pages_mark_accessed_on_put);
-	shmem->pages = NULL;
+	drm_gem_shmem_release_pages(shmem);
 }
 EXPORT_SYMBOL(drm_gem_shmem_put_pages);
 
-- 
2.39.2

