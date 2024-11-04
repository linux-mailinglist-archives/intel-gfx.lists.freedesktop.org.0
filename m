Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C669BC029
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 22:35:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A924F10E4DC;
	Mon,  4 Nov 2024 21:35:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MGH33f0n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83E0A10E4DD
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Nov 2024 21:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730756135; x=1762292135;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=XUIgoSvjIy3+XdnESvJsWCoK2mzXfzrmQfRc7QpS9M4=;
 b=MGH33f0n37hKso7cjVWCBsY4FqnFvNXTVO7APGCTcJg72XpUEsvGMi/s
 UgH3gqh7+an5iKqsht64fs9i74zENTAy3UCCBf98sB5NZEhStwD4QwYw4
 5KjDpJcGToM0R3ntuDDWt73mMRdEi930Eax2uXLeLQzM6/D5Zq0/pwIpx
 BwUnXz6SGyoSDLkG5RVBNpRN15kTnqF1lh5KrsfY9csE3qUHqUfoyu9xz
 prWMXAPfO2mXnOGTyTg4k65Oc5a4KSsHZki8lsGD+764h32Ms47F3173l
 ePWhsg11ST2aE04enUHPflj7pR6sN++4r6MJNCTqURlHxGlnzD0i0d8++ A==;
X-CSE-ConnectionGUID: KUB2st5lSyCbc2Kw2ALsUg==
X-CSE-MsgGUID: 7pDTHExsRxmLoTsnNQO9ZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30420300"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30420300"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 13:35:35 -0800
X-CSE-ConnectionGUID: dJk0E3GvTQiboIs2ZVaaVA==
X-CSE-MsgGUID: yk8oR1h5Q8e2CyNW9uUqSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,258,1725346800"; d="scan'208";a="114562846"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 13:35:35 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/4] drm/i915/pmu: Stop setting event_init to NULL
Date: Mon,  4 Nov 2024 13:35:10 -0800
Message-ID: <20241104213512.2314930-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241104213512.2314930-1-lucas.demarchi@intel.com>
References: <20241104213512.2314930-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Setting event_init to NULL is mostly done to detect when the driver is
partially working: i915 probed, but pmu is not registered. However,
checking for event_init is odd as it was supposed to always be set and
kernel/events/ would just crash if it found it set to NULL.

Since there's already a "closed" boolean, use that instead and extend
it's meaning to unregistered/unregistering.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 8706957ddc0a3..86faa5705fd8f 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -302,7 +302,7 @@ void i915_pmu_gt_parked(struct intel_gt *gt)
 {
 	struct i915_pmu *pmu = &gt->i915->pmu;
 
-	if (!pmu->base.event_init)
+	if (pmu->closed)
 		return;
 
 	spin_lock_irq(&pmu->lock);
@@ -324,7 +324,7 @@ void i915_pmu_gt_unparked(struct intel_gt *gt)
 {
 	struct i915_pmu *pmu = &gt->i915->pmu;
 
-	if (!pmu->base.event_init)
+	if (pmu->closed)
 		return;
 
 	spin_lock_irq(&pmu->lock);
@@ -1177,8 +1177,6 @@ static int i915_pmu_cpu_online(unsigned int cpu, struct hlist_node *node)
 {
 	struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu), cpuhp.node);
 
-	GEM_BUG_ON(!pmu->base.event_init);
-
 	/* Select the first online CPU as a designated reader. */
 	if (cpumask_empty(&i915_pmu_cpumask))
 		cpumask_set_cpu(cpu, &i915_pmu_cpumask);
@@ -1191,8 +1189,6 @@ static int i915_pmu_cpu_offline(unsigned int cpu, struct hlist_node *node)
 	struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu), cpuhp.node);
 	unsigned int target = i915_pmu_target_cpu;
 
-	GEM_BUG_ON(!pmu->base.event_init);
-
 	/*
 	 * Unregistering an instance generates a CPU offline event which we must
 	 * ignore to avoid incorrectly modifying the shared i915_pmu_cpumask.
@@ -1265,9 +1261,10 @@ void i915_pmu_register(struct drm_i915_private *i915)
 		&i915_pmu_cpumask_attr_group,
 		NULL
 	};
-
 	int ret = -ENOMEM;
 
+	pmu->closed = true;
+
 	spin_lock_init(&pmu->lock);
 	hrtimer_init(&pmu->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 	pmu->timer.function = i915_sample;
@@ -1316,6 +1313,8 @@ void i915_pmu_register(struct drm_i915_private *i915)
 	if (ret)
 		goto err_unreg;
 
+	pmu->closed = false;
+
 	return;
 
 err_unreg:
@@ -1323,7 +1322,6 @@ void i915_pmu_register(struct drm_i915_private *i915)
 err_groups:
 	kfree(pmu->base.attr_groups);
 err_attr:
-	pmu->base.event_init = NULL;
 	free_event_attributes(pmu);
 err_name:
 	if (IS_DGFX(i915))
@@ -1336,9 +1334,6 @@ void i915_pmu_unregister(struct drm_i915_private *i915)
 {
 	struct i915_pmu *pmu = &i915->pmu;
 
-	if (!pmu->base.event_init)
-		return;
-
 	/*
 	 * "Disconnect" the PMU callbacks - since all are atomic synchronize_rcu
 	 * ensures all currently executing ones will have exited before we
@@ -1352,7 +1347,6 @@ void i915_pmu_unregister(struct drm_i915_private *i915)
 	i915_pmu_unregister_cpuhp_state(pmu);
 
 	perf_pmu_unregister(&pmu->base);
-	pmu->base.event_init = NULL;
 	kfree(pmu->base.attr_groups);
 	if (IS_DGFX(i915))
 		kfree(pmu->name);
-- 
2.47.0

