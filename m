Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83795CC626D
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 07:10:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8041810EB65;
	Wed, 17 Dec 2025 06:10:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T46A8moM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE7C310EB50;
 Wed, 17 Dec 2025 06:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765951820; x=1797487820;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8hQUKfgIOos8wUBaM9is1kbVAYLXwC9pjl+YFC7h9AU=;
 b=T46A8moM/f340Nrk1ttoyya0nXGSKm5dmqDGsEbkP7I5zFPcM6iDIFsW
 uzhMasmEsA/UgR/zAcyKDYoh4+8MmiCukZkE4DduIi+zRE8m3L2LLPRnr
 1qg4k0akvDipZZyatAniXGnlCjwmHejmVFUBEvevY6a6GqcJi8gfiJNdM
 WYCyKXXj/Y0NMq+x610qIrniXcB8eZqQlRiS+Ogk58OTztRuBF/aOmyRk
 vpei2zqxCuwJHT7HbI+Yd9j379zi8YHdYEB5cvB1qYJZIyokn93+lObtW
 je9cJbAuhDGGy6SHptLWsVjxxDrsO+nCX+AN1r5oIKUEwuApI3tStKIiX A==;
X-CSE-ConnectionGUID: Dbxo1s+gSDKm0qpHMO0Duw==
X-CSE-MsgGUID: OnRYb9GeRAuf6dYi+EHZCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="85471124"
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="85471124"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 22:10:19 -0800
X-CSE-ConnectionGUID: Tpu+ZY49Sgyr8kDpDui+ag==
X-CSE-MsgGUID: /TbyjkNvQzGRYZFQDXCFqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="198105130"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa006.fm.intel.com with ESMTP; 16 Dec 2025 22:10:18 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 02/19] drm/{i915, xe}: Extract South chicken registers
Date: Wed, 17 Dec 2025 11:51:52 +0530
Message-ID: <20251217062209.852324-3-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251217062209.852324-1-uma.shankar@intel.com>
References: <20251217062209.852324-1-uma.shankar@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Extract South Chicken registers to common header.
This allows intel_pch_refclk.c not to include i915_reg.h

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 .../gpu/drm/i915/display/intel_pch_refclk.c   |  2 +-
 drivers/gpu/drm/i915/i915_reg.h               | 27 -------------------
 include/drm/intel/intel_gmd_common_regs.h     | 27 +++++++++++++++++++
 3 files changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index 9a89bb6dcf65..55abb97c6562 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -4,8 +4,8 @@
  */
 
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
-#include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index f60259c41c56..c1f33c11ac1b 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1023,33 +1023,6 @@
 #define   TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE	REG_BIT(10)
 #define   TRANS_CHICKEN1_DP0UNIT_GC_DISABLE	REG_BIT(4)
 
-#define SOUTH_CHICKEN1		_MMIO(0xc2000)
-#define  FDIA_PHASE_SYNC_SHIFT_OVR	19
-#define  FDIA_PHASE_SYNC_SHIFT_EN	18
-#define  INVERT_DDIE_HPD			REG_BIT(28)
-#define  INVERT_DDID_HPD_MTP			REG_BIT(27)
-#define  INVERT_TC4_HPD				REG_BIT(26)
-#define  INVERT_TC3_HPD				REG_BIT(25)
-#define  INVERT_TC2_HPD				REG_BIT(24)
-#define  INVERT_TC1_HPD				REG_BIT(23)
-#define  INVERT_DDID_HPD			(1 << 18)
-#define  INVERT_DDIC_HPD			(1 << 17)
-#define  INVERT_DDIB_HPD			(1 << 16)
-#define  INVERT_DDIA_HPD			(1 << 15)
-#define  FDI_PHASE_SYNC_OVR(pipe) (1 << (FDIA_PHASE_SYNC_SHIFT_OVR - ((pipe) * 2)))
-#define  FDI_PHASE_SYNC_EN(pipe) (1 << (FDIA_PHASE_SYNC_SHIFT_EN - ((pipe) * 2)))
-#define  FDI_BC_BIFURCATION_SELECT	(1 << 12)
-#define  CHASSIS_CLK_REQ_DURATION_MASK	(0xf << 8)
-#define  CHASSIS_CLK_REQ_DURATION(x)	((x) << 8)
-#define  SBCLK_RUN_REFCLK_DIS		(1 << 7)
-#define  ICP_SECOND_PPS_IO_SELECT	REG_BIT(2)
-#define  SPT_PWM_GRANULARITY		(1 << 0)
-#define SOUTH_CHICKEN2		_MMIO(0xc2004)
-#define  FDI_MPHY_IOSFSB_RESET_STATUS	(1 << 13)
-#define  FDI_MPHY_IOSFSB_RESET_CTL	(1 << 12)
-#define  LPT_PWM_GRANULARITY		(1 << 5)
-#define  DPLS_EDP_PPS_FIX_DIS		(1 << 0)
-
 #define SOUTH_DSPCLK_GATE_D	_MMIO(0xc2020)
 #define  PCH_GMBUSUNIT_CLOCK_GATE_DISABLE (1 << 31)
 #define  PCH_DPLUNIT_CLOCK_GATE_DISABLE (1 << 30)
diff --git a/include/drm/intel/intel_gmd_common_regs.h b/include/drm/intel/intel_gmd_common_regs.h
index 4d91bc2dbb27..b4cfd186d5c0 100644
--- a/include/drm/intel/intel_gmd_common_regs.h
+++ b/include/drm/intel/intel_gmd_common_regs.h
@@ -4,6 +4,33 @@
 #ifndef _INTEL_GMD_COMMON_REG_H_
 #define _INTEL_GMD_COMMON_REG_H_
 
+#define SOUTH_CHICKEN1		_MMIO(0xc2000)
+#define  FDIA_PHASE_SYNC_SHIFT_OVR	19
+#define  FDIA_PHASE_SYNC_SHIFT_EN	18
+#define  INVERT_DDIE_HPD			REG_BIT(28)
+#define  INVERT_DDID_HPD_MTP			REG_BIT(27)
+#define  INVERT_TC4_HPD				REG_BIT(26)
+#define  INVERT_TC3_HPD				REG_BIT(25)
+#define  INVERT_TC2_HPD				REG_BIT(24)
+#define  INVERT_TC1_HPD				REG_BIT(23)
+#define  INVERT_DDID_HPD			(1 << 18)
+#define  INVERT_DDIC_HPD			(1 << 17)
+#define  INVERT_DDIB_HPD			(1 << 16)
+#define  INVERT_DDIA_HPD			(1 << 15)
+#define  FDI_PHASE_SYNC_OVR(pipe) (1 << (FDIA_PHASE_SYNC_SHIFT_OVR - ((pipe) * 2)))
+#define  FDI_PHASE_SYNC_EN(pipe) (1 << (FDIA_PHASE_SYNC_SHIFT_EN - ((pipe) * 2)))
+#define  FDI_BC_BIFURCATION_SELECT	(1 << 12)
+#define  CHASSIS_CLK_REQ_DURATION_MASK	(0xf << 8)
+#define  CHASSIS_CLK_REQ_DURATION(x)	((x) << 8)
+#define  SBCLK_RUN_REFCLK_DIS		(1 << 7)
+#define  ICP_SECOND_PPS_IO_SELECT	REG_BIT(2)
+#define  SPT_PWM_GRANULARITY		(1 << 0)
+#define SOUTH_CHICKEN2		_MMIO(0xc2004)
+#define  FDI_MPHY_IOSFSB_RESET_STATUS	(1 << 13)
+#define  FDI_MPHY_IOSFSB_RESET_CTL	(1 << 12)
+#define  LPT_PWM_GRANULARITY		(1 << 5)
+#define  DPLS_EDP_PPS_FIX_DIS		(1 << 0)
+
 #define _TRANSA_CHICKEN2	 0xf0064
 #define _TRANSB_CHICKEN2	 0xf1064
 #define TRANS_CHICKEN2(pipe)	_MMIO_PIPE(pipe, _TRANSA_CHICKEN2, _TRANSB_CHICKEN2)
-- 
2.50.1

