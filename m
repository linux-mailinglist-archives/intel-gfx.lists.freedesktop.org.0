Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3387F79A7F0
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 14:33:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94D5C10E1A3;
	Mon, 11 Sep 2023 12:33:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0303510E1A3
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 12:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694435590; x=1725971590;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qpXCf/oywScWFpOuJNbSqgWjdaASxDQKm9PAmd/CdMY=;
 b=g7TSDnUxA8zjrTfVnCI9eFG1GooxtZa732Ha8xxpv6hZPqWz4ALQZmzU
 Q3DvpgHpM4m512gVIs4dJD+zLG9lxj0NeyS95eHuez/RQ7ADPVSlYtT2t
 JLxHclBzrwIuSQiPIjkFFXYFbK7aYu6HPoqIAWxEZ7zFLZUUhx5cqAimP
 8ZsrwJI3m0FMBYjf6jFZKkJ6R0JB5BeFfvbAY0gMcNW9sz3La71ytdRUH
 csH49yduaoIU8uqa9wAzFF8LCGVIma8LD3uoC2GBcp48gbw+HWUKlgCzG
 5niWIPmn22rPnHkpLVyZ+LyUAOHpSklF7U9Bh72ej+cGQpl2DarwvOs3S w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="444485672"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="444485672"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 05:33:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="719972032"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="719972032"
Received: from kschuele-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.119])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 05:33:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Sep 2023 15:33:05 +0300
Message-Id: <20230911123305.1682554-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: rename DBG() to GTT_TRACE()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

intel_gtt.h is indirectly included absolutely everywhere in the
driver. DBG() is too short a name. Rename it GTT_TRACE() after
GEM_TRACE().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 36 ++++++++++++++--------------
 drivers/gpu/drm/i915/gt/intel_gtt.h  |  4 ++--
 2 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index c8568e5d1147..9895e18df043 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -242,9 +242,9 @@ static u64 __gen8_ppgtt_clear(struct i915_address_space * const vm,
 	GEM_BUG_ON(end > vm->total >> GEN8_PTE_SHIFT);
 
 	len = gen8_pd_range(start, end, lvl--, &idx);
-	DBG("%s(%p):{ lvl:%d, start:%llx, end:%llx, idx:%d, len:%d, used:%d }\n",
-	    __func__, vm, lvl + 1, start, end,
-	    idx, len, atomic_read(px_used(pd)));
+	GTT_TRACE("%s(%p):{ lvl:%d, start:%llx, end:%llx, idx:%d, len:%d, used:%d }\n",
+		  __func__, vm, lvl + 1, start, end,
+		  idx, len, atomic_read(px_used(pd)));
 	GEM_BUG_ON(!len || len >= atomic_read(px_used(pd)));
 
 	do {
@@ -252,8 +252,8 @@ static u64 __gen8_ppgtt_clear(struct i915_address_space * const vm,
 
 		if (atomic_fetch_inc(&pt->used) >> gen8_pd_shift(1) &&
 		    gen8_pd_contains(start, end, lvl)) {
-			DBG("%s(%p):{ lvl:%d, idx:%d, start:%llx, end:%llx } removing pd\n",
-			    __func__, vm, lvl + 1, idx, start, end);
+			GTT_TRACE("%s(%p):{ lvl:%d, idx:%d, start:%llx, end:%llx } removing pd\n",
+				  __func__, vm, lvl + 1, idx, start, end);
 			clear_pd_entry(pd, idx, scratch);
 			__gen8_ppgtt_cleanup(vm, as_pd(pt), I915_PDES, lvl);
 			start += (u64)I915_PDES << gen8_pd_shift(lvl);
@@ -270,10 +270,10 @@ static u64 __gen8_ppgtt_clear(struct i915_address_space * const vm,
 			u64 *vaddr;
 
 			count = gen8_pt_count(start, end);
-			DBG("%s(%p):{ lvl:%d, start:%llx, end:%llx, idx:%d, len:%d, used:%d } removing pte\n",
-			    __func__, vm, lvl, start, end,
-			    gen8_pd_index(start, 0), count,
-			    atomic_read(&pt->used));
+			GTT_TRACE("%s(%p):{ lvl:%d, start:%llx, end:%llx, idx:%d, len:%d, used:%d } removing pte\n",
+				  __func__, vm, lvl, start, end,
+				  gen8_pd_index(start, 0), count,
+				  atomic_read(&pt->used));
 			GEM_BUG_ON(!count || count >= atomic_read(&pt->used));
 
 			num_ptes = count;
@@ -325,9 +325,9 @@ static void __gen8_ppgtt_alloc(struct i915_address_space * const vm,
 	GEM_BUG_ON(end > vm->total >> GEN8_PTE_SHIFT);
 
 	len = gen8_pd_range(*start, end, lvl--, &idx);
-	DBG("%s(%p):{ lvl:%d, start:%llx, end:%llx, idx:%d, len:%d, used:%d }\n",
-	    __func__, vm, lvl + 1, *start, end,
-	    idx, len, atomic_read(px_used(pd)));
+	GTT_TRACE("%s(%p):{ lvl:%d, start:%llx, end:%llx, idx:%d, len:%d, used:%d }\n",
+		  __func__, vm, lvl + 1, *start, end,
+		  idx, len, atomic_read(px_used(pd)));
 	GEM_BUG_ON(!len || (idx + len - 1) >> gen8_pd_shift(1));
 
 	spin_lock(&pd->lock);
@@ -338,8 +338,8 @@ static void __gen8_ppgtt_alloc(struct i915_address_space * const vm,
 		if (!pt) {
 			spin_unlock(&pd->lock);
 
-			DBG("%s(%p):{ lvl:%d, idx:%d } allocating new tree\n",
-			    __func__, vm, lvl + 1, idx);
+			GTT_TRACE("%s(%p):{ lvl:%d, idx:%d } allocating new tree\n",
+				  __func__, vm, lvl + 1, idx);
 
 			pt = stash->pt[!!lvl];
 			__i915_gem_object_pin_pages(pt->base);
@@ -369,10 +369,10 @@ static void __gen8_ppgtt_alloc(struct i915_address_space * const vm,
 		} else {
 			unsigned int count = gen8_pt_count(*start, end);
 
-			DBG("%s(%p):{ lvl:%d, start:%llx, end:%llx, idx:%d, len:%d, used:%d } inserting pte\n",
-			    __func__, vm, lvl, *start, end,
-			    gen8_pd_index(*start, 0), count,
-			    atomic_read(&pt->used));
+			GTT_TRACE("%s(%p):{ lvl:%d, start:%llx, end:%llx, idx:%d, len:%d, used:%d } inserting pte\n",
+				  __func__, vm, lvl, *start, end,
+				  gen8_pd_index(*start, 0), count,
+				  atomic_read(&pt->used));
 
 			atomic_add(count, &pt->used);
 			/* All other pdes may be simultaneously removed */
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 4d6296cdbcfd..346ec8ec2edd 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -35,9 +35,9 @@
 #define I915_GFP_ALLOW_FAIL (GFP_KERNEL | __GFP_RETRY_MAYFAIL | __GFP_NOWARN)
 
 #if IS_ENABLED(CONFIG_DRM_I915_TRACE_GTT)
-#define DBG(...) trace_printk(__VA_ARGS__)
+#define GTT_TRACE(...) trace_printk(__VA_ARGS__)
 #else
-#define DBG(...)
+#define GTT_TRACE(...)
 #endif
 
 #define NALLOC 3 /* 1 normal, 1 for concurrent threads, 1 for preallocation */
-- 
2.39.2

