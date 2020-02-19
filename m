Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DF71646A2
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 15:15:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20E816E7F1;
	Wed, 19 Feb 2020 14:15:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B02F66E7F1
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 14:15:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 06:15:00 -0800
X-IronPort-AV: E=Sophos;i="5.70,459,1574150400"; d="scan'208";a="224512259"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 06:14:58 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Feb 2020 15:14:35 +0100
Message-Id: <20200219141435.23651-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH v2] drm/i915/userptr: Activate MMU notifier
 only after pages are set
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
pages are successfully acquired and set.

v2: Don't activate the notifier for as long as pages have not been set.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
Hi,

This is a slightly modified alternative to the patch "drm/i915/userptr:
Don't activate MMU notifier if no pages can be acquired" just submitted.
I think it is better than the original as it prevents the notifier from
being uselessly called before object pages are even set.

Thanks,
Janusz

 drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 63ead7a2b64a..1cb88ab61a57 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -498,14 +498,13 @@ __i915_gem_userptr_get_pages_worker(struct work_struct *_work)
 			pages = __i915_gem_userptr_alloc_pages(obj, pvec,
 							       npages);
 			if (!IS_ERR(pages)) {
+				__i915_gem_userptr_set_active(obj, true);
 				pinned = 0;
 				pages = NULL;
 			}
 		}
 
 		obj->userptr.work = ERR_CAST(pages);
-		if (IS_ERR(pages))
-			__i915_gem_userptr_set_active(obj, false);
 	}
 	mutex_unlock(&obj->mm.lock);
 
@@ -613,7 +612,6 @@ static int i915_gem_userptr_get_pages(struct drm_i915_gem_object *obj)
 		pinned = 0;
 	} else if (pinned < num_pages) {
 		pages = __i915_gem_userptr_get_pages_schedule(obj);
-		active = pages == ERR_PTR(-EAGAIN);
 	} else {
 		pages = __i915_gem_userptr_alloc_pages(obj, pvec, num_pages);
 		active = !IS_ERR(pages);
-- 
2.21.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
