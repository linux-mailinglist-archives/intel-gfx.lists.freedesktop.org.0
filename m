Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F128415D37
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 13:57:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8A626ED25;
	Thu, 23 Sep 2021 11:57:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05F1C6ECF6
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 07:56:32 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id t28so1163283wra.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 00:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=jIUir/k9ok0mhA9lZLcDk0nsv9skwzmV2ts7X5dBo9o=;
 b=O3SmItKwUV6yyjU1KfQZ9CyqmNgPIxJFFQ806wPnttMzTcetckgEIu5qlHGYxPiZ3G
 Lua3jJ7DtL3fETuzKmXsS5p7CDQGfrl2vbuGu90Xsn5khs2h5P9ussv90PYiCOjcI0LP
 kRu0OjQq0XFr3pZEkLgs8ub4Z/7bSG92/jY9oPcyrXrugF/jpJVdltFuItstIx6KPr/q
 IE8Ro1Rj3TesWg1SDkYXiuCOtzte0ygKVJwXHqnr3umalBoRU0qoTtFR3yZgo89P8Xqy
 3j+MR7i/ZJrRydnYn4mEJ6LOBYuOxJa6IqDRhjAQUHoG5BmuzUvGsH6bSGH8QPKKp8H/
 3k/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jIUir/k9ok0mhA9lZLcDk0nsv9skwzmV2ts7X5dBo9o=;
 b=pp6m7cVd6Azxpoo657tfxMfpE0FQtN+BCVlqD+RyuwZ5aP7liTrXnK8kD8BKnZUrzf
 MRwk5ylU9jF1+0O5y2raccEbyjPpUmHcRxpOCd+RXJTkKYJeqoJEprLnFkeJxN4xIP9I
 cPXOYKovPmXF2WJRfvg+vAdeaxip9OBPFmYRW6prH4AneMzr158hw1uQTF1EuV3qcBJ3
 uxhiLf7SrgdyFMR1XYcoIjVa+M5vFKvVON3oW9J9PNhVs55tqFCbRK1Cd2aJMYmd+ztm
 8/jfVjVp3ZhLKtB8exnxfA8cDfyzXzP/GQTQMywuw9cCH6pgUvVQG3n7vzpiS9Va2rAi
 PWtQ==
X-Gm-Message-State: AOAM530CbApzEhsNAaNVqITlByXjVk3mH2rwDM3GAu6vWP//Q3RstfKu
 ProYgVHfX0GLXSwLCA0LxTQ2oq1hPlI=
X-Google-Smtp-Source: ABdhPJyvs3LrHnZEmHzsGZR77dBavh+yb1fpQW8HdX0AjrQi6f4PdGEG2TgUa3rAkPk//ih8qo80QQ==
X-Received: by 2002:a5d:510b:: with SMTP id s11mr3362657wrt.79.1632383790656; 
 Thu, 23 Sep 2021 00:56:30 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 k19sm4280704wmr.21.2021.09.23.00.56.29
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Sep 2021 00:56:29 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 09:56:07 +0200
Message-Id: <20210923075608.2873-24-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210923075608.2873-1-christian.koenig@amd.com>
References: <20210923075608.2873-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 23 Sep 2021 11:57:22 +0000
Subject: [Intel-gfx] [PATCH 24/25] drm/etnaviv: use new iterator in
 etnaviv_gem_describe
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Instead of hand rolling the logic.

Signed-off-by: Christian König <christian.koenig@amd.com>
---
 drivers/gpu/drm/etnaviv/etnaviv_gem.c | 31 ++++++++++-----------------
 1 file changed, 11 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gem.c b/drivers/gpu/drm/etnaviv/etnaviv_gem.c
index 8f1b5af47dd6..0eeb33de2ff4 100644
--- a/drivers/gpu/drm/etnaviv/etnaviv_gem.c
+++ b/drivers/gpu/drm/etnaviv/etnaviv_gem.c
@@ -428,19 +428,17 @@ int etnaviv_gem_wait_bo(struct etnaviv_gpu *gpu, struct drm_gem_object *obj,
 static void etnaviv_gem_describe_fence(struct dma_fence *fence,
 	const char *type, struct seq_file *m)
 {
-	if (!test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
-		seq_printf(m, "\t%9s: %s %s seq %llu\n",
-			   type,
-			   fence->ops->get_driver_name(fence),
-			   fence->ops->get_timeline_name(fence),
-			   fence->seqno);
+	seq_printf(m, "\t%9s: %s %s seq %llu\n", type,
+		   fence->ops->get_driver_name(fence),
+		   fence->ops->get_timeline_name(fence),
+		   fence->seqno);
 }
 
 static void etnaviv_gem_describe(struct drm_gem_object *obj, struct seq_file *m)
 {
 	struct etnaviv_gem_object *etnaviv_obj = to_etnaviv_bo(obj);
 	struct dma_resv *robj = obj->resv;
-	struct dma_resv_list *fobj;
+	struct dma_resv_iter cursor;
 	struct dma_fence *fence;
 	unsigned long off = drm_vma_node_start(&obj->vma_node);
 
@@ -449,21 +447,14 @@ static void etnaviv_gem_describe(struct drm_gem_object *obj, struct seq_file *m)
 			obj->name, kref_read(&obj->refcount),
 			off, etnaviv_obj->vaddr, obj->size);
 
-	rcu_read_lock();
-	fobj = dma_resv_shared_list(robj);
-	if (fobj) {
-		unsigned int i, shared_count = fobj->shared_count;
-
-		for (i = 0; i < shared_count; i++) {
-			fence = rcu_dereference(fobj->shared[i]);
+	dma_resv_iter_begin(&cursor, robj, true);
+	dma_resv_for_each_fence_unlocked(&cursor, fence) {
+		if (dma_resv_iter_is_exclusive(&cursor))
+			etnaviv_gem_describe_fence(fence, "Exclusive", m);
+		else
 			etnaviv_gem_describe_fence(fence, "Shared", m);
-		}
 	}
-
-	fence = dma_resv_excl_fence(robj);
-	if (fence)
-		etnaviv_gem_describe_fence(fence, "Exclusive", m);
-	rcu_read_unlock();
+	dma_resv_iter_end(&cursor);
 }
 
 void etnaviv_gem_describe_objects(struct etnaviv_drm_private *priv,
-- 
2.25.1

