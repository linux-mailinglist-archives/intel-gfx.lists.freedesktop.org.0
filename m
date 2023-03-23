Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 351EE6C73F9
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 00:19:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27ED610E197;
	Thu, 23 Mar 2023 23:19:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1D7010E197
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 23:19:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679613577; x=1711149577;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=skut+ituEgFMiAGPkhf08xK7zmjqLbYbPFrzr9i5c48=;
 b=WG1oUP12UexvEd3pMdAWRPIueKZYQyfuYpa4qCksFGUSBaRWOjn6SrWz
 7dJVAoNmnCJNgvdgJpz1bNk+ZM+IYW4vFbZaMRyGb7r6VxeX325JOTxTf
 JLGKsobc0pYAXlKV37SGEv17VTos4IO4hZA9DCYHDvMDzDVP7yUMYMTZm
 88UrZCPjgj/3ySruWSQTBpsq44D0B0cd8bkIS3AimqqytSeXfs6gmi2/m
 jQHMJBHEOn6zfozb9K1C8Jsumxzr0HOCW3OM9w+fmoETnsH6eO3ZPZ/qH
 q/L3J/MOrffa3CnH7bMeeCpOWDFQNfnqRRS0Qmy+5VTyY2irjch5oCxhX w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="402232328"
X-IronPort-AV: E=Sophos;i="5.98,286,1673942400"; d="scan'208";a="402232328"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 16:19:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="715011521"
X-IronPort-AV: E=Sophos;i="5.98,286,1673942400"; d="scan'208";a="715011521"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 16:19:28 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 16:18:57 -0700
Message-Id: <20230323231857.2194435-2-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230323231857.2194435-1-daniele.ceraolospurio@intel.com>
References: <20230323231857.2194435-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 2/2] drm/i915/gsc: implement wa 14015076503
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

The WA states that we need to alert the GSC FW before doing a GSC engine
reset and then wait for 200ms. The GuC owns engine reset, so on the i915
side we only need to apply this for full GT reset.

Given that we do full GT resets in the resume paths to cleanup the HW
state and that a long wait in those scenarios would not be acceptable,
a faster path has been introduced where, if the GSC is idle, we try first
to individually reset the GuC and all engines except the GSC and only fall
back to full reset if that fails.

Note: according to the WA specs, if the GSC is idle it should be possible
to only wait for the uC wakeup time (~15ms) instead of the whole 200ms.
However, the GSC FW team have mentioned that the wakeup time can change
based on other things going on in the HW and pcode, so a good security
margin would be required. Given that when the GSC is idle we already
skip the wait & reset entirely and that this reduced wait would still
likely be too long to use in resume paths, it's not worth adding support
for this reduced wait.

v2: add comment to explain why it is safe to skip the GSC reset (John)

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: John Harrison <john.c.harrison@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/intel_reset.c     | 84 +++++++++++++++++++++--
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h |  2 +
 drivers/gpu/drm/i915/i915_reg.h           | 14 +++-
 3 files changed, 93 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 2c3463f77e5c..797ea8340467 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -14,6 +14,8 @@
 
 #include "gt/intel_gt_regs.h"
 
+#include "gt/uc/intel_gsc_fw.h"
+
 #include "i915_drv.h"
 #include "i915_file_private.h"
 #include "i915_gpu_error.h"
@@ -695,6 +697,74 @@ static reset_func intel_get_gpu_reset(const struct intel_gt *gt)
 		return NULL;
 }
 
+static int __reset_guc(struct intel_gt *gt)
+{
+	u32 guc_domain =
+		GRAPHICS_VER(gt->i915) >= 11 ? GEN11_GRDOM_GUC : GEN9_GRDOM_GUC;
+
+	return gen6_hw_domain_reset(gt, guc_domain);
+}
+
+static bool needs_wa_14015076503(struct intel_gt *gt, intel_engine_mask_t engine_mask)
+{
+	if (!IS_METEORLAKE(gt->i915) || !HAS_ENGINE(gt, GSC0))
+		return false;
+
+	if (!__HAS_ENGINE(engine_mask, GSC0))
+		return false;
+
+	return intel_gsc_uc_fw_init_done(&gt->uc.gsc);
+}
+
+static intel_engine_mask_t
+wa_14015076503_start(struct intel_gt *gt, intel_engine_mask_t engine_mask, bool first)
+{
+	if (!needs_wa_14015076503(gt, engine_mask))
+		return engine_mask;
+
+	/*
+	 * wa_14015076503: if the GSC FW is loaded, we need to alert it that
+	 * we're going to do a GSC engine reset and then wait for 200ms for the
+	 * FW to get ready for it. However, if this is the first ALL_ENGINES
+	 * reset attempt and the GSC is not busy, we can try to instead reset
+	 * the GuC and all the other engines individually to avoid the 200ms
+	 * wait.
+	 * Skipping the GSC engine is safe because, differently from other
+	 * engines, the GSCCS only role is to forward the commands to the GSC
+	 * FW, so it doesn't have any HW outside of the CS itself and therefore
+	 * it has no state that we don't explicitly re-init on resume or on
+	 * context switch LRC or power context). The HW for the GSC uC is
+	 * managed by the GSC FW so we don't need to care about that.
+	 */
+	if (engine_mask == ALL_ENGINES && first && intel_engine_is_idle(gt->engine[GSC0])) {
+		__reset_guc(gt);
+		engine_mask = gt->info.engine_mask & ~BIT(GSC0);
+	} else {
+		intel_uncore_rmw(gt->uncore,
+				 HECI_H_GS1(MTL_GSC_HECI2_BASE),
+				 0, HECI_H_GS1_ER_PREP);
+
+		/* make sure the reset bit is clear when writing the CSR reg */
+		intel_uncore_rmw(gt->uncore,
+				 HECI_H_CSR(MTL_GSC_HECI2_BASE),
+				 HECI_H_CSR_RST, HECI_H_CSR_IG);
+		msleep(200);
+	}
+
+	return engine_mask;
+}
+
+static void
+wa_14015076503_end(struct intel_gt *gt, intel_engine_mask_t engine_mask)
+{
+	if (!needs_wa_14015076503(gt, engine_mask))
+		return;
+
+	intel_uncore_rmw(gt->uncore,
+			 HECI_H_GS1(MTL_GSC_HECI2_BASE),
+			 HECI_H_GS1_ER_PREP, 0);
+}
+
 int __intel_gt_reset(struct intel_gt *gt, intel_engine_mask_t engine_mask)
 {
 	const int retries = engine_mask == ALL_ENGINES ? RESET_MAX_RETRIES : 1;
@@ -712,10 +782,16 @@ int __intel_gt_reset(struct intel_gt *gt, intel_engine_mask_t engine_mask)
 	 */
 	intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_ALL);
 	for (retry = 0; ret == -ETIMEDOUT && retry < retries; retry++) {
-		GT_TRACE(gt, "engine_mask=%x\n", engine_mask);
+		intel_engine_mask_t reset_mask;
+
+		reset_mask = wa_14015076503_start(gt, engine_mask, !retry);
+
+		GT_TRACE(gt, "engine_mask=%x\n", reset_mask);
 		preempt_disable();
-		ret = reset(gt, engine_mask, retry);
+		ret = reset(gt, reset_mask, retry);
 		preempt_enable();
+
+		wa_14015076503_end(gt, reset_mask);
 	}
 	intel_uncore_forcewake_put(gt->uncore, FORCEWAKE_ALL);
 
@@ -740,14 +816,12 @@ bool intel_has_reset_engine(const struct intel_gt *gt)
 
 int intel_reset_guc(struct intel_gt *gt)
 {
-	u32 guc_domain =
-		GRAPHICS_VER(gt->i915) >= 11 ? GEN11_GRDOM_GUC : GEN9_GRDOM_GUC;
 	int ret;
 
 	GEM_BUG_ON(!HAS_GT_UC(gt->i915));
 
 	intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_ALL);
-	ret = gen6_hw_domain_reset(gt, guc_domain);
+	ret = __reset_guc(gt);
 	intel_uncore_forcewake_put(gt->uncore, FORCEWAKE_ALL);
 
 	return ret;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h
index 4b5dbb44afb4..f4c1106bb2a9 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h
@@ -9,7 +9,9 @@
 #include <linux/types.h>
 
 struct intel_gsc_uc;
+struct intel_uncore;
 
 int intel_gsc_uc_fw_upload(struct intel_gsc_uc *gsc);
 bool intel_gsc_uc_fw_init_done(struct intel_gsc_uc *gsc);
+
 #endif
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d22ffd7a32dc..8dac20b0e7a7 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -928,8 +928,18 @@
 #define DG1_GSC_HECI2_BASE	0x00259000
 #define DG2_GSC_HECI1_BASE	0x00373000
 #define DG2_GSC_HECI2_BASE	0x00374000
-
-
+#define MTL_GSC_HECI1_BASE	0x00116000
+#define MTL_GSC_HECI2_BASE	0x00117000
+
+#define HECI_H_CSR(base)	_MMIO((base) + 0x4)
+#define   HECI_H_CSR_IE		REG_BIT(0)
+#define   HECI_H_CSR_IS		REG_BIT(1)
+#define   HECI_H_CSR_IG		REG_BIT(2)
+#define   HECI_H_CSR_RDY	REG_BIT(3)
+#define   HECI_H_CSR_RST	REG_BIT(4)
+
+#define HECI_H_GS1(base)	_MMIO((base) + 0xc4c)
+#define   HECI_H_GS1_ER_PREP	REG_BIT(0)
 
 #define HSW_GTT_CACHE_EN	_MMIO(0x4024)
 #define   GTT_CACHE_EN_ALL	0xF0007FFF
-- 
2.37.3

