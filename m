Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93DAD4BEDDA
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 00:26:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0012C10E561;
	Mon, 21 Feb 2022 23:26:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2121810E556;
 Mon, 21 Feb 2022 23:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645485968; x=1677021968;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tQY4mR2KDwyrHcJb7GxZeyIMhFFAwu7Cvbv8/dkN8c0=;
 b=IbSfwdMJwUVfIneXnDF/7ykCDrQ7ad40VA+aQwhpFHrO9JKl+PhNNIfN
 WJ4myknjC79qCd/73TfUtiwceTYC2OMp3VmS68y1krbkz5rr6O5BVRljV
 MkgLMd0sN9t+vxRUaQudNmp+mk3qBZgAIJHksV1INd8diLz9DeyJF7oj/
 flIWDox+wBr/MF/tLWiy/9lt2hPASPeQ20/SjufGoTrcoeR9LsPpuE2Tk
 sc89NL3gKy43yY/PYNO0TR2781pCSYiMKIwcoquOsS6GVujjU4r4fioi/
 YeA2DajJkd201I37wujkgV5/i3ZXalz+KGUJcFXDwd+1sEQ3Cgn+5KxhB A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="235119394"
X-IronPort-AV: E=Sophos;i="5.88,386,1635231600"; d="scan'208";a="235119394"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 15:26:07 -0800
X-IronPort-AV: E=Sophos;i="5.88,386,1635231600"; d="scan'208";a="706397010"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 15:26:05 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, netdev <netdev@vger.kernel.org>
Date: Tue, 22 Feb 2022 00:25:35 +0100
Message-Id: <20220221232542.1481315-5-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220221232542.1481315-1-andrzej.hajda@intel.com>
References: <20220221232542.1481315-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 04/11] lib/ref_tracker: add unlocked leak
 print helper
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
index 9ca353ab712b5..3e9e9df2a41f5 100644
--- a/include/linux/ref_tracker.h
+++ b/include/linux/ref_tracker.h
@@ -36,6 +36,9 @@ static inline void ref_tracker_dir_init(struct ref_tracker_dir *dir,
 
 void ref_tracker_dir_exit(struct ref_tracker_dir *dir);
 
+void __ref_tracker_dir_print(struct ref_tracker_dir *dir,
+			   unsigned int display_limit);
+
 void ref_tracker_dir_print(struct ref_tracker_dir *dir,
 			   unsigned int display_limit);
 
@@ -56,6 +59,11 @@ static inline void ref_tracker_dir_exit(struct ref_tracker_dir *dir)
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
index dc7b14aa3431e..5e9f90bbf771b 100644
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
@@ -27,13 +59,13 @@ void ref_tracker_dir_exit(struct ref_tracker_dir *dir)
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
@@ -42,28 +74,6 @@ void ref_tracker_dir_exit(struct ref_tracker_dir *dir)
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

