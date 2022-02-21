Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9340A4BEDB5
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 00:18:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4599110E509;
	Mon, 21 Feb 2022 23:18:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DE0E10E516;
 Mon, 21 Feb 2022 23:17:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645485476; x=1677021476;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mmcVCbEg/LT9UwII2j+BYuiQo6K4SH6OPf0Nj6nyyHk=;
 b=dJy8ppYBHg4tNF/k+o/hbmdmt/Z9aEPxbIWAVfHVtsNt0+GLHbwpQnfb
 GN5TWIxVlwDOj3AUBu5McN1biHEYl4MPoQ7/Uj1s/o786NSXj4+wu/PYn
 W2+iR1Q3R60NjIoxHy0AufdV8SSWO0G2nzcSKC1ivbj2iNRzX7DM3xa9X
 DIfNzUnB3yp/H9u+FzmeJEY9PQy9MCwbOEvn6hBRqZQmI/ATxMIWHPaCo
 vCIcMat5qRURG+ccAzERSu7xA+nkIXCZY60oWRWTLttzl+K3vb4DiCAz9
 4F4fQH2z6osrrZ/eMh2vYkOHip9/SB/5QUN43JucdBprS+x4TPz67D2Pi Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="238996005"
X-IronPort-AV: E=Sophos;i="5.88,386,1635231600"; d="scan'208";a="238996005"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 15:17:56 -0800
X-IronPort-AV: E=Sophos;i="5.88,386,1635231600"; d="scan'208";a="638694503"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 15:17:53 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, netdev <netdev@vger.kernel.org>
Date: Tue, 22 Feb 2022 00:16:54 +0100
Message-Id: <20220221231705.1481059-13-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220221231705.1481059-1-andrzej.hajda@intel.com>
References: <20220221231705.1481059-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/9] lib/ref_tracker: improve allocation flags
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
 Jakub Kicinski <kuba@kernel.org>, Dmitry Vyukov <dvyukov@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Library can be called in non-sleeping context, so it should not use
__GFP_NOFAIL. Instead it should calmly handle allocation fails, for
this __GFP_NOWARN has been added as well.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 lib/ref_tracker.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/lib/ref_tracker.c b/lib/ref_tracker.c
index 7b00bca300043..c8441ffbb058a 100644
--- a/lib/ref_tracker.c
+++ b/lib/ref_tracker.c
@@ -59,7 +59,7 @@ __ref_tracker_dir_pr_ostream(struct ref_tracker_dir *dir,
 	if (list_empty(&dir->list))
 		return;
 
-	sbuf = kmalloc(STACK_BUF_SIZE, GFP_NOWAIT);
+	sbuf = kmalloc(STACK_BUF_SIZE, GFP_NOWAIT | __GFP_NOWARN);
 
 	list_for_each_entry(tracker, &dir->list, head)
 		++total;
@@ -154,11 +154,11 @@ int ref_tracker_alloc(struct ref_tracker_dir *dir,
 	unsigned long entries[REF_TRACKER_STACK_ENTRIES];
 	struct ref_tracker *tracker;
 	unsigned int nr_entries;
-	gfp_t gfp_mask = gfp;
+	gfp_t gfp_mask;
 	unsigned long flags;
 
-	if (gfp & __GFP_DIRECT_RECLAIM)
-		gfp_mask |= __GFP_NOFAIL;
+	gfp |= __GFP_NOWARN;
+	gfp_mask = (gfp & __GFP_DIRECT_RECLAIM) ? (gfp | __GFP_NOFAIL) : gfp;
 	*trackerp = tracker = kzalloc(sizeof(*tracker), gfp_mask);
 	if (unlikely(!tracker)) {
 		pr_err_once("memory allocation failure, unreliable refcount tracker.\n");
@@ -191,7 +191,8 @@ int ref_tracker_free(struct ref_tracker_dir *dir,
 	}
 	nr_entries = stack_trace_save(entries, ARRAY_SIZE(entries), 1);
 	nr_entries = filter_irq_stacks(entries, nr_entries);
-	stack_handle = stack_depot_save(entries, nr_entries, GFP_ATOMIC);
+	stack_handle = stack_depot_save(entries, nr_entries,
+					GFP_NOWAIT | __GFP_NOWARN);
 
 	spin_lock_irqsave(&dir->lock, flags);
 	if (tracker->dead) {
-- 
2.25.1

