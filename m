Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A622119061
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 20:12:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC1C36E90D;
	Tue, 10 Dec 2019 19:12:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 426 seconds by postgrey-1.36 at gabe;
 Tue, 10 Dec 2019 19:12:45 UTC
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ED156E158
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 19:12:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 11:05:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,300,1571727600"; d="scan'208";a="207401193"
Received: from fei-dev-host.jf.intel.com ([10.7.198.158])
 by orsmga008.jf.intel.com with ESMTP; 10 Dec 2019 11:05:37 -0800
From: fei.yang@intel.com
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Dec 2019 11:04:49 -0800
Message-Id: <20191210190449.56734-1-fei.yang@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/userptr: Try to acquire the page lock
 around set_page_dirty()
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

From: Fei Yang <fei.yang@intel.com>

This is a backport of cee7fb437edcdb2f9f8affa959e274997f5dca4d to linux-4.4.y

set_page_dirty says:

	For pages with a mapping this should be done under the page lock
	for the benefit of asynchronous memory errors who prefer a
	consistent dirty state. This rule can be broken in some special
	cases, but should be better not to.

Under those rules, it is only safe for us to use the plain set_page_dirty
calls for shmemfs/anonymous memory. Userptr may be used with real
mappings and so needs to use the locked version (set_page_dirty_lock).

However, following a try_to_unmap() we may want to remove the userptr and
so call put_pages(). However, try_to_unmap() acquires the page lock and
so we must avoid recursively locking the pages ourselves -- which means
that we cannot safely acquire the lock around set_page_dirty(). Since we
can't be sure of the lock, we have to risk skip dirtying the page, or
else risk calling set_page_dirty() without a lock and so risk fs
corruption.

Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=203317
Bugzilla: https://bugs.freedesktop.org/show_bug.cgi?id=112012
Fixes: 5cc9ed4b9a7a ("drm/i915: Introduce mapping of user pages into video memory (userptr) ioctl")
References: cb6d7c7dc7ff ("drm/i915/userptr: Acquire the page lock around set_page_dirty()")
References: 505a8ec7e11a ("Revert "drm/i915/userptr: Acquire the page lock around set_page_dirty()"")
References: 6dcc693bc57f ("ext4: warn when page is dirtied without buffers")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: stable@vger.kernel.org
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20191111133205.11590-1-chris@chris-wilson.co.uk
(cherry picked from commit 0d4bbe3d407f79438dc4f87943db21f7134cfc65)
Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
(cherry picked from commit cee7fb437edcdb2f9f8affa959e274997f5dca4d)
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_gem_userptr.c | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_gem_userptr.c b/drivers/gpu/drm/i915/i915_gem_userptr.c
index b02113b57d51..6ba5846655ac 100644
--- a/drivers/gpu/drm/i915/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/i915_gem_userptr.c
@@ -764,8 +764,28 @@ i915_gem_userptr_put_pages(struct drm_i915_gem_object *obj)
 	for_each_sg_page(obj->pages->sgl, &sg_iter, obj->pages->nents, 0) {
 		struct page *page = sg_page_iter_page(&sg_iter);
 
-		if (obj->dirty)
+		if (obj->dirty && trylock_page(page)) {
+			/*
+			 * As this may not be anonymous memory (e.g. shmem)
+			 * but exist on a real mapping, we have to lock
+			 * the page in order to dirty it -- holding
+			 * the page reference is not sufficient to
+			 * prevent the inode from being truncated.
+			 * Play safe and take the lock.
+			 *
+			 * However...!
+			 *
+			 * The mmu-notifier can be invalidated for a
+			 * migrate_page, that is alreadying holding the lock
+			 * on the page. Such a try_to_unmap() will result
+			 * in us calling put_pages() and so recursively try
+			 * to lock the page. We avoid that deadlock with
+			 * a trylock_page() and in exchange we risk missing
+			 * some page dirtying.
+			 */
 			set_page_dirty(page);
+			unlock_page(page);
+		}
 
 		mark_page_accessed(page);
 		page_cache_release(page);
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
