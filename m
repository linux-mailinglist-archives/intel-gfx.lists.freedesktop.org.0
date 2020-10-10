Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9AD7289CAD
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Oct 2020 02:21:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EE616EE62;
	Sat, 10 Oct 2020 00:21:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36DDD6EE5C
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Oct 2020 00:21:10 +0000 (UTC)
IronPort-SDR: EBbWfATZmaex7VBRt//vlIFpp0Pr7pHcAeH65ArLbz2+6xwb13aICKi1Bd7V8Y/tnuMF1cEhdP
 kRXlFStV2O3w==
X-IronPort-AV: E=McAfee;i="6000,8403,9769"; a="229734811"
X-IronPort-AV: E=Sophos;i="5.77,356,1596524400"; d="scan'208";a="229734811"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 17:21:09 -0700
IronPort-SDR: XsjVKlh249UyOr2q5CJRh1V3/CqPm+jUtmq9k+jX12IWG6oWQ3hC2Ia5usvwZAacXz81OvCdcy
 nkHm3D5cq3Iw==
X-IronPort-AV: E=Sophos;i="5.77,357,1596524400"; d="scan'208";a="529130973"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 17:21:08 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Oct 2020 17:21:00 -0700
Message-Id: <20201010002105.45152-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201010002105.45152-1-umesh.nerlige.ramappa@intel.com>
References: <20201010002105.45152-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/6] drm/i915/perf: Ensure observation logic is
 not clock gated
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
Cc: Chris Wilson <chris.p.wilson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Piotr Maciejewski <piotr.maciejewski@intel.com>

A clock gating switch can control if the performance monitoring and
observation logic is enaled or not. Ensure that we enable the clocks.

v2: Separate code from other patches (Lionel)
v3: Reset PMON enable when disabling perf to save power (Lionel)
v4: Use intel_uncore_rmw and REG_BIT (Chris)

Fixes: 00a7f0d7155c ("drm/i915/tgl: Add perf support on TGL")
Signed-off-by: Piotr Maciejewski <piotr.maciejewski@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 9 +++++++++
 drivers/gpu/drm/i915/i915_reg.h  | 2 ++
 2 files changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index e94976976571..df5166d89d82 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -2520,6 +2520,12 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
 			    (period_exponent << GEN12_OAG_OAGLBCTXCTRL_TIMER_PERIOD_SHIFT))
 			    : 0);
 
+	/*
+	 * Initialize Super Queue Internal Cnt Register
+	 * Set PMON Enable in order to collect valid metrics.
+	 */
+	intel_uncore_rmw(uncore, GEN12_SQCNT1, 0, GEN12_SQCNT1_PMON_ENABLE);
+
 	/*
 	 * Update all contexts prior writing the mux configurations as we need
 	 * to make sure all slices/subslices are ON before writing to NOA
@@ -2579,6 +2585,9 @@ static void gen12_disable_metric_set(struct i915_perf_stream *stream)
 
 	/* Make sure we disable noa to save power. */
 	intel_uncore_rmw(uncore, RPM_CONFIG1, GEN10_GT_NOA_ENABLE, 0);
+
+	/* Reset PMON Enable to save power. */
+	intel_uncore_rmw(uncore, GEN12_SQCNT1, GEN12_SQCNT1_PMON_ENABLE, 0);
 }
 
 static void gen7_oa_enable(struct i915_perf_stream *stream)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 6ad9ee4243a0..558df3838069 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -696,6 +696,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define OABUFFER_SIZE_16M   (7 << 3)
 
 #define GEN12_OA_TLB_INV_CR _MMIO(0xceec)
+#define GEN12_SQCNT1 _MMIO(0x8718)
+#define  GEN12_SQCNT1_PMON_ENABLE REG_BIT(30)
 
 /* Gen12 OAR unit */
 #define GEN12_OAR_OACONTROL _MMIO(0x2960)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
