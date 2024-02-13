Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5A285395F
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 19:03:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EE1010E550;
	Tue, 13 Feb 2024 18:03:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UoygWbOU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A89010E575
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Feb 2024 18:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707847397; x=1739383397;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9TfeKjXzbEinX/NnfcqYXVOCftJTDJ59YM+DwMQfmp8=;
 b=UoygWbOUVtQ12TKUd/6edy7b+REVH64e4oBQAnPujqRqiFWOLaqtSsrJ
 ET4yWa9rKmMy/wuRkpVk/SzEslq5cv/UfhS3Yft5CWvlPvvu78cBdV/w+
 nWGuV9MBJlC2CND26yCEG1T3J1kaxJSjsf4l1kPXEs9yOxGHCW1bqzwUN
 1zeLSWx7QJft7MjJ2II2BYcQCYNONKcPHb4YiEY1jkLjn4Yyv0BEGidEy
 esn0siWtEaookCcdIu8CWxm4kCh88BDFjnqLrjuL5nzKQwNzHQ9AsZ13N
 pdvGomsg8hNs3wfz22dtUHyx3TjWPaaUtHW7bgVQIlj4dGKwIHOQDepZ6 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="5689390"
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; 
   d="scan'208";a="5689390"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 10:03:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="911852943"
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; d="scan'208";a="911852943"
Received: from dut7231atsm.jf.intel.com ([10.98.51.28])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 10:03:15 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: [PATCH 1/2] i915/pmu: Add pmu_teardown helper
Date: Tue, 13 Feb 2024 10:03:01 -0800
Message-Id: <20240213180302.47266-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240213180302.47266-1-umesh.nerlige.ramappa@intel.com>
References: <20240213180302.47266-1-umesh.nerlige.ramappa@intel.com>
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

Move pmu teardown to a helper and place it above the destroy hook so
that teardown can also happen inside destroy when events are closed
after i915 pmu is unregistered.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 106 +++++++++++++++++---------------
 1 file changed, 56 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 21eb0c5b320d..4d2a289f848a 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -514,6 +514,61 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
 	return HRTIMER_RESTART;
 }
 
+static enum cpuhp_state cpuhp_slot = CPUHP_INVALID;
+
+static int i915_pmu_register_cpuhp_state(struct i915_pmu *pmu)
+{
+	if (cpuhp_slot == CPUHP_INVALID)
+		return -EINVAL;
+
+	return cpuhp_state_add_instance(cpuhp_slot, &pmu->cpuhp.node);
+}
+
+static void i915_pmu_unregister_cpuhp_state(struct i915_pmu *pmu)
+{
+	cpuhp_state_remove_instance(cpuhp_slot, &pmu->cpuhp.node);
+}
+
+static void free_event_attributes(struct i915_pmu *pmu)
+{
+	struct attribute **attr_iter = pmu->events_attr_group.attrs;
+
+	for (; *attr_iter; attr_iter++)
+		kfree((*attr_iter)->name);
+
+	kfree(pmu->events_attr_group.attrs);
+	kfree(pmu->i915_attr);
+	kfree(pmu->pmu_attr);
+
+	pmu->events_attr_group.attrs = NULL;
+	pmu->i915_attr = NULL;
+	pmu->pmu_attr = NULL;
+}
+
+static bool is_igp(struct drm_i915_private *i915)
+{
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+
+	/* IGP is 0000:00:02.0 */
+	return pci_domain_nr(pdev->bus) == 0 &&
+	       pdev->bus->number == 0 &&
+	       PCI_SLOT(pdev->devfn) == 2 &&
+	       PCI_FUNC(pdev->devfn) == 0;
+}
+
+static void pmu_teardown(struct i915_pmu *pmu)
+{
+	struct drm_i915_private *i915 = pmu_to_i915(pmu);
+
+	i915_pmu_unregister_cpuhp_state(pmu);
+	perf_pmu_unregister(&pmu->base);
+	pmu->base.event_init = NULL;
+	kfree(pmu->base.attr_groups);
+	if (!is_igp(i915))
+		kfree(pmu->name);
+	free_event_attributes(pmu);
+}
+
 static void i915_pmu_event_destroy(struct perf_event *event)
 {
 	struct i915_pmu *pmu = event_to_pmu(event);
@@ -1133,22 +1188,6 @@ err:;
 	return NULL;
 }
 
-static void free_event_attributes(struct i915_pmu *pmu)
-{
-	struct attribute **attr_iter = pmu->events_attr_group.attrs;
-
-	for (; *attr_iter; attr_iter++)
-		kfree((*attr_iter)->name);
-
-	kfree(pmu->events_attr_group.attrs);
-	kfree(pmu->i915_attr);
-	kfree(pmu->pmu_attr);
-
-	pmu->events_attr_group.attrs = NULL;
-	pmu->i915_attr = NULL;
-	pmu->pmu_attr = NULL;
-}
-
 static int i915_pmu_cpu_online(unsigned int cpu, struct hlist_node *node)
 {
 	struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu), cpuhp.node);
@@ -1194,8 +1233,6 @@ static int i915_pmu_cpu_offline(unsigned int cpu, struct hlist_node *node)
 	return 0;
 }
 
-static enum cpuhp_state cpuhp_slot = CPUHP_INVALID;
-
 int i915_pmu_init(void)
 {
 	int ret;
@@ -1219,30 +1256,6 @@ void i915_pmu_exit(void)
 		cpuhp_remove_multi_state(cpuhp_slot);
 }
 
-static int i915_pmu_register_cpuhp_state(struct i915_pmu *pmu)
-{
-	if (cpuhp_slot == CPUHP_INVALID)
-		return -EINVAL;
-
-	return cpuhp_state_add_instance(cpuhp_slot, &pmu->cpuhp.node);
-}
-
-static void i915_pmu_unregister_cpuhp_state(struct i915_pmu *pmu)
-{
-	cpuhp_state_remove_instance(cpuhp_slot, &pmu->cpuhp.node);
-}
-
-static bool is_igp(struct drm_i915_private *i915)
-{
-	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
-
-	/* IGP is 0000:00:02.0 */
-	return pci_domain_nr(pdev->bus) == 0 &&
-	       pdev->bus->number == 0 &&
-	       PCI_SLOT(pdev->devfn) == 2 &&
-	       PCI_FUNC(pdev->devfn) == 0;
-}
-
 void i915_pmu_register(struct drm_i915_private *i915)
 {
 	struct i915_pmu *pmu = &i915->pmu;
@@ -1341,12 +1354,5 @@ void i915_pmu_unregister(struct drm_i915_private *i915)
 
 	hrtimer_cancel(&pmu->timer);
 
-	i915_pmu_unregister_cpuhp_state(pmu);
-
-	perf_pmu_unregister(&pmu->base);
-	pmu->base.event_init = NULL;
-	kfree(pmu->base.attr_groups);
-	if (!is_igp(i915))
-		kfree(pmu->name);
-	free_event_attributes(pmu);
+	pmu_teardown(pmu);
 }
-- 
2.34.1

