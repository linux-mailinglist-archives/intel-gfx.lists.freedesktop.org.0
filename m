Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 576561643F9
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 13:09:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C11A66E5BE;
	Wed, 19 Feb 2020 12:09:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 406716E5BE
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 12:09:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 04:09:53 -0800
X-IronPort-AV: E=Sophos;i="5.70,459,1574150400"; d="scan'208";a="229093337"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 04:09:52 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Feb 2020 13:09:44 +0100
Message-Id: <20200219120944.21200-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH] drm/i915/userptr: Don't activate MMU
 notifier if no pages can be acquired
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The purpose of userptr MMU notifier is to invalidate object pages as
soon as someone unpins them from memory.  While doing that,
obj->mm.lock is acquired.  If the notifier was called with obj->mm.lock
already held, a lockdep loop would be triggered.  That scenario is
believed to be possible in several cases, one of which is when the
userptr object is created from an mmap-offset mapping of another i915
GEM object.  This patch tries to address this case.

Even if creating a userptr object on an mmap-offset mapping succeeds,
trying to pin pages of the mapping in memory always fails because of
them having a VM_PFNMAP flag set.  However, the notifier can be
activated for a userptr object even before required pages are found
already pinned in memory, as soon as a worker expected to get missing
pages is scheduled successfully.  If the worker then fails to collect
the pages, it deactivates the notifier.  However, a time window exists
when the notifier can be called for an object even with no pages set
yet.

Postpone activation of the userptr MMU notifier for an object until
some pages are successfully acquired.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 63ead7a2b64a..d9f3d66694a2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -45,7 +45,9 @@ struct i915_mmu_object {
 
 static void add_object(struct i915_mmu_object *mo)
 {
-	GEM_BUG_ON(!RB_EMPTY_NODE(&mo->it.rb));
+	if (!RB_EMPTY_NODE(&mo->it.rb))
+		return;
+
 	interval_tree_insert(&mo->it, &mo->mn->objects);
 }
 
@@ -498,6 +500,7 @@ __i915_gem_userptr_get_pages_worker(struct work_struct *_work)
 			pages = __i915_gem_userptr_alloc_pages(obj, pvec,
 							       npages);
 			if (!IS_ERR(pages)) {
+				__i915_gem_userptr_set_active(obj, true);
 				pinned = 0;
 				pages = NULL;
 			}
@@ -613,7 +616,7 @@ static int i915_gem_userptr_get_pages(struct drm_i915_gem_object *obj)
 		pinned = 0;
 	} else if (pinned < num_pages) {
 		pages = __i915_gem_userptr_get_pages_schedule(obj);
-		active = pages == ERR_PTR(-EAGAIN);
+		active = pages == ERR_PTR(-EAGAIN) && pinned;
 	} else {
 		pages = __i915_gem_userptr_alloc_pages(obj, pvec, num_pages);
 		active = !IS_ERR(pages);
-- 
2.21.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
