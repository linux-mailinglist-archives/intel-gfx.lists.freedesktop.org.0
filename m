Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E199723E6
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 22:43:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B73C010E6A8;
	Mon,  9 Sep 2024 20:43:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NgfnMsvx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F85F10E6AA
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2024 20:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725914636; x=1757450636;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=43UIbCv9GMYgdvsbZKe04stCqmSJ97+aZo8OBnJBNJ0=;
 b=NgfnMsvxVtj6yt2VlEXfRTFu/9+KVv5SVLq5EhKuz8OktQlxzLhuXIie
 t09rt+Z4RRCBvfIOOqz9JQRaD0jvxtSx0xi+E4is84SHUrBeSlIWYqdg0
 ev9jm0/jD+Ve2RcjJTU5K8PvKUCm0e7dUYmrdvmy1SiB2MKkdLuB79043
 ZIqrrljkNQUQKlhhh9L9sZ77q6a7dCJ3fFatjHVRn9r9pWF3MRA+HMWzM
 GCyC1Hupg8QCWobMqC0dcHOou3kWDBJsDXJkqx25P4kurAnE6bOfoV5GB
 v4Utk8Xe+2j98+A7l9f3ygRxtsmfXvLY8HvdvvKj0VadMkbqMNxXooUXa g==;
X-CSE-ConnectionGUID: zbI4PW05SmWOLnq8rCo27w==
X-CSE-MsgGUID: 4r2+DQJOTCSRp+eacQnmkg==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24451319"
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="24451319"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 13:43:56 -0700
X-CSE-ConnectionGUID: 8LIOopCMTLyG4p8Pylj0Ug==
X-CSE-MsgGUID: bQj+c9ybSbCNhu29crfz3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="71578747"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 13:43:57 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Subject: [CI 1/2] drm/i915/pmu: Drop is_igp()
Date: Mon,  9 Sep 2024 13:43:39 -0700
Message-ID: <20240909204340.3646458-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.43.0
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

There's no reason to hardcode checking for integrated graphics on a
specific pci slot. That information is already available per platform an
can be checked with IS_DGFX().

Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 17 +++--------------
 1 file changed, 3 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 21eb0c5b320d5..34d798245fac9 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -1232,17 +1232,6 @@ static void i915_pmu_unregister_cpuhp_state(struct i915_pmu *pmu)
 	cpuhp_state_remove_instance(cpuhp_slot, &pmu->cpuhp.node);
 }
 
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
@@ -1266,7 +1255,7 @@ void i915_pmu_register(struct drm_i915_private *i915)
 	pmu->cpuhp.cpu = -1;
 	init_rc6(pmu);
 
-	if (!is_igp(i915)) {
+	if (IS_DGFX(i915)) {
 		pmu->name = kasprintf(GFP_KERNEL,
 				      "i915_%s",
 				      dev_name(i915->drm.dev));
@@ -1318,7 +1307,7 @@ void i915_pmu_register(struct drm_i915_private *i915)
 	pmu->base.event_init = NULL;
 	free_event_attributes(pmu);
 err_name:
-	if (!is_igp(i915))
+	if (IS_DGFX(i915))
 		kfree(pmu->name);
 err:
 	drm_notice(&i915->drm, "Failed to register PMU!\n");
@@ -1346,7 +1335,7 @@ void i915_pmu_unregister(struct drm_i915_private *i915)
 	perf_pmu_unregister(&pmu->base);
 	pmu->base.event_init = NULL;
 	kfree(pmu->base.attr_groups);
-	if (!is_igp(i915))
+	if (IS_DGFX(i915))
 		kfree(pmu->name);
 	free_event_attributes(pmu);
 }
-- 
2.43.0

