Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C62792F11
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Sep 2023 21:37:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD2B110E4D3;
	Tue,  5 Sep 2023 19:37:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AD4210E4D3
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Sep 2023 19:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693942628; x=1725478628;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sJ1mQaAAKo0pBZLeSOsWPM4+H7ize3m9ox6di+yMJ0E=;
 b=kq1NHnBit+r/dYEDAgFGT5EYJa/N+T8qqWAUbu3bSswtBoVEFVl7KzjG
 ejBie/NrslyKSgPaG198NPbybb9+qJu1WDdqqoxVbs7RK6Dl968C6Pjmr
 /QhILsEeJbC0uOzgzAuItFZSIZZOFLmloGFObsvsP21BCt9IrEUhPX9nf
 mCa7l2osVZ8F+HOgjwbVZPyhoviV2KcWCQosGIcJSVkrsMhPohVLlj8/d
 2qQYiTxShVVi4UHKfYND4Bbef8OriPtxjJDSEEdU2Vl8RRy5H7+EzUym4
 i07580JBsbFi7+9ZMbBnVfMyaGqtwiFsGVyjNv6flX+U6e9NLZQFAe2vI g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="367106951"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="367106951"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 12:36:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="741224206"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="741224206"
Received: from wangyuan-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.215.226])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 12:36:37 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Tue,  5 Sep 2023 21:36:14 +0200
Message-Id: <20230905193614.69771-3-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230905193614.69771-1-andi.shyti@linux.intel.com>
References: <20230905193614.69771-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: When asked to drop the cache,
 do it per GT
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When the user sends the drop caches command through the debugfs
interface, do it on all the GT's, rather than just the root GT.

Based on a patch by Tvrtko.

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 3dfe8a8b7cdfe..60cdfb3e45e2a 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -750,21 +750,27 @@ static int
 i915_drop_caches_set(void *data, u64 val)
 {
 	struct drm_i915_private *i915 = data;
+	struct intel_gt *gt;
 	unsigned int flags;
+	unsigned int i;
 	int ret;
 
 	drm_dbg(&i915->drm, "Dropping caches: 0x%08llx [0x%08llx]\n",
 		val, val & DROP_ALL);
 
 	/* Flush all the active requests across both GT ... */
-	ret = gt_drop_caches(to_gt(i915), val);
-	if (ret)
-		return ret;
+	for_each_gt(gt, i915, i) {
+		ret = gt_drop_caches(gt, val);
+		if (ret)
+			return ret;
+	}
 
 	/* ... then wait for idle as there may be cross-gt wakerefs. */
-	ret = gt_idle(to_gt(i915), val);
-	if (ret)
-		return ret;
+	for_each_gt(gt, i915, i) {
+		ret = gt_idle(gt, val);
+		if (ret)
+			return ret;
+	}
 
 	fs_reclaim_acquire(GFP_KERNEL);
 	flags = memalloc_noreclaim_save();
-- 
2.40.1

