Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECCC64BED99
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 00:17:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E429310E278;
	Mon, 21 Feb 2022 23:17:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49A3110E278;
 Mon, 21 Feb 2022 23:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645485441; x=1677021441;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5NTVg/3b+n9yGWloqSIjoBVRuhweq0kc3TvI9tdbCGE=;
 b=KIkDkrUmfu0I7pPb73M8+vrLjnfx8As+92J6Gmaag9t5h/AcssV5DMuR
 HSJQqPPzwO2akrsSPU/JdtWdc6PutZnewVhz9oHr6NSboWpNQE7IAgpSR
 ScSTxO64NQUyZ9IK/IpGfzM0Bq7Wx337BPhC/9KJ7dAJluDveuvAi2ZW8
 rdAMcdU0n6jcmQzmLzy9/pOYHLy+pFE/Qn9nPje1gPU1qNUAhH6Nx2R5O
 VxZaT9oNVWmFK72pdGQaD/U8OhmCDEPxTC3Y1pkLXoItrDkD+MwEukUCP
 Rb3PVsLOnSWbS0NeL7WEIsrsCgQSRBRVWhztQFjDA76oH8BGe4qXaqUOc A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="238995921"
X-IronPort-AV: E=Sophos;i="5.88,386,1635231600"; d="scan'208";a="238995921"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 15:17:21 -0800
X-IronPort-AV: E=Sophos;i="5.88,386,1635231600"; d="scan'208";a="638694359"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 15:17:18 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, netdev <netdev@vger.kernel.org>
Date: Tue, 22 Feb 2022 00:16:43 +0100
Message-Id: <20220221231705.1481059-2-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220221231705.1481059-1-andrzej.hajda@intel.com>
References: <20220221231705.1481059-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 01/11] [DO NOT MERGE] ref_tracker: implement
 use-after-free detection
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

Whenever ref_tracker_dir_init() is called, mark the struct ref_tracker_dir
as dead.

Test the dead status from ref_tracker_alloc() and ref_tracker_free()

This should detect buggy dev_put()/dev_hold() happening too late
in netdevice dismantle process.

Signed-off-by: Eric Dumazet <edumazet@google.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 include/linux/ref_tracker.h | 2 ++
 lib/ref_tracker.c           | 5 +++++
 2 files changed, 7 insertions(+)

diff --git a/include/linux/ref_tracker.h b/include/linux/ref_tracker.h
index 60f3453be23e6..a443abda937d8 100644
--- a/include/linux/ref_tracker.h
+++ b/include/linux/ref_tracker.h
@@ -13,6 +13,7 @@ struct ref_tracker_dir {
 	spinlock_t		lock;
 	unsigned int		quarantine_avail;
 	refcount_t		untracked;
+	bool			dead;
 	struct list_head	list; /* List of active trackers */
 	struct list_head	quarantine; /* List of dead trackers */
 #endif
@@ -26,6 +27,7 @@ static inline void ref_tracker_dir_init(struct ref_tracker_dir *dir,
 	INIT_LIST_HEAD(&dir->quarantine);
 	spin_lock_init(&dir->lock);
 	dir->quarantine_avail = quarantine_count;
+	dir->dead = false;
 	refcount_set(&dir->untracked, 1);
 	stack_depot_init();
 }
diff --git a/lib/ref_tracker.c b/lib/ref_tracker.c
index a6789c0c626b0..32ff6bd497f8e 100644
--- a/lib/ref_tracker.c
+++ b/lib/ref_tracker.c
@@ -20,6 +20,7 @@ void ref_tracker_dir_exit(struct ref_tracker_dir *dir)
 	unsigned long flags;
 	bool leak = false;
 
+	dir->dead = true;
 	spin_lock_irqsave(&dir->lock, flags);
 	list_for_each_entry_safe(tracker, n, &dir->quarantine, head) {
 		list_del(&tracker->head);
@@ -72,6 +73,8 @@ int ref_tracker_alloc(struct ref_tracker_dir *dir,
 	gfp_t gfp_mask = gfp;
 	unsigned long flags;
 
+	WARN_ON_ONCE(dir->dead);
+
 	if (gfp & __GFP_DIRECT_RECLAIM)
 		gfp_mask |= __GFP_NOFAIL;
 	*trackerp = tracker = kzalloc(sizeof(*tracker), gfp_mask);
@@ -100,6 +103,8 @@ int ref_tracker_free(struct ref_tracker_dir *dir,
 	unsigned int nr_entries;
 	unsigned long flags;
 
+	WARN_ON_ONCE(dir->dead);
+
 	if (!tracker) {
 		refcount_dec(&dir->untracked);
 		return -EEXIST;
-- 
2.25.1

