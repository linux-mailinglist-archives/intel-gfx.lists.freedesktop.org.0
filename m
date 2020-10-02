Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1901281383
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Oct 2020 15:00:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70E416E991;
	Fri,  2 Oct 2020 13:00:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 287236E97F
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Oct 2020 12:59:52 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Oct 2020 14:59:39 +0200
Message-Id: <20201002125939.50817-62-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201002125939.50817-1-maarten.lankhorst@linux.intel.com>
References: <20201002125939.50817-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 61/61] drm/i915: Keep userpointer bindings if
 seqcount is unchanged
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

Instead of force unbinding and rebinding every time, we try to check
if our notifier seqcount is still correct when pages are bound. This
way we only rebind userptr when we need to, and prevent stalls.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 29 ++++++++++++++++++---
 1 file changed, 26 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 327f01b04f21..dad68de2159f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -268,12 +268,35 @@ int i915_gem_object_userptr_submit_init(struct drm_i915_gem_object *obj)
 	if (ret)
 		return ret;
 
-	/* Make sure userptr is unbound for next attempt, so we don't use stale pages. */
-	ret = i915_gem_object_userptr_unbind(obj, false);
+	/* optimistically try to preserve current pages while unlocked */
+	if (i915_gem_object_has_pages(obj) &&
+	    !mmu_interval_check_retry(&obj->userptr.notifier,
+				      obj->userptr.notifier_seq)) {
+		ret = mutex_lock_interruptible(&i915->mm.notifier_lock);
+		if (!ret) {
+			if (obj->userptr.pvec &&
+			    !mmu_interval_read_retry(&obj->userptr.notifier,
+						     obj->userptr.notifier_seq)) {
+				obj->userptr.page_ref++;
+				mutex_unlock(&i915->mm.notifier_lock);
+
+				/* We can keep using the current binding, this is the fastpath */
+				ret = 1;
+			}
+		}
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
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
