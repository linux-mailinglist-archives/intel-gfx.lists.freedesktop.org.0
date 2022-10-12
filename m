Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 013835FCE65
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 00:28:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E52510E231;
	Wed, 12 Oct 2022 22:28:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A107310E2DC
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 22:27:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665613668; x=1697149668;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3NP/e+Ypz/2SX2LI0tz92dpnAtma4hOW15d2oD+r7fM=;
 b=FWnMbHd8DKH1YjUiV4sM2H1zdEQWIxiUiZ2k79omrN/8RUeqtb+iv0RO
 1Ofnywngaz/od0aYH4xOGjUkALyfu/94ftCqSsYh1kkbuYIADjKh7UJeV
 262D9XgdusQRA756JWsWk0pP1vpR7/RSm8/usVIgjTtRjwMXI3uMSpIYL
 8qbAK4vqxPUCOjoNQFCnwtFWeQTDXx6SqdfZaqdJdWennuP0bHAntAKsZ
 x4hkWCJc9R6l1FiKdSFBX0WlZGSA+SIMZf4j1ghN2gsGrtctMw0T2OTTg
 zkqYGB1SoziWXjh5Q7FRppJBY5jzIX9UJxO7wAGlv6q1JYA9YPZak8Cbu Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="305983971"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="305983971"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 15:27:47 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="660097670"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="660097670"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 15:27:47 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Wed, 12 Oct 2022 22:27:34 +0000
Message-Id: <20221012222739.27296-12-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221012222739.27296-1-umesh.nerlige.ramappa@intel.com>
References: <20221012222739.27296-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 11/16] drm/i915/perf: Add Wa_1508761755:dg2
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

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h |  1 +
 drivers/gpu/drm/i915/i915_perf.c        | 23 +++++++++++++++++++++++
 2 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 7f79bbf97828..7be0327ca8dc 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1140,6 +1140,7 @@
 #define   GEN12_DISABLE_EARLY_READ		REG_BIT(14)
 #define   GEN12_ENABLE_LARGE_GRF_MODE		REG_BIT(12)
 #define   GEN12_PUSH_CONST_DEREF_HOLD_DIS	REG_BIT(8)
+#define   GEN12_DISABLE_DOP_GATING              REG_BIT(0)
 
 #define RT_CTRL					_MMIO(0xe530)
 #define   DIS_NULL_QUERY			REG_BIT(10)
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index fdf4088eca7b..b725f204f496 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -2779,6 +2779,18 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
 	u32 sqcnt1;
 	int ret;
 
+	/*
+	 * Wa_1508761755:xehpsdv, dg2
+	 * EU NOA signals behave incorrectly if EU clock gating is enabled.
+	 * Disable thread stall DOP gating and EU DOP gating.
+	 */
+	if (IS_XEHPSDV(i915) || IS_DG2(i915)) {
+		intel_uncore_write(uncore, GEN8_ROW_CHICKEN,
+				   _MASKED_BIT_ENABLE(STALL_DOP_GATING_DISABLE));
+		intel_uncore_write(uncore, GEN7_ROW_CHICKEN2,
+				   _MASKED_BIT_ENABLE(GEN12_DISABLE_DOP_GATING));
+	}
+
 	intel_uncore_write(uncore, GEN12_OAG_OA_DEBUG,
 			   /* Disable clk ratio reports, like previous Gens. */
 			   _MASKED_BIT_ENABLE(GEN12_OAG_OA_DEBUG_DISABLE_CLK_RATIO_REPORTS |
@@ -2857,6 +2869,17 @@ static void gen12_disable_metric_set(struct i915_perf_stream *stream)
 	struct drm_i915_private *i915 = stream->perf->i915;
 	u32 sqcnt1;
 
+	/*
+	 * Wa_1508761755:xehpsdv, dg2
+	 * Enable thread stall DOP gating and EU DOP gating.
+	 */
+	if (IS_XEHPSDV(i915) || IS_DG2(i915)) {
+		intel_uncore_write(uncore, GEN8_ROW_CHICKEN,
+				   _MASKED_BIT_DISABLE(STALL_DOP_GATING_DISABLE));
+		intel_uncore_write(uncore, GEN7_ROW_CHICKEN2,
+				   _MASKED_BIT_DISABLE(GEN12_DISABLE_DOP_GATING));
+	}
+
 	/* Reset all contexts' slices/subslices configurations. */
 	gen12_configure_all_contexts(stream, NULL, NULL);
 
-- 
2.25.1

