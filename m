Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE23673FE43
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 16:39:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2BF410E327;
	Tue, 27 Jun 2023 14:38:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CF1710E4FC
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 08:56:04 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id
 d9443c01a7336-1b52418c25bso12033615ad.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 01:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance.com; s=google; t=1687424164; x=1690016164;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=FWRSgLiVxGu7by+bRdZCMSZgL2CmyzCgjcAmFywfg3g=;
 b=W9Q0mEFJ4YX/Kxo42ZpDHLFmjt3CYHNqumMzPD6lCEJ/AclBj6ki+9nXx+XP2OFoT9
 biokZFjtTO4s6n85EeiNgXVRb8aHb7r2IMBB+HnwNOlBqet/0l5xfJVO+DolK/U7XTWU
 M277NuxA39AWH+q/lhKoP2vIlehvWLhpgJj/4uGWoGxCITX36OL+YHFtfzDKSSw2iPaX
 MbP+C5V24hBPOg4LWw9eV/ZehzOW8RyY8zV5pnDOyFwQ720HnrExvRoWQvOw0JMgQMOU
 XwvMcYncbAVdeNBjwwgU6wHkMwvamAyfgHl3RPNu98UxqyF0R9Sxc8Wx/1hGBgxkRDYX
 Kkuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687424164; x=1690016164;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=FWRSgLiVxGu7by+bRdZCMSZgL2CmyzCgjcAmFywfg3g=;
 b=N2qeda3/Lq/lPkwK+xmT+c3qKSXil3Fpy+oOV0m3EGP1uC3vja5oBzjf27Xcd5g2Tg
 aen9Gjm5DFoOayhPjVL4C9xVw4JDWcy/NqbO0HlgP6qy1P5QR0Y2p5pOFS+mcAXlmsut
 LSSIRzaWg0JNTey0mLdU+ei3c39/rHcqIVpylvK0pdNBO4eR3MNPySKB/WNArXeU95nF
 FCxkknbX18pARpuO9T7ENuGTb18k4ac/Alwfr9WjmuA8aoi64cJc7/ncqYIic93Eok2O
 +xlDFrK7izsFtdCZ5Kv5Eome21ste+tJmP74jtNyz4E3Y8bPwHkZlSyo4AJ75+3l8zaO
 x8HA==
X-Gm-Message-State: AC+VfDzlbXIqM6BPEmEpwmAQ1sjKpcnDQeiMv/fLigzBCn8MvPnJoocE
 LgCzZ/udsKHuFXJ0SODqDOafEA==
X-Google-Smtp-Source: ACHHUZ4nYFfrGKqZLYUWSywLes9hZrkxqoQAJfwtv5FmoHmc5MLCqSR93ZcAMHhMn41B6ov+vpDAfw==
X-Received: by 2002:a17:902:ea01:b0:1b0:4680:60 with SMTP id
 s1-20020a170902ea0100b001b046800060mr21968987plg.1.1687424164102; 
 Thu, 22 Jun 2023 01:56:04 -0700 (PDT)
Received: from C02DW0BEMD6R.bytedance.net ([139.177.225.254])
 by smtp.gmail.com with ESMTPSA id
 h2-20020a170902f7c200b001b549fce345sm4806971plw.230.2023.06.22.01.55.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Jun 2023 01:56:03 -0700 (PDT)
From: Qi Zheng <zhengqi.arch@bytedance.com>
To: akpm@linux-foundation.org, david@fromorbit.com, tkhai@ya.ru,
 vbabka@suse.cz, roman.gushchin@linux.dev, djwong@kernel.org,
 brauner@kernel.org, paulmck@kernel.org, tytso@mit.edu
Date: Thu, 22 Jun 2023 16:53:21 +0800
Message-Id: <20230622085335.77010-16-zhengqi.arch@bytedance.com>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
In-Reply-To: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
References: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 27 Jun 2023 14:38:30 +0000
Subject: [Intel-gfx] [PATCH 15/29] NFSD: dynamically allocate the
 nfsd-client shrinker
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
we need to dynamically allocate the nfsd-client shrinker,
so that it can be freed asynchronously using kfree_rcu().
Then it doesn't need to wait for RCU read-side critical
section when releasing the struct nfsd_net.

Signed-off-by: Qi Zheng <zhengqi.arch@bytedance.com>
---
 fs/nfsd/netns.h     |  2 +-
 fs/nfsd/nfs4state.c | 20 ++++++++++++--------
 2 files changed, 13 insertions(+), 9 deletions(-)

diff --git a/fs/nfsd/netns.h b/fs/nfsd/netns.h
index ec49b200b797..f669444d5336 100644
--- a/fs/nfsd/netns.h
+++ b/fs/nfsd/netns.h
@@ -195,7 +195,7 @@ struct nfsd_net {
 	int			nfs4_max_clients;
 
 	atomic_t		nfsd_courtesy_clients;
-	struct shrinker		nfsd_client_shrinker;
+	struct shrinker		*nfsd_client_shrinker;
 	struct work_struct	nfsd_shrinker_work;
 };
 
diff --git a/fs/nfsd/nfs4state.c b/fs/nfsd/nfs4state.c
index 6e61fa3acaf1..a06184270548 100644
--- a/fs/nfsd/nfs4state.c
+++ b/fs/nfsd/nfs4state.c
@@ -4388,8 +4388,7 @@ static unsigned long
 nfsd4_state_shrinker_count(struct shrinker *shrink, struct shrink_control *sc)
 {
 	int count;
-	struct nfsd_net *nn = container_of(shrink,
-			struct nfsd_net, nfsd_client_shrinker);
+	struct nfsd_net *nn = shrink->private_data;
 
 	count = atomic_read(&nn->nfsd_courtesy_clients);
 	if (!count)
@@ -8094,14 +8093,19 @@ static int nfs4_state_create_net(struct net *net)
 	INIT_WORK(&nn->nfsd_shrinker_work, nfsd4_state_shrinker_worker);
 	get_net(net);
 
-	nn->nfsd_client_shrinker.scan_objects = nfsd4_state_shrinker_scan;
-	nn->nfsd_client_shrinker.count_objects = nfsd4_state_shrinker_count;
-	nn->nfsd_client_shrinker.seeks = DEFAULT_SEEKS;
-
-	if (register_shrinker(&nn->nfsd_client_shrinker, "nfsd-client"))
+	nn->nfsd_client_shrinker = shrinker_alloc_and_init(nfsd4_state_shrinker_count,
+							   nfsd4_state_shrinker_scan,
+							   0, DEFAULT_SEEKS, 0,
+							   nn);
+	if (!nn->nfsd_client_shrinker)
 		goto err_shrinker;
+
+	if (register_shrinker(nn->nfsd_client_shrinker, "nfsd-client"))
+		goto err_register;
 	return 0;
 
+err_register:
+	shrinker_free(nn->nfsd_client_shrinker);
 err_shrinker:
 	put_net(net);
 	kfree(nn->sessionid_hashtbl);
@@ -8197,7 +8201,7 @@ nfs4_state_shutdown_net(struct net *net)
 	struct list_head *pos, *next, reaplist;
 	struct nfsd_net *nn = net_generic(net, nfsd_net_id);
 
-	unregister_shrinker(&nn->nfsd_client_shrinker);
+	unregister_and_free_shrinker(nn->nfsd_client_shrinker);
 	cancel_work(&nn->nfsd_shrinker_work);
 	cancel_delayed_work_sync(&nn->laundromat_work);
 	locks_end_grace(&nn->nfsd4_manager);
-- 
2.30.2

