Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FBA17EAE1
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 22:11:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 017E08808E;
	Mon,  9 Mar 2020 21:11:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ED4D6E4BA
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 21:10:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 14:10:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,534,1574150400"; d="scan'208";a="231071410"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga007.jf.intel.com with ESMTP; 09 Mar 2020 14:10:57 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>, intel-gfx@lists.freedesktop.org
Date: Mon,  9 Mar 2020 14:10:57 -0700
Message-Id: <20200309211057.38575-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/perf: Invalidate OA TLB on when
 closing perf stream
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

On running several back to back perf capture sessions involving closing
and opening the perf stream, invalid OA reports are seen in the
beginning of the OA buffer in some sessions. Fix this by invalidating OA
TLB when the perf stream is closed or disabled on gen12.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 8 ++++++++
 drivers/gpu/drm/i915/i915_reg.h  | 2 ++
 2 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 1b074bb4a7fe..551be589d6f4 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -2700,6 +2700,14 @@ static void gen12_oa_disable(struct i915_perf_stream *stream)
 				    50))
 		drm_err(&stream->perf->i915->drm,
 			"wait for OA to be disabled timed out\n");
+
+	intel_uncore_write(uncore, GEN12_OA_TLB_INV_CR, 1);
+	if (intel_wait_for_register(uncore,
+				    GEN12_OA_TLB_INV_CR,
+				    1, 0,
+				    50))
+		drm_err(&stream->perf->i915->drm,
+			"wait for OA tlb invalidate timed out\n");
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 79ae9654dac9..95725e61d9f1 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -693,6 +693,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define OABUFFER_SIZE_8M    (6 << 3)
 #define OABUFFER_SIZE_16M   (7 << 3)
 
+#define GEN12_OA_TLB_INV_CR _MMIO(0xceec)
+
 /* Gen12 OAR unit */
 #define GEN12_OAR_OACONTROL _MMIO(0x2960)
 #define  GEN12_OAR_OACONTROL_COUNTER_FORMAT_SHIFT 1
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
