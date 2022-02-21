Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B913F4BEDA9
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 00:17:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C95C310E4E6;
	Mon, 21 Feb 2022 23:17:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78A5210E3EA;
 Mon, 21 Feb 2022 23:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645485457; x=1677021457;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Hxxx7U/IhkSHLnB5PbYul9lg1GjO2Izf/ptB46o3iFI=;
 b=gmmZK8abjwwCvc5LvvB8sjTAnReXC0LHRqiXqjpUyFZgiX9oNWSQAeR8
 hj13Up6cC2NugLzumx0ljHXsbnPKH12V0VcBWhNuW6hEVPj6BSTZICK4M
 UQO2vg+cgXmD5jAgQP3t0JpLzi6e4USVn3KxasPmVuv3b+4wCHT8dryXZ
 7bKF34IhHoMop/ys114yeAH7vyXEiCUf9sy0p8iQFHLzDO3JE1M2XBZmc
 zwW4Txutssw83vePN/3eD/RxWH9iF+UgjFmg3bBYugf3TG30BJe9NBVDO
 ExXel8rbItnnXVqYyzIqqsJ4EVH7SpfdFUKMZpWHRGIrfP85rP2wFvulK A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="238995975"
X-IronPort-AV: E=Sophos;i="5.88,386,1635231600"; d="scan'208";a="238995975"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 15:17:37 -0800
X-IronPort-AV: E=Sophos;i="5.88,386,1635231600"; d="scan'208";a="638694418"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 15:17:34 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, netdev <netdev@vger.kernel.org>
Date: Tue, 22 Feb 2022 00:16:48 +0100
Message-Id: <20220221231705.1481059-7-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220221231705.1481059-1-andrzej.hajda@intel.com>
References: <20220221231705.1481059-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 02/11] ref_tracker: add a count of untracked
 references
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Dmitry Vyukov <dvyukov@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Eric Dumazet <edumazet@google.com>

We are still chasing a netdev refcount imbalance, and we suspect
we have one rogue dev_put() that is consuming a reference taken
from a dev_hold_track()

To detect this case, allow ref_tracker_alloc() and ref_tracker_free()
to be called with a NULL @trackerp parameter, and use a dedicated
refcount_t just for them.

Signed-off-by: Eric Dumazet <edumazet@google.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 include/linux/ref_tracker.h |  2 ++
 lib/ref_tracker.c           | 12 +++++++++++-
 2 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/include/linux/ref_tracker.h b/include/linux/ref_tracker.h
index a443abda937d8..9ca353ab712b5 100644
--- a/include/linux/ref_tracker.h
+++ b/include/linux/ref_tracker.h
@@ -13,6 +13,7 @@ struct ref_tracker_dir {
 	spinlock_t		lock;
 	unsigned int		quarantine_avail;
 	refcount_t		untracked;
+	refcount_t		no_tracker;
 	bool			dead;
 	struct list_head	list; /* List of active trackers */
 	struct list_head	quarantine; /* List of dead trackers */
@@ -29,6 +30,7 @@ static inline void ref_tracker_dir_init(struct ref_tracker_dir *dir,
 	dir->quarantine_avail = quarantine_count;
 	dir->dead = false;
 	refcount_set(&dir->untracked, 1);
+	refcount_set(&dir->no_tracker, 1);
 	stack_depot_init();
 }
 
diff --git a/lib/ref_tracker.c b/lib/ref_tracker.c
index 32ff6bd497f8e..9c0c2e09df666 100644
--- a/lib/ref_tracker.c
+++ b/lib/ref_tracker.c
@@ -38,6 +38,7 @@ void ref_tracker_dir_exit(struct ref_tracker_dir *dir)
 	spin_unlock_irqrestore(&dir->lock, flags);
 	WARN_ON_ONCE(leak);
 	WARN_ON_ONCE(refcount_read(&dir->untracked) != 1);
+	WARN_ON_ONCE(refcount_read(&dir->no_tracker) != 1);
 }
 EXPORT_SYMBOL(ref_tracker_dir_exit);
 
@@ -75,6 +76,10 @@ int ref_tracker_alloc(struct ref_tracker_dir *dir,
 
 	WARN_ON_ONCE(dir->dead);
 
+	if (!trackerp) {
+		refcount_inc(&dir->no_tracker);
+		return 0;
+	}
 	if (gfp & __GFP_DIRECT_RECLAIM)
 		gfp_mask |= __GFP_NOFAIL;
 	*trackerp = tracker = kzalloc(sizeof(*tracker), gfp_mask);
@@ -98,13 +103,18 @@ int ref_tracker_free(struct ref_tracker_dir *dir,
 		     struct ref_tracker **trackerp)
 {
 	unsigned long entries[REF_TRACKER_STACK_ENTRIES];
-	struct ref_tracker *tracker = *trackerp;
 	depot_stack_handle_t stack_handle;
+	struct ref_tracker *tracker;
 	unsigned int nr_entries;
 	unsigned long flags;
 
 	WARN_ON_ONCE(dir->dead);
 
+	if (!trackerp) {
+		refcount_dec(&dir->no_tracker);
+		return 0;
+	}
+	tracker = *trackerp;
 	if (!tracker) {
 		refcount_dec(&dir->untracked);
 		return -EEXIST;
-- 
2.25.1

