Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B03B819F36
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 13:41:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62D7910E03E;
	Wed, 20 Dec 2023 12:41:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F05A110E03E
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 12:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703076086; x=1734612086;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+6bF1brguVvwg/uX6j3R1yxWixJSxIx2DQ2Zi0QHT/A=;
 b=Gw5DJknbAtaX9C4NObzEgX2PgJ0BsiYxQRVfO4xzyg5fL/dDVR5u1MvN
 +/UIga8ZKn8/VXz9tYbgcPJ1DseBkhl5Z5Ub2sWi1SVyjXFTS/6b2DgH/
 +uKB3H3MDoBl1ljnvqiSVYBGNVNUr5vEGkRa5FnEd8kx5oqiTPdikNsLY
 aeJcRj4SI71iwzoiUTt0z4TVbVM3f8eXREhaoL9IryXnEK5jHV0H2rhra
 Bvd3+HxgpWJheSisnZZoNS+VA/qAMsE/4fTUaoIqcFAyn0fAj0ddB3VPY
 Xzsx442/7KMTBKwm9VJDyy/LKIKBc0pEoUg9IO6n/IBFWILdMRDI+I/Dk Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="481995403"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; d="scan'208";a="481995403"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 04:41:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; d="scan'208";a="17940519"
Received: from osgc-linux-buildserver.sh.intel.com ([10.112.232.61])
 by orviesa002.jf.intel.com with ESMTP; 20 Dec 2023 04:41:24 -0800
From: Shuicheng Lin <shuicheng.lin@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/guc: Change wa and EU_PERF_CNTL registers to MCR type
Date: Wed, 20 Dec 2023 12:39:51 +0000
Message-Id: <20231220123951.4076088-1-shuicheng.lin@intel.com>
X-Mailer: git-send-email 2.25.1
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
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 63724e17829a..61ff4c7e31a6 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -378,7 +378,7 @@ static int guc_mmio_regset_init(struct temp_regset *regset,
 		ret |= GUC_MMIO_REG_ADD(gt, regset, GEN12_RCU_MODE, true);
 
 	for (i = 0, wa = wal->list; i < wal->count; i++, wa++)
-		ret |= GUC_MMIO_REG_ADD(gt, regset, wa->reg, wa->masked_reg);
+		ret |= GUC_MCR_REG_ADD(gt, regset, wa->mcr_reg, wa->masked_reg);
 
 	/* Be extra paranoid and include all whitelist registers. */
 	for (i = 0; i < RING_MAX_NONPRIV_SLOTS; i++)
@@ -394,13 +394,13 @@ static int guc_mmio_regset_init(struct temp_regset *regset,
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

