Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 309E6294E31
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 16:03:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 597C96EDA7;
	Wed, 21 Oct 2020 14:03:31 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39AB76EDA4
 for <Intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 14:03:28 +0000 (UTC)
IronPort-SDR: v6KwGM9YDGPWkynLMRpr89oiqmki85cjso1BslopbyJ1WhRzWIRDlTMvI0e7lG2awDp0pFDrh8
 dclATJS+n8cQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="163879058"
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="163879058"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 07:03:28 -0700
IronPort-SDR: wAAa7RoKrEfFV/xd+sUaJVtH2D4T8xb1U2iMXs9rC71Wq6eKtMc3rVxV+YFf0/TJmM5sWkDUMs
 9DUyg0dGdr4A==
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="533539145"
Received: from pvagawan-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.56.28])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 07:03:27 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 21 Oct 2020 15:03:20 +0100
Message-Id: <20201021140320.1159015-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201021140320.1159015-1-tvrtko.ursulin@linux.intel.com>
References: <20201021140320.1159015-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915/pmu: Fix CPU hotplug with multiple
 GPUs
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Since we keep a driver global mask of online CPUs and base the decision
whether PMU needs to be migrated upon it, we need to make sure the
migration is done for all registered PMUs (so GPUs).

To do this we need to track the current CPU for each PMU and base the
decision on whether to migrate on a comparison between global and local
state.

At the same time, since dynamic CPU hotplug notification slots are a
scarce resource and given how we already register the multi instance type
state, we can and should add multiple instance of the i915 PMU to this
same state and not allocate a new one for every GPU.

v2:
 * Use pr_notice. (Chris)

v3:
 * Handle a nasty interaction where unregistration which triggers a false
   CPU offline event. (Chris)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Suggested-by: Daniel Vetter <daniel.vetter@intel.com> # dynamic slot optimisation
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_pci.c |  7 +++-
 drivers/gpu/drm/i915/i915_pmu.c | 57 +++++++++++++++++++++------------
 drivers/gpu/drm/i915/i915_pmu.h |  6 +++-
 3 files changed, 48 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 27964ac0638a..a384f51c91c1 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1150,9 +1150,13 @@ static int __init i915_init(void)
 		return 0;
 	}
 
+	i915_pmu_init();
+
 	err = pci_register_driver(&i915_pci_driver);
-	if (err)
+	if (err) {
+		i915_pmu_exit();
 		return err;
+	}
 
 	i915_perf_sysctl_register();
 	return 0;
@@ -1166,6 +1170,7 @@ static void __exit i915_exit(void)
 	i915_perf_sysctl_unregister();
 	pci_unregister_driver(&i915_pci_driver);
 	i915_globals_exit();
+	i915_pmu_exit();
 }
 
 module_init(i915_init);
diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 51ed7d0efcdc..cd786ad12be7 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -30,6 +30,7 @@
 #define ENGINE_SAMPLE_BITS (1 << I915_PMU_SAMPLE_BITS)
 
 static cpumask_t i915_pmu_cpumask;
+static unsigned int i915_pmu_target_cpu = -1;
 
 static u8 engine_config_sample(u64 config)
 {
@@ -1049,25 +1050,39 @@ static int i915_pmu_cpu_online(unsigned int cpu, struct hlist_node *node)
 static int i915_pmu_cpu_offline(unsigned int cpu, struct hlist_node *node)
 {
 	struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu), cpuhp.node);
-	unsigned int target;
+	unsigned int target = i915_pmu_target_cpu;
 
 	GEM_BUG_ON(!pmu->base.event_init);
 
+	/*
+	 * Unregistering an instance generates a CPU offline event which we must
+	 * ignore to avoid incorrectly modifying the shared i915_pmu_cpumask.
+	 */
+	if (pmu->closed)
+		return 0;
+
 	if (cpumask_test_and_clear_cpu(cpu, &i915_pmu_cpumask)) {
 		target = cpumask_any_but(topology_sibling_cpumask(cpu), cpu);
+
 		/* Migrate events if there is a valid target */
 		if (target < nr_cpu_ids) {
 			cpumask_set_cpu(target, &i915_pmu_cpumask);
-			perf_pmu_migrate_context(&pmu->base, cpu, target);
+			i915_pmu_target_cpu = target;
 		}
 	}
 
+	if (target < nr_cpu_ids && target != pmu->cpuhp.cpu) {
+		perf_pmu_migrate_context(&pmu->base, cpu, target);
+		pmu->cpuhp.cpu = target;
+	}
+
 	return 0;
 }
 
-static int i915_pmu_register_cpuhp_state(struct i915_pmu *pmu)
+static enum cpuhp_state cpuhp_slot = CPUHP_INVALID;
+
+void i915_pmu_init(void)
 {
-	enum cpuhp_state slot;
 	int ret;
 
 	ret = cpuhp_setup_state_multi(CPUHP_AP_ONLINE_DYN,
@@ -1075,27 +1090,29 @@ static int i915_pmu_register_cpuhp_state(struct i915_pmu *pmu)
 				      i915_pmu_cpu_online,
 				      i915_pmu_cpu_offline);
 	if (ret < 0)
-		return ret;
+		pr_notice("Failed to setup cpuhp state for i915 PMU! (%d)\n",
+			  ret);
+	else
+		cpuhp_slot = ret;
+}
 
-	slot = ret;
-	ret = cpuhp_state_add_instance(slot, &pmu->cpuhp.node);
-	if (ret) {
-		cpuhp_remove_multi_state(slot);
-		return ret;
-	}
+void i915_pmu_exit(void)
+{
+	if (cpuhp_slot != CPUHP_INVALID)
+		cpuhp_remove_multi_state(cpuhp_slot);
+}
 
-	pmu->cpuhp.slot = slot;
-	return 0;
+static int i915_pmu_register_cpuhp_state(struct i915_pmu *pmu)
+{
+	if (cpuhp_slot == CPUHP_INVALID)
+		return -EINVAL;
+
+	return cpuhp_state_add_instance(cpuhp_slot, &pmu->cpuhp.node);
 }
 
 static void i915_pmu_unregister_cpuhp_state(struct i915_pmu *pmu)
 {
-	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
-
-	drm_WARN_ON(&i915->drm, pmu->cpuhp.slot == CPUHP_INVALID);
-	drm_WARN_ON(&i915->drm, cpuhp_state_remove_instance(pmu->cpuhp.slot, &pmu->cpuhp.node));
-	cpuhp_remove_multi_state(pmu->cpuhp.slot);
-	pmu->cpuhp.slot = CPUHP_INVALID;
+	cpuhp_state_remove_instance(cpuhp_slot, &pmu->cpuhp.node);
 }
 
 static bool is_igp(struct drm_i915_private *i915)
@@ -1129,7 +1146,7 @@ void i915_pmu_register(struct drm_i915_private *i915)
 	spin_lock_init(&pmu->lock);
 	hrtimer_init(&pmu->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 	pmu->timer.function = i915_sample;
-	pmu->cpuhp.slot = CPUHP_INVALID;
+	pmu->cpuhp.cpu = -1;
 
 	if (!is_igp(i915)) {
 		pmu->name = kasprintf(GFP_KERNEL,
diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
index 59a0d19afb67..a24885ab415c 100644
--- a/drivers/gpu/drm/i915/i915_pmu.h
+++ b/drivers/gpu/drm/i915/i915_pmu.h
@@ -43,7 +43,7 @@ struct i915_pmu {
 	 */
 	struct {
 		struct hlist_node node;
-		enum cpuhp_state slot;
+		unsigned int cpu;
 	} cpuhp;
 	/**
 	 * @base: PMU base.
@@ -126,11 +126,15 @@ struct i915_pmu {
 };
 
 #ifdef CONFIG_PERF_EVENTS
+void i915_pmu_init(void);
+void i915_pmu_exit(void);
 void i915_pmu_register(struct drm_i915_private *i915);
 void i915_pmu_unregister(struct drm_i915_private *i915);
 void i915_pmu_gt_parked(struct drm_i915_private *i915);
 void i915_pmu_gt_unparked(struct drm_i915_private *i915);
 #else
+static inline void i915_pmu_init(void) {}
+static inline void i915_pmu_exit(void) {}
 static inline void i915_pmu_register(struct drm_i915_private *i915) {}
 static inline void i915_pmu_unregister(struct drm_i915_private *i915) {}
 static inline void i915_pmu_gt_parked(struct drm_i915_private *i915) {}
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
