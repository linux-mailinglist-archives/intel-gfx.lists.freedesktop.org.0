Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A10285F179D
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Oct 2022 02:47:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A0BE10EE0E;
	Sat,  1 Oct 2022 00:46:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1CEF10EDF6;
 Sat,  1 Oct 2022 00:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664585184; x=1696121184;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zW3e7StAu0gehtFTpQqfKu++AyXoea1TtiGzkFdY0VA=;
 b=Q7Xs6OEocH1dMrekX9dsYABh7nLVF53KCRYHp+Z6PbxqDhoXIMJPzomu
 /kfeUzT8hOAZw4k6FBJztxFD8YWYhJKyRJoBNLsqaebtS4HsjuR34fzAa
 YH/76TvUfUXXGoREGA8esndmRRHY2sB2lPiSME7TMk2x++6k69gkOWKyw
 vbFprhatc55bD3q+Uzq+hKzaAYmXcTS8mvlFsvZ21FIBlsU2xD2L6NlhQ
 qNC/GJ3SzdJCiQVFXxs1G12QLe/9/azbLcILRawOz98vBpb9A9079Tat/
 J5pcW8YpisIFMv9FRAmZH8kKfgCLceRF3I+1MOttlFmhGg2c7RCDX/ybp w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="388607938"
X-IronPort-AV: E=Sophos;i="5.93,359,1654585200"; d="scan'208";a="388607938"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 17:46:12 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="685477640"
X-IronPort-AV: E=Sophos;i="5.93,359,1654585200"; d="scan'208";a="685477640"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 17:46:09 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Sep 2022 17:45:46 -0700
Message-Id: <20221001004550.3031431-11-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221001004550.3031431-1-matthew.d.roper@intel.com>
References: <20221001004550.3031431-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 10/14] drm/i915/guc: Handle save/restore of
 MCR registers explicitly
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
Cc: ravi.kumar.vodapalli@intel.com, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

MCR registers can be placed on the GuC's save/restore list, but at the
moment they are always handled in a multicast manner (i.e., the GuC
reads one instance to save the value and then does a multicast write to
restore that single value to all instances).  In the future the GuC will
probably give us an alternate interface to do unicast per-instance
save/restore operations, so we should be very clear about which
registers on the list are MCR registers (and in the future which
save/restore behavior we want for them).

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 55 +++++++++++++---------
 1 file changed, 34 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index cc357fa0c270..de923fb82301 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -278,24 +278,16 @@ __mmio_reg_add(struct temp_regset *regset, struct guc_mmio_reg *reg)
 	return slot;
 }
 
-#define GUC_REGSET_STEERING(group, instance) ( \
-	FIELD_PREP(GUC_REGSET_STEERING_GROUP, (group)) | \
-	FIELD_PREP(GUC_REGSET_STEERING_INSTANCE, (instance)) | \
-	GUC_REGSET_NEEDS_STEERING \
-)
-
 static long __must_check guc_mmio_reg_add(struct intel_gt *gt,
 					  struct temp_regset *regset,
-					  i915_reg_t reg, u32 flags)
+					  u32 offset, u32 flags)
 {
 	u32 count = regset->storage_used - (regset->registers - regset->storage);
-	u32 offset = i915_mmio_reg_offset(reg);
 	struct guc_mmio_reg entry = {
 		.offset = offset,
 		.flags = flags,
 	};
 	struct guc_mmio_reg *slot;
-	u8 group, inst;
 
 	/*
 	 * The mmio list is built using separate lists within the driver.
@@ -307,17 +299,6 @@ static long __must_check guc_mmio_reg_add(struct intel_gt *gt,
 		    sizeof(entry), guc_mmio_reg_cmp))
 		return 0;
 
-	/*
-	 * The GuC doesn't have a default steering, so we need to explicitly
-	 * steer all registers that need steering. However, we do not keep track
-	 * of all the steering ranges, only of those that have a chance of using
-	 * a non-default steering from the i915 pov. Instead of adding such
-	 * tracking, it is easier to just program the default steering for all
-	 * regs that don't need a non-default one.
-	 */
-	intel_gt_mcr_get_nonterminated_steering(gt, reg, &group, &inst);
-	entry.flags |= GUC_REGSET_STEERING(group, inst);
-
 	slot = __mmio_reg_add(regset, &entry);
 	if (IS_ERR(slot))
 		return PTR_ERR(slot);
@@ -335,6 +316,38 @@ static long __must_check guc_mmio_reg_add(struct intel_gt *gt,
 
 #define GUC_MMIO_REG_ADD(gt, regset, reg, masked) \
 	guc_mmio_reg_add(gt, \
+			 regset, \
+			 i915_mmio_reg_offset(reg), \
+			 (masked) ? GUC_REGSET_MASKED : 0)
+
+#define GUC_REGSET_STEERING(group, instance) ( \
+	FIELD_PREP(GUC_REGSET_STEERING_GROUP, (group)) | \
+	FIELD_PREP(GUC_REGSET_STEERING_INSTANCE, (instance)) | \
+	GUC_REGSET_NEEDS_STEERING \
+)
+
+static long __must_check guc_mcr_reg_add(struct intel_gt *gt,
+					 struct temp_regset *regset,
+					 i915_reg_t reg, u32 flags)
+{
+	u8 group, inst;
+
+	/*
+	 * The GuC doesn't have a default steering, so we need to explicitly
+	 * steer all registers that need steering. However, we do not keep track
+	 * of all the steering ranges, only of those that have a chance of using
+	 * a non-default steering from the i915 pov. Instead of adding such
+	 * tracking, it is easier to just program the default steering for all
+	 * regs that don't need a non-default one.
+	 */
+	intel_gt_mcr_get_nonterminated_steering(gt, reg, &group, &inst);
+	flags |= GUC_REGSET_STEERING(group, inst);
+
+	return guc_mmio_reg_add(gt, regset, i915_mmio_reg_offset(reg), flags);
+}
+
+#define GUC_MCR_REG_ADD(gt, regset, reg, masked) \
+	guc_mcr_reg_add(gt, \
 			 regset, \
 			 (reg), \
 			 (masked) ? GUC_REGSET_MASKED : 0)
@@ -375,7 +388,7 @@ static int guc_mmio_regset_init(struct temp_regset *regset,
 	/* add in local MOCS registers */
 	for (i = 0; i < LNCFCMOCS_REG_COUNT; i++)
 		if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 50))
-			ret |= GUC_MMIO_REG_ADD(gt, regset, XEHP_LNCFCMOCS(i), false);
+			ret |= GUC_MCR_REG_ADD(gt, regset, XEHP_LNCFCMOCS(i), false);
 		else
 			ret |= GUC_MMIO_REG_ADD(gt, regset, GEN9_LNCFCMOCS(i), false);
 
-- 
2.37.3

