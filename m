Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6F159CCCE
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 02:06:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 969D3A74F4;
	Tue, 23 Aug 2022 00:04:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 694D2A74C1
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 00:03:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661213025; x=1692749025;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=OWTtSsvkBO3EjrHBbELwQBP8mVgPaOv9jiJ/jpO4kSE=;
 b=NxvM4GCCpj/OC90lTzpbWohRzB685y77Ak45w9ZsDGKQczpgLSGXM/8I
 hY+Ir0PbrOwMXmaSjZSiuL2sgT2AxxILhdelq+C0pOQGuQOTg1GR5nkLz
 0g/pmvVb6BNCr2Ff1jTRqjpLIBpE2lI1WCm2IK/sRQEG6UxwKtEdq7Xs/
 uq93oAzrM9l8z2a93ZtIZLEzjgd8m0bSGC+6NMO/3haajoTeEAOpvkkk6
 pc62ObYQeKp23nbWjhnSUf3DClmOy/UKzezF306D/pNUzRnHmzcIBmc82
 +GGTkgMan6JJNS036GnhjRT6SjWeF6Bh7z02Zm1J9NMHQsVrMDs+cZNf0 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="273304841"
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="273304841"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 17:03:42 -0700
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="669775551"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 17:03:42 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Tue, 23 Aug 2022 00:03:38 +0000
Message-Id: <20220823000342.281222-16-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220823000342.281222-1-umesh.nerlige.ramappa@intel.com>
References: <20220823000342.281222-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/19] drm/i915/perf: Add Wa_1508761755:dg2
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

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h |  1 +
 drivers/gpu/drm/i915/i915_perf.c        | 23 +++++++++++++++++++++++
 2 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index b3b49f6d6d1c..b90b88accc34 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1121,6 +1121,7 @@
 #define   GEN12_DISABLE_EARLY_READ		REG_BIT(14)
 #define   GEN12_ENABLE_LARGE_GRF_MODE		REG_BIT(12)
 #define   GEN12_PUSH_CONST_DEREF_HOLD_DIS	REG_BIT(8)
+#define   GEN12_DISABLE_DOP_GATING              REG_BIT(0)
 
 #define RT_CTRL					_MMIO(0xe530)
 #define   DIS_NULL_QUERY			REG_BIT(10)
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 494c67e29d6c..ce379ac88a60 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -2856,6 +2856,18 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
 	u32 sqcnt1;
 	int ret;
 
+ 	/*
+	 * Wa_1508761755:xehpsdv, dg2
+ 	 * EU NOA signals behave incorrectly if EU clock gating is enabled.
+ 	 * Disable thread stall DOP gating and EU DOP gating.
+ 	 */
+	if (IS_XEHPSDV(i915) || IS_DG2(i915)) {
+		intel_uncore_write(uncore, GEN8_ROW_CHICKEN,
+				_MASKED_BIT_ENABLE(STALL_DOP_GATING_DISABLE));
+		intel_uncore_write(uncore, GEN7_ROW_CHICKEN2,
+				_MASKED_BIT_ENABLE(GEN12_DISABLE_DOP_GATING));
+	}
+
 	intel_uncore_write(uncore, GEN12_OAG_OA_DEBUG,
 			   /* Disable clk ratio reports, like previous Gens. */
 			   _MASKED_BIT_ENABLE(GEN12_OAG_OA_DEBUG_DISABLE_CLK_RATIO_REPORTS |
@@ -2934,6 +2946,17 @@ static void gen12_disable_metric_set(struct i915_perf_stream *stream)
 	struct drm_i915_private *i915 = stream->perf->i915;
 	u32 sqcnt1;
 
+	/*
+	 * Wa_1508761755:xehpsdv, dg2
+	 * Enable thread stall DOP gating and EU DOP gating.
+	 */
+	if (IS_XEHPSDV(i915) || IS_DG2(i915)) {
+		intel_uncore_write(uncore, GEN8_ROW_CHICKEN,
+				_MASKED_BIT_DISABLE(STALL_DOP_GATING_DISABLE));
+		intel_uncore_write(uncore, GEN7_ROW_CHICKEN2,
+				_MASKED_BIT_DISABLE(GEN12_DISABLE_DOP_GATING));
+	}
+
 	/* Reset all contexts' slices/subslices configurations. */
 	gen12_configure_all_contexts(stream, NULL, NULL);
 
-- 
2.25.1

