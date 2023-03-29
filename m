Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 736156CF553
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 23:24:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB06110EC94;
	Wed, 29 Mar 2023 21:24:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0C9C10EC7C
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 21:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680125039; x=1711661039;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oE5KEVbzvpNi3Diwmm3QI68RTfoom225JOfv/w/Hfd0=;
 b=QjL9HsZ3uoMHhXTzWForX6m0XD+ev9EdgfAdpzkPKbHtonrfE27e68sW
 2WFeKP8Zjt9Gg3f6Wj5xNatqTPXH486ozk8RPKZbSUqSMa5faxLWmgc5w
 ACk7HB0V7CSVeDNFRpiY4imfPd27rMQ6qFdMlw0jy5V7EQ1jLL9RMZ2rn
 wrNwoCjyoQY1N/9jfCpQMkpWAE+uPgi+GT0UB7JDYeiI5CL7UaOBxaqh6
 EEpfCmhMRaHduyfKUyLi2XfJeiQXrakH9ax1Y6C9ItNNDqma+TpD0A6un
 Ov3EjTp4owIbmIhyPGRhS1NyXKS2sJ5r1TjJzEj4xnzVTm78AS3CLBtL8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="338504140"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="338504140"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 14:23:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="748916132"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="748916132"
Received: from snalwade-mobl1.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.255.37.126])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 14:23:58 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 18:23:36 -0300
Message-Id: <20230329212336.106161-3-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230329212336.106161-1-gustavo.sousa@intel.com>
References: <20230329212336.106161-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/mtl: Add Wa_22015279794
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

Wa_22015279794 applies to MTL P from stepping A0 to B0 (exclusive).

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
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
index 6170535f94ef..1c8e0e91a2fe 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2980,6 +2980,11 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
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

