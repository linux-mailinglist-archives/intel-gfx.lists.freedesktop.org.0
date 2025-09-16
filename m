Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE07B59AFC
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 16:55:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDD1910E7FA;
	Tue, 16 Sep 2025 14:55:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="f15xbA10";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
 [209.85.214.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC13A10E63D
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 04:49:20 +0000 (UTC)
Received: by mail-pl1-f172.google.com with SMTP id
 d9443c01a7336-2616549b925so23787275ad.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Sep 2025 21:49:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1757998160; x=1758602960; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=WKFiV5+5iXRxF8ed4BpSpPqD3Dy/BIf3yej7QaTDllk=;
 b=f15xbA10kugyruF3SykqlJMc4Odr3zjPrIJe1xLNNOpj9ic6q2el7gIfWcEbRRyY2N
 z1jG1C/Xbz0VKHDd/zePwwD6nhJjb3n6EbHX1jPHMCIqdy6w7KL6u2Nem6pb43IsbnBx
 0GHeyUDbbeo5GQth3poorN8q51qGCtrcX9rzYGcgS3pJDxjgq57Dd8s3hgvGDwzlULlM
 Ot0xgb/NhrtkZr5qj4v2pdURrjOA2s5lqwu++o5aM1BHjY8a7yvC+Z8BLSCik0GdLua8
 LDcvmvD7YsIFdX/jOZox7/OLdl01+euHXf0RQLy6kaDQGm3qkPouwAbjW+g+LivOAY/N
 ycMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757998160; x=1758602960;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=WKFiV5+5iXRxF8ed4BpSpPqD3Dy/BIf3yej7QaTDllk=;
 b=bu3wztQr1Bu1l+ewiQV2UtVhQX7t2ZLy9c9DdlXp+bgiEae6E3MkbYZcd37jNK/We1
 wuEGPLAhcfmTW0C4n2FHcLsGKWW8GU8JqQZYEhN1/i+IlIM54JRxsKwqN5017BrQDXoU
 cRGOeMt11XN5Q54qH+tw/ju4tn6n3chQhhx8UaPFSR3NM7ADwSTs9pHP71iG2p9NZt6y
 CYJ/6BNqRsHZIkLj2Yfx0gjjUBiJGfUkoFSbEtyB+36JokL7+PUhgIb8S0cVg6Zb+oRq
 fn3t6RUdgyILXihn7Wwu2sAXJOsmEAU/zUQWcHxnV2YmJFepQ8FicqVZyC7pNe2Hr9zO
 i/Bw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVNxf43ri4UgUvaBzJ/6F/w6w3UIoOQZXv9wF4pW7PTRaqqo/9XXyzUFOQdw8wLS1Ru49tDB6YT7V8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw0OxUJoE+Q4qn2k26P0YGMKNA1D/G2UVxhwxEarnocgB3E2cdf
 AVaMwE4d2wYKllynzEbF4XCw+GcjZ1CZR5c7LAQUvLNKwSppEvCL0yWW
X-Gm-Gg: ASbGncsXeVTiK+piohpoFQcUeXFCwNlf3JFtSiSG8+OQq8LoocVPcQljDqNO59ViEXj
 Gtk2eQoElcmQWonlkH4aGaWy5rhalqsxZoZHXJkzjb3tewiTt3RUYNuTnlpmdqedNXeRTynhVp7
 7Ji0IYXtdHrVhUp8bkSBsXO8Gh4fNW/karKzZL3J/tFQNtEYw33ML20/gEKIO9hrkzDUIMj42Mj
 JzuUfo2P4MlCXS1kSnRiao64+xzfsI3NCtWb38wjzmDYWzD6UzxG6ZRBDKMMT2N9Rdk7mQfR0yM
 yChSwtoXx6Sey2fxyzVjFJsUcjJISl00Taa0TNh/5qOQXqQqnXqtYLRRdn+NTuGpfuyfcXTd41Y
 UM2zfg95xZ56ZNTkpSqZrVOyZKEcdoe0zkkOmLU35uL+gfBaiVw==
X-Google-Smtp-Source: AGHT+IFnY0JR12RUAnqJgicB9FLxjxZB94pUdOOycWzScDVS8Oor/+yCs+nfn4PrPMaqh+5e4UELMQ==
X-Received: by 2002:a17:902:c408:b0:267:d82a:127c with SMTP id
 d9443c01a7336-267d82a15fcmr9300035ad.42.1757998160302; 
 Mon, 15 Sep 2025 21:49:20 -0700 (PDT)
Received: from pengdl-pc.mioffice.cn ([43.224.245.249])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-25ef09c77f8sm104600605ad.15.2025.09.15.21.49.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Sep 2025 21:49:19 -0700 (PDT)
From: pengdonglin <dolinux.peng@gmail.com>
To: tj@kernel.org, tony.luck@intel.com, jani.nikula@linux.intel.com,
 ap420073@gmail.com, jv@jvosburgh.net, freude@linux.ibm.com, bcrl@kvack.org,
 trondmy@kernel.org, longman@redhat.com, kees@kernel.org
Cc: bigeasy@linutronix.de, hdanton@sina.com, paulmck@kernel.org,
 linux-kernel@vger.kernel.org, linux-rt-devel@lists.linux.dev,
 linux-nfs@vger.kernel.org, linux-aio@kvack.org,
 linux-fsdevel@vger.kernel.org, linux-security-module@vger.kernel.org,
 netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-wireless@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-s390@vger.kernel.org, cgroups@vger.kernel.org,
 pengdonglin <dolinux.peng@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>,
 pengdonglin <pengdonglin@xiaomi.com>
Subject: [PATCH v3 10/14] wifi: mac80211: Remove redundant
 rcu_read_lock/unlock() in spin_lock
Date: Tue, 16 Sep 2025 12:47:31 +0800
Message-Id: <20250916044735.2316171-11-dolinux.peng@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250916044735.2316171-1-dolinux.peng@gmail.com>
References: <20250916044735.2316171-1-dolinux.peng@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 16 Sep 2025 14:55:20 +0000
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

From: pengdonglin <pengdonglin@xiaomi.com>

Since commit a8bb74acd8efe ("rcu: Consolidate RCU-sched update-side function definitions")
there is no difference between rcu_read_lock(), rcu_read_lock_bh() and
rcu_read_lock_sched() in terms of RCU read section and the relevant grace
period. That means that spin_lock(), which implies rcu_read_lock_sched(),
also implies rcu_read_lock().

There is no need no explicitly start a RCU read section if one has already
been started implicitly by spin_lock().

Simplify the code and remove the inner rcu_read_lock() invocation.

Cc: Johannes Berg <johannes@sipsolutions.net>
Signed-off-by: pengdonglin <pengdonglin@xiaomi.com>
Signed-off-by: pengdonglin <dolinux.peng@gmail.com>
---
 net/mac80211/cfg.c            | 2 --
 net/mac80211/debugfs.c        | 2 --
 net/mac80211/debugfs_netdev.c | 2 --
 net/mac80211/debugfs_sta.c    | 2 --
 net/mac80211/sta_info.c       | 2 --
 5 files changed, 10 deletions(-)

diff --git a/net/mac80211/cfg.c b/net/mac80211/cfg.c
index 2ed07fa121ab..4fe50d4c461d 100644
--- a/net/mac80211/cfg.c
+++ b/net/mac80211/cfg.c
@@ -4825,7 +4825,6 @@ static int ieee80211_get_txq_stats(struct wiphy *wiphy,
 	int ret = 0;
 
 	spin_lock_bh(&local->fq.lock);
-	rcu_read_lock();
 
 	if (wdev) {
 		sdata = IEEE80211_WDEV_TO_SUB_IF(wdev);
@@ -4851,7 +4850,6 @@ static int ieee80211_get_txq_stats(struct wiphy *wiphy,
 	}
 
 out:
-	rcu_read_unlock();
 	spin_unlock_bh(&local->fq.lock);
 
 	return ret;
diff --git a/net/mac80211/debugfs.c b/net/mac80211/debugfs.c
index e8b78ec682da..82099f4cedbe 100644
--- a/net/mac80211/debugfs.c
+++ b/net/mac80211/debugfs.c
@@ -82,7 +82,6 @@ static ssize_t aqm_read(struct file *file,
 	int len = 0;
 
 	spin_lock_bh(&local->fq.lock);
-	rcu_read_lock();
 
 	len = scnprintf(buf, sizeof(buf),
 			"access name value\n"
@@ -105,7 +104,6 @@ static ssize_t aqm_read(struct file *file,
 			fq->limit,
 			fq->quantum);
 
-	rcu_read_unlock();
 	spin_unlock_bh(&local->fq.lock);
 
 	return simple_read_from_buffer(user_buf, count, ppos,
diff --git a/net/mac80211/debugfs_netdev.c b/net/mac80211/debugfs_netdev.c
index 1dac78271045..30a5a978a678 100644
--- a/net/mac80211/debugfs_netdev.c
+++ b/net/mac80211/debugfs_netdev.c
@@ -625,7 +625,6 @@ static ssize_t ieee80211_if_fmt_aqm(
 	txqi = to_txq_info(sdata->vif.txq);
 
 	spin_lock_bh(&local->fq.lock);
-	rcu_read_lock();
 
 	len = scnprintf(buf,
 			buflen,
@@ -642,7 +641,6 @@ static ssize_t ieee80211_if_fmt_aqm(
 			txqi->tin.tx_bytes,
 			txqi->tin.tx_packets);
 
-	rcu_read_unlock();
 	spin_unlock_bh(&local->fq.lock);
 
 	return len;
diff --git a/net/mac80211/debugfs_sta.c b/net/mac80211/debugfs_sta.c
index 49061bd4151b..ef75255d47d5 100644
--- a/net/mac80211/debugfs_sta.c
+++ b/net/mac80211/debugfs_sta.c
@@ -148,7 +148,6 @@ static ssize_t sta_aqm_read(struct file *file, char __user *userbuf,
 		return -ENOMEM;
 
 	spin_lock_bh(&local->fq.lock);
-	rcu_read_lock();
 
 	p += scnprintf(p,
 		       bufsz + buf - p,
@@ -178,7 +177,6 @@ static ssize_t sta_aqm_read(struct file *file, char __user *userbuf,
 			       test_bit(IEEE80211_TXQ_DIRTY, &txqi->flags) ? " DIRTY" : "");
 	}
 
-	rcu_read_unlock();
 	spin_unlock_bh(&local->fq.lock);
 
 	rv = simple_read_from_buffer(userbuf, count, ppos, buf, p - buf);
diff --git a/net/mac80211/sta_info.c b/net/mac80211/sta_info.c
index 8c550aab9bdc..663318a75d7f 100644
--- a/net/mac80211/sta_info.c
+++ b/net/mac80211/sta_info.c
@@ -2637,13 +2637,11 @@ static void sta_set_tidstats(struct sta_info *sta,
 
 	if (link_id < 0 && tid < IEEE80211_NUM_TIDS) {
 		spin_lock_bh(&local->fq.lock);
-		rcu_read_lock();
 
 		tidstats->filled |= BIT(NL80211_TID_STATS_TXQ_STATS);
 		ieee80211_fill_txq_stats(&tidstats->txq_stats,
 					 to_txq_info(sta->sta.txq[tid]));
 
-		rcu_read_unlock();
 		spin_unlock_bh(&local->fq.lock);
 	}
 }
-- 
2.34.1

