Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C61D8A24594
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Feb 2025 00:13:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A46510E275;
	Fri, 31 Jan 2025 23:13:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FtueN6Xu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0A2610E275
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2025 23:13:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738365238; x=1769901238;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dutrJmpoenueJ6lAo7pjA4vkL2balrJXh6CWs1bt8gA=;
 b=FtueN6XuztEWz93nxYK0P1LfN71TD5INd+WMycR2IoYFqpunPuACel1z
 NMlRAfQ1AqopwPwVDCGag5QAYTCAC1lL6dB6y+nJyZfKgrLJfLEme24n4
 yh6GQHYuLIMs+VjPcHGoi/ae20E5QGcNtddhk5pCVjjCeqj/aCs5Nn8pq
 Erz1OIWWy7MDi8yuMoo7+1m8bGg8RaprG+JHAo2Vjr+DdVzDxAM/D45Au
 5l21zc0gCDhwgW+LqtFL12b421pnHFzwYsIbMKEzkZzHcLMn3pjXIb4Ho
 ZRUE1RhOlxYNqErZyGBy/UKfBdE8rLWMFHNXlLeItKPkQ+rGYvQMy7RYR A==;
X-CSE-ConnectionGUID: u4IIB94cQCyHwFugK7RLpw==
X-CSE-MsgGUID: eOd50T7ARzeH8aTld3tv1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="56486114"
X-IronPort-AV: E=Sophos;i="6.13,249,1732608000"; d="scan'208";a="56486114"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 15:13:57 -0800
X-CSE-ConnectionGUID: OqlMw4lSQu2nOkeeansDHg==
X-CSE-MsgGUID: LbIcnw9NTXiFDuWtm+ohQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="109594705"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 15:13:57 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Kan Liang <kan.liang@linux.intel.com>,
 "Peter Zijlstra (Intel)" <peterz@infradead.org>,
 Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Subject: [PATCH v2] drm/i915/pmu: Drop custom hotplug code
Date: Fri, 31 Jan 2025 15:11:32 -0800
Message-ID: <20250131231304.4151998-2-lucas.demarchi@intel.com>
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
integration with cpu hotplug.

The i915 counters are system-wide, even though the migration code
is using the wrong topology mask:

	target = cpumask_any_but(topology_sibling_cpumask(cpu), cpu);

So one could think the counter has core scope rather than system scope,
which is not the case. That was never caught in tests since they would
disable just one cpu at a time. After the removal of hotpluggable CPU0
in commit 5475abbde77f ("x86/smpboot: Remove the CPU0 hotplug kludge")
and commit e59e74dc48a3 ("x86/topology: Remove CPU0 hotplug option")
this became essentially non-testable for our systems.

Using the generic hotplug code, the same cpu0 is still reported in
cpumask - only if it was possible to unplug it, it would migrate to
another cpu, so there isn't much a change in behavior.

The one thing that changes is the return code for perf_event_open() if
an invalid cpu is used: previously i915 would return -EINVAL, but
generic perf code returns -ENODEV. That should be ok for all the users
and not cause breakages.

Cc: Kan Liang <kan.liang@linux.intel.com>
Cc: Peter Zijlstra (Intel) <peterz@infradead.org>
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---

v2: Expand commit message explanation to clarify what was discussed with
Kan, Tvrtko and Umesh in
https://patchwork.freedesktop.org/patch/msgid/20250116222426.77757-1-lucas.demarchi@intel.com

 drivers/gpu/drm/i915/i915_module.c |   2 -
 drivers/gpu/drm/i915/i915_pmu.c    | 114 +----------------------------
 drivers/gpu/drm/i915/i915_pmu.h    |  11 ---
 3 files changed, 1 insertion(+), 126 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_module.c b/drivers/gpu/drm/i915/i915_module.c
index 2f88970cc0a93..5862754c662c4 100644
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
index 2eecd42f61ba1..69a109d02116e 100644
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
@@ -935,23 +928,6 @@ static ssize_t i915_pmu_event_show(struct device *dev,
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
@@ -1168,92 +1144,12 @@ static void free_event_attributes(struct i915_pmu *pmu)
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
@@ -1261,7 +1157,6 @@ void i915_pmu_register(struct drm_i915_private *i915)
 	spin_lock_init(&pmu->lock);
 	hrtimer_init(&pmu->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 	pmu->timer.function = i915_sample;
-	pmu->cpuhp.cpu = -1;
 	init_rc6(pmu);
 
 	if (IS_DGFX(i915)) {
@@ -1290,6 +1185,7 @@ void i915_pmu_register(struct drm_i915_private *i915)
 
 	pmu->base.module	= THIS_MODULE;
 	pmu->base.task_ctx_nr	= perf_invalid_context;
+	pmu->base.scope		= PERF_PMU_SCOPE_SYS_WIDE;
 	pmu->base.event_init	= i915_pmu_event_init;
 	pmu->base.add		= i915_pmu_event_add;
 	pmu->base.del		= i915_pmu_event_del;
@@ -1301,16 +1197,10 @@ void i915_pmu_register(struct drm_i915_private *i915)
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
@@ -1334,8 +1224,6 @@ void i915_pmu_unregister(struct drm_i915_private *i915)
 
 	hrtimer_cancel(&pmu->timer);
 
-	i915_pmu_unregister_cpuhp_state(pmu);
-
 	perf_pmu_unregister(&pmu->base);
 	kfree(pmu->base.attr_groups);
 	if (IS_DGFX(i915))
diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
index 0ec78c2b4f203..5826cc81858c4 100644
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

