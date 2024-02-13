Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE13985295D
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 07:46:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3547E10EB1C;
	Tue, 13 Feb 2024 06:46:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XX1SltTq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14FF110EB4F
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Feb 2024 06:46:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707806816; x=1739342816;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9TfeKjXzbEinX/NnfcqYXVOCftJTDJ59YM+DwMQfmp8=;
 b=XX1SltTq4tVodrNEgY2Rifibu4wmlRdow2pKUdswNUC1ciLlp4aWSLi1
 glZlhOx2DaWsJZ6KpszIU5VFTzY4k/7ybmKM6Na9D0JcIor3d6rRAGNLI
 Fk9FWWREZJrmH2HP+agQy3I2R2lux89Prt9MAvrQwPSzt4btdCyqNrKde
 SBH578abj+6+4RwIBqS3xjxlVrSgmYcgGENrzovB0ZIXqSLPm7R221N3r
 0EaXoCKd2s/r/UZHikryayTSLMoyZyV7200CNzR4tonvu719T1ZmDao/q
 ffFsQf2AKlzlUxgFtU1eKZBrPxUb+XRA9vxim+SI4Rj1c8y4bWMXXDAWB w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="12893271"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; d="scan'208";a="12893271"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 22:46:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="826031413"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; d="scan'208";a="826031413"
Received: from dut7231atsm.jf.intel.com ([10.98.51.28])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 22:46:54 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: [PATCH 1/2] i915/pmu: Add pmu_teardown helper
Date: Mon, 12 Feb 2024 22:46:49 -0800
Message-Id: <20240213064650.45051-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240213064650.45051-1-umesh.nerlige.ramappa@intel.com>
References: <20240213064650.45051-1-umesh.nerlige.ramappa@intel.com>
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

