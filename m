Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66571727D6C
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 13:01:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C95DC10E256;
	Thu,  8 Jun 2023 11:01:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6E4E10E256
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 11:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686222083; x=1717758083;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AJFiu6+NB2u0oPg9sJhHcVTuyFRNv6sorVOjFEbPai8=;
 b=R+XnwBzUp6QPpPjxsPwvHxtIRFv3maM6/UC6F0L6obY86fMqpI3alYsi
 k9b2fVkZ/CmbiWCAmHSMSdI9vDGyAUS9uvayKtCcAWjCgoQXqM+PRc0Vg
 X0YTDhQ7XvkMp0N9MomMS5fQNeMcUK6K6cCDdmetv7Aeam58J6reMBJNk
 dHkxxc6cywWFIyqPq1uIYpXPcFzetBb4OvOKU4LCtX32RbHW3hBUNKxgo
 7GWYb2oRErFufjtMxV4VBNqqmCwsa2PcE5ikGO75yYWVK/gX9Dl6B5pyW
 hfuU0iTgXDt5NqSpHpbh0MgGCdo4QPgvcYBW4IVnBPpJZa9VXgFwXUdy3 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="356130874"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="356130874"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 04:01:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="854294641"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="854294641"
Received: from operepel-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.58.149])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 04:01:18 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>
Date: Thu,  8 Jun 2023 13:01:03 +0200
Message-Id: <20230608110103.777594-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] drm/i915: Fix a VMA UAF for multi-gt platform
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
Cc: Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Nirmoy Das <nirmoy.das@intel.com>

Ensure correct handling of closed VMAs on multi-gt platforms to prevent
Use-After-Free. Currently, when GT0 goes idle, closed VMAs that are
exclusively added to GT0's closed_vma link (gt->closed_vma) and
subsequently freed by i915_vma_parked(), which assumes the entire GPU is
idle. However, on platforms with multiple GTs, such as MTL, GT1 may
remain active while GT0 is idle. This causes GT0 to mistakenly consider
the closed VMAs in its closed_vma list as unnecessary, potentially
leading to Use-After-Free issues if a job for GT1 attempts to access a
freed VMA.

Although we do take a wakeref for GT0 but it happens later, after
evaluating VMAs. To mitigate this, it is necessary to hold a GT0 wakeref
early.

v2: Use gt id to detect multi-tile(Andi)
    Fix the incorrect error path.
v3: Add more comment(Andi)
    Use the new gt var when possible(Andrzej)

Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Chris Wilson <chris.p.wilson@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Sushma Venkatesh Reddy <sushma.venkatesh.reddy@intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Tested-by: Andi Shyti <andi.shyti@linux.intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
Tested-by: Sushma Venkatesh Reddy <sushma.venkatesh.reddy@intel.com>
---
Hi,

This patch was not picked by CI, resending it so that we will
have results after this long weekend.

Andi

 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 21 +++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index cfd7929587d8f..d3208a3256144 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2691,6 +2691,7 @@ static int
 eb_select_engine(struct i915_execbuffer *eb)
 {
 	struct intel_context *ce, *child;
+	struct intel_gt *gt;
 	unsigned int idx;
 	int err;
 
@@ -2714,10 +2715,17 @@ eb_select_engine(struct i915_execbuffer *eb)
 		}
 	}
 	eb->num_batches = ce->parallel.number_children + 1;
+	gt = ce->engine->gt;
 
 	for_each_child(ce, child)
 		intel_context_get(child);
-	intel_gt_pm_get(ce->engine->gt);
+	intel_gt_pm_get(gt);
+	/*
+	 * Keep GT0 active on MTL so that i915_vma_parked() doesn't
+	 * free VMAs while execbuf ioctl is validating VMAs.
+	 */
+	if (gt->info.id)
+		intel_gt_pm_get(to_gt(gt->i915));
 
 	if (!test_bit(CONTEXT_ALLOC_BIT, &ce->flags)) {
 		err = intel_context_alloc_state(ce);
@@ -2756,7 +2764,10 @@ eb_select_engine(struct i915_execbuffer *eb)
 	return err;
 
 err:
-	intel_gt_pm_put(ce->engine->gt);
+	if (gt->info.id)
+		intel_gt_pm_put(to_gt(gt->i915));
+
+	intel_gt_pm_put(gt);
 	for_each_child(ce, child)
 		intel_context_put(child);
 	intel_context_put(ce);
@@ -2769,6 +2780,12 @@ eb_put_engine(struct i915_execbuffer *eb)
 	struct intel_context *child;
 
 	i915_vm_put(eb->context->vm);
+	/*
+	 * This works in conjunction with eb_select_engine() to prevent
+	 * i915_vma_parked() from interfering while execbuf validates vmas.
+	 */
+	if (eb->gt->info.id)
+		intel_gt_pm_put(to_gt(eb->gt->i915));
 	intel_gt_pm_put(eb->gt);
 	for_each_child(eb->context, child)
 		intel_context_put(child);
-- 
2.40.1

