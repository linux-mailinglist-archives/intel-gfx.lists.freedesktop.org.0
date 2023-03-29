Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA496CF46D
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 22:25:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47CA110EC4D;
	Wed, 29 Mar 2023 20:25:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD3AD10EC4B
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 20:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680121532; x=1711657532;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C5DwNZQ49T2T1DnJ3MDjoaiEgIW5/0chXEdcjrlY5aw=;
 b=Q1neu+HuCKYh+nkBxMLVlhB8F46VTXJU9ieEPN4dg+VB1a/6jR4n7ZoD
 D9vWibXOtz8mu/Inv/Uj599E3iv8zyXv+cTh9aTFQC62VngJkUVt/2sNz
 yX2nNDsrCWW4pOoxkIWE6dhNdZeQJOqUuE4kB5kGVx3kEcQFkrm+x+Hzn
 AMZA6KUdt8R9dVMtyW61eIIBuAwD88avQRFiymG8iQ1WCdAjDFOPqoP5r
 zkggodZFGfsPtmraTEgU+SNDMPy0At7oQnmmfFnFRHKG6Q10gA04HrRHg
 qjkQNXaPxKLqaHTceEHaGwLbEslfSnQh4xF0nWCzu9Nog4acGfJwmNIM+ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="405946074"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="405946074"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 13:25:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="748907174"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="748907174"
Received: from snalwade-mobl1.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.255.37.126])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 13:25:31 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 17:24:51 -0300
Message-Id: <20230329202451.98364-3-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230329202451.98364-1-gustavo.sousa@intel.com>
References: <20230329202451.98364-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/mtl: Add Wa_22015279794
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

From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

Wa_22015279794 applies to MTL P from stepping A0 to B0 (exclusive).

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 6 ++++++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
 2 files changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 1ec855813632..35a4cfac2d20 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1156,7 +1156,13 @@
 #define   ENABLE_EU_COUNT_FOR_TDL_FLUSH		REG_BIT(10)
 #define   DISABLE_ECC				REG_BIT(5)
 #define   FLOAT_BLEND_OPTIMIZATION_ENABLE	REG_BIT(4)
+/*
+ * We have both ENABLE and DISABLE defines below using the same bit because the
+ * meaning depends on the target platform. There are no platform prefix for them
+ * because different steppings of DG2 pick one or the other semantics.
+ */
 #define   ENABLE_PREFETCH_INTO_IC		REG_BIT(3)
+#define   DISABLE_PREFETCH_INTO_IC		REG_BIT(3)
 
 #define EU_PERF_CNTL0				PERF_REG(0xe458)
 #define EU_PERF_CNTL4				PERF_REG(0xe45c)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index cafdf66d9562..29d09ddfc8a9 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2979,6 +2979,11 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
 				 MTL_DISABLE_SAMPLER_SC_OOO);
 
+	if (IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
+		/* Wa_22015279794 */
+		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
+				 DISABLE_PREFETCH_INTO_IC);
+
 	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
 	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
 	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
-- 
2.40.0

