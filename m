Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 991A1792F0A
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Sep 2023 21:36:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 181F910E1AE;
	Tue,  5 Sep 2023 19:36:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2E2D10E1AE
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Sep 2023 19:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693942594; x=1725478594;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=h9qwnghfT4DO+0AGJ0+wf97C8ZENalb+cZ1m8ObWgN0=;
 b=U0GUhtVxLfB3XWQoGnFrob+SuUIDAKp+7fM5bGoq/YqGv0ffnUwkAADo
 QcBR+662sbobAvaiE0pAjbrJfWoHRn45FzJWaQcatxA94S47walx+PlBI
 0UvCBVNIDvqPAo7PizkrUJFjjS1vlJ1dqBIsUdUKNx4+FMy7aSqz5UYk6
 gypKdvIJ78UM6aLicSRse1JU40EgsBVenEHeR2Sc+x6JFpjpMLLaJ9NKr
 KRQxZK5+MUKk/sW0sgBwPdo6JKOHh6EsaynsU+zdsNkUJFKVaAHjDsVXy
 taXQTkhHGPnXjU14yqXxnOft9b3ns7TcTJkRyPOEfy5+3pS2CER7kRboX A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="361916637"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="361916637"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 12:36:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="734776200"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="734776200"
Received: from wangyuan-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.215.226])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 12:36:32 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Tue,  5 Sep 2023 21:36:13 +0200
Message-Id: <20230905193614.69771-2-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230905193614.69771-1-andi.shyti@linux.intel.com>
References: <20230905193614.69771-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Split gt cache flushing and gt
 idling functions
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

In preparation for multi-gt cache flushing debugfs interface,
split the cache dropping function and gt idling.

Based on a patch by Tvrtko.

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 32 +++++++++++++++++++++--------
 1 file changed, 24 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 7a90a2e32c9f1..3dfe8a8b7cdfe 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -703,11 +703,25 @@ i915_drop_caches_get(void *data, u64 *val)
 	return 0;
 }
 
+static int gt_idle(struct intel_gt *gt, u64 val)
+{
+	if (val & (DROP_RETIRE | DROP_IDLE))
+		intel_gt_retire_requests(gt);
+
+	if (val & DROP_IDLE) {
+		int ret;
+
+		ret = intel_gt_pm_wait_for_idle(gt);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
 static int
 gt_drop_caches(struct intel_gt *gt, u64 val)
 {
-	int ret;
-
 	if (val & DROP_RESET_ACTIVE &&
 	    wait_for(intel_engines_are_idle(gt), 200))
 		intel_gt_set_wedged(gt);
@@ -716,13 +730,9 @@ gt_drop_caches(struct intel_gt *gt, u64 val)
 		intel_gt_retire_requests(gt);
 
 	if (val & (DROP_IDLE | DROP_ACTIVE)) {
-		ret = intel_gt_wait_for_idle(gt, MAX_SCHEDULE_TIMEOUT);
-		if (ret)
-			return ret;
-	}
+		int ret;
 
-	if (val & DROP_IDLE) {
-		ret = intel_gt_pm_wait_for_idle(gt);
+		ret = intel_gt_wait_for_idle(gt, MAX_SCHEDULE_TIMEOUT);
 		if (ret)
 			return ret;
 	}
@@ -746,10 +756,16 @@ i915_drop_caches_set(void *data, u64 val)
 	drm_dbg(&i915->drm, "Dropping caches: 0x%08llx [0x%08llx]\n",
 		val, val & DROP_ALL);
 
+	/* Flush all the active requests across both GT ... */
 	ret = gt_drop_caches(to_gt(i915), val);
 	if (ret)
 		return ret;
 
+	/* ... then wait for idle as there may be cross-gt wakerefs. */
+	ret = gt_idle(to_gt(i915), val);
+	if (ret)
+		return ret;
+
 	fs_reclaim_acquire(GFP_KERNEL);
 	flags = memalloc_noreclaim_save();
 	if (val & DROP_BOUND)
-- 
2.40.1

