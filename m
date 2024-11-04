Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F969BC02D
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 22:35:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3940D10E4E2;
	Mon,  4 Nov 2024 21:35:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OJUumKW/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76A1210E4DC
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Nov 2024 21:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730756135; x=1762292135;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=w5SktQyGKbBe8qPKvgzsxLWrebJygdTFb7XRNX/il1k=;
 b=OJUumKW/oskFywznLGz1rYbAK7XsJ9dNf4pWORxOZ/TNJ47W2yUNfBEn
 q1W6f/iL+VG7oxdr2FwFU3e0A17gcLPVfWx3EcplpL2Ya7n0Xt5u996Wc
 0bSqnKopXJPjoAvmkIlYTR/GSy7h6ycQvrwBg0BIQ1jOGHKAXuUUZMnpf
 c8w6TTG4K+afg8Zl+i1lEhsYV9t2irlwfIyEeU8xhQuEfyTBRyVJpSz7B
 S07fZBPQxGZc2wxtQqw+BWS2Wp6X9aM84jFVT9LsPwYNs+qH2G5StBbg2
 ENgJ0h3eBtgcH443qdy9wQVEiSsZLa55ttAvyoSSGZUVS8OHVIWL+hDjm w==;
X-CSE-ConnectionGUID: ZlYMYjpURzqR6BW/Hg8GVg==
X-CSE-MsgGUID: +kU8xSaHStmSv8IDEmpnBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30420299"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30420299"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 13:35:35 -0800
X-CSE-ConnectionGUID: X4VnAC+/ROeHdASvf/faJA==
X-CSE-MsgGUID: Nv7U7RFxQGaedfmzcGmlrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,258,1725346800"; d="scan'208";a="114562843"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 13:35:35 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/4] drm/i915/pmu: Rename cpuhp_slot to cpuhp_state
Date: Mon,  4 Nov 2024 13:35:09 -0800
Message-ID: <20241104213512.2314930-2-lucas.demarchi@intel.com>
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

Both the documentation and most of other users call the return of
cpuhp_setup_state_multi() as "state". Follow that.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 93fbf53578da2..8706957ddc0a3 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -1218,7 +1218,7 @@ static int i915_pmu_cpu_offline(unsigned int cpu, struct hlist_node *node)
 	return 0;
 }
 
-static enum cpuhp_state cpuhp_slot = CPUHP_INVALID;
+static enum cpuhp_state cpuhp_state = CPUHP_INVALID;
 
 int i915_pmu_init(void)
 {
@@ -1232,28 +1232,28 @@ int i915_pmu_init(void)
 		pr_notice("Failed to setup cpuhp state for i915 PMU! (%d)\n",
 			  ret);
 	else
-		cpuhp_slot = ret;
+		cpuhp_state = ret;
 
 	return 0;
 }
 
 void i915_pmu_exit(void)
 {
-	if (cpuhp_slot != CPUHP_INVALID)
-		cpuhp_remove_multi_state(cpuhp_slot);
+	if (cpuhp_state != CPUHP_INVALID)
+		cpuhp_remove_multi_state(cpuhp_state);
 }
 
 static int i915_pmu_register_cpuhp_state(struct i915_pmu *pmu)
 {
-	if (cpuhp_slot == CPUHP_INVALID)
+	if (cpuhp_state == CPUHP_INVALID)
 		return -EINVAL;
 
-	return cpuhp_state_add_instance(cpuhp_slot, &pmu->cpuhp.node);
+	return cpuhp_state_add_instance(cpuhp_state, &pmu->cpuhp.node);
 }
 
 static void i915_pmu_unregister_cpuhp_state(struct i915_pmu *pmu)
 {
-	cpuhp_state_remove_instance(cpuhp_slot, &pmu->cpuhp.node);
+	cpuhp_state_remove_instance(cpuhp_state, &pmu->cpuhp.node);
 }
 
 void i915_pmu_register(struct drm_i915_private *i915)
-- 
2.47.0

