Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9946A14479
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 23:25:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8715710EA18;
	Thu, 16 Jan 2025 22:25:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HtYLjnRa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A70D10EA18
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2025 22:25:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737066305; x=1768602305;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ju1+eBwNTARfEK0QjURpqM8Tyao6+eCkUcCHee3VnLw=;
 b=HtYLjnRaN+pgTDa5SfOtiLNzSrKYMAENLuD/wkZT+ooURvpFXmTWozdE
 Qmf0mVqdfOWAoWwlVZPHAQRBb1HerL4ULdzShDaC8XmYzIKLjsmvAFP2c
 k0/bpp/wCTuSCQzJMbShUQqKHXTDeOTjNE4QCXSrG7EwE83yllQqS2fpX
 nyH/BuWzDcvulZCzlgpHCOTq45xhbuuFvqHhqX+5DC22ev9rDLxGo67p2
 LnlAqiviEonvEp8IkBhMwIj8lqTPlSBUi4TsZ8tXlYur4bRD7WjICVa0Y
 0MjsDuYHMS0AeG6jCV4CJ0flZe6tLe8mnJ3IqoBX6h4twEshzh6tqR9/f A==;
X-CSE-ConnectionGUID: EocML8+kT6eviQJ4x475Lg==
X-CSE-MsgGUID: NbZ+I3dmSAuQWEWbAMJ8yQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="36758416"
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="36758416"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 14:25:04 -0800
X-CSE-ConnectionGUID: TJaUs1MDRRCGj1QvHtFuzA==
X-CSE-MsgGUID: Pz85denqS4aWJHj4IYTSMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="106510206"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 14:25:04 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Kan Liang <kan.liang@linux.intel.com>,
 "Peter Zijlstra (Intel)" <peterz@infradead.org>,
 Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Subject: [PATCH] drm/i915/pmu: Drop custom hotplug code
Date: Thu, 16 Jan 2025 14:24:26 -0800
Message-ID: <20250116222426.77757-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.48.0
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

Since commit 4ba4f1afb6a9 ("perf: Generic hotplug support for a PMU with
a scope"), there's generic support for system-wide counters and
integration with cpu hotplug. Set our scope to PERF_PMU_SCOPE_SYS_WIDE
instead of all the boilerplate code for handling hotplug.

Cc: Kan Liang <kan.liang@linux.intel.com>
Cc: Peter Zijlstra (Intel) <peterz@infradead.org>
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_module.c |   2 -
 drivers/gpu/drm/i915/i915_pmu.c    | 114 +----------------------------
 drivers/gpu/drm/i915/i915_pmu.h    |  11 ---
 3 files changed, 1 insertion(+), 126 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_module.c b/drivers/gpu/drm/i915/i915_module.c
index 7ed6d70389af9..7affe07f84f45 100644
--- a/drivers/gpu/drm/i915/i915_module.c
+++ b/drivers/gpu/drm/i915/i915_module.c
@@ -71,8 +71,6 @@ static const struct {
 	{ .init = i915_vma_resource_module_init,
 	  .exit = i915_vma_resource_module_exit },
 	{ .init = i915_mock_selftests },
-	{ .init = i915_pmu_init,
-	  .exit = i915_pmu_exit },
 	{ .init = i915_pci_register_driver,
 	  .exit = i915_pci_unregister_driver },
 	{ .init = i915_perf_sysctl_register,
diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index e55db036be1bb..652964ef0643c 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -28,9 +28,6 @@
 	 BIT(I915_SAMPLE_WAIT) | \
 	 BIT(I915_SAMPLE_SEMA))
 
-static cpumask_t i915_pmu_cpumask;
-static unsigned int i915_pmu_target_cpu = -1;
-
 static struct i915_pmu *event_to_pmu(struct perf_event *event)
 {
 	return container_of(event->pmu, struct i915_pmu, base);
@@ -642,10 +639,6 @@ static int i915_pmu_event_init(struct perf_event *event)
 	if (event->cpu < 0)
 		return -EINVAL;
 
-	/* only allow running on one cpu at a time */
-	if (!cpumask_test_cpu(event->cpu, &i915_pmu_cpumask))
-		return -EINVAL;
-
 	if (is_engine_event(event))
 		ret = engine_event_init(event);
 	else
@@ -940,23 +933,6 @@ static ssize_t i915_pmu_event_show(struct device *dev,
 	return sprintf(buf, "config=0x%lx\n", eattr->val);
 }
 
-static ssize_t cpumask_show(struct device *dev,
-			    struct device_attribute *attr, char *buf)
-{
-	return cpumap_print_to_pagebuf(true, buf, &i915_pmu_cpumask);
-}
-
-static DEVICE_ATTR_RO(cpumask);
-
-static struct attribute *i915_cpumask_attrs[] = {
-	&dev_attr_cpumask.attr,
-	NULL,
-};
-
-static const struct attribute_group i915_pmu_cpumask_attr_group = {
-	.attrs = i915_cpumask_attrs,
-};
-
 #define __event(__counter, __name, __unit) \
 { \
 	.counter = (__counter), \
@@ -1173,92 +1149,12 @@ static void free_event_attributes(struct i915_pmu *pmu)
 	pmu->pmu_attr = NULL;
 }
 
-static int i915_pmu_cpu_online(unsigned int cpu, struct hlist_node *node)
-{
-	struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu), cpuhp.node);
-
-	/* Select the first online CPU as a designated reader. */
-	if (cpumask_empty(&i915_pmu_cpumask))
-		cpumask_set_cpu(cpu, &i915_pmu_cpumask);
-
-	return 0;
-}
-
-static int i915_pmu_cpu_offline(unsigned int cpu, struct hlist_node *node)
-{
-	struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu), cpuhp.node);
-	unsigned int target = i915_pmu_target_cpu;
-
-	/*
-	 * Unregistering an instance generates a CPU offline event which we must
-	 * ignore to avoid incorrectly modifying the shared i915_pmu_cpumask.
-	 */
-	if (!pmu->registered)
-		return 0;
-
-	if (cpumask_test_and_clear_cpu(cpu, &i915_pmu_cpumask)) {
-		target = cpumask_any_but(topology_sibling_cpumask(cpu), cpu);
-
-		/* Migrate events if there is a valid target */
-		if (target < nr_cpu_ids) {
-			cpumask_set_cpu(target, &i915_pmu_cpumask);
-			i915_pmu_target_cpu = target;
-		}
-	}
-
-	if (target < nr_cpu_ids && target != pmu->cpuhp.cpu) {
-		perf_pmu_migrate_context(&pmu->base, cpu, target);
-		pmu->cpuhp.cpu = target;
-	}
-
-	return 0;
-}
-
-static enum cpuhp_state cpuhp_state = CPUHP_INVALID;
-
-int i915_pmu_init(void)
-{
-	int ret;
-
-	ret = cpuhp_setup_state_multi(CPUHP_AP_ONLINE_DYN,
-				      "perf/x86/intel/i915:online",
-				      i915_pmu_cpu_online,
-				      i915_pmu_cpu_offline);
-	if (ret < 0)
-		pr_notice("Failed to setup cpuhp state for i915 PMU! (%d)\n",
-			  ret);
-	else
-		cpuhp_state = ret;
-
-	return 0;
-}
-
-void i915_pmu_exit(void)
-{
-	if (cpuhp_state != CPUHP_INVALID)
-		cpuhp_remove_multi_state(cpuhp_state);
-}
-
-static int i915_pmu_register_cpuhp_state(struct i915_pmu *pmu)
-{
-	if (cpuhp_state == CPUHP_INVALID)
-		return -EINVAL;
-
-	return cpuhp_state_add_instance(cpuhp_state, &pmu->cpuhp.node);
-}
-
-static void i915_pmu_unregister_cpuhp_state(struct i915_pmu *pmu)
-{
-	cpuhp_state_remove_instance(cpuhp_state, &pmu->cpuhp.node);
-}
-
 void i915_pmu_register(struct drm_i915_private *i915)
 {
 	struct i915_pmu *pmu = &i915->pmu;
 	const struct attribute_group *attr_groups[] = {
 		&i915_pmu_format_attr_group,
 		&pmu->events_attr_group,
-		&i915_pmu_cpumask_attr_group,
 		NULL
 	};
 	int ret = -ENOMEM;
@@ -1266,7 +1162,6 @@ void i915_pmu_register(struct drm_i915_private *i915)
 	spin_lock_init(&pmu->lock);
 	hrtimer_init(&pmu->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 	pmu->timer.function = i915_sample;
-	pmu->cpuhp.cpu = -1;
 	init_rc6(pmu);
 
 	if (IS_DGFX(i915)) {
@@ -1295,6 +1190,7 @@ void i915_pmu_register(struct drm_i915_private *i915)
 
 	pmu->base.module	= THIS_MODULE;
 	pmu->base.task_ctx_nr	= perf_invalid_context;
+	pmu->base.scope		= PERF_PMU_SCOPE_SYS_WIDE;
 	pmu->base.event_init	= i915_pmu_event_init;
 	pmu->base.add		= i915_pmu_event_add;
 	pmu->base.del		= i915_pmu_event_del;
@@ -1307,16 +1203,10 @@ void i915_pmu_register(struct drm_i915_private *i915)
 	if (ret)
 		goto err_groups;
 
-	ret = i915_pmu_register_cpuhp_state(pmu);
-	if (ret)
-		goto err_unreg;
-
 	pmu->registered = true;
 
 	return;
 
-err_unreg:
-	perf_pmu_unregister(&pmu->base);
 err_groups:
 	kfree(pmu->base.attr_groups);
 err_attr:
@@ -1340,8 +1230,6 @@ void i915_pmu_unregister(struct drm_i915_private *i915)
 
 	hrtimer_cancel(&pmu->timer);
 
-	i915_pmu_unregister_cpuhp_state(pmu);
-
 	perf_pmu_unregister(&pmu->base);
 	kfree(pmu->base.attr_groups);
 	if (IS_DGFX(i915))
diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
index 8e66d63d0c9f9..53bce3d8bfbaf 100644
--- a/drivers/gpu/drm/i915/i915_pmu.h
+++ b/drivers/gpu/drm/i915/i915_pmu.h
@@ -56,13 +56,6 @@ struct i915_pmu_sample {
 };
 
 struct i915_pmu {
-	/**
-	 * @cpuhp: Struct used for CPU hotplug handling.
-	 */
-	struct {
-		struct hlist_node node;
-		unsigned int cpu;
-	} cpuhp;
 	/**
 	 * @base: PMU base.
 	 */
@@ -155,15 +148,11 @@ struct i915_pmu {
 };
 
 #ifdef CONFIG_PERF_EVENTS
-int i915_pmu_init(void);
-void i915_pmu_exit(void);
 void i915_pmu_register(struct drm_i915_private *i915);
 void i915_pmu_unregister(struct drm_i915_private *i915);
 void i915_pmu_gt_parked(struct intel_gt *gt);
 void i915_pmu_gt_unparked(struct intel_gt *gt);
 #else
-static inline int i915_pmu_init(void) { return 0; }
-static inline void i915_pmu_exit(void) {}
 static inline void i915_pmu_register(struct drm_i915_private *i915) {}
 static inline void i915_pmu_unregister(struct drm_i915_private *i915) {}
 static inline void i915_pmu_gt_parked(struct intel_gt *gt) {}
-- 
2.48.0

