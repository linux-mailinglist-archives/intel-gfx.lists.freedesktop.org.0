Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E777E73FE5C
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 16:39:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32C9E10E322;
	Tue, 27 Jun 2023 14:39:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com
 [IPv6:2607:f8b0:4864:20::62a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9D3710E14C
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 08:55:31 +0000 (UTC)
Received: by mail-pl1-x62a.google.com with SMTP id
 d9443c01a7336-1b5585e84b4so6827725ad.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 01:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance.com; s=google; t=1687424131; x=1690016131;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Rw+THIB7nYtdEoKFrcRpf+DtRSemfk8nQmXyWQCWLOU=;
 b=DMwdTIl9g+okPZHJv8qTrb+gYAPEj9v1sxcSDlzK5ch7N+TuIC/BcFHKohEZo55ND8
 XU29tOhBmT8qLwPtzV/wEHQ6iOqaUqSy8YTL9GNxgMKyLojaih+JCKFRV8sA50VDaMhL
 4ENhUxcmuP8buO31FrzpXihlkiHbj7xjQ5jQCZ/XAAfjoNJ005ZfE8KQlMXJnunKzCcO
 Fe2zvwkJ/uki5/MCqM+WcH9ckA1bFEYVaXIUmwP+4s7h2vpQxpmZaq/OfODYIqbWYJLH
 gNO1EGlemqhIu8SDpgbpJo6kXONx1A4ErgZXcMZMC3KoLi5/PQ7Kas2P+1tIIIXAXu47
 3GiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687424131; x=1690016131;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Rw+THIB7nYtdEoKFrcRpf+DtRSemfk8nQmXyWQCWLOU=;
 b=C5GuuVU0ROXbK/IqjKJg/1xKyfN4khEArSwAxaXF4xdRrTVAnIAT8xWOu3GDaIRWzv
 U98rI1vxdViEFeS0Lvj++Q+PDMocJvsTg8NQuHKuZEROC6yy9VCxHnPbp4JtbjBmP9kP
 mRgMeJiiiphkDr7IF55+HqGodyOcCZNTIt+THZbtd+xhgLzJ88I0sgHy5s3g7OVs3iEa
 wFePN2ylQfxHWxFWJQ+z13/AFLKKJsiQp393i6jQVpwk+0Vd93erWNGEdRthgAmUHsJx
 OUM31bQ2Xb7uJylJFsHlRsOj/jugc3ZPHUL/gTlC0b3qMzlIZXDEQsrOPlAGphag0y9T
 jgmQ==
X-Gm-Message-State: AC+VfDz1lKVBlyf1d5rOy8THTAto+fo+i4ChmpHLiKGLyqDdN3NUVgVb
 mzPNhRkU0g4q10W9KEryCnd/Tw==
X-Google-Smtp-Source: ACHHUZ74w6zUyxxONmkdhWFpbjqcQv1Ri8s1BW02LunWtr1K9sXtmODVbQHvvX6jLBNiniDuaX5mmA==
X-Received: by 2002:a17:902:d489:b0:1b4:ddef:841e with SMTP id
 c9-20020a170902d48900b001b4ddef841emr21417877plg.4.1687424131373; 
 Thu, 22 Jun 2023 01:55:31 -0700 (PDT)
Received: from C02DW0BEMD6R.bytedance.net ([139.177.225.254])
 by smtp.gmail.com with ESMTPSA id
 h2-20020a170902f7c200b001b549fce345sm4806971plw.230.2023.06.22.01.55.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Jun 2023 01:55:31 -0700 (PDT)
From: Qi Zheng <zhengqi.arch@bytedance.com>
To: akpm@linux-foundation.org, david@fromorbit.com, tkhai@ya.ru,
 vbabka@suse.cz, roman.gushchin@linux.dev, djwong@kernel.org,
 brauner@kernel.org, paulmck@kernel.org, tytso@mit.edu
Date: Thu, 22 Jun 2023 16:53:17 +0800
Message-Id: <20230622085335.77010-12-zhengqi.arch@bytedance.com>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
In-Reply-To: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
References: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 27 Jun 2023 14:38:30 +0000
Subject: [Intel-gfx] [PATCH 11/29] virtio_balloon: dynamically allocate the
 virtio-balloon shrinker
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
Cc: linux-bcache@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-nfs@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 linux-raid@vger.kernel.org, linux-mm@kvack.org, dm-devel@redhat.com,
 Qi Zheng <zhengqi.arch@bytedance.com>, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-btrfs@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In preparation for implementing lockless slab shrink,
we need to dynamically allocate the virtio-balloon shrinker,
so that it can be freed asynchronously using kfree_rcu().
Then it doesn't need to wait for RCU read-side critical
section when releasing the struct virtio_balloon.

Signed-off-by: Qi Zheng <zhengqi.arch@bytedance.com>
---
 drivers/virtio/virtio_balloon.c | 26 ++++++++++++++++----------
 1 file changed, 16 insertions(+), 10 deletions(-)

diff --git a/drivers/virtio/virtio_balloon.c b/drivers/virtio/virtio_balloon.c
index 5b15936a5214..fa051bff8d90 100644
--- a/drivers/virtio/virtio_balloon.c
+++ b/drivers/virtio/virtio_balloon.c
@@ -111,7 +111,7 @@ struct virtio_balloon {
 	struct virtio_balloon_stat stats[VIRTIO_BALLOON_S_NR];
 
 	/* Shrinker to return free pages - VIRTIO_BALLOON_F_FREE_PAGE_HINT */
-	struct shrinker shrinker;
+	struct shrinker *shrinker;
 
 	/* OOM notifier to deflate on OOM - VIRTIO_BALLOON_F_DEFLATE_ON_OOM */
 	struct notifier_block oom_nb;
@@ -816,8 +816,7 @@ static unsigned long shrink_free_pages(struct virtio_balloon *vb,
 static unsigned long virtio_balloon_shrinker_scan(struct shrinker *shrinker,
 						  struct shrink_control *sc)
 {
-	struct virtio_balloon *vb = container_of(shrinker,
-					struct virtio_balloon, shrinker);
+	struct virtio_balloon *vb = shrinker->private_data;
 
 	return shrink_free_pages(vb, sc->nr_to_scan);
 }
@@ -825,8 +824,7 @@ static unsigned long virtio_balloon_shrinker_scan(struct shrinker *shrinker,
 static unsigned long virtio_balloon_shrinker_count(struct shrinker *shrinker,
 						   struct shrink_control *sc)
 {
-	struct virtio_balloon *vb = container_of(shrinker,
-					struct virtio_balloon, shrinker);
+	struct virtio_balloon *vb = shrinker->private_data;
 
 	return vb->num_free_page_blocks * VIRTIO_BALLOON_HINT_BLOCK_PAGES;
 }
@@ -847,16 +845,24 @@ static int virtio_balloon_oom_notify(struct notifier_block *nb,
 
 static void virtio_balloon_unregister_shrinker(struct virtio_balloon *vb)
 {
-	unregister_shrinker(&vb->shrinker);
+	unregister_and_free_shrinker(vb->shrinker);
 }
 
 static int virtio_balloon_register_shrinker(struct virtio_balloon *vb)
 {
-	vb->shrinker.scan_objects = virtio_balloon_shrinker_scan;
-	vb->shrinker.count_objects = virtio_balloon_shrinker_count;
-	vb->shrinker.seeks = DEFAULT_SEEKS;
+	int ret;
+
+	vb->shrinker = shrinker_alloc_and_init(virtio_balloon_shrinker_count,
+					       virtio_balloon_shrinker_scan,
+					       0, DEFAULT_SEEKS, 0, vb);
+	if (!vb->shrinker)
+		return -ENOMEM;
+
+	ret = register_shrinker(vb->shrinker, "virtio-balloon");
+	if (ret)
+		shrinker_free(vb->shrinker);
 
-	return register_shrinker(&vb->shrinker, "virtio-balloon");
+	return ret;
 }
 
 static int virtballoon_probe(struct virtio_device *vdev)
-- 
2.30.2

