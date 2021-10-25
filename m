Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C14438E69
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Oct 2021 06:35:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D9B189D7D;
	Mon, 25 Oct 2021 04:35:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C97BC89D7D
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Oct 2021 04:35:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10147"; a="228325886"
X-IronPort-AV: E=Sophos;i="5.87,179,1631602800"; d="scan'208";a="228325886"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2021 21:35:54 -0700
X-IronPort-AV: E=Sophos;i="5.87,179,1631602800"; d="scan'208";a="536335288"
Received: from cooperch-ml.itwn.intel.com ([10.5.230.142])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2021 21:35:51 -0700
From: Cooper Chiou <cooper.chiou@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Cooper Chiou <cooper.chiou@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Jani Nikula <jani.nikula@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 William Tseng <william.tseng@intel.com>,
 Shawn C Lee <shawn.c.lee@intel.com>, Pawel Wilma <pawel.wilma@intel.com>
Date: Mon, 25 Oct 2021 12:26:23 +0800
Message-Id: <20211025042623.3876-1-cooper.chiou@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20200916180745.627-1-cooper.chiou@intel.com>
References: <20200916180745.627-1-cooper.chiou@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8] drm/i915: Enable
 WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
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

This implements WaProgramMgsrForCorrectSliceSpecificMmioReads which
was omitted by mistake from Gen9 documentation, while it is actually
applicable to fused off parts.

Workaround consists of making sure MCR packet control register is
programmed to point to enabled slice/subslice pair before doing any
MMIO reads from the affected registers.

Failure do to this can result in complete system hangs when running
certain workloads. Two known cases which can cause system hangs are:

1. "test_basic progvar_prog_scope_uninit" test which is part of
    Khronos OpenCL conformance suite
    (https://github.com/KhronosGroup/OpenCL-CTS) with the Intel
    OpenCL driver (https://github.com/intel/compute-runtime).

2. VP8 media hardware encoding using the full-feature build of the
    Intel media-driver (https://github.com/intel/media-driver) and
    ffmpeg.

For the former case patch was verified to fix the hard system hang
when executing the OCL test on Intel Pentium CPU 6405U which contains
fused off GT1 graphics.

Reference: HSD#1508045018,1405586840, BSID#0575

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: William Tseng <william.tseng@intel.com>
Cc: Shawn C Lee <shawn.c.lee@intel.com>
Cc: Pawel Wilma <pawel.wilma@intel.com>
Signed-off-by: Cooper Chiou <cooper.chiou@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 41 +++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index e1f362530889..8ae24da601b0 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -877,11 +877,52 @@ hsw_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	wa_write_clr(wal, GEN7_FF_THREAD_MODE, GEN7_FF_VS_REF_CNT_FFME);
 }
 
+static void
+gen9_wa_init_mcr(struct drm_i915_private *i915, struct i915_wa_list *wal)
+{
+	const struct sseu_dev_info *sseu = &i915->gt.info.sseu;
+	unsigned int slice, subslice;
+	u32 mcr, mcr_mask;
+
+	GEM_BUG_ON(GRAPHICS_VER(i915) != 9);
+
+	/*
+	 * WaProgramMgsrForCorrectSliceSpecificMmioReads:gen9,glk,kbl,cml
+	 * Before any MMIO read into slice/subslice specific registers, MCR
+	 * packet control register needs to be programmed to point to any
+	 * enabled s/ss pair. Otherwise, incorrect values will be returned.
+	 * This means each subsequent MMIO read will be forwarded to an
+	 * specific s/ss combination, but this is OK since these registers
+	 * are consistent across s/ss in almost all cases. In the rare
+	 * occasions, such as INSTDONE, where this value is dependent
+	 * on s/ss combo, the read should be done with read_subslice_reg.
+	 */
+	slice = ffs(sseu->slice_mask) - 1;
+	GEM_BUG_ON(slice >= ARRAY_SIZE(sseu->subslice_mask));
+	subslice = ffs(intel_sseu_get_subslices(sseu, slice));
+	GEM_BUG_ON(!subslice);
+	subslice--;
+
+	/*
+	 * We use GEN8_MCR..() macros to calculate the |mcr| value for
+	 * Gen9 to address WaProgramMgsrForCorrectSliceSpecificMmioReads
+	 */
+	mcr = GEN8_MCR_SLICE(slice) | GEN8_MCR_SUBSLICE(subslice);
+	mcr_mask = GEN8_MCR_SLICE_MASK | GEN8_MCR_SUBSLICE_MASK;
+
+	drm_dbg(&i915->drm, "MCR slice:%d/subslice:%d = %x\n", slice, subslice, mcr);
+
+	wa_write_clr_set(wal, GEN8_MCR_SELECTOR, mcr_mask, mcr);
+}
+
 static void
 gen9_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 {
 	struct drm_i915_private *i915 = gt->i915;
 
+	/* WaProgramMgsrForCorrectSliceSpecificMmioReads:glk,kbl,cml,gen9 */
+	gen9_wa_init_mcr(i915, wal);
+
 	/* WaDisableKillLogic:bxt,skl,kbl */
 	if (!IS_COFFEELAKE(i915) && !IS_COMETLAKE(i915))
 		wa_write_or(wal,
-- 
2.33.1

