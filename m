Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6BF73FE42
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 16:39:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F25D10E323;
	Tue, 27 Jun 2023 14:38:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com
 [IPv6:2607:f8b0:4864:20::631])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DFB410E502
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 08:57:32 +0000 (UTC)
Received: by mail-pl1-x631.google.com with SMTP id
 d9443c01a7336-1b5585e84b4so6829485ad.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 01:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance.com; s=google; t=1687424252; x=1690016252;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=YpqAnPCFjvBxCUJyQNRij7IdVYJH6Jib7EICYqtSs4Q=;
 b=I9WP6mv1rDRCGtgaLzA9lhBXeFPAHaj8y0iyY2DOjVEWCsT2F7nfNJVwyIikm+kMao
 zO6QJGdxbeP+Xd2yLUuD3B5OfZQRm3B4q5mm2BLvCFNnuFgYbDreBXTpY911jw5PjLjw
 5qBcX7//daeu9fw2bM5v9uWJQ3Yj963JAAdMROcF9Ug6KJW+BwPKjtr4qnEx+svXyNj4
 WQtBJXjBe1rX51UFB2Mb+BbnprNNOvKWLYHk9IXF69UQEETABYtrhl0ZHyku4x/+376s
 ovmIBUSgYXrVJUG8L2WcJE6QBBiCJCq44tzgQbbUxJYU3EpXiLR3t2TzR3wvfdUTA7wG
 r7SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687424252; x=1690016252;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=YpqAnPCFjvBxCUJyQNRij7IdVYJH6Jib7EICYqtSs4Q=;
 b=PhtmX75N3CRYPUvp5+A9U4D1IyfYVpIrMq9W3g7UehjBNbcjbozbZHAvVUSPavck/o
 4jjVO5DBFWLPqg/BapmTkMxauMMGoL+odDFwB270UizCCLsHCFCh/eaDPPmyBQrJyYFn
 Ga4O1vepwE2N6sllrH0PyfRwDmXXYg0XybYsMvt81997tEBAO5nD6JTdoGPIk6uamtr1
 4Wqf/K/aZ8AFRhd1iEutRWDGMvqB7zOF+9IODbmb8Zvj5OcMwMScfBH7+6VhrcRhCyIA
 NcneI0wqD4OT/HNs4deJxocxEzIBc857o2HBtuCc+jL7OgLWXP02bIodMudNhf9ejm6z
 2twA==
X-Gm-Message-State: AC+VfDzNzv7BS5TZj+7nxBGr2sVkF7ylGQVRf3dvPIkjy9HAQbYr1xbW
 9l6JdUindM4VDXa7ZfWb9kNRCw==
X-Google-Smtp-Source: ACHHUZ6FoF5W+f0N2ZUpFBUVBh1vs3Mj6G9dcM80ve0PhcTP+4niqZQRBrFmYJGvwbhs9MGB3E6MuA==
X-Received: by 2002:a17:903:32c4:b0:1b3:e352:6d88 with SMTP id
 i4-20020a17090332c400b001b3e3526d88mr21673124plr.6.1687424251794; 
 Thu, 22 Jun 2023 01:57:31 -0700 (PDT)
Received: from C02DW0BEMD6R.bytedance.net ([139.177.225.254])
 by smtp.gmail.com with ESMTPSA id
 h2-20020a170902f7c200b001b549fce345sm4806971plw.230.2023.06.22.01.57.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Jun 2023 01:57:31 -0700 (PDT)
From: Qi Zheng <zhengqi.arch@bytedance.com>
To: akpm@linux-foundation.org, david@fromorbit.com, tkhai@ya.ru,
 vbabka@suse.cz, roman.gushchin@linux.dev, djwong@kernel.org,
 brauner@kernel.org, paulmck@kernel.org, tytso@mit.edu
Date: Thu, 22 Jun 2023 16:53:32 +0800
Message-Id: <20230622085335.77010-27-zhengqi.arch@bytedance.com>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
In-Reply-To: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
References: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 27 Jun 2023 14:38:30 +0000
Subject: [Intel-gfx] [PATCH 26/29] mm: shrinker: make count and scan in
 shrinker debugfs lockless
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

Like global and memcg slab shrink, also make count and scan
operations in memory shrinker debugfs lockless.

The debugfs_remove_recursive() will wait for debugfs_file_put()
to return, so there is no need to call rcu_read_lock() before
calling shrinker_try_get().

Signed-off-by: Qi Zheng <zhengqi.arch@bytedance.com>
---
 mm/shrinker_debug.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/mm/shrinker_debug.c b/mm/shrinker_debug.c
index 3ab53fad8876..c18fa9b6b7f0 100644
--- a/mm/shrinker_debug.c
+++ b/mm/shrinker_debug.c
@@ -55,8 +55,8 @@ static int shrinker_debugfs_count_show(struct seq_file *m, void *v)
 	if (!count_per_node)
 		return -ENOMEM;
 
-	ret = down_read_killable(&shrinker_rwsem);
-	if (ret) {
+	ret = shrinker_try_get(shrinker);
+	if (!ret) {
 		kfree(count_per_node);
 		return ret;
 	}
@@ -92,7 +92,7 @@ static int shrinker_debugfs_count_show(struct seq_file *m, void *v)
 	} while ((memcg = mem_cgroup_iter(NULL, memcg, NULL)) != NULL);
 
 	rcu_read_unlock();
-	up_read(&shrinker_rwsem);
+	shrinker_put(shrinker);
 
 	kfree(count_per_node);
 	return ret;
@@ -146,8 +146,8 @@ static ssize_t shrinker_debugfs_scan_write(struct file *file,
 		return -EINVAL;
 	}
 
-	ret = down_read_killable(&shrinker_rwsem);
-	if (ret) {
+	ret = shrinker_try_get(shrinker);
+	if (!ret) {
 		mem_cgroup_put(memcg);
 		return ret;
 	}
@@ -159,7 +159,7 @@ static ssize_t shrinker_debugfs_scan_write(struct file *file,
 
 	shrinker->scan_objects(shrinker, &sc);
 
-	up_read(&shrinker_rwsem);
+	shrinker_put(shrinker);
 	mem_cgroup_put(memcg);
 
 	return size;
-- 
2.30.2

