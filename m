Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C53473FE3A
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 16:39:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A206610E314;
	Tue, 27 Jun 2023 14:38:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9817510E501
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 08:54:19 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id
 d9443c01a7336-1b693afe799so2463765ad.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 01:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance.com; s=google; t=1687424059; x=1690016059;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4+KB+8A1a3nPwmndVeoDnF0UUBrNJStZPfOFWRboZRM=;
 b=Sk9j4D1M64xyAQoy0v1SMiRRuiugSGVsgHhv7vYv9c3IikKaUFVDiFJczRjS+t8QJh
 8bRZCGyYvkRGHDm8uUJh3JrpsRJfZFHSfxrg783G1zZ8ag+Nrop0sZP8BnmbcU+0S25q
 ZIKtGKgKPIH7cGpK2fHrvYtY9p82kt8TosN3NcpFb8CLbiW0zQyLzdahaQYLKutpL1Kb
 iV83VCrLSsoe4tZLXCgr7bzLBi5xWr4Iu6AgSr+ApJLZMKUxhfto21PwHxkzor+s4sBV
 FrT1a+LNzQzeAZGp0p/ozv8VRhpBFeAgfX/MFGdkWk3iK2t7SrfDgjAEjXYPkdmChJzo
 lkUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687424059; x=1690016059;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=4+KB+8A1a3nPwmndVeoDnF0UUBrNJStZPfOFWRboZRM=;
 b=hTMtbGMT0Izw6/NrVd0uz+Leg1N/TCHjv3rlco8APctj/M5nah6jLsXk3XzFlkw0Nk
 woBg5qcD12XrbPVcUZYv52AAH/3rNMZf+fU7O8my5bwmm7hiL6Z7FnaTFE1qx1SGldTJ
 axCSxIVcOTDKT+hdCF83e0fWHWiOIIQOq46scunCyqJ9rno7/qf/OcrKscAb6nExuFpe
 MYfYRPcrDZLbb1phgRNGA633Wsvnl8sxIeSu7Kf+zqrCNRoPQeGfLJ6UDcnHnoZFYLN3
 lyNqvcnJFhwZFPvvZq+uAYpyzLWAEF6Ck1VlLMlML59cIOf/jTni7A6KhnSZr0vsyP5e
 +8KA==
X-Gm-Message-State: AC+VfDxIXUfnkkmUKaOSGUTOXn4RqiOhjXtyk3OeKtKyWgTYCopg451U
 MOwrjBb9PZpw7pQJLJ51dFk9kw==
X-Google-Smtp-Source: ACHHUZ4ysdKcTcW8I0NFLAt2c3adAhLn+VAaFg6uutJFhO8zbaZNgTMf0Qt9rlrj2Rh11Ffv9G+1Gw==
X-Received: by 2002:a17:903:2451:b0:1b0:34c6:3bf2 with SMTP id
 l17-20020a170903245100b001b034c63bf2mr21537674pls.5.1687424059079; 
 Thu, 22 Jun 2023 01:54:19 -0700 (PDT)
Received: from C02DW0BEMD6R.bytedance.net ([139.177.225.254])
 by smtp.gmail.com with ESMTPSA id
 h2-20020a170902f7c200b001b549fce345sm4806971plw.230.2023.06.22.01.54.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Jun 2023 01:54:18 -0700 (PDT)
From: Qi Zheng <zhengqi.arch@bytedance.com>
To: akpm@linux-foundation.org, david@fromorbit.com, tkhai@ya.ru,
 vbabka@suse.cz, roman.gushchin@linux.dev, djwong@kernel.org,
 brauner@kernel.org, paulmck@kernel.org, tytso@mit.edu
Date: Thu, 22 Jun 2023 16:53:08 +0800
Message-Id: <20230622085335.77010-3-zhengqi.arch@bytedance.com>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
In-Reply-To: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
References: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 27 Jun 2023 14:38:30 +0000
Subject: [Intel-gfx] [PATCH 02/29] mm: vmscan: introduce some helpers for
 dynamically allocating shrinker
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

Introduce some helpers for dynamically allocating shrinker instance,
and their uses are as follows:

1. shrinker_alloc_and_init()

Used to allocate and initialize a shrinker instance, the priv_data
parameter is used to pass the pointer of the previously embedded
structure of the shrinker instance.

2. shrinker_free()

Used to free the shrinker instance when the registration of shrinker
fails.

3. unregister_and_free_shrinker()

Used to unregister and free the shrinker instance, and the kfree()
will be changed to kfree_rcu() later.

Signed-off-by: Qi Zheng <zhengqi.arch@bytedance.com>
---
 include/linux/shrinker.h | 12 ++++++++++++
 mm/vmscan.c              | 35 +++++++++++++++++++++++++++++++++++
 2 files changed, 47 insertions(+)

diff --git a/include/linux/shrinker.h b/include/linux/shrinker.h
index 43e6fcabbf51..8e9ba6fa3fcc 100644
--- a/include/linux/shrinker.h
+++ b/include/linux/shrinker.h
@@ -107,6 +107,18 @@ extern void unregister_shrinker(struct shrinker *shrinker);
 extern void free_prealloced_shrinker(struct shrinker *shrinker);
 extern void synchronize_shrinkers(void);
 
+typedef unsigned long (*count_objects_cb)(struct shrinker *s,
+					  struct shrink_control *sc);
+typedef unsigned long (*scan_objects_cb)(struct shrinker *s,
+					 struct shrink_control *sc);
+
+struct shrinker *shrinker_alloc_and_init(count_objects_cb count,
+					 scan_objects_cb scan, long batch,
+					 int seeks, unsigned flags,
+					 void *priv_data);
+void shrinker_free(struct shrinker *shrinker);
+void unregister_and_free_shrinker(struct shrinker *shrinker);
+
 #ifdef CONFIG_SHRINKER_DEBUG
 extern int shrinker_debugfs_add(struct shrinker *shrinker);
 extern struct dentry *shrinker_debugfs_detach(struct shrinker *shrinker,
diff --git a/mm/vmscan.c b/mm/vmscan.c
index 45d17c7cc555..64ff598fbad9 100644
--- a/mm/vmscan.c
+++ b/mm/vmscan.c
@@ -809,6 +809,41 @@ void unregister_shrinker(struct shrinker *shrinker)
 }
 EXPORT_SYMBOL(unregister_shrinker);
 
+struct shrinker *shrinker_alloc_and_init(count_objects_cb count,
+					 scan_objects_cb scan, long batch,
+					 int seeks, unsigned flags,
+					 void *priv_data)
+{
+	struct shrinker *shrinker;
+
+	shrinker = kzalloc(sizeof(struct shrinker), GFP_KERNEL);
+	if (!shrinker)
+		return NULL;
+
+	shrinker->count_objects = count;
+	shrinker->scan_objects = scan;
+	shrinker->batch = batch;
+	shrinker->seeks = seeks;
+	shrinker->flags = flags;
+	shrinker->private_data = priv_data;
+
+	return shrinker;
+}
+EXPORT_SYMBOL(shrinker_alloc_and_init);
+
+void shrinker_free(struct shrinker *shrinker)
+{
+	kfree(shrinker);
+}
+EXPORT_SYMBOL(shrinker_free);
+
+void unregister_and_free_shrinker(struct shrinker *shrinker)
+{
+	unregister_shrinker(shrinker);
+	kfree(shrinker);
+}
+EXPORT_SYMBOL(unregister_and_free_shrinker);
+
 /**
  * synchronize_shrinkers - Wait for all running shrinkers to complete.
  *
-- 
2.30.2

