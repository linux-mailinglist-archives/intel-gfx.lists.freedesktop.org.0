Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7615099AEE9
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Oct 2024 00:55:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70AC610EB22;
	Fri, 11 Oct 2024 22:55:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XZHTmcuA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DFE810E11A
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2024 22:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728687313; x=1760223313;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pF2qXNkY1hVYmlbykSV3HxAh3c6pyPlUOAG2KflXh4c=;
 b=XZHTmcuAzxraTW0dOAehVli7nUafbTIleTdLHb3fXFWcMdsVQiXaSbWJ
 ObBFcJGsSLLrNI37QLKKLJX2sVswUu2pwFz7Q23UWegHSh4bAQQv+/m4/
 35orBouDx7MQv+Y2JDl8mnK1pkVjbBzCul1qRdFRueVVVUYkfl0d3f5dI
 6uPZF99hqV2xob1vE8ZI50GZup99Rv1T2n3oziJ7G6ov7xIHTSnHVb1IN
 YWEFG/MT+uKzdJ/w1+RQ3osIybMe3PBpf3d+sHsp+adZErpVA7RGH+oLf
 aKZnhlxeCaBi51OHHkpimMa3TMQOlK85Njgvw2IACeHu9/pSGyUMMcoCX w==;
X-CSE-ConnectionGUID: Ob82vq5ERBecJySa7kuHxw==
X-CSE-MsgGUID: YT6gjsJETjaTuC75ALiV6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="53519745"
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="53519745"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 15:55:13 -0700
X-CSE-ConnectionGUID: 3De7zyThQ+G+2EEZeHfb6Q==
X-CSE-MsgGUID: HGruK5teT36RWoFEtNAT0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="77040407"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 15:55:13 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH 2/8] drm/i915/pmu: Let resource survive unbind
Date: Fri, 11 Oct 2024 15:54:24 -0700
Message-ID: <20241011225430.1219345-3-lucas.demarchi@intel.com>
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

There's no need to free the resources during unbind. Since perf events
may still access them due to open events, it's safer to free them when
dropping the last i915 reference. It will also allow to ask perf to
release its own resources when dropping the last reference in a follow
up change.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 21 ++++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 67b6cbdeff1da..4d05d98f51b8e 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/pm_runtime.h>
+#include <drm/drm_managed.h>
 
 #include "gt/intel_engine.h"
 #include "gt/intel_engine_pm.h"
@@ -1148,6 +1149,17 @@ static void free_event_attributes(struct i915_pmu *pmu)
 	pmu->pmu_attr = NULL;
 }
 
+static void free_pmu(struct drm_device *dev, void *res)
+{
+	struct i915_pmu *pmu = res;
+	struct drm_i915_private *i915 = pmu_to_i915(pmu);
+
+	free_event_attributes(pmu);
+	kfree(pmu->base.attr_groups);
+	if (IS_DGFX(i915))
+		kfree(pmu->name);
+}
+
 static int i915_pmu_cpu_online(unsigned int cpu, struct hlist_node *node)
 {
 	struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu), cpuhp.node);
@@ -1296,6 +1308,9 @@ void i915_pmu_register(struct drm_i915_private *i915)
 	if (ret)
 		goto err_unreg;
 
+	if (drmm_add_action(&i915->drm, free_pmu, pmu))
+		goto err_unreg;
+
 	return;
 
 err_unreg:
@@ -1330,11 +1345,7 @@ void i915_pmu_unregister(struct drm_i915_private *i915)
 	hrtimer_cancel(&pmu->timer);
 
 	i915_pmu_unregister_cpuhp_state(pmu);
-
 	perf_pmu_unregister(&pmu->base);
+
 	pmu->base.event_init = NULL;
-	kfree(pmu->base.attr_groups);
-	if (IS_DGFX(i915))
-		kfree(pmu->name);
-	free_event_attributes(pmu);
 }
-- 
2.47.0

