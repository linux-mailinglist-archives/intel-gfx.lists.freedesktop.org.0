Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF9F99AEE8
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Oct 2024 00:55:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28F1510E2F2;
	Fri, 11 Oct 2024 22:55:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c9DrT64V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A89E10E11A
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2024 22:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728687313; x=1760223313;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i/3B0Cdj7yIU4EmqRdsbO1j9+et3Yx1ls3gqcDEX1f4=;
 b=c9DrT64VEnilt9iygfCp/A//R4IaU7JfbLgmHBcp/cjb9yByy0uumDib
 CHNd29wz2VsBSvJhph3lo0zBpWj4ahfts3jVkxLtTLrSTdhOQaL96Ggc0
 DL8R48nt7ohmAuS5Q4azteX4zLi+XnBRyllB50GkGJIf8+/5mGu5uFSQt
 opxixFCsXyGqLmA1FF7dHUrNR9pqWI6YCPbQ7fRsqWxJEY8w8Bjck3bCH
 GMhFK20IcPuseg58e8nnXxAeQfRBmiKnabYY7uS7rM1D0lmLWL0xDdgpb
 P14r8MNAiBUgdvtWdpUlmPr6yJjoei/8A9psluN+SBfucLw15Ig17Fw4q g==;
X-CSE-ConnectionGUID: rp2NDO4/R26ebZEf8LD3qg==
X-CSE-MsgGUID: GW7TWRAPQh2O9hR27Redrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="53519751"
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="53519751"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 15:55:13 -0700
X-CSE-ConnectionGUID: 9Pk7UY+mQvGq/AN6XWv00w==
X-CSE-MsgGUID: uuDwm8fnSeCz6jSV6GCAGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="77040413"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 15:55:13 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH 4/8] drm/i915/pmu: Rename cpuhp_slot to cpuhp_state
Date: Fri, 11 Oct 2024 15:54:26 -0700
Message-ID: <20241011225430.1219345-5-lucas.demarchi@intel.com>
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

Both the documentation and most of other users call the return of
cpuhp_setup_state_multi() as "state". Follow that.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index dc9f753369170..2e435f51867db 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -1211,7 +1211,7 @@ static int i915_pmu_cpu_offline(unsigned int cpu, struct hlist_node *node)
 	return 0;
 }
 
-static enum cpuhp_state cpuhp_slot = CPUHP_INVALID;
+static enum cpuhp_state cpuhp_state = CPUHP_INVALID;
 
 int i915_pmu_init(void)
 {
@@ -1225,28 +1225,28 @@ int i915_pmu_init(void)
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

