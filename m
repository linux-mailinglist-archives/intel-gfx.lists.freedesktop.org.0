Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 155E0436A48
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 20:13:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 549C96ECD8;
	Thu, 21 Oct 2021 18:13:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00C026ECD8
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Oct 2021 18:13:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10144"; a="226564699"
X-IronPort-AV: E=Sophos;i="5.87,170,1631602800"; d="scan'208";a="226564699"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 11:13:50 -0700
X-IronPort-AV: E=Sophos;i="5.87,170,1631602800"; d="scan'208";a="662818124"
Received: from cooperch-ml.itwn.intel.com ([10.5.230.142])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 11:13:48 -0700
From: Cooper Chiou <cooper.chiou@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Cooper Chiou <cooper.chiou@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Jani Nikula <jani.nikula@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 William Tseng <william.tseng@intel.com>,
 Shawn C Lee <shawn.c.lee@intel.com>, Pawel Wilma <pawel.wilma@intel.com>
Date: Fri, 22 Oct 2021 02:05:57 +0800
Message-Id: <20211021180557.6188-1-cooper.chiou@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20200916180745.627-1-cooper.chiou@intel.com>
References: <20200916180745.627-1-cooper.chiou@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6] drm/i915: Enable
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

WaProgramMgsrForCorrectSliceSpecificMmioReads applies for Gen9 to
resolve VP8 hardware encoding system hang up on GT1 sku for
ChromiumOS projects. This system hang issue can be reproduced on
Khronos OpenCL conformance tests by test_basic as well, and issue
can be resolved by this patch on Linux.

Slice specific MMIO read inaccurate so MGSR needs to be programmed
appropriately to get correct reads from these slicet-related MMIOs.

It dictates that before any MMIO read into Slice/Subslice specific
registers, MCR packet control register(0xFDC) needs to be programmed
to point to any enabled slice/subslice pair, especially GT1 fused sku
since this issue can be reproduced on VP8 hardware encoding via ffmpeg
on ChromiumOS devices.
When exit PC7, MGSR will reset so that we have to skip fused subslice ID.

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
index aae609d7d85d..221b59ee348b 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -802,9 +802,50 @@ hsw_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
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
+	 * WaProgramMgsrForCorrectSliceSpecificMmioReads:glk,kbl,cml
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
 gen9_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 {
+	/* WaProgramMgsrForCorrectSliceSpecificMmioReads:glk,kbl,cml,gen9 */
+	gen9_wa_init_mcr(i915, wal);
+
 	/* WaDisableKillLogic:bxt,skl,kbl */
 	if (!IS_COFFEELAKE(i915) && !IS_COMETLAKE(i915))
 		wa_write_or(wal,
-- 
2.33.1

