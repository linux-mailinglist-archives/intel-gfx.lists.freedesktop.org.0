Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E8C4BED9D
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 00:17:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AA5D10E38F;
	Mon, 21 Feb 2022 23:17:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EFB010E377;
 Mon, 21 Feb 2022 23:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645485444; x=1677021444;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Pk7RlYaQyw781A8X6p8V9ya5Qc0/GolTrSOpzx8g9s8=;
 b=nTHPdJqDDC3GLzN/RnP+TC6nLtyKUUtWPzSYAgDvVJosES6cBnMj7oiA
 Wd46wnp+vtw6wXClMUB7mtrndLKX4SEj1RuFpbNLkhnz68WoI1hPzh97j
 HqT7/vU5mDAYFqsyHrnkUlEf1xOH2VfWlsgrFdTrKAgvH9/vej5rF1p3m
 0cjTLUI+rIJDxeZUfSgVCzG1FuO3eJPnoxR1Vt7oH03GrwnTHyB2fEDpK
 DP1LR6h84L74LIoq5GlFJET/FUioDo6aVKQXJkGjbuP04LkN6RO3TgsUz
 bcVqkXiJfL0dAmIvG6M3NUiosXQvcdsVCuRaaDol0udb4TScLRRP9/qSk A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="238995923"
X-IronPort-AV: E=Sophos;i="5.88,386,1635231600"; d="scan'208";a="238995923"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 15:17:23 -0800
X-IronPort-AV: E=Sophos;i="5.88,386,1635231600"; d="scan'208";a="638694370"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 15:17:21 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, netdev <netdev@vger.kernel.org>
Date: Tue, 22 Feb 2022 00:16:44 +0100
Message-Id: <20220221231705.1481059-3-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220221231705.1481059-1-andrzej.hajda@intel.com>
References: <20220221231705.1481059-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/9] lib/ref_tracker: add unlocked leak print
 helper
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

To have reliable detection of leaks, caller must be able to check under the same
lock both: tracked counter and the leaks. dir.lock is natural candidate for such
lock and unlocked print helper can be called with this lock taken.
As a bonus we can reuse this helper in ref_tracker_dir_exit.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Chris Wilson <chris.p.wilson@intel.com>
---
 include/linux/ref_tracker.h |  8 +++++
 lib/ref_tracker.c           | 66 +++++++++++++++++++++----------------
 2 files changed, 46 insertions(+), 28 deletions(-)

diff --git a/include/linux/ref_tracker.h b/include/linux/ref_tracker.h
index 60f3453be23e6..b9c968a716483 100644
--- a/include/linux/ref_tracker.h
+++ b/include/linux/ref_tracker.h
@@ -32,6 +32,9 @@ static inline void ref_tracker_dir_init(struct ref_tracker_dir *dir,
 
 void ref_tracker_dir_exit(struct ref_tracker_dir *dir);
 
+void __ref_tracker_dir_print(struct ref_tracker_dir *dir,
+			   unsigned int display_limit);
+
 void ref_tracker_dir_print(struct ref_tracker_dir *dir,
 			   unsigned int display_limit);
 
@@ -52,6 +55,11 @@ static inline void ref_tracker_dir_exit(struct ref_tracker_dir *dir)
 {
 }
 
+static inline void __ref_tracker_dir_print(struct ref_tracker_dir *dir,
+					   unsigned int display_limit)
+{
+}
+
 static inline void ref_tracker_dir_print(struct ref_tracker_dir *dir,
 					 unsigned int display_limit)
 {
diff --git a/lib/ref_tracker.c b/lib/ref_tracker.c
index a6789c0c626b0..1b0c6d645d64a 100644
--- a/lib/ref_tracker.c
+++ b/lib/ref_tracker.c
@@ -14,6 +14,38 @@ struct ref_tracker {
 	depot_stack_handle_t	free_stack_handle;
 };
 
+void __ref_tracker_dir_print(struct ref_tracker_dir *dir,
+			   unsigned int display_limit)
+{
+	struct ref_tracker *tracker;
+	unsigned int i = 0;
+
+	lockdep_assert_held(&dir->lock);
+
+	list_for_each_entry(tracker, &dir->list, head) {
+		if (i < display_limit) {
+			pr_err("leaked reference.\n");
+			if (tracker->alloc_stack_handle)
+				stack_depot_print(tracker->alloc_stack_handle);
+			i++;
+		} else {
+			break;
+		}
+	}
+}
+EXPORT_SYMBOL(__ref_tracker_dir_print);
+
+void ref_tracker_dir_print(struct ref_tracker_dir *dir,
+			   unsigned int display_limit)
+{
+	unsigned long flags;
+
+	spin_lock_irqsave(&dir->lock, flags);
+	__ref_tracker_dir_print(dir, display_limit);
+	spin_unlock_irqrestore(&dir->lock, flags);
+}
+EXPORT_SYMBOL(ref_tracker_dir_print);
+
 void ref_tracker_dir_exit(struct ref_tracker_dir *dir)
 {
 	struct ref_tracker *tracker, *n;
@@ -26,13 +58,13 @@ void ref_tracker_dir_exit(struct ref_tracker_dir *dir)
 		kfree(tracker);
 		dir->quarantine_avail++;
 	}
-	list_for_each_entry_safe(tracker, n, &dir->list, head) {
-		pr_err("leaked reference.\n");
-		if (tracker->alloc_stack_handle)
-			stack_depot_print(tracker->alloc_stack_handle);
+	if (!list_empty(&dir->list)) {
+		__ref_tracker_dir_print(dir, 16);
 		leak = true;
-		list_del(&tracker->head);
-		kfree(tracker);
+		list_for_each_entry_safe(tracker, n, &dir->list, head) {
+			list_del(&tracker->head);
+			kfree(tracker);
+		}
 	}
 	spin_unlock_irqrestore(&dir->lock, flags);
 	WARN_ON_ONCE(leak);
@@ -40,28 +72,6 @@ void ref_tracker_dir_exit(struct ref_tracker_dir *dir)
 }
 EXPORT_SYMBOL(ref_tracker_dir_exit);
 
-void ref_tracker_dir_print(struct ref_tracker_dir *dir,
-			   unsigned int display_limit)
-{
-	struct ref_tracker *tracker;
-	unsigned long flags;
-	unsigned int i = 0;
-
-	spin_lock_irqsave(&dir->lock, flags);
-	list_for_each_entry(tracker, &dir->list, head) {
-		if (i < display_limit) {
-			pr_err("leaked reference.\n");
-			if (tracker->alloc_stack_handle)
-				stack_depot_print(tracker->alloc_stack_handle);
-			i++;
-		} else {
-			break;
-		}
-	}
-	spin_unlock_irqrestore(&dir->lock, flags);
-}
-EXPORT_SYMBOL(ref_tracker_dir_print);
-
 int ref_tracker_alloc(struct ref_tracker_dir *dir,
 		      struct ref_tracker **trackerp,
 		      gfp_t gfp)
-- 
2.25.1

