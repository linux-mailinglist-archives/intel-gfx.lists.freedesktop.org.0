Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BECEB59B00
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 16:55:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F70010E7FD;
	Tue, 16 Sep 2025 14:55:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="H9MixfkU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
 [209.85.214.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1FD510E63D
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 04:49:34 +0000 (UTC)
Received: by mail-pl1-f172.google.com with SMTP id
 d9443c01a7336-24c8ef94e5dso40146275ad.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Sep 2025 21:49:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1757998174; x=1758602974; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=kee/jWM05xMj5MjToYK8a9EUY/mguZ7xPQQnB3cJ53E=;
 b=H9MixfkUCCRTmET4nIfhoJpJuDVTWhP78zfebisHMG41aK974vtbvXnhHX6pgdFXaU
 ddbL6ZHVgVwCaIYQztbq0CvrO1G9vvdtDYrHx4I1EQkSjQa6JvAjVm+V/8IDj7qwhZK+
 XKYjCyFklb/UqaiwjXScxojbjp+r6fvyt8iYjEP0cZORvGjWi8ZftMymSLX4A7xzZ4GN
 uRdr9iHDUyw9M4MKJrhlknpZvehNzOwYcGXpH6uB0c7snZaEZuqyznoWguNDTTTTcZhU
 /s+c0GR+br/uNweJ1j4fy57EMmgxTnSEvwaxNeqZiv87GU/2ExNUHn0mkeHI6kORt7bZ
 IioA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757998174; x=1758602974;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=kee/jWM05xMj5MjToYK8a9EUY/mguZ7xPQQnB3cJ53E=;
 b=TMzM/2NbsoQNsxXaWpygWZaF9eYycaPqPL7h0knbFm4QIxUMAIXrZ60ra0CgAG9ckt
 ZlVFfsqEsUDdkkL5Ar4Rr8ex4UKhzJ0FOCMBQ0xiHVBG7lvJXIOOw88HVSN3YAXr8Ox3
 Z8zJzj2L7vEgJ5V7CXX5AkdGN60IKJHwoUFC1cTM2XNV3TZj88QmZNCXgr7kpsWGI1lM
 Wmp/wTLC2WKawbcLqzYVmDkqkChfybWv+pWJpub0inE4OzVHk/e69zMTxXWHsPti4UlL
 5fUEWo6e4OvBuJPkejrVEiGmY1Y8f136wIqGKcWk6jOhv7qySOdNPx8sZuS0517AtMZo
 4knQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXUce5fXriqlRKPBxZv9DTI6zvVG8oCnOCO/qyWp8UMxPOWM5bzSo9xzKbOXlzFrDO/IcYnqRKLIgU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxRTMW/uGpW9/Lvl8YTabMlFmzgqdZsRrtrT5WB21xpFvZ+c5iU
 /DRJV7UKF4YORX5XRME1kx65zOTGvT/ooAoqO2alcnwzV5tUf7N0NNWj
X-Gm-Gg: ASbGnctFV5HlcL5VXYs8xBmTPF3NFjaAmkEQSxl/LRHagZV7avQOy9989XA3z1y5O4g
 QcuS310gPiYB8nJx6J6nylBh54gjMrlLfV3v/NNuAoOahdUFhxWKE18zGyUFycBDixtcLZ0Bih/
 h4i09vgXYcrdCP9VmL/ateBs+EoNIHQWkt98QQsto8Dw/Wo18W5mZdBBsQ4n82d4psMVeRSNduL
 feCmVHtSVgifG8wzmsJ0PphM8pEYtUoXUfkcEi2D2bSyrL1SP+oVE160ZJHET80DA/0cDTFT6SC
 iceG6k/4CQsn93pljT+OFPqNeAxuAlip3P7hm0icRgiQRz3Hh31V0TFR63ilfBzYq3aChSq3Y3z
 A54RdjBjwJpAS54vOinhej+yMq9KQDB2WrUT75Dg=
X-Google-Smtp-Source: AGHT+IHQsp/jp2h5qh/u2y0fwJLYw3kUJFgybrRxf3n883LnUrw88kxlxQMidQOFwo4KtZaOVgbKQg==
X-Received: by 2002:a17:902:cecc:b0:267:a1d5:7372 with SMTP id
 d9443c01a7336-267d151fba1mr14211985ad.4.1757998173983; 
 Mon, 15 Sep 2025 21:49:33 -0700 (PDT)
Received: from pengdl-pc.mioffice.cn ([43.224.245.249])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-25ef09c77f8sm104600605ad.15.2025.09.15.21.49.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Sep 2025 21:49:33 -0700 (PDT)
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
 pengdonglin <dolinux.peng@gmail.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 pengdonglin <pengdonglin@xiaomi.com>
Subject: [PATCH v3 12/14] net: amt: Remove redundant rcu_read_lock/unlock() in
 spin_lock
Date: Tue, 16 Sep 2025 12:47:33 +0800
Message-Id: <20250916044735.2316171-13-dolinux.peng@gmail.com>
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

Cc: Taehee Yoo <ap420073@gmail.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Eric Dumazet <edumazet@google.com>
Cc: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: pengdonglin <pengdonglin@xiaomi.com>
Signed-off-by: pengdonglin <dolinux.peng@gmail.com>
---
 drivers/net/amt.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/net/amt.c b/drivers/net/amt.c
index ed86537b2f61..aaed9fbc7526 100644
--- a/drivers/net/amt.c
+++ b/drivers/net/amt.c
@@ -295,7 +295,6 @@ static void amt_source_work(struct work_struct *work)
 
 	tunnel = gnode->tunnel_list;
 	spin_lock_bh(&tunnel->lock);
-	rcu_read_lock();
 	if (gnode->filter_mode == MCAST_INCLUDE) {
 		amt_destroy_source(snode);
 		if (!gnode->nr_sources)
@@ -306,7 +305,6 @@ static void amt_source_work(struct work_struct *work)
 		 */
 		snode->status = AMT_SOURCE_STATUS_D_FWD;
 	}
-	rcu_read_unlock();
 	spin_unlock_bh(&tunnel->lock);
 }
 
@@ -426,7 +424,6 @@ static void amt_group_work(struct work_struct *work)
 		goto out;
 	}
 
-	rcu_read_lock();
 	for (i = 0; i < buckets; i++) {
 		hlist_for_each_entry_safe(snode, t,
 					  &gnode->sources[i], node) {
@@ -443,7 +440,6 @@ static void amt_group_work(struct work_struct *work)
 		amt_del_group(amt, gnode);
 	else
 		gnode->filter_mode = MCAST_INCLUDE;
-	rcu_read_unlock();
 	spin_unlock_bh(&tunnel->lock);
 out:
 	dev_put(amt->dev);
@@ -1327,11 +1323,9 @@ static void amt_clear_groups(struct amt_tunnel_list *tunnel)
 	int i;
 
 	spin_lock_bh(&tunnel->lock);
-	rcu_read_lock();
 	for (i = 0; i < amt->hash_buckets; i++)
 		hlist_for_each_entry_safe(gnode, t, &tunnel->groups[i], node)
 			amt_del_group(amt, gnode);
-	rcu_read_unlock();
 	spin_unlock_bh(&tunnel->lock);
 }
 
@@ -1343,11 +1337,9 @@ static void amt_tunnel_expire(struct work_struct *work)
 	struct amt_dev *amt = tunnel->amt;
 
 	spin_lock_bh(&amt->lock);
-	rcu_read_lock();
 	list_del_rcu(&tunnel->list);
 	amt->nr_tunnels--;
 	amt_clear_groups(tunnel);
-	rcu_read_unlock();
 	spin_unlock_bh(&amt->lock);
 	kfree_rcu(tunnel, rcu);
 }
-- 
2.34.1

