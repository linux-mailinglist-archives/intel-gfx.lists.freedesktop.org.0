Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8342A73FE5D
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 16:39:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 573B710E335;
	Tue, 27 Jun 2023 14:39:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com
 [IPv6:2607:f8b0:4864:20::536])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9E4210E4FC
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 08:55:56 +0000 (UTC)
Received: by mail-pg1-x536.google.com with SMTP id
 41be03b00d2f7-54f73ef19e5so678894a12.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 01:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance.com; s=google; t=1687424156; x=1690016156;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=YV1TxBHonYX3pT+e4dDoFW63Wrih64tWAHWeaspLQMY=;
 b=IN1IoI2uOCQQeS9Pc7yMEYFtdbTKp2FDPBFMAyikkB3bBw/FCEgPQpTXBrLGJxS9op
 OYz9dXXM6oULWR3l3wYKXb5/BI9AkFpryZP4yoepCwR6hfyyNUOfJ8hsO4sBRwfJ49YX
 gUV9lDqFE5hQ/d7HdmIIwZSFFlm7MsgfCCmjn2SzIPpkrW6AhbhGMDaDZJJIRMhzbnyY
 28028P9U8PoGDzKdCZpYkcFtSyvZMpWWRxH6zTertHKnPVPdcLDGdjwoWDesvLV0LnN9
 TRCiB1NZo1an6jc3DcyUcaVRTuirz1I2fp4pQQgMnnutBNGuXTEGp5MRQRxr/+etF0+R
 bUJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687424156; x=1690016156;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=YV1TxBHonYX3pT+e4dDoFW63Wrih64tWAHWeaspLQMY=;
 b=UeXdeOPT9H+K4h8DvM5arAfcAHVX/JwBcOFxqy9fKW8P+sRrs8KSOJJM+RIzjnhL0/
 QxyqWIdjtxGBKLT11D6NERSlm7RC0qNWnvnFnIzovMoAZtBvZOoFvXMGXJUmr/fko+M7
 XVsvtDOecLf1DWi0Gf3boFN2p8fOBSo2HOLq2n+Flsa9M2lcW9wMPhQccrsVW6/ciEqx
 P+EYaX9+y0i8uu7tFt77qE3N7PSOQTwlroBpm+TkDO0AeNsWBMcHS8nAx3GQDW+PSucm
 V4H4TUQrI0s8l/I3dWB4xjYMGCYwKPrwOkMzx+JicHppRfk5RZBItsTak8v/eVIv5sQ8
 1KYQ==
X-Gm-Message-State: AC+VfDxlOLm6ncyuVa8rc9F0rj55+kbaeMILP5TPSUSqKTP7dytj9dHp
 Z79yQmA9iCRai2FeHSANOxAemQ==
X-Google-Smtp-Source: ACHHUZ6yC2snRIv6FqrsdGDMg/3uXpE9V6V7JpWahZzREljgaxmC3AuzAW6pVJNk/nQXbwoLHaAThg==
X-Received: by 2002:a17:903:2451:b0:1b0:34c6:3bf2 with SMTP id
 l17-20020a170903245100b001b034c63bf2mr21540756pls.5.1687424156178; 
 Thu, 22 Jun 2023 01:55:56 -0700 (PDT)
Received: from C02DW0BEMD6R.bytedance.net ([139.177.225.254])
 by smtp.gmail.com with ESMTPSA id
 h2-20020a170902f7c200b001b549fce345sm4806971plw.230.2023.06.22.01.55.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Jun 2023 01:55:55 -0700 (PDT)
From: Qi Zheng <zhengqi.arch@bytedance.com>
To: akpm@linux-foundation.org, david@fromorbit.com, tkhai@ya.ru,
 vbabka@suse.cz, roman.gushchin@linux.dev, djwong@kernel.org,
 brauner@kernel.org, paulmck@kernel.org, tytso@mit.edu
Date: Thu, 22 Jun 2023 16:53:20 +0800
Message-Id: <20230622085335.77010-15-zhengqi.arch@bytedance.com>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
In-Reply-To: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
References: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 27 Jun 2023 14:38:30 +0000
Subject: [Intel-gfx] [PATCH 14/29] jbd2,
 ext4: dynamically allocate the jbd2-journal shrinker
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
we need to dynamically allocate the jbd2-journal shrinker,
so that it can be freed asynchronously using kfree_rcu().
Then it doesn't need to wait for RCU read-side critical
section when releasing the struct journal_s.

Signed-off-by: Qi Zheng <zhengqi.arch@bytedance.com>
---
 fs/jbd2/journal.c    | 32 +++++++++++++++++++-------------
 include/linux/jbd2.h |  2 +-
 2 files changed, 20 insertions(+), 14 deletions(-)

diff --git a/fs/jbd2/journal.c b/fs/jbd2/journal.c
index eee3c0ae349a..92a2f4360b5f 100644
--- a/fs/jbd2/journal.c
+++ b/fs/jbd2/journal.c
@@ -1301,7 +1301,7 @@ static int jbd2_min_tag_size(void)
 static unsigned long jbd2_journal_shrink_scan(struct shrinker *shrink,
 					      struct shrink_control *sc)
 {
-	journal_t *journal = container_of(shrink, journal_t, j_shrinker);
+	journal_t *journal = shrink->private_data;
 	unsigned long nr_to_scan = sc->nr_to_scan;
 	unsigned long nr_shrunk;
 	unsigned long count;
@@ -1327,7 +1327,7 @@ static unsigned long jbd2_journal_shrink_scan(struct shrinker *shrink,
 static unsigned long jbd2_journal_shrink_count(struct shrinker *shrink,
 					       struct shrink_control *sc)
 {
-	journal_t *journal = container_of(shrink, journal_t, j_shrinker);
+	journal_t *journal = shrink->private_data;
 	unsigned long count;
 
 	count = percpu_counter_read_positive(&journal->j_checkpoint_jh_count);
@@ -1415,21 +1415,27 @@ static journal_t *journal_init_common(struct block_device *bdev,
 	journal->j_superblock = (journal_superblock_t *)bh->b_data;
 
 	journal->j_shrink_transaction = NULL;
-	journal->j_shrinker.scan_objects = jbd2_journal_shrink_scan;
-	journal->j_shrinker.count_objects = jbd2_journal_shrink_count;
-	journal->j_shrinker.seeks = DEFAULT_SEEKS;
-	journal->j_shrinker.batch = journal->j_max_transaction_buffers;
 
 	if (percpu_counter_init(&journal->j_checkpoint_jh_count, 0, GFP_KERNEL))
 		goto err_cleanup;
 
-	if (register_shrinker(&journal->j_shrinker, "jbd2-journal:(%u:%u)",
-			      MAJOR(bdev->bd_dev), MINOR(bdev->bd_dev))) {
-		percpu_counter_destroy(&journal->j_checkpoint_jh_count);
-		goto err_cleanup;
-	}
+	journal->j_shrinker = shrinker_alloc_and_init(jbd2_journal_shrink_count,
+						      jbd2_journal_shrink_scan,
+						      journal->j_max_transaction_buffers,
+						      DEFAULT_SEEKS, 0, journal);
+	if (!journal->j_shrinker)
+		goto err_shrinker;
+
+	if (register_shrinker(journal->j_shrinker, "jbd2-journal:(%u:%u)",
+			      MAJOR(bdev->bd_dev), MINOR(bdev->bd_dev)))
+		goto err_register;
+
 	return journal;
 
+err_register:
+	shrinker_free(journal->j_shrinker);
+err_shrinker:
+	percpu_counter_destroy(&journal->j_checkpoint_jh_count);
 err_cleanup:
 	brelse(journal->j_sb_buffer);
 	kfree(journal->j_wbuf);
@@ -2190,9 +2196,9 @@ int jbd2_journal_destroy(journal_t *journal)
 		brelse(journal->j_sb_buffer);
 	}
 
-	if (journal->j_shrinker.flags & SHRINKER_REGISTERED) {
+	if (journal->j_shrinker->flags & SHRINKER_REGISTERED) {
 		percpu_counter_destroy(&journal->j_checkpoint_jh_count);
-		unregister_shrinker(&journal->j_shrinker);
+		unregister_and_free_shrinker(journal->j_shrinker);
 	}
 	if (journal->j_proc_entry)
 		jbd2_stats_proc_exit(journal);
diff --git a/include/linux/jbd2.h b/include/linux/jbd2.h
index 44c298aa58d4..beb4c4586320 100644
--- a/include/linux/jbd2.h
+++ b/include/linux/jbd2.h
@@ -891,7 +891,7 @@ struct journal_s
 	 * Journal head shrinker, reclaim buffer's journal head which
 	 * has been written back.
 	 */
-	struct shrinker		j_shrinker;
+	struct shrinker		*j_shrinker;
 
 	/**
 	 * @j_checkpoint_jh_count:
-- 
2.30.2

