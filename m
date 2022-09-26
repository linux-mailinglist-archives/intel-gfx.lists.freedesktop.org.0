Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B35865E9C56
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 10:46:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F18A510E281;
	Mon, 26 Sep 2022 08:46:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9A7910E281
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 08:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664181967; x=1695717967;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Y+FtggzBn+w4BnzCVG5LOw7XJIQcZTCKvxLYlDsbOh4=;
 b=d2qxn6nC5IVMM4LFNE8NOkOpqtXN9h367x2XhrIUHnVnRXfojwIYcOa8
 NG0+M8Kc5ZFhEtoDEn/btb98swg8uPbTNEO0v4LkqezOT68c48eTuUPX7
 5yz8i2ZqnrtCVLPsGNqcfadoPpRCTM4H/tNqdvXxeXevjj5mEJq17ycKH
 9l9rePqzG/6OcraZ2eLCn1tGjbidOQUyTkbu9aYbRYZce6RAL4hqfkUL5
 UyVEZMphG+wRKPDXwOEFAuCnC7ozI4FPvjSWWCtSR2ZLXwkbA7zbX6rJp
 w7TFOM60k9s9GrUKaCx6EfiIzCfepK0YHA0MWzvePr5Q5Ez63V5VuC0wW w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10481"; a="299699730"
X-IronPort-AV: E=Sophos;i="5.93,345,1654585200"; d="scan'208";a="299699730"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 01:46:07 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10481"; a="796251284"
X-IronPort-AV: E=Sophos;i="5.93,345,1654585200"; d="scan'208";a="796251284"
Received: from anshuma1-desk.iind.intel.com ([10.190.239.112])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 01:46:04 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Sep 2022 14:15:51 +0530
Message-Id: <20220926084551.231080-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/rc6: GTC6_RESIDENCY_{LSB,
 MSB} Residency counter support
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

Adding support in drpc show debugfs to print the GT RPM Unit RC6
residency. This GTC6_RESIDENCY_{LSB, MSB} will only increment when
GT will be RC6. Therefore these register will get reset at RC6
exit and will start incrementing on next RC6 entry.

BSpec: 64977
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |  5 +++++
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |  5 +++++
 drivers/gpu/drm/i915/gt/intel_rc6.c           | 19 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_rc6.h           |  1 +
 4 files changed, 30 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index 10f680dbd7b62..59b6cc49464e9 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -195,6 +195,11 @@ static int gen6_drpc(struct seq_file *m)
 	print_rc6_res(m, "RC6 \"Locked to RPn\" residency since boot:",
 		      GEN6_GT_GFX_RC6_LOCKED);
 	print_rc6_res(m, "RC6 residency since boot:", GEN6_GT_GFX_RC6);
+
+	if (GRAPHICS_VER(i915) >= 12)
+		seq_printf(m, "GT RC6 RPM Unit Residency since last RC6 exit: 0x%llx\n",
+			   intel_rc6_rpm_unit_residency(&gt->rc6));
+
 	print_rc6_res(m, "RC6+ residency since boot:", GEN6_GT_GFX_RC6p);
 	print_rc6_res(m, "RC6++ residency since boot:", GEN6_GT_GFX_RC6pp);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 7f79bbf978284..7715d0aeffc9d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -8,6 +8,11 @@
 
 #include "i915_reg_defs.h"
 
+/* GT RPM RC6 counter */
+#define GEN12_GT_GFX_RC6_LSB			_MMIO(0xC20)
+#define GEN12_GT_GFX_RC6_MSB			_MMIO(0xC24)
+#define   GEN12_GT_GFX_RC6_MSB_MASK		REG_GENMASK(23, 0)
+
 /* RPM unit config (Gen8+) */
 #define RPM_CONFIG0				_MMIO(0xd00)
 #define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT	3
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index f8d0523f4c18e..ee830c4027542 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -816,6 +816,25 @@ u64 intel_rc6_residency_us(struct intel_rc6 *rc6, i915_reg_t reg)
 	return DIV_ROUND_UP_ULL(intel_rc6_residency_ns(rc6, reg), 1000);
 }
 
+u64 intel_rc6_rpm_unit_residency(struct intel_rc6 *rc6)
+{
+	struct drm_i915_private *i915 = rc6_to_i915(rc6);
+	struct intel_gt *gt = rc6_to_gt(rc6);
+	intel_wakeref_t wakeref;
+	u64 lsb, msb, counter;
+
+	with_intel_runtime_pm(gt->uncore->rpm, wakeref) {
+		lsb = intel_uncore_read(gt->uncore, GEN12_GT_GFX_RC6_LSB);
+		msb = intel_uncore_read(gt->uncore, GEN12_GT_GFX_RC6_MSB);
+	}
+
+	drm_dbg(&i915->drm, "GT RC6 MSB=0x%x LSB=0x%x\n", (u32) msb, (u32) lsb);
+	msb = REG_FIELD_GET(GEN12_GT_GFX_RC6_MSB_MASK, (u32)msb);
+	counter = msb << 32 | lsb;
+
+	return counter;
+}
+
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 #include "selftest_rc6.c"
 #endif
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.h b/drivers/gpu/drm/i915/gt/intel_rc6.h
index b6fea71afc223..6fa0896756d47 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.h
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.h
@@ -23,5 +23,6 @@ void intel_rc6_disable(struct intel_rc6 *rc6);
 
 u64 intel_rc6_residency_ns(struct intel_rc6 *rc6, i915_reg_t reg);
 u64 intel_rc6_residency_us(struct intel_rc6 *rc6, i915_reg_t reg);
+u64 intel_rc6_rpm_unit_residency(struct intel_rc6 *rc6);
 
 #endif /* INTEL_RC6_H */
-- 
2.25.1

