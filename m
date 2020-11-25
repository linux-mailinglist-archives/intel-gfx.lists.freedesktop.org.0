Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9DC2C3E3A
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 11:41:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 173DF6E998;
	Wed, 25 Nov 2020 10:40:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FC996E8E5
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 10:40:33 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Nov 2020 11:40:11 +0100
Message-Id: <20201125104011.606641-64-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.29.2.222.g5d2a92d10f8
In-Reply-To: <20201125104011.606641-1-maarten.lankhorst@linux.intel.com>
References: <20201125104011.606641-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 63/63] drm/i915: Move gt_revoke() slightly
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

We get a lockdep splat when the reset mutex is held, because it can be
taken from fence_wait. This conflicts with the mmu notifier we have,
because we recurse between reset mutex and mmap lock -> mmu notifier.

Remove this recursion by calling revoke_mmaps before taking the lock.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_reset.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 3654c955e6be..f1933bb47ea8 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -970,8 +970,6 @@ static int do_reset(struct intel_gt *gt, intel_engine_mask_t stalled_mask)
 {
 	int err, i;
 
-	gt_revoke(gt);
-
 	err = __intel_gt_reset(gt, ALL_ENGINES);
 	for (i = 0; err && i < RESET_MAX_RETRIES; i++) {
 		msleep(10 * (i + 1));
@@ -1026,6 +1024,9 @@ void intel_gt_reset(struct intel_gt *gt,
 
 	might_sleep();
 	GEM_BUG_ON(!test_bit(I915_RESET_BACKOFF, &gt->reset.flags));
+
+	gt_revoke(gt);
+
 	mutex_lock(&gt->reset.mutex);
 
 	/* Clear any previous failed attempts at recovery. Time to try again. */
-- 
2.29.2.222.g5d2a92d10f8

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
