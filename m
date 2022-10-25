Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A385560D573
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 22:19:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A851D10E24B;
	Tue, 25 Oct 2022 20:19:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B158710E1F8
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 20:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666729031; x=1698265031;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=LFdrl0lGOYrI5u+rfnfxRAGWg4ZEvNiB417xWKBCnoM=;
 b=hyvidkn/1tv3ROWiUkyq1bw+L0eL1HwlVgu6CLD9xHEXelCFOjt5NgQL
 THebs9uYpuZTKde+CtvbeYoknE3m+d6GqwPu/hZsdtJEh6OI5A8DDY1hG
 e/vJUvMRNr3Scb3kW6SPFGMqAJrnQk08RnJ78iFfDRWNTOmvhyghg4sE2
 3Q6wGBT5tT4PgHdHAdeLTrZZDAevmFihXD7ELfPKRHDjvdJrOhBgeK886
 fQoswaPY2Ij6TknPFfzqShkydc7ScM38S9sduYN1a67trLU9X3dtcWYqt
 TgVqmW1Ye7TFIc/iFojh6wl5Gj+hcwCjeSAc4qTGPnf+iBZMKDO5rhmYM A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="369847677"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="369847677"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 13:17:09 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="609699729"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="609699729"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 13:17:09 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Oct 2022 20:17:03 +0000
Message-Id: <20221025201708.84018-12-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221025201708.84018-1-umesh.nerlige.ramappa@intel.com>
References: <20221025201708.84018-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 11/16] drm/i915/perf: Add Wa_1508761755:dg2
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
index 585079ae5f03..18619eb19769 100644
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
+				   _MASKED_BIT_ENABLE(STALL_DOP_GATING_DISABLE));
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
+				   _MASKED_BIT_DISABLE(STALL_DOP_GATING_DISABLE));
+		intel_uncore_write(uncore, GEN7_ROW_CHICKEN2,
+				   _MASKED_BIT_DISABLE(GEN12_DISABLE_DOP_GATING));
+	}
+
 	/* Reset all contexts' slices/subslices configurations. */
 	gen12_configure_all_contexts(stream, NULL, NULL);
 
-- 
2.25.1

