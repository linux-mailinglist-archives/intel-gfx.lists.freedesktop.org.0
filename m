Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 360ED9BC02A
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 22:35:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE61310E4DD;
	Mon,  4 Nov 2024 21:35:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g9Rt+FK/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9105B10E4D9
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Nov 2024 21:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730756135; x=1762292135;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qVxRXDEhXme3sc4CeOvbJPkfZjHF7bv3YJ4Jq6IKdCA=;
 b=g9Rt+FK/+madPHycz2FZUYsxC41y60edKsLQxw2fEBIMo0fcLb1bUyHq
 U259JLA2KP5Ka/fFauyZu+qORm5x9LkZNizwJvJlbkrRB3iiMRQoKdGHP
 DVRiUZ/j1+NN4RgqLMX3w52mwL8bxYulM/7yOYdoq0Axj0a2n+nw1qBhz
 6eSuCn1XRHFKUu/V5OrvwhiAH78wY7lbSP/x/BC5O0gVUMloXcY/K6uPT
 ehoIWjuI+aCYqlAgxzovZkM9Q+BaECXWrNV2GtZ9yF5y4wehzUd9RDbzu
 JjNvD9zcyizkqm4e2x/y0ZpaJbZb4M3EyBAEHtEbKhsHupEL122vPqVZo Q==;
X-CSE-ConnectionGUID: fyAE9GugT32gWQWpfvV6Eg==
X-CSE-MsgGUID: 5lSKEkcKRe6nH6bybrSGkw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30420301"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30420301"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 13:35:35 -0800
X-CSE-ConnectionGUID: DAVgaMlVQoCB5n3u87qqiw==
X-CSE-MsgGUID: ZIax6oV3RF6Wi57hKUTxHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,258,1725346800"; d="scan'208";a="114562850"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 13:35:35 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/4] drm/i915/pmu: Replace closed with registered
Date: Mon,  4 Nov 2024 13:35:11 -0800
Message-ID: <20241104213512.2314930-4-lucas.demarchi@intel.com>
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

Since i915 calls perf_pmu_register/perf_pmu_unregister, let's call the
variable "registered" so we can flip the logic and rely on it being
false by default. Looking at other drivers, it's also more common.
Examples: arch/x86/events/intel/uncore.c and
drivers/powercap/intel_rapl_common.c.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 25 +++++++++++++------------
 drivers/gpu/drm/i915/i915_pmu.h |  4 ++--
 2 files changed, 15 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 86faa5705fd8f..bd476297ed0a1 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -302,7 +302,7 @@ void i915_pmu_gt_parked(struct intel_gt *gt)
 {
 	struct i915_pmu *pmu = &gt->i915->pmu;
 
-	if (pmu->closed)
+	if (!pmu->registered)
 		return;
 
 	spin_lock_irq(&pmu->lock);
@@ -324,7 +324,7 @@ void i915_pmu_gt_unparked(struct intel_gt *gt)
 {
 	struct i915_pmu *pmu = &gt->i915->pmu;
 
-	if (pmu->closed)
+	if (!pmu->registered)
 		return;
 
 	spin_lock_irq(&pmu->lock);
@@ -626,7 +626,7 @@ static int i915_pmu_event_init(struct perf_event *event)
 	struct drm_i915_private *i915 = pmu_to_i915(pmu);
 	int ret;
 
-	if (pmu->closed)
+	if (!pmu->registered)
 		return -ENODEV;
 
 	if (event->attr.type != event->pmu->type)
@@ -724,7 +724,7 @@ static void i915_pmu_event_read(struct perf_event *event)
 	struct hw_perf_event *hwc = &event->hw;
 	u64 prev, new;
 
-	if (pmu->closed) {
+	if (!pmu->registered) {
 		event->hw.state = PERF_HES_STOPPED;
 		return;
 	}
@@ -850,7 +850,7 @@ static void i915_pmu_event_start(struct perf_event *event, int flags)
 {
 	struct i915_pmu *pmu = event_to_pmu(event);
 
-	if (pmu->closed)
+	if (!pmu->registered)
 		return;
 
 	i915_pmu_enable(event);
@@ -861,7 +861,7 @@ static void i915_pmu_event_stop(struct perf_event *event, int flags)
 {
 	struct i915_pmu *pmu = event_to_pmu(event);
 
-	if (pmu->closed)
+	if (!pmu->registered)
 		goto out;
 
 	if (flags & PERF_EF_UPDATE)
@@ -877,7 +877,7 @@ static int i915_pmu_event_add(struct perf_event *event, int flags)
 {
 	struct i915_pmu *pmu = event_to_pmu(event);
 
-	if (pmu->closed)
+	if (!pmu->registered)
 		return -ENODEV;
 
 	if (flags & PERF_EF_START)
@@ -1193,7 +1193,7 @@ static int i915_pmu_cpu_offline(unsigned int cpu, struct hlist_node *node)
 	 * Unregistering an instance generates a CPU offline event which we must
 	 * ignore to avoid incorrectly modifying the shared i915_pmu_cpumask.
 	 */
-	if (pmu->closed)
+	if (!pmu->registered)
 		return 0;
 
 	if (cpumask_test_and_clear_cpu(cpu, &i915_pmu_cpumask)) {
@@ -1263,8 +1263,6 @@ void i915_pmu_register(struct drm_i915_private *i915)
 	};
 	int ret = -ENOMEM;
 
-	pmu->closed = true;
-
 	spin_lock_init(&pmu->lock);
 	hrtimer_init(&pmu->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 	pmu->timer.function = i915_sample;
@@ -1313,7 +1311,7 @@ void i915_pmu_register(struct drm_i915_private *i915)
 	if (ret)
 		goto err_unreg;
 
-	pmu->closed = false;
+	pmu->registered = true;
 
 	return;
 
@@ -1334,12 +1332,15 @@ void i915_pmu_unregister(struct drm_i915_private *i915)
 {
 	struct i915_pmu *pmu = &i915->pmu;
 
+	if (!pmu->registered)
+		return;
+
 	/*
 	 * "Disconnect" the PMU callbacks - since all are atomic synchronize_rcu
 	 * ensures all currently executing ones will have exited before we
 	 * proceed with unregistration.
 	 */
-	pmu->closed = true;
+	pmu->registered = false;
 	synchronize_rcu();
 
 	hrtimer_cancel(&pmu->timer);
diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
index 41af038c37388..8e66d63d0c9f9 100644
--- a/drivers/gpu/drm/i915/i915_pmu.h
+++ b/drivers/gpu/drm/i915/i915_pmu.h
@@ -68,9 +68,9 @@ struct i915_pmu {
 	 */
 	struct pmu base;
 	/**
-	 * @closed: i915 is unregistering.
+	 * @registered: PMU is registered and not in the unregistering process.
 	 */
-	bool closed;
+	bool registered;
 	/**
 	 * @name: Name as registered with perf core.
 	 */
-- 
2.47.0

