Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E577C73FE50
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 16:39:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D40910E32D;
	Tue, 27 Jun 2023 14:38:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com
 [IPv6:2607:f8b0:4864:20::633])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECA7910E14C
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 08:54:43 +0000 (UTC)
Received: by mail-pl1-x633.google.com with SMTP id
 d9443c01a7336-1b515ec39feso12619115ad.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 01:54:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance.com; s=google; t=1687424083; x=1690016083;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=TQaNNe8oXaUFeFpLguh+yca1iGAODo9pDL1sZw6pJSE=;
 b=bLkRMM1jSdqXsEty9KLAFC9vFSq6Mb8s85EPujNxx1fG7cL+WhObUy7eJvjIIVVT27
 Kiy5rsYxFdvQkjX/Hn7QfCF/H515sUldxTAV8THo6pKuerK5LdnjnrVU9ezaWAUUfrz8
 rV0yX1ewF3SUu27Tytlc8UIGxdmoc2rf5KwQXmt4TN0xZENUrrBpDEpOBdYckFOGmW+/
 CnWb/ghzLgegjrSPuJYmDsQVFRVYxO2XxU7X4C2jxwq5osf5N5i/+CYLyq1fNxhJsVCX
 q//piIl1OJNIHjgKTj8Fx/a4slkfZ5A+zdUvxvyRJBR/16JSIqSsZUTa9z9xdPFzC7nq
 BhVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687424083; x=1690016083;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=TQaNNe8oXaUFeFpLguh+yca1iGAODo9pDL1sZw6pJSE=;
 b=B+RBoEEIJrgIkn4Os6XieGlMzhObERKg15p2XfA35P2APhRf00W40nb5e2h8bdsScs
 0LiGDf8cbgVOTeclRmhHb070vnNxun1bBvYg5+Vw95P38qDiJLlCdN2Djqioy8dEsCYf
 CebCdOKt1GN95QDkMKZDgrxSTreq1Ou07zBkIlvbptDnZJrK2H5xVd5l16HapXQYBqnR
 TDfqoRk2ogpjT10ayzk3T6Y9Fo1sqIOkHIhSkrnuHhcQDdGtyKFh+v3KZBDB1OzY+ppP
 sQFyaM+SAIDoR005ZYu4r2g7j7tryGuA68cdXglcWUrWhvC1EijKwZ//ex7rOmesPg6P
 546Q==
X-Gm-Message-State: AC+VfDzOYD34cAiTEniS5LAEOjIWOMYERQzNQG+6l51PQ0RpxISYCLQ7
 UBxAnWMfl+IsFl4QYLxL1DjeAw==
X-Google-Smtp-Source: ACHHUZ6gH/Pv0NlMjwBsqv6k+8Uik3ghEf6lWW7kovYDQCKB++KLEA1PTcfQABA8HOR66RClg4yAXA==
X-Received: by 2002:a17:903:32c4:b0:1b0:3cda:6351 with SMTP id
 i4-20020a17090332c400b001b03cda6351mr21555341plr.0.1687424083229; 
 Thu, 22 Jun 2023 01:54:43 -0700 (PDT)
Received: from C02DW0BEMD6R.bytedance.net ([139.177.225.254])
 by smtp.gmail.com with ESMTPSA id
 h2-20020a170902f7c200b001b549fce345sm4806971plw.230.2023.06.22.01.54.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Jun 2023 01:54:42 -0700 (PDT)
From: Qi Zheng <zhengqi.arch@bytedance.com>
To: akpm@linux-foundation.org, david@fromorbit.com, tkhai@ya.ru,
 vbabka@suse.cz, roman.gushchin@linux.dev, djwong@kernel.org,
 brauner@kernel.org, paulmck@kernel.org, tytso@mit.edu
Date: Thu, 22 Jun 2023 16:53:11 +0800
Message-Id: <20230622085335.77010-6-zhengqi.arch@bytedance.com>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
In-Reply-To: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
References: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 27 Jun 2023 14:38:30 +0000
Subject: [Intel-gfx] [PATCH 05/29] drm/panfrost: dynamically allocate the
 drm-panfrost shrinker
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
we need to dynamically allocate the drm-panfrost shrinker,
so that it can be freed asynchronously using kfree_rcu().
Then it doesn't need to wait for RCU read-side critical
section when releasing the struct panfrost_device.

Signed-off-by: Qi Zheng <zhengqi.arch@bytedance.com>
---
 drivers/gpu/drm/panfrost/panfrost_device.h    |  2 +-
 .../gpu/drm/panfrost/panfrost_gem_shrinker.c  | 24 ++++++++++---------
 2 files changed, 14 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/panfrost/panfrost_device.h b/drivers/gpu/drm/panfrost/panfrost_device.h
index b0126b9fbadc..e667e5689353 100644
--- a/drivers/gpu/drm/panfrost/panfrost_device.h
+++ b/drivers/gpu/drm/panfrost/panfrost_device.h
@@ -118,7 +118,7 @@ struct panfrost_device {
 
 	struct mutex shrinker_lock;
 	struct list_head shrinker_list;
-	struct shrinker shrinker;
+	struct shrinker *shrinker;
 
 	struct panfrost_devfreq pfdevfreq;
 };
diff --git a/drivers/gpu/drm/panfrost/panfrost_gem_shrinker.c b/drivers/gpu/drm/panfrost/panfrost_gem_shrinker.c
index bf0170782f25..2a5513eb9e1f 100644
--- a/drivers/gpu/drm/panfrost/panfrost_gem_shrinker.c
+++ b/drivers/gpu/drm/panfrost/panfrost_gem_shrinker.c
@@ -18,8 +18,7 @@
 static unsigned long
 panfrost_gem_shrinker_count(struct shrinker *shrinker, struct shrink_control *sc)
 {
-	struct panfrost_device *pfdev =
-		container_of(shrinker, struct panfrost_device, shrinker);
+	struct panfrost_device *pfdev = shrinker->private_data;
 	struct drm_gem_shmem_object *shmem;
 	unsigned long count = 0;
 
@@ -65,8 +64,7 @@ static bool panfrost_gem_purge(struct drm_gem_object *obj)
 static unsigned long
 panfrost_gem_shrinker_scan(struct shrinker *shrinker, struct shrink_control *sc)
 {
-	struct panfrost_device *pfdev =
-		container_of(shrinker, struct panfrost_device, shrinker);
+	struct panfrost_device *pfdev = shrinker->private_data;
 	struct drm_gem_shmem_object *shmem, *tmp;
 	unsigned long freed = 0;
 
@@ -100,10 +98,15 @@ panfrost_gem_shrinker_scan(struct shrinker *shrinker, struct shrink_control *sc)
 void panfrost_gem_shrinker_init(struct drm_device *dev)
 {
 	struct panfrost_device *pfdev = dev->dev_private;
-	pfdev->shrinker.count_objects = panfrost_gem_shrinker_count;
-	pfdev->shrinker.scan_objects = panfrost_gem_shrinker_scan;
-	pfdev->shrinker.seeks = DEFAULT_SEEKS;
-	WARN_ON(register_shrinker(&pfdev->shrinker, "drm-panfrost"));
+
+	pfdev->shrinker = shrinker_alloc_and_init(panfrost_gem_shrinker_count,
+						  panfrost_gem_shrinker_scan, 0,
+						  DEFAULT_SEEKS, 0, pfdev);
+	if (pfdev->shrinker &&
+	    register_shrinker(pfdev->shrinker, "drm-panfrost")) {
+		shrinker_free(pfdev->shrinker);
+		WARN_ON(1);
+	}
 }
 
 /**
@@ -116,7 +119,6 @@ void panfrost_gem_shrinker_cleanup(struct drm_device *dev)
 {
 	struct panfrost_device *pfdev = dev->dev_private;
 
-	if (pfdev->shrinker.nr_deferred) {
-		unregister_shrinker(&pfdev->shrinker);
-	}
+	if (pfdev->shrinker->nr_deferred)
+		unregister_and_free_shrinker(pfdev->shrinker);
 }
-- 
2.30.2

