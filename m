Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2EE73FE49
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 16:39:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF5EC10E32A;
	Tue, 27 Jun 2023 14:38:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com
 [IPv6:2607:f8b0:4864:20::529])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7928410E4FC
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 08:57:24 +0000 (UTC)
Received: by mail-pg1-x529.google.com with SMTP id
 41be03b00d2f7-543a37c5c03so1091466a12.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 01:57:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance.com; s=google; t=1687424243; x=1690016243;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=A8Fm0YGxp8yCkyBdSSDbuW3Cqk4JmtEEZRGj6EeWqug=;
 b=VXm59oxeB5FguY23iZ6wxsHZUa/n0ixVM5+RJovFhBsSqk7jUN18WD75GpJCgArR0W
 JBsEkA9d39jtf7NG1SF+QvFe/XJdGOqobYaTEX0aq6YpeCNoIMMKV4Gdkmm7QKEFMCrH
 QNswdcRq+FKKLLJSUCefQDEwUuyAf6EXdUAA8SWzr8d5PlDWqAvD+NLb3ziu4Q1ZbddG
 3AHOgUEiuKr4IMyzSNLNbfYcakjlWAem1FVIRkWrvCWnM54TEnQwCZtRjpDkJUyTk1gU
 FK042RTEuCbaP60yQQ0pKyvy7feFAoM0ianmMZaWx78B21cSO7WyFn4vwESs5Li+xEdq
 ozzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687424243; x=1690016243;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=A8Fm0YGxp8yCkyBdSSDbuW3Cqk4JmtEEZRGj6EeWqug=;
 b=K7OzGBnyR5a/+5UoXCszA106HgfNb6JwoYgJiBfni5YCjKmElTpwN3uujAgPh69/4z
 /jDF4FYyu69LLik7DDHdbsHQuvWp+j8+zIMiPKK+Pj2uKjGhYJZWwzSkmM/L6/0ozy7F
 le2S2vx7YQpdQNcywvBhh9sDrHs17T8kJgnwhUpyu2cBy0Y0WlQ407l4Y1q8QnNVYxvg
 g7FjuFg2QDhjHD+b/RKAuePR1wZB04YrEfvcckfXyyFOmUTFlmGcJKogliAC6c61xv19
 f4tEqeoDU9whJCQjXSLZnAbiyzx7nvltycO+lqoIW/+0Wc0hn3+wcTM0OnONHi6XwnG9
 z8BQ==
X-Gm-Message-State: AC+VfDycF1SNmz8wYK9On11un1ZHwOs8kbPbKi5SJuvnq5ZGiIiAN00N
 NaZIlY7VaP56lPcc905jYR6S0Q==
X-Google-Smtp-Source: ACHHUZ6zp07NG2bkXXxglRYaIEoFlfKXA7hhsSA7stt9xCgrqpdelrec/tU9od+DRY9y6jYGAzcstA==
X-Received: by 2002:a17:902:da91:b0:1b0:3d54:358f with SMTP id
 j17-20020a170902da9100b001b03d54358fmr20812342plx.0.1687424243512; 
 Thu, 22 Jun 2023 01:57:23 -0700 (PDT)
Received: from C02DW0BEMD6R.bytedance.net ([139.177.225.254])
 by smtp.gmail.com with ESMTPSA id
 h2-20020a170902f7c200b001b549fce345sm4806971plw.230.2023.06.22.01.57.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Jun 2023 01:57:23 -0700 (PDT)
From: Qi Zheng <zhengqi.arch@bytedance.com>
To: akpm@linux-foundation.org, david@fromorbit.com, tkhai@ya.ru,
 vbabka@suse.cz, roman.gushchin@linux.dev, djwong@kernel.org,
 brauner@kernel.org, paulmck@kernel.org, tytso@mit.edu
Date: Thu, 22 Jun 2023 16:53:31 +0800
Message-Id: <20230622085335.77010-26-zhengqi.arch@bytedance.com>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
In-Reply-To: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
References: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 27 Jun 2023 14:38:30 +0000
Subject: [Intel-gfx] [PATCH 25/29] mm: vmscan: make memcg slab shrink
 lockless
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

Like global slab shrink, this commit also uses refcount+RCU
method to make memcg slab shrink lockless.

We can reproduce the down_read_trylock() hotspot through the
following script:

```

DIR="/root/shrinker/memcg/mnt"

do_create()
{
    mkdir -p /sys/fs/cgroup/memory/test
    mkdir -p /sys/fs/cgroup/perf_event/test
    echo 4G > /sys/fs/cgroup/memory/test/memory.limit_in_bytes
    for i in `seq 0 $1`;
    do
        mkdir -p /sys/fs/cgroup/memory/test/$i;
        echo $$ > /sys/fs/cgroup/memory/test/$i/cgroup.procs;
        echo $$ > /sys/fs/cgroup/perf_event/test/cgroup.procs;
        mkdir -p $DIR/$i;
    done
}

do_mount()
{
    for i in `seq $1 $2`;
    do
        mount -t tmpfs $i $DIR/$i;
    done
}

do_touch()
{
    for i in `seq $1 $2`;
    do
        echo $$ > /sys/fs/cgroup/memory/test/$i/cgroup.procs;
        echo $$ > /sys/fs/cgroup/perf_event/test/cgroup.procs;
            dd if=/dev/zero of=$DIR/$i/file$i bs=1M count=1 &
    done
}

case "$1" in
  touch)
    do_touch $2 $3
    ;;
  test)
      do_create 4000
    do_mount 0 4000
    do_touch 0 3000
    ;;
  *)
    exit 1
    ;;
esac
```

Save the above script, then run test and touch commands.
Then we can use the following perf command to view hotspots:

perf top -U -F 999 [-g]

1) Before applying this patchset:

  35.34%  [kernel]             [k] down_read_trylock
  18.44%  [kernel]             [k] shrink_slab
  15.98%  [kernel]             [k] pv_native_safe_halt
  15.08%  [kernel]             [k] up_read
   5.33%  [kernel]             [k] idr_find
   2.71%  [kernel]             [k] _find_next_bit
   2.21%  [kernel]             [k] shrink_node
   1.29%  [kernel]             [k] shrink_lruvec
   0.66%  [kernel]             [k] do_shrink_slab
   0.33%  [kernel]             [k] list_lru_count_one
   0.33%  [kernel]             [k] __radix_tree_lookup
   0.25%  [kernel]             [k] mem_cgroup_iter

-   82.19%    19.49%  [kernel]                  [k] shrink_slab
   - 62.00% shrink_slab
        36.37% down_read_trylock
        15.52% up_read
        5.48% idr_find
        3.38% _find_next_bit
      + 0.98% do_shrink_slab

2) After applying this patchset:

  46.83%  [kernel]           [k] shrink_slab
  20.52%  [kernel]           [k] pv_native_safe_halt
   8.85%  [kernel]           [k] do_shrink_slab
   7.71%  [kernel]           [k] _find_next_bit
   1.72%  [kernel]           [k] xas_descend
   1.70%  [kernel]           [k] shrink_node
   1.44%  [kernel]           [k] shrink_lruvec
   1.43%  [kernel]           [k] mem_cgroup_iter
   1.28%  [kernel]           [k] xas_load
   0.89%  [kernel]           [k] super_cache_count
   0.84%  [kernel]           [k] xas_start
   0.66%  [kernel]           [k] list_lru_count_one

-   65.50%    40.44%  [kernel]                  [k] shrink_slab
   - 22.96% shrink_slab
        13.11% _find_next_bit
      - 9.91% do_shrink_slab
         - 1.59% super_cache_count
              0.92% list_lru_count_one

We can see that the first perf hotspot becomes shrink_slab,
which is what we expect.

Signed-off-by: Qi Zheng <zhengqi.arch@bytedance.com>
---
 mm/vmscan.c | 58 +++++++++++++++++++++++++++++++++++++----------------
 1 file changed, 41 insertions(+), 17 deletions(-)

diff --git a/mm/vmscan.c b/mm/vmscan.c
index 767569698946..357a1f2ad690 100644
--- a/mm/vmscan.c
+++ b/mm/vmscan.c
@@ -213,6 +213,12 @@ static struct shrinker_info *shrinker_info_protected(struct mem_cgroup *memcg,
 					 lockdep_is_held(&shrinker_rwsem));
 }
 
+static struct shrinker_info *shrinker_info_rcu(struct mem_cgroup *memcg,
+					       int nid)
+{
+	return rcu_dereference(memcg->nodeinfo[nid]->shrinker_info);
+}
+
 static int expand_one_shrinker_info(struct mem_cgroup *memcg,
 				    int map_size, int defer_size,
 				    int old_map_size, int old_defer_size,
@@ -339,7 +345,7 @@ void set_shrinker_bit(struct mem_cgroup *memcg, int nid, int shrinker_id)
 		struct shrinker_info *info;
 
 		rcu_read_lock();
-		info = rcu_dereference(memcg->nodeinfo[nid]->shrinker_info);
+		info = shrinker_info_rcu(memcg, nid);
 		if (!WARN_ON_ONCE(shrinker_id >= info->map_nr_max)) {
 			/* Pairs with smp mb in shrink_slab() */
 			smp_mb__before_atomic();
@@ -359,7 +365,6 @@ static int prealloc_memcg_shrinker(struct shrinker *shrinker)
 		return -ENOSYS;
 
 	down_write(&shrinker_rwsem);
-	/* This may call shrinker, so it must use down_read_trylock() */
 	id = idr_alloc(&shrinker_idr, shrinker, 0, 0, GFP_KERNEL);
 	if (id < 0)
 		goto unlock;
@@ -392,18 +397,28 @@ static long xchg_nr_deferred_memcg(int nid, struct shrinker *shrinker,
 				   struct mem_cgroup *memcg)
 {
 	struct shrinker_info *info;
+	long nr_deferred;
 
-	info = shrinker_info_protected(memcg, nid);
-	return atomic_long_xchg(&info->nr_deferred[shrinker->id], 0);
+	rcu_read_lock();
+	info = shrinker_info_rcu(memcg, nid);
+	nr_deferred = atomic_long_xchg(&info->nr_deferred[shrinker->id], 0);
+	rcu_read_unlock();
+
+	return nr_deferred;
 }
 
 static long add_nr_deferred_memcg(long nr, int nid, struct shrinker *shrinker,
 				  struct mem_cgroup *memcg)
 {
 	struct shrinker_info *info;
+	long nr_deferred;
+
+	rcu_read_lock();
+	info = shrinker_info_rcu(memcg, nid);
+	nr_deferred = atomic_long_add_return(nr, &info->nr_deferred[shrinker->id]);
+	rcu_read_unlock();
 
-	info = shrinker_info_protected(memcg, nid);
-	return atomic_long_add_return(nr, &info->nr_deferred[shrinker->id]);
+	return nr_deferred;
 }
 
 void reparent_shrinker_deferred(struct mem_cgroup *memcg)
@@ -955,19 +970,18 @@ static unsigned long shrink_slab_memcg(gfp_t gfp_mask, int nid,
 {
 	struct shrinker_info *info;
 	unsigned long ret, freed = 0;
-	int i;
+	int i = 0;
 
 	if (!mem_cgroup_online(memcg))
 		return 0;
 
-	if (!down_read_trylock(&shrinker_rwsem))
-		return 0;
-
-	info = shrinker_info_protected(memcg, nid);
+again:
+	rcu_read_lock();
+	info = shrinker_info_rcu(memcg, nid);
 	if (unlikely(!info))
 		goto unlock;
 
-	for_each_set_bit(i, info->map, info->map_nr_max) {
+	for_each_set_bit_from(i, info->map, info->map_nr_max) {
 		struct shrink_control sc = {
 			.gfp_mask = gfp_mask,
 			.nid = nid,
@@ -982,6 +996,10 @@ static unsigned long shrink_slab_memcg(gfp_t gfp_mask, int nid,
 			continue;
 		}
 
+		if (!shrinker_try_get(shrinker))
+			continue;
+		rcu_read_unlock();
+
 		/* Call non-slab shrinkers even though kmem is disabled */
 		if (!memcg_kmem_online() &&
 		    !(shrinker->flags & SHRINKER_NONSLAB))
@@ -1014,13 +1032,19 @@ static unsigned long shrink_slab_memcg(gfp_t gfp_mask, int nid,
 		}
 		freed += ret;
 
-		if (rwsem_is_contended(&shrinker_rwsem)) {
-			freed = freed ? : 1;
-			break;
-		}
+		shrinker_put(shrinker);
+
+		/*
+		 * We have already exited the read-side of rcu critical section
+		 * before calling do_shrink_slab(), the shrinker_info may be
+		 * released in expand_one_shrinker_info(), so restart the
+		 * iteration.
+		 */
+		i++;
+		goto again;
 	}
 unlock:
-	up_read(&shrinker_rwsem);
+	rcu_read_unlock();
 	return freed;
 }
 #else /* CONFIG_MEMCG */
-- 
2.30.2

