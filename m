Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BAB470FAE
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Dec 2021 02:02:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07A6110E68E;
	Sat, 11 Dec 2021 01:01:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4C6410E697;
 Sat, 11 Dec 2021 01:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639184517; x=1670720517;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OdsUvmRw9TLlymtokHFSvtkj/Ygx10/bfsmO3JWkK9o=;
 b=R0wHuXQF46H3Hg8Q3O23HeBtEUpL6SpcmgidShOrw+UQ+l96WxMKFlON
 fCXUHkJW9Llo1jRn22yOL+ti+lBkmeB7FKHi3HnKQc5NGf80HpXqyfCOz
 4Gdei5QiBMtcigXsmvusXHOuul4GNG8uOkTQ3xzOk9Gas0kGdw+x1CM6H
 eOXaJqbRki6oEOuFRUyhOYXLchlfsIARH4km2f7STPSZ+m7lRze9MUxKi
 bnBX4PG8vX7AB4pOly9Weuc9suzSQm/wY6zxp7Zj1df/OlnP94Nx/+Vzy
 tyxdjeoSrIFywyGlqWWqWOQIhwt8UEvFCrfvUHspttDvhztPtIiB3JyLp g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10194"; a="238298247"
X-IronPort-AV: E=Sophos;i="5.88,197,1635231600"; d="scan'208";a="238298247"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 17:01:42 -0800
X-IronPort-AV: E=Sophos;i="5.88,197,1635231600"; d="scan'208";a="517002964"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 17:01:42 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Fri, 10 Dec 2021 16:56:09 -0800
Message-Id: <20211211005612.8575-5-matthew.brost@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211211005612.8575-1-matthew.brost@intel.com>
References: <20211211005612.8575-1-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/7] drm/i915/guc: Don't hog IRQs when
 destroying contexts
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

From: John Harrison <John.C.Harrison@Intel.com>

While attempting to debug a CT deadlock issue in various CI failures
(most easily reproduced with gem_ctx_create/basic-files), I was seeing
CPU deadlock errors being reported. This were because the context
destroy loop was blocking waiting on H2G space from inside an IRQ
spinlock. There was deadlock as such, it's just that the H2G queue was
full of context destroy commands and GuC was taking a long time to
process them. However, the kernel was seeing the large amount of time
spent inside the IRQ lock as a dead CPU. Various Bad Things(tm) would
then happen (heartbeat failures, CT deadlock errors, outstanding H2G
WARNs, etc.).

Re-working the loop to only acquire the spinlock around the list
management (which is all it is meant to protect) rather than the
entire destroy operation seems to fix all the above issues.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 45 ++++++++++++-------
 1 file changed, 28 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 36c2965db49b..96fcf869e3ff 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -2644,7 +2644,6 @@ static inline void guc_lrc_desc_unpin(struct intel_context *ce)
 	unsigned long flags;
 	bool disabled;
 
-	lockdep_assert_held(&guc->submission_state.lock);
 	GEM_BUG_ON(!intel_gt_pm_is_awake(gt));
 	GEM_BUG_ON(!lrc_desc_registered(guc, ce->guc_id.id));
 	GEM_BUG_ON(ce != __get_context(guc, ce->guc_id.id));
@@ -2660,7 +2659,7 @@ static inline void guc_lrc_desc_unpin(struct intel_context *ce)
 	}
 	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
 	if (unlikely(disabled)) {
-		__release_guc_id(guc, ce);
+		release_guc_id(guc, ce);
 		__guc_context_destroy(ce);
 		return;
 	}
@@ -2694,36 +2693,48 @@ static void __guc_context_destroy(struct intel_context *ce)
 
 static void guc_flush_destroyed_contexts(struct intel_guc *guc)
 {
-	struct intel_context *ce, *cn;
+	struct intel_context *ce;
 	unsigned long flags;
 
 	GEM_BUG_ON(!submission_disabled(guc) &&
 		   guc_submission_initialized(guc));
 
-	spin_lock_irqsave(&guc->submission_state.lock, flags);
-	list_for_each_entry_safe(ce, cn,
-				 &guc->submission_state.destroyed_contexts,
-				 destroyed_link) {
-		list_del_init(&ce->destroyed_link);
-		__release_guc_id(guc, ce);
+	while (!list_empty(&guc->submission_state.destroyed_contexts)) {
+		spin_lock_irqsave(&guc->submission_state.lock, flags);
+		ce = list_first_entry_or_null(&guc->submission_state.destroyed_contexts,
+					      struct intel_context,
+					      destroyed_link);
+		if (ce)
+			list_del_init(&ce->destroyed_link);
+		spin_unlock_irqrestore(&guc->submission_state.lock, flags);
+
+		if (!ce)
+			break;
+
+		release_guc_id(guc, ce);
 		__guc_context_destroy(ce);
 	}
-	spin_unlock_irqrestore(&guc->submission_state.lock, flags);
 }
 
 static void deregister_destroyed_contexts(struct intel_guc *guc)
 {
-	struct intel_context *ce, *cn;
+	struct intel_context *ce;
 	unsigned long flags;
 
-	spin_lock_irqsave(&guc->submission_state.lock, flags);
-	list_for_each_entry_safe(ce, cn,
-				 &guc->submission_state.destroyed_contexts,
-				 destroyed_link) {
-		list_del_init(&ce->destroyed_link);
+	while (!list_empty(&guc->submission_state.destroyed_contexts)) {
+		spin_lock_irqsave(&guc->submission_state.lock, flags);
+		ce = list_first_entry_or_null(&guc->submission_state.destroyed_contexts,
+					      struct intel_context,
+					      destroyed_link);
+		if (ce)
+			list_del_init(&ce->destroyed_link);
+		spin_unlock_irqrestore(&guc->submission_state.lock, flags);
+
+		if (!ce)
+			break;
+
 		guc_lrc_desc_unpin(ce);
 	}
-	spin_unlock_irqrestore(&guc->submission_state.lock, flags);
 }
 
 static void destroyed_worker_func(struct work_struct *w)
-- 
2.33.1

