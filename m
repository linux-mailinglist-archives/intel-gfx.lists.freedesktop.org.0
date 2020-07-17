Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 366832230E9
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 03:57:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA7BA6E320;
	Fri, 17 Jul 2020 01:57:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9B556E31C
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 01:57:17 +0000 (UTC)
IronPort-SDR: GctIN5+uj3v8Ck2ZurX3wLBm/VdZdx2GZmQrnaT5WVO4HL1OpYL+ciVK3SXp97IDP6bis/VuL4
 8jVRUKMnsVCg==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="211063476"
X-IronPort-AV: E=Sophos;i="5.75,361,1589266800"; d="scan'208";a="211063476"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 18:57:17 -0700
IronPort-SDR: H9zuFj0eVwejhJnSL5aMGGDcg5Sm0qTU4PdfdfuLeH1/E95XbSV6hZHXPyXBEZltuxNZaRp/OW
 Izzs3MS86IeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,361,1589266800"; d="scan'208";a="269413414"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by fmsmga007.fm.intel.com with ESMTP; 16 Jul 2020 18:57:16 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 18:57:14 -0700
Message-Id: <20200717015716.37671-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/perf: Whitelist OA report trigger
 registers
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Piotr Maciejewski <piotr.maciejewski@intel.com>

OA reports can be triggered into the OA buffer by writing into the
OAREPORTTRIG registers. Whitelist the registers to allow user to trigger
reports.

Signed-off-by: Piotr Maciejewski <piotr.maciejewski@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 26 +++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 5726cd0a37e0..582a2c8cd219 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1365,6 +1365,20 @@ whitelist_reg(struct i915_wa_list *wal, i915_reg_t reg)
 	whitelist_reg_ext(wal, reg, RING_FORCE_TO_NONPRIV_ACCESS_RW);
 }
 
+static void gen9_whitelist_build_performance_counters(struct i915_wa_list *w)
+{
+	/* OA buffer trigger report 2/6 used by performance query */
+	whitelist_reg(w, OAREPORTTRIG2);
+	whitelist_reg(w, OAREPORTTRIG6);
+}
+
+static void gen12_whitelist_build_performance_counters(struct i915_wa_list *w)
+{
+	/* OA buffer trigger report 2/6 used by performance query */
+	whitelist_reg(w, GEN12_OAG_OAREPORTTRIG2);
+	whitelist_reg(w, GEN12_OAG_OAREPORTTRIG6);
+}
+
 static void gen9_whitelist_build(struct i915_wa_list *w)
 {
 	/* WaVFEStateAfterPipeControlwithMediaStateClear:skl,bxt,glk,cfl */
@@ -1378,6 +1392,9 @@ static void gen9_whitelist_build(struct i915_wa_list *w)
 
 	/* WaSendPushConstantsFromMMIO:skl,bxt */
 	whitelist_reg(w, COMMON_SLICE_CHICKEN2);
+
+	/* Performance counters support */
+	gen9_whitelist_build_performance_counters(w);
 }
 
 static void skl_whitelist_build(struct intel_engine_cs *engine)
@@ -1471,6 +1488,9 @@ static void cnl_whitelist_build(struct intel_engine_cs *engine)
 
 	/* WaEnablePreemptionGranularityControlByUMD:cnl */
 	whitelist_reg(w, GEN8_CS_CHICKEN1);
+
+	/* Performance counters support */
+	gen9_whitelist_build_performance_counters(w);
 }
 
 static void icl_whitelist_build(struct intel_engine_cs *engine)
@@ -1500,6 +1520,9 @@ static void icl_whitelist_build(struct intel_engine_cs *engine)
 		whitelist_reg_ext(w, PS_INVOCATION_COUNT,
 				  RING_FORCE_TO_NONPRIV_ACCESS_RD |
 				  RING_FORCE_TO_NONPRIV_RANGE_4);
+
+		/* Performance counters support */
+		gen9_whitelist_build_performance_counters(w);
 		break;
 
 	case VIDEO_DECODE_CLASS:
@@ -1550,6 +1573,9 @@ static void tgl_whitelist_build(struct intel_engine_cs *engine)
 
 		/* Wa_1806527549:tgl */
 		whitelist_reg(w, HIZ_CHICKEN);
+
+		/* Performance counters support */
+		gen12_whitelist_build_performance_counters(w);
 		break;
 	default:
 		whitelist_reg_ext(w,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
