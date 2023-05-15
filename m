Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B11370251D
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 08:44:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F054210E138;
	Mon, 15 May 2023 06:44:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6B6010E13B
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 06:44:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684133065; x=1715669065;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hIeeG5rlbgf77K4mukdLesfdTd8rILXqGvcbVSsdklU=;
 b=MVRDQbm4sIy20pBkLgyuEMkoapAi1PI5arRdF9HTyg7r9hJ8uj7SRAa3
 pxOY1Cr//WmhBeIzXeMk9sEuBdmU5sMAhxCE0ENMMC2WNIjFTGhCeE41s
 7zx8/kp3ZzkYSoBDC7jVUu1vUvNITnJ5MiWf6CLeBGJaGlAINCO0QQZ5n
 qrElp/otXfggUSW2iwoNPQJNKVPGTR9rBgOt8v7mq02L9vlTgBxqyVBUp
 ZdL6DKiLSa9Wp7DeiHy2KMKroQhLdtilwkToJ3qD9IfEQY1oXykKp/xR8
 QZFv5KZOsSrfM0a2V6TiXnvkylVyuQdOXe3QccWmy9DyDtJo0j//ovwG1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="354283666"
X-IronPort-AV: E=Sophos;i="5.99,275,1677571200"; d="scan'208";a="354283666"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2023 23:44:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="845124655"
X-IronPort-AV: E=Sophos;i="5.99,275,1677571200"; d="scan'208";a="845124655"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2023 23:44:24 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 14 May 2023 23:44:11 -0700
Message-Id: <20230515064416.3054707-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230515064416.3054707-1-umesh.nerlige.ramappa@intel.com>
References: <20230515064416.3054707-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/6] drm/i915/pmu: Support PMU for all engines
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
index 7ece883a7d95..67fa6cd77529 100644
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
@@ -414,8 +415,9 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
 	struct drm_i915_private *i915 =
 		container_of(hrtimer, struct drm_i915_private, pmu.timer);
 	struct i915_pmu *pmu = &i915->pmu;
-	struct intel_gt *gt = to_gt(i915);
 	unsigned int period_ns;
+	struct intel_gt *gt;
+	unsigned int i;
 	ktime_t now;
 
 	if (!READ_ONCE(pmu->timer_enabled))
@@ -431,8 +433,13 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
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

