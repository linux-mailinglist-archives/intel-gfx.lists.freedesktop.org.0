Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CBE959ED96
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 22:42:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E5F810E78C;
	Tue, 23 Aug 2022 20:42:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC2F110E783
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 20:42:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661287322; x=1692823322;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rm7pcVPkszT0jHI99FYuPWRk1W7w3i7W/vT/3mnTI/M=;
 b=R71BNfOrhz5/b8bg5pf3YfPrA1RBAU+1H0KlQILY9Nl352EpSoCF6/5P
 9osvXKRionwkTCQFqp7kU9hSjKxBbMokk0NRRStJ/N9Z+tn38Ozu4ZFcC
 XFqKIfnEDRBLvSC6IBJD2z4aNe2Pe2FfEuHnVA8iK0JA+AP9UlgAlvBdB
 /BG/ZtzIXiWxjdXVqGLmPKnJzIbDrV6uTw7nMYAazV/89IoprkDdZ4B/w
 6d2vyH4ITM5+kVI8dsFlA/WgY/5tGiT+BuaygU3LFdFf68vqlpseE2LCx
 /QIVFzJNNvzXrQXsJSMbnLtyZWrd21oMZC87o8B1RESMSz/LWpzyncVhk A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="294579392"
X-IronPort-AV: E=Sophos;i="5.93,258,1654585200"; d="scan'208";a="294579392"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 13:42:00 -0700
X-IronPort-AV: E=Sophos;i="5.93,258,1654585200"; d="scan'208";a="638815672"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 13:42:00 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Aug 2022 20:41:51 +0000
Message-Id: <20220823204155.8178-16-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
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
index 94f9ddcfb3a5..28ef74f948e2 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1129,6 +1129,7 @@
 #define   GEN12_DISABLE_EARLY_READ		REG_BIT(14)
 #define   GEN12_ENABLE_LARGE_GRF_MODE		REG_BIT(12)
 #define   GEN12_PUSH_CONST_DEREF_HOLD_DIS	REG_BIT(8)
+#define   GEN12_DISABLE_DOP_GATING              REG_BIT(0)
 
 #define RT_CTRL					_MMIO(0xe530)
 #define   DIS_NULL_QUERY			REG_BIT(10)
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index a858ce57e465..efdd16edf8f3 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -2847,6 +2847,18 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
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
@@ -2925,6 +2937,17 @@ static void gen12_disable_metric_set(struct i915_perf_stream *stream)
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

