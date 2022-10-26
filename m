Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE6260EB82
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 00:21:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DD1510E595;
	Wed, 26 Oct 2022 22:21:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D47310E58E
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 22:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666822867; x=1698358867;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=gWk+c2wmdPsK6ExmHBooWVPlXM5Y1JFgpYFhGwtiFlI=;
 b=VQMZfI6Zo2GHCExUw1bF6Hj3vEMLdJPZDTeZy2fguFQEAA2DoMiaK8fu
 KORGIiNQIOUqhJurPQvfFLnkYAkEd4ohshVen83HrhwQUCjLVMDuUNWGa
 fszr/eNhkShtWFK+V+NR/InMFMdQjMbhdt1vOrD4BWGcRkH6yGHertn7b
 vLthZ+FzhAsg088T8R9Q/ADA9sRl69xOmMQNbMgFWX+oIqP8CVsd97zQE
 gwBcfaxP8icrvriKC5LVCpEWMiXJERbgG25yU2EryTjBcVijhrxv7wY8T
 w95J84QxRiI9hnqEek0aJMEAJY6aD/d83rj+ssCPkQxF8pwih6sQxiI4R g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="394390433"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="394390433"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 15:21:05 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="721431390"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="721431390"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 15:21:05 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 22:20:57 +0000
Message-Id: <20221026222102.5526-12-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221026222102.5526-1-umesh.nerlige.ramappa@intel.com>
References: <20221026222102.5526-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 11/16] drm/i915/perf: Add Wa_1508761755:dg2
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

Disable Clock gating in EU when gathering the events so that EU events
are not lost.

v2: Fix checkpatch issues
v3: User MCR helpers to write to MC reg
v4: Indent correctly (checkpatch)

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h |  1 +
 drivers/gpu/drm/i915/i915_perf.c        | 24 ++++++++++++++++++++++++
 2 files changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 36d95b79022c..b101e31df61c 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1164,6 +1164,7 @@
 #define   GEN12_DISABLE_EARLY_READ		REG_BIT(14)
 #define   GEN12_ENABLE_LARGE_GRF_MODE		REG_BIT(12)
 #define   GEN12_PUSH_CONST_DEREF_HOLD_DIS	REG_BIT(8)
+#define   GEN12_DISABLE_DOP_GATING              REG_BIT(0)
 
 #define RT_CTRL					MCR_REG(0xe530)
 #define   DIS_NULL_QUERY			REG_BIT(10)
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 585079ae5f03..e14d16ac47de 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -204,6 +204,7 @@
 #include "gt/intel_gpu_commands.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_clock_utils.h"
+#include "gt/intel_gt_mcr.h"
 #include "gt/intel_gt_regs.h"
 #include "gt/intel_lrc.h"
 #include "gt/intel_lrc_reg.h"
@@ -2775,6 +2776,18 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
 	u32 sqcnt1;
 	int ret;
 
+	/*
+	 * Wa_1508761755:xehpsdv, dg2
+	 * EU NOA signals behave incorrectly if EU clock gating is enabled.
+	 * Disable thread stall DOP gating and EU DOP gating.
+	 */
+	if (IS_XEHPSDV(i915) || IS_DG2(i915)) {
+		intel_gt_mcr_multicast_write(uncore->gt, GEN8_ROW_CHICKEN,
+					     _MASKED_BIT_ENABLE(STALL_DOP_GATING_DISABLE));
+		intel_uncore_write(uncore, GEN7_ROW_CHICKEN2,
+				   _MASKED_BIT_ENABLE(GEN12_DISABLE_DOP_GATING));
+	}
+
 	intel_uncore_write(uncore, GEN12_OAG_OA_DEBUG,
 			   /* Disable clk ratio reports, like previous Gens. */
 			   _MASKED_BIT_ENABLE(GEN12_OAG_OA_DEBUG_DISABLE_CLK_RATIO_REPORTS |
@@ -2853,6 +2866,17 @@ static void gen12_disable_metric_set(struct i915_perf_stream *stream)
 	struct drm_i915_private *i915 = stream->perf->i915;
 	u32 sqcnt1;
 
+	/*
+	 * Wa_1508761755:xehpsdv, dg2
+	 * Enable thread stall DOP gating and EU DOP gating.
+	 */
+	if (IS_XEHPSDV(i915) || IS_DG2(i915)) {
+		intel_gt_mcr_multicast_write(uncore->gt, GEN8_ROW_CHICKEN,
+					     _MASKED_BIT_DISABLE(STALL_DOP_GATING_DISABLE));
+		intel_uncore_write(uncore, GEN7_ROW_CHICKEN2,
+				   _MASKED_BIT_DISABLE(GEN12_DISABLE_DOP_GATING));
+	}
+
 	/* Reset all contexts' slices/subslices configurations. */
 	gen12_configure_all_contexts(stream, NULL, NULL);
 
-- 
2.25.1

