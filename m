Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B443F821613
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jan 2024 02:02:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C00C10E06A;
	Tue,  2 Jan 2024 01:02:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F96210E06A
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jan 2024 01:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704157367; x=1735693367;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DUsbsbx3oQtcXS/qZ9Ula1v+bCJKq5G5sk8v35Spl8I=;
 b=mr1nbA6wu53Z3cMInJ5pHHh5SBY/r3wOHfz57hZks+B1paCYrlNz1Xte
 /fC5wTDLVfMyTlWFABDGFbIBD3daNP9SR498sByp7+6ojJCMB3vkCsw9H
 54qT0Ykbk+/oHRvOEpmP1om9CC2N3esx0ezeXpkEYMlDQiFvIfYMcQGBK
 byF8K1zVNkJs5o5yvw4rvarkNZIVQiiB9G2mZcNVFNia6Z8LkaFW8fSyE
 Rvae41uQ+Ni2wrKnCaCoan6Vo0+ypOxGidCtA+Dah5DoYZzn8wQjpcsbc
 VrrlswmSKzMf9YTUHHMcgtRgAWd3of1WnRRvU+BbZiz57hnWZ9SbzkF2Z Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10940"; a="483009470"
X-IronPort-AV: E=Sophos;i="6.04,323,1695711600"; d="scan'208";a="483009470"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jan 2024 17:02:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10940"; a="845420331"
X-IronPort-AV: E=Sophos;i="6.04,323,1695711600"; d="scan'208";a="845420331"
Received: from osgc-linux-buildserver.sh.intel.com ([10.112.232.61])
 by fmsmga008.fm.intel.com with ESMTP; 01 Jan 2024 17:02:44 -0800
From: Shuicheng Lin <shuicheng.lin@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/guc: Change wa and EU_PERF_CNTL registers to MCR type
Date: Tue,  2 Jan 2024 01:02:31 +0000
Message-Id: <20240102010231.843778-1-shuicheng.lin@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231220234559.GD2808452@mdroper-desk1.amr.corp.intel.com>
References: <20231220234559.GD2808452@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some of the wa registers are MCR register, and EU_PERF_CNTL registers
are MCR register.
MCR register needs extra process for read/write.
As normal MMIO register also could work with the MCR register process,
change all wa registers to MCR type for code simplicity.

Signed-off-by: Shuicheng Lin <shuicheng.lin@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 63724e17829a..5cbcbe9a4e93 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -377,8 +377,12 @@ static int guc_mmio_regset_init(struct temp_regset *regset,
 	    CCS_MASK(engine->gt))
 		ret |= GUC_MMIO_REG_ADD(gt, regset, GEN12_RCU_MODE, true);
 
+	/* some of the WA registers are MCR registers. As it is safe to
+	 * use MCR form for non-MCR registers, for code simplicity, all
+	 * WA registers are added with MCR form.
+	 */
 	for (i = 0, wa = wal->list; i < wal->count; i++, wa++)
-		ret |= GUC_MMIO_REG_ADD(gt, regset, wa->reg, wa->masked_reg);
+		ret |= GUC_MCR_REG_ADD(gt, regset, wa->mcr_reg, wa->masked_reg);
 
 	/* Be extra paranoid and include all whitelist registers. */
 	for (i = 0; i < RING_MAX_NONPRIV_SLOTS; i++)
@@ -394,13 +398,13 @@ static int guc_mmio_regset_init(struct temp_regset *regset,
 			ret |= GUC_MMIO_REG_ADD(gt, regset, GEN9_LNCFCMOCS(i), false);
 
 	if (GRAPHICS_VER(engine->i915) >= 12) {
-		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL0, false);
-		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL1, false);
-		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL2, false);
-		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL3, false);
-		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL4, false);
-		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL5, false);
-		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL6, false);
+		ret |= GUC_MCR_REG_ADD(gt, regset, MCR_REG(i915_mmio_reg_offset(EU_PERF_CNTL0)), false);
+		ret |= GUC_MCR_REG_ADD(gt, regset, MCR_REG(i915_mmio_reg_offset(EU_PERF_CNTL1)), false);
+		ret |= GUC_MCR_REG_ADD(gt, regset, MCR_REG(i915_mmio_reg_offset(EU_PERF_CNTL2)), false);
+		ret |= GUC_MCR_REG_ADD(gt, regset, MCR_REG(i915_mmio_reg_offset(EU_PERF_CNTL3)), false);
+		ret |= GUC_MCR_REG_ADD(gt, regset, MCR_REG(i915_mmio_reg_offset(EU_PERF_CNTL4)), false);
+		ret |= GUC_MCR_REG_ADD(gt, regset, MCR_REG(i915_mmio_reg_offset(EU_PERF_CNTL5)), false);
+		ret |= GUC_MCR_REG_ADD(gt, regset, MCR_REG(i915_mmio_reg_offset(EU_PERF_CNTL6)), false);
 	}
 
 	return ret ? -1 : 0;
-- 
2.25.1

