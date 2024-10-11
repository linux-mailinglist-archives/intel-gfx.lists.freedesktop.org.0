Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE4899AEEA
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Oct 2024 00:55:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71CDF10EB23;
	Fri, 11 Oct 2024 22:55:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="di57rFUQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9884E10E11A
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2024 22:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728687313; x=1760223313;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=m5dS+5k6nHDeYRuUHFtSHoO9mhFNZbi4+tik9ygdPL0=;
 b=di57rFUQ9cbzqUUZp5vAaF+wuvNqiu2SW2Uxq5dNlj8IN8nt0D/ibkWD
 VgR5c5jkuWVu7iKULYu6IKxZGmv4dvGYmhzJ02aijCNBOjXOJJpF5MOi9
 xVjf7/xCMeHqMstdTvRsvYNK9ewfe2EWbb6UMS2kY3LtPfajzmiNHk8Zw
 UmXtvhZNwZOtzDY6hXbn6duxogsnnCHxmLDy3E/+S3sgHZVHD+s5KSRI4
 mTNtn8O7HugSacLjH8OtZBmuXgXjISQ7FEedbIhGQLzPL3PhZiPeojSYy
 DduQV57A/dmzm92d/gpDfnFx4Px6EYqMhpiSKyDwbVXJX/2saUbPHdfV3 Q==;
X-CSE-ConnectionGUID: Ngv5FwT4T1ScRkodgVA/7A==
X-CSE-MsgGUID: sCQLgMGvTbGYeenA7a4Akg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="53519755"
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="53519755"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 15:55:13 -0700
X-CSE-ConnectionGUID: /jfS2qWIRfO1mMwRE6Nt7g==
X-CSE-MsgGUID: aypwYGc/QmWbsaaMtfwDCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="77040421"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 15:55:13 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH 6/8] drm/i915/pmu: Replace closed with registered
Date: Fri, 11 Oct 2024 15:54:28 -0700
Message-ID: <20241011225430.1219345-7-lucas.demarchi@intel.com>
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

Since i915 calls perf_pmu_register/perf_pmu_unregister, let's call the
variable "registered" so we can flip the logic and rely on it being
false by default. Looking at other drivers, it's also more common.
Examples: arch/x86/events/intel/uncore.c and
drivers/powercap/intel_rapl_common.c.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 25 +++++++++++++------------
 drivers/gpu/drm/i915/i915_pmu.h |  4 ++--
 2 files changed, 15 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 409e10d8190a8..e28c29bae2d9a 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -303,7 +303,7 @@ void i915_pmu_gt_parked(struct intel_gt *gt)
 {
 	struct i915_pmu *pmu = &gt->i915->pmu;
 
-	if (pmu->closed)
+	if (!pmu->registered)
 		return;
 
 	spin_lock_irq(&pmu->lock);
@@ -325,7 +325,7 @@ void i915_pmu_gt_unparked(struct intel_gt *gt)
 {
 	struct i915_pmu *pmu = &gt->i915->pmu;
 
-	if (pmu->closed)
+	if (!pmu->registered)
 		return;
 
 	spin_lock_irq(&pmu->lock);
@@ -593,7 +593,7 @@ static int i915_pmu_event_init(struct perf_event *event)
 	struct drm_i915_private *i915 = pmu_to_i915(pmu);
 	int ret;
 
-	if (pmu->closed)
+	if (!pmu->registered)
 		return -ENODEV;
 
 	if (event->attr.type != event->pmu->type)
@@ -686,7 +686,7 @@ static void i915_pmu_event_read(struct perf_event *event)
 	struct hw_perf_event *hwc = &event->hw;
 	u64 prev, new;
 
-	if (pmu->closed) {
+	if (!pmu->registered) {
 		event->hw.state = PERF_HES_STOPPED;
 		return;
 	}
@@ -812,7 +812,7 @@ static void i915_pmu_event_start(struct perf_event *event, int flags)
 {
 	struct i915_pmu *pmu = event_to_pmu(event);
 
-	if (pmu->closed)
+	if (!pmu->registered)
 		return;
 
 	i915_pmu_enable(event);
@@ -823,7 +823,7 @@ static void i915_pmu_event_stop(struct perf_event *event, int flags)
 {
 	struct i915_pmu *pmu = event_to_pmu(event);
 
-	if (pmu->closed)
+	if (!pmu->registered)
 		goto out;
 
 	if (flags & PERF_EF_UPDATE)
@@ -839,7 +839,7 @@ static int i915_pmu_event_add(struct perf_event *event, int flags)
 {
 	struct i915_pmu *pmu = event_to_pmu(event);
 
-	if (pmu->closed)
+	if (!pmu->registered)
 		return -ENODEV;
 
 	if (flags & PERF_EF_START)
@@ -1186,7 +1186,7 @@ static int i915_pmu_cpu_offline(unsigned int cpu, struct hlist_node *node)
 	 * Unregistering an instance generates a CPU offline event which we must
 	 * ignore to avoid incorrectly modifying the shared i915_pmu_cpumask.
 	 */
-	if (pmu->closed)
+	if (!pmu->registered)
 		return 0;
 
 	if (cpumask_test_and_clear_cpu(cpu, &i915_pmu_cpumask)) {
@@ -1256,8 +1256,6 @@ void i915_pmu_register(struct drm_i915_private *i915)
 	};
 	int ret = -ENOMEM;
 
-	pmu->closed = true;
-
 	if (GRAPHICS_VER(i915) <= 2) {
 		drm_info(&i915->drm, "PMU not supported for this GPU.");
 		return;
@@ -1316,7 +1314,7 @@ void i915_pmu_register(struct drm_i915_private *i915)
 	if (drmm_add_action(&i915->drm, free_pmu, pmu))
 		goto err_unreg;
 
-	pmu->closed = false;
+	pmu->registered = true;
 
 	return;
 
@@ -1337,12 +1335,15 @@ void i915_pmu_unregister(struct drm_i915_private *i915)
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
index 41af038c37388..3c1cf594954d9 100644
--- a/drivers/gpu/drm/i915/i915_pmu.h
+++ b/drivers/gpu/drm/i915/i915_pmu.h
@@ -68,9 +68,9 @@ struct i915_pmu {
 	 */
 	struct pmu base;
 	/**
-	 * @closed: i915 is unregistering.
+	 * @closed: PMU is registered and not in the unregistering process.
 	 */
-	bool closed;
+	bool registered;
 	/**
 	 * @name: Name as registered with perf core.
 	 */
-- 
2.47.0

