Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4C599AEED
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Oct 2024 00:55:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF73D10EB32;
	Fri, 11 Oct 2024 22:55:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fRpg/FYO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7849A10E2F1
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2024 22:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728687313; x=1760223313;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ca7AtEKUPmJo1ZukGXqDsWgvwFDw9CL3+eatjYRyMMs=;
 b=fRpg/FYOEDeRDaavl40Qabm6p3I6SArT/0fh5oarJNGQ6CVzppt/u393
 Nzb3LNs+sKHVzaWGd/CWTkyL+UuRRnZ/vDwX0d4fE3BNPxyX7a8sFp4O4
 NMlSmvVkS2GmBcujvhz2jMY9GMXPioXxT2qJvG58k/rSXsReo8GPQUOc+
 mqAceEfexn/Z9bczYyO3DqTsYO8rwTMhBp3pC1WBZJlC1hpK1FUq4Hvfi
 amHIUdVh3CRdG3RSwrGgEUqAkJrUyh+PVVRteeTPeJpfUpsNu4T/GnZry
 7rR+RZmxPxqnT4QU2w/cZayrBj++xDLnV6jDWN0Rqq9uDHjwL7tBn/zDi Q==;
X-CSE-ConnectionGUID: 655cxpaDSXWNoJwA2g9JNQ==
X-CSE-MsgGUID: Tyxf/fWyQ5eZ1c6JI2f1tw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="53519753"
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="53519753"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 15:55:13 -0700
X-CSE-ConnectionGUID: kJTEofXuRkWtYWY3Dfq6GQ==
X-CSE-MsgGUID: ZKIYbwAZSyCGb0eclPzBSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="77040418"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 15:55:13 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH 5/8] drm/i915/pmu: Stop setting event_init to NULL
Date: Fri, 11 Oct 2024 15:54:27 -0700
Message-ID: <20241011225430.1219345-6-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241011225430.1219345-1-lucas.demarchi@intel.com>
References: <20241011225430.1219345-1-lucas.demarchi@intel.com>
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

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 19 ++++++-------------
 1 file changed, 6 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 2e435f51867db..409e10d8190a8 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -303,7 +303,7 @@ void i915_pmu_gt_parked(struct intel_gt *gt)
 {
 	struct i915_pmu *pmu = &gt->i915->pmu;
 
-	if (!pmu->base.event_init)
+	if (pmu->closed)
 		return;
 
 	spin_lock_irq(&pmu->lock);
@@ -325,7 +325,7 @@ void i915_pmu_gt_unparked(struct intel_gt *gt)
 {
 	struct i915_pmu *pmu = &gt->i915->pmu;
 
-	if (!pmu->base.event_init)
+	if (pmu->closed)
 		return;
 
 	spin_lock_irq(&pmu->lock);
@@ -1170,8 +1170,6 @@ static int i915_pmu_cpu_online(unsigned int cpu, struct hlist_node *node)
 {
 	struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu), cpuhp.node);
 
-	GEM_BUG_ON(!pmu->base.event_init);
-
 	/* Select the first online CPU as a designated reader. */
 	if (cpumask_empty(&i915_pmu_cpumask))
 		cpumask_set_cpu(cpu, &i915_pmu_cpumask);
@@ -1184,8 +1182,6 @@ static int i915_pmu_cpu_offline(unsigned int cpu, struct hlist_node *node)
 	struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu), cpuhp.node);
 	unsigned int target = i915_pmu_target_cpu;
 
-	GEM_BUG_ON(!pmu->base.event_init);
-
 	/*
 	 * Unregistering an instance generates a CPU offline event which we must
 	 * ignore to avoid incorrectly modifying the shared i915_pmu_cpumask.
@@ -1258,9 +1254,10 @@ void i915_pmu_register(struct drm_i915_private *i915)
 		&i915_pmu_cpumask_attr_group,
 		NULL
 	};
-
 	int ret = -ENOMEM;
 
+	pmu->closed = true;
+
 	if (GRAPHICS_VER(i915) <= 2) {
 		drm_info(&i915->drm, "PMU not supported for this GPU.");
 		return;
@@ -1319,6 +1316,8 @@ void i915_pmu_register(struct drm_i915_private *i915)
 	if (drmm_add_action(&i915->drm, free_pmu, pmu))
 		goto err_unreg;
 
+	pmu->closed = false;
+
 	return;
 
 err_unreg:
@@ -1326,7 +1325,6 @@ void i915_pmu_register(struct drm_i915_private *i915)
 err_groups:
 	kfree(pmu->base.attr_groups);
 err_attr:
-	pmu->base.event_init = NULL;
 	free_event_attributes(pmu);
 err_name:
 	if (IS_DGFX(i915))
@@ -1339,9 +1337,6 @@ void i915_pmu_unregister(struct drm_i915_private *i915)
 {
 	struct i915_pmu *pmu = &i915->pmu;
 
-	if (!pmu->base.event_init)
-		return;
-
 	/*
 	 * "Disconnect" the PMU callbacks - since all are atomic synchronize_rcu
 	 * ensures all currently executing ones will have exited before we
@@ -1354,6 +1349,4 @@ void i915_pmu_unregister(struct drm_i915_private *i915)
 
 	i915_pmu_unregister_cpuhp_state(pmu);
 	perf_pmu_unregister(&pmu->base);
-
-	pmu->base.event_init = NULL;
 }
-- 
2.47.0

