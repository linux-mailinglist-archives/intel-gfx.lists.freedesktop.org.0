Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C1173FE2F
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 16:38:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFD3D10E308;
	Tue, 27 Jun 2023 14:38:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7816210E14C
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 08:54:59 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id
 d9443c01a7336-1b5585e84b4so6827175ad.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 01:54:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance.com; s=google; t=1687424099; x=1690016099;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8pXD3DmjPUfWk2+jjA+m+4zKKy0fC+8AwUsZhq2lRmk=;
 b=E+tFDKMSki037PBhfmhvWVloKXWuzU3Ri56xXQW9hCkunzqr3/MhlEZSqiNZ+tNI9q
 wXEuj2hNk0ysqFsBunC7adB4hsOSpWoOkzyNHyQickBfIH13Ob7zUzdQVkoowJm+gwHf
 GqLtSyQYvEY7J6FdTyYJ1xVnKRHg63OezBYT/3UycGb6EQo3xYiC+CTrGWJfn3US3UhJ
 dbGuvQxkFI38s4idyaP5iHfWFNKc7ZWCaOV72DK+NmzkQO6lFrqKljjPnoN3sVHURF0C
 M8AH8Js6rxjyGoBC/sNAUYyKjN9tqWo3Nk1SQH9TmJx7zV/vF6Qb8YX+sV5g8XxbHf9I
 nLxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687424099; x=1690016099;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=8pXD3DmjPUfWk2+jjA+m+4zKKy0fC+8AwUsZhq2lRmk=;
 b=h5Tk+miZFC5HXDO8/19cT8cePuqEsq5CZ0Pbwv+g/JAxsP58T/NHu51UtBjZ8Zw7hw
 G6kKH9d2IHfOghpGwxRpEWdM1OywfkhzW/7aUkhivfs64ZzjKlG7J1c6p7KHrFpMhQ2O
 C0Hq8rUYgzykIGOj/H4ExK6qz5w0xB8HxK5K3aSPWd52sps4uCvU7WTq0utPaChZSRRg
 3Z0bllQHxTszbnMdbvjlArSQ+LPCnAnKDRuXOpQBQMmwCEA6TT6X69rxiO6zuYU3qEVT
 nkitk5UWMXF49uWLr2ylnqdVfHr765fChlD4bGMwnaJV5HNbMVVpoXItBClZAaOZ1BRa
 HA/Q==
X-Gm-Message-State: AC+VfDylelU4SvYU4X7BW8EDvU2W66La12hsFKC8NiocElZWg7ar0xPF
 dGVRC+VgZd9q/R7g8V0PZBY9LQ==
X-Google-Smtp-Source: ACHHUZ6uW4WhSYRgUY2aQCit4ogoH8R/r57rghu14Eyu6d6WG0AvLb+rcmWHNr1Voea08aO5tIYo3Q==
X-Received: by 2002:a17:902:ecc6:b0:1ae:1364:6086 with SMTP id
 a6-20020a170902ecc600b001ae13646086mr21600250plh.2.1687424099018; 
 Thu, 22 Jun 2023 01:54:59 -0700 (PDT)
Received: from C02DW0BEMD6R.bytedance.net ([139.177.225.254])
 by smtp.gmail.com with ESMTPSA id
 h2-20020a170902f7c200b001b549fce345sm4806971plw.230.2023.06.22.01.54.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Jun 2023 01:54:58 -0700 (PDT)
From: Qi Zheng <zhengqi.arch@bytedance.com>
To: akpm@linux-foundation.org, david@fromorbit.com, tkhai@ya.ru,
 vbabka@suse.cz, roman.gushchin@linux.dev, djwong@kernel.org,
 brauner@kernel.org, paulmck@kernel.org, tytso@mit.edu
Date: Thu, 22 Jun 2023 16:53:13 +0800
Message-Id: <20230622085335.77010-8-zhengqi.arch@bytedance.com>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
In-Reply-To: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
References: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 27 Jun 2023 14:38:30 +0000
Subject: [Intel-gfx] [PATCH 07/29] dm zoned: dynamically allocate the
 dm-zoned-meta shrinker
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
we need to dynamically allocate the dm-zoned-meta shrinker,
so that it can be freed asynchronously using kfree_rcu().
Then it doesn't need to wait for RCU read-side critical
section when releasing the struct dmz_metadata.

Signed-off-by: Qi Zheng <zhengqi.arch@bytedance.com>
---
 drivers/md/dm-zoned-metadata.c | 25 ++++++++++++++++---------
 1 file changed, 16 insertions(+), 9 deletions(-)

diff --git a/drivers/md/dm-zoned-metadata.c b/drivers/md/dm-zoned-metadata.c
index 9d3cca8e3dc9..41b10ffb968a 100644
--- a/drivers/md/dm-zoned-metadata.c
+++ b/drivers/md/dm-zoned-metadata.c
@@ -187,7 +187,7 @@ struct dmz_metadata {
 	struct rb_root		mblk_rbtree;
 	struct list_head	mblk_lru_list;
 	struct list_head	mblk_dirty_list;
-	struct shrinker		mblk_shrinker;
+	struct shrinker		*mblk_shrinker;
 
 	/* Zone allocation management */
 	struct mutex		map_lock;
@@ -615,7 +615,7 @@ static unsigned long dmz_shrink_mblock_cache(struct dmz_metadata *zmd,
 static unsigned long dmz_mblock_shrinker_count(struct shrinker *shrink,
 					       struct shrink_control *sc)
 {
-	struct dmz_metadata *zmd = container_of(shrink, struct dmz_metadata, mblk_shrinker);
+	struct dmz_metadata *zmd = shrink->private_data;
 
 	return atomic_read(&zmd->nr_mblks);
 }
@@ -626,7 +626,7 @@ static unsigned long dmz_mblock_shrinker_count(struct shrinker *shrink,
 static unsigned long dmz_mblock_shrinker_scan(struct shrinker *shrink,
 					      struct shrink_control *sc)
 {
-	struct dmz_metadata *zmd = container_of(shrink, struct dmz_metadata, mblk_shrinker);
+	struct dmz_metadata *zmd = shrink->private_data;
 	unsigned long count;
 
 	spin_lock(&zmd->mblk_lock);
@@ -2936,17 +2936,22 @@ int dmz_ctr_metadata(struct dmz_dev *dev, int num_dev,
 	 */
 	zmd->min_nr_mblks = 2 + zmd->nr_map_blocks + zmd->zone_nr_bitmap_blocks * 16;
 	zmd->max_nr_mblks = zmd->min_nr_mblks + 512;
-	zmd->mblk_shrinker.count_objects = dmz_mblock_shrinker_count;
-	zmd->mblk_shrinker.scan_objects = dmz_mblock_shrinker_scan;
-	zmd->mblk_shrinker.seeks = DEFAULT_SEEKS;
+
+	zmd->mblk_shrinker = shrinker_alloc_and_init(dmz_mblock_shrinker_count,
+						     dmz_mblock_shrinker_scan,
+						     0, DEFAULT_SEEKS, 0, zmd);
+	if (!zmd->mblk_shrinker) {
+		dmz_zmd_err(zmd, "allocate metadata cache shrinker failed");
+		goto err;
+	}
 
 	/* Metadata cache shrinker */
-	ret = register_shrinker(&zmd->mblk_shrinker, "dm-zoned-meta:(%u:%u)",
+	ret = register_shrinker(zmd->mblk_shrinker, "dm-zoned-meta:(%u:%u)",
 				MAJOR(dev->bdev->bd_dev),
 				MINOR(dev->bdev->bd_dev));
 	if (ret) {
 		dmz_zmd_err(zmd, "Register metadata cache shrinker failed");
-		goto err;
+		goto err_shrinker;
 	}
 
 	dmz_zmd_info(zmd, "DM-Zoned metadata version %d", zmd->sb_version);
@@ -2982,6 +2987,8 @@ int dmz_ctr_metadata(struct dmz_dev *dev, int num_dev,
 	*metadata = zmd;
 
 	return 0;
+err_shrinker:
+	shrinker_free(zmd->mblk_shrinker);
 err:
 	dmz_cleanup_metadata(zmd);
 	kfree(zmd);
@@ -2995,7 +3002,7 @@ int dmz_ctr_metadata(struct dmz_dev *dev, int num_dev,
  */
 void dmz_dtr_metadata(struct dmz_metadata *zmd)
 {
-	unregister_shrinker(&zmd->mblk_shrinker);
+	unregister_and_free_shrinker(zmd->mblk_shrinker);
 	dmz_cleanup_metadata(zmd);
 	kfree(zmd);
 }
-- 
2.30.2

