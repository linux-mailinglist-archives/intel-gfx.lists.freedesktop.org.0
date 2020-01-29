Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5E114D03C
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 19:16:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 801F86F61E;
	Wed, 29 Jan 2020 18:16:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C7726F61E
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 18:16:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 10:16:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,378,1574150400"; d="scan'208";a="402067312"
Received: from cblaim-mobl.ger.corp.intel.com (HELO delly.ger.corp.intel.com)
 ([10.252.51.159])
 by orsmga005.jf.intel.com with ESMTP; 29 Jan 2020 10:16:40 -0800
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jan 2020 20:16:38 +0200
Message-Id: <20200129181638.1528150-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: add extra slice common debug registers
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

Could be helpful for debugging purposes.

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 6 ++++++
 drivers/gpu/drm/i915/gt/intel_engine_types.h | 1 +
 drivers/gpu/drm/i915/i915_gpu_error.c        | 8 ++++++++
 drivers/gpu/drm/i915/i915_reg.h              | 2 ++
 4 files changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index f451ef376548..a3089872cda9 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -981,6 +981,12 @@ void intel_engine_get_instdone(const struct intel_engine_cs *engine,
 
 		instdone->slice_common =
 			intel_uncore_read(uncore, GEN7_SC_INSTDONE);
+		if (INTEL_GEN(i915) >= 12) {
+			instdone->slice_common_extra[0] =
+				intel_uncore_read(uncore, GEN12_SC_INSTDONE_EXTRA);
+			instdone->slice_common_extra[1] =
+				intel_uncore_read(uncore, GEN12_SC_INSTDONE_EXTRA2);
+		}
 		for_each_instdone_slice_subslice(i915, sseu, slice, subslice) {
 			instdone->sampler[slice][subslice] =
 				read_subslice_reg(engine, slice, subslice,
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 00287515e7af..3b7e00ba72a0 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -75,6 +75,7 @@ struct intel_instdone {
 	u32 instdone;
 	/* The following exist only in the RCS engine */
 	u32 slice_common;
+	u32 slice_common_extra[2];
 	u32 sampler[I915_MAX_SLICES][I915_MAX_SUBSLICES];
 	u32 row[I915_MAX_SLICES][I915_MAX_SUBSLICES];
 };
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 4c1836f0a991..2c631799f5e6 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -450,6 +450,14 @@ static void error_print_instdone(struct drm_i915_error_state_buf *m,
 		err_printf(m, "  ROW_INSTDONE[%d][%d]: 0x%08x\n",
 			   slice, subslice,
 			   ee->instdone.row[slice][subslice]);
+
+	if (INTEL_GEN(m->i915) < 12)
+		return;
+
+	err_printf(m, "  SC_INSTDONE_EXTRA: 0x%08x\n",
+		   ee->instdone.slice_common_extra[0]);
+	err_printf(m, "  SC_INSTDONE_EXTRA2: 0x%08x\n",
+		   ee->instdone.slice_common_extra[1]);
 }
 
 static void error_print_request(struct drm_i915_error_state_buf *m,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 6cc55c103f67..5fc251ba8915 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2626,6 +2626,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define IPEIR_I965	_MMIO(0x2064)
 #define IPEHR_I965	_MMIO(0x2068)
 #define GEN7_SC_INSTDONE	_MMIO(0x7100)
+#define GEN12_SC_INSTDONE_EXTRA		_MMIO(0x7104)
+#define GEN12_SC_INSTDONE_EXTRA2	_MMIO(0x7108)
 #define GEN7_SAMPLER_INSTDONE	_MMIO(0xe160)
 #define GEN7_ROW_INSTDONE	_MMIO(0xe164)
 #define GEN8_MCR_SELECTOR		_MMIO(0xfdc)
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
