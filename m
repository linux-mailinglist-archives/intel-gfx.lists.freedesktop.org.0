Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D169F2C3E1F
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 11:41:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D95886E91C;
	Wed, 25 Nov 2020 10:40:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA70D6E89B
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 10:40:32 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Nov 2020 11:40:10 +0100
Message-Id: <20201125104011.606641-63-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.29.2.222.g5d2a92d10f8
In-Reply-To: <20201125104011.606641-1-maarten.lankhorst@linux.intel.com>
References: <20201125104011.606641-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 62/63] drm/i915: Keep userpointer bindings if
 seqcount is unchanged, v2.
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
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Instead of force unbinding and rebinding every time, we try to check
if our notifier seqcount is still correct when pages are bound. This
way we only rebind userptr when we need to, and prevent stalls.

Changes since v1:
- Missing mutex_unlock, reported by kbuild.

Reported-by: kernel test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 27 ++++++++++++++++++---
 1 file changed, 24 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 84c3e8dc1491..44fc0df89784 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -274,12 +274,33 @@ int i915_gem_object_userptr_submit_init(struct drm_i915_gem_object *obj)
 	if (ret)
 		return ret;
 
-	/* Make sure userptr is unbound for next attempt, so we don't use stale pages. */
-	ret = i915_gem_object_userptr_unbind(obj, false);
+	/* optimistically try to preserve current pages while unlocked */
+	if (i915_gem_object_has_pages(obj) &&
+	    !mmu_interval_check_retry(&obj->userptr.notifier,
+				      obj->userptr.notifier_seq)) {
+		spin_lock(&i915->mm.notifier_lock);
+		if (obj->userptr.pvec &&
+		    !mmu_interval_read_retry(&obj->userptr.notifier,
+					     obj->userptr.notifier_seq)) {
+			obj->userptr.page_ref++;
+
+			/* We can keep using the current binding, this is the fastpath */
+			ret = 1;
+		}
+		spin_unlock(&i915->mm.notifier_lock);
+	}
+
+	if (!ret) {
+		/* Make sure userptr is unbound for next attempt, so we don't use stale pages. */
+		ret = i915_gem_object_userptr_unbind(obj, false);
+	}
 	i915_gem_object_unlock(obj);
-	if (ret)
+	if (ret < 0)
 		return ret;
 
+	if (ret > 0)
+		return 0;
+
 	notifier_seq = mmu_interval_read_begin(&obj->userptr.notifier);
 
 	pvec = kvmalloc_array(num_pages, sizeof(struct page *), GFP_KERNEL);
-- 
2.29.2.222.g5d2a92d10f8

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
