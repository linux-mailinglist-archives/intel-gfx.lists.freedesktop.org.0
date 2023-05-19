Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DE2709BA0
	for <lists+intel-gfx@lfdr.de>; Fri, 19 May 2023 17:49:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFF7310E545;
	Fri, 19 May 2023 15:49:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2350210E5AD
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 May 2023 15:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684511389; x=1716047389;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=fl7dbaPQSl6BpZOYfLgDzVwyNrz9xkVOcq8x2iNPnd4=;
 b=ZHXDAN1rFDB9+ER2ZcocYKS3MzuBjmWw2KIlOQXlnQfR5CCNLJjDqG8P
 k7xJ1Xilld/C0s3WkSHwqqT7Sa7laFTxhDbS75Nga8SspiQ+k8Q9xa0Xf
 PP5FqXYGWTzYg9Bd9JFA9DcbA+lj5AJQshLpqpPvpiv72lJX2jury6qSS
 DYprrukw7NuYP4NCKxhZNxE2sqgqjTu827aI3WhSBg/DLQhYV70/fRm5C
 MSNbZ7jsdZ5ooyZM5yB5llP+lXLtVlrYjLzt2JHsbbxBoXJD8CPmW3Tk9
 bYD/sfYhspGym/czQwtQg8gRUjHFxE7LZFsf5PyfWST+mtaNiWZVPQR4/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="354759566"
X-IronPort-AV: E=Sophos;i="6.00,177,1681196400"; d="scan'208";a="354759566"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2023 08:49:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="1032652187"
X-IronPort-AV: E=Sophos;i="6.00,177,1681196400"; d="scan'208";a="1032652187"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2023 08:49:47 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 May 2023 08:49:41 -0700
Message-Id: <20230519154946.3751971-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230519154946.3751971-1-umesh.nerlige.ramappa@intel.com>
References: <20230519154946.3751971-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 2/7] drm/i915/pmu: Support PMU for all engines
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Given how the metrics are already exported, we also need to run sampling
over engines from all GTs.

Problem of GT frequencies is left for later.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 96543dce2db1..9edf87ee5d10 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -10,6 +10,7 @@
 #include "gt/intel_engine_pm.h"
 #include "gt/intel_engine_regs.h"
 #include "gt/intel_engine_user.h"
+#include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_gt_regs.h"
 #include "gt/intel_rc6.h"
@@ -425,8 +426,9 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
 	struct drm_i915_private *i915 =
 		container_of(hrtimer, struct drm_i915_private, pmu.timer);
 	struct i915_pmu *pmu = &i915->pmu;
-	struct intel_gt *gt = to_gt(i915);
 	unsigned int period_ns;
+	struct intel_gt *gt;
+	unsigned int i;
 	ktime_t now;
 
 	if (!READ_ONCE(pmu->timer_enabled))
@@ -442,8 +444,13 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
 	 * grabbing the forcewake. However the potential error from timer call-
 	 * back delay greatly dominates this so we keep it simple.
 	 */
-	engines_sample(gt, period_ns);
-	frequency_sample(gt, period_ns);
+
+	for_each_gt(gt, i915, i) {
+		engines_sample(gt, period_ns);
+
+		if (i == 0) /* FIXME */
+			frequency_sample(gt, period_ns);
+	}
 
 	hrtimer_forward(hrtimer, now, ns_to_ktime(PERIOD));
 
-- 
2.36.1

