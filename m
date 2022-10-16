Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A818600157
	for <lists+intel-gfx@lfdr.de>; Sun, 16 Oct 2022 18:33:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F7D110E46A;
	Sun, 16 Oct 2022 16:33:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9366B10E46A
 for <intel-gfx@lists.freedesktop.org>; Sun, 16 Oct 2022 16:33:30 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id C5144B80B6A;
 Sun, 16 Oct 2022 16:33:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BE6EC433C1;
 Sun, 16 Oct 2022 16:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1665938007;
 bh=FIOeK8BUo8rL3+8xTW+E8y3RywV8gM1FiWaJCBlICpQ=;
 h=Subject:To:Cc:From:Date:From;
 b=TI0F0h4bDE+1XLQFIjeHiy1D0DCl4JsA7NhKDWCdS8LuiBCeWis29wzqzX1nrQy+Q
 ILI4sEHm8UMHc2mFD6ZWjltzhoqhfFvJtQ15F/Y1nxLhzGn5SYLuzqwxFpSoDuEsTJ
 ETof19fHVrQHC89RqKGWXPsg2N0edhUPgdfvBS6s=
To: andrzej.hajda@intel.com, davidesousa@gmail.com, gregkh@linuxfoundation.org,
 intel-gfx@lists.freedesktop.org, kevinboulain@gmail.com,
 matthew.auld@intel.com, thomas.hellstrom@linux.intel.com,
 tvrtko.ursulin@intel.com
From: <gregkh@linuxfoundation.org>
Date: Sun, 16 Oct 2022 18:34:05 +0200
Message-ID: <166593804562174@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-stable: commit
X-Patchwork-Hint: ignore 
Subject: [Intel-gfx] Patch "drm/i915: Fix display problems after resume" has
 been added to the 6.0-stable tree
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
Cc: stable-commits@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


This is a note to let you know that I've just added the patch titled

    drm/i915: Fix display problems after resume

to the 6.0-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     drm-i915-fix-display-problems-after-resume.patch
and it can be found in the queue-6.0 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From 6c482c62a635aa4f534d2439fbf8afa37452b986 Mon Sep 17 00:00:00 2001
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Wed, 5 Oct 2022 14:11:59 +0200
Subject: drm/i915: Fix display problems after resume
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Thomas Hellström <thomas.hellstrom@linux.intel.com>

commit 6c482c62a635aa4f534d2439fbf8afa37452b986 upstream.

Commit 39a2bd34c933 ("drm/i915: Use the vma resource as argument for gtt
binding / unbinding") introduced a regression that due to the vma resource
tracking of the binding state, dpt ptes were not correctly repopulated.
Fix this by clearing the vma resource state before repopulating.
The state will subsequently be restored by the bind_vma operation.

Fixes: 39a2bd34c933 ("drm/i915: Use the vma resource as argument for gtt binding / unbinding")
Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20220912121957.31310-1-thomas.hellstrom@linux.intel.com
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: <stable@vger.kernel.org> # v5.18+
Reported-and-tested-by: Kevin Boulain <kevinboulain@gmail.com>
Tested-by: David de Sousa <davidesousa@gmail.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20221005121159.340245-1-thomas.hellstrom@linux.intel.com
(cherry picked from commit bc2472538c0d1cce334ffc9e97df0614cd2b1469)
Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c |    8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -1267,10 +1267,16 @@ bool i915_ggtt_resume_vm(struct i915_add
 			atomic_read(&vma->flags) & I915_VMA_BIND_MASK;
 
 		GEM_BUG_ON(!was_bound);
-		if (!retained_ptes)
+		if (!retained_ptes) {
+			/*
+			 * Clear the bound flags of the vma resource to allow
+			 * ptes to be repopulated.
+			 */
+			vma->resource->bound_flags = 0;
 			vma->ops->bind_vma(vm, NULL, vma->resource,
 					   obj ? obj->cache_level : 0,
 					   was_bound);
+		}
 		if (obj) { /* only used during resume => exclusive access */
 			write_domain_objs |= fetch_and_zero(&obj->write_domain);
 			obj->read_domains |= I915_GEM_DOMAIN_GTT;


Patches currently in stable-queue which might be from thomas.hellstrom@linux.intel.com are

queue-6.0/drm-i915-gt-use-i915_vm_put-on-ppgtt_create-error-paths.patch
queue-6.0/drm-virtio-unlock-reservations-on-dma_resv_reserve_fences-error.patch
queue-6.0/drm-i915-fix-display-problems-after-resume.patch
