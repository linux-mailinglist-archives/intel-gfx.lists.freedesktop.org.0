Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB45AB9EB5
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 16:35:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E882E10EAEA;
	Fri, 16 May 2025 14:35:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ht41sY/2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 391F610EAEC;
 Fri, 16 May 2025 14:35:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747406109; x=1778942109;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=20m6sLrV7l2dxH6nK7eOCA1IDnlgGu0XNHvGgxeaNwM=;
 b=Ht41sY/2Ayqlag8ttDLyQpqOxzlHPK4BgMG2Uv+uPOEGNT6SgYb/fosb
 Vzpz+9o1YIHqDa2hnjcoHRwAX8GWl/IqarHEIlsfBbq8vG/uCeDVERWWn
 7qemYFEqiBDbb4E0cexb/FwEceBzeA55ASvFuX42J1pO28csXazXRaP3z
 m2UOgC46ROEiDTb7GoQHMZDb5hTkGAJxErBo7/SBrOZORm8zA73wQO016
 c69QLp6iVyrsoCPoktj2NDLnpDpOJZiSq3Jynsr4nEdgGbZVD3UVCdNTK
 joo6s0HD8Z64je4+1TT7Ds/dkRgRR78wYHder9cVVZGm6I+WZUWiF62M3 g==;
X-CSE-ConnectionGUID: f2C5g57DQUWPw3I0RSKS2g==
X-CSE-MsgGUID: Ivu76iTqTo6362B1v0EssA==
X-IronPort-AV: E=McAfee;i="6700,10204,11435"; a="36997532"
X-IronPort-AV: E=Sophos;i="6.15,294,1739865600"; d="scan'208";a="36997532"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 07:35:08 -0700
X-CSE-ConnectionGUID: Gyp0FG/PTg6rbaDFl0bM+A==
X-CSE-MsgGUID: ZYx0tr/gSlCZ/G0H6YcoYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,294,1739865600"; d="scan'208";a="138457337"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa009.jf.intel.com with ESMTP; 16 May 2025 07:35:07 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH] drm/i915/display: Implement wa_16011342517
Date: Fri, 16 May 2025 20:01:01 +0530
Message-Id: <20250516143101.3313286-1-nemesa.garg@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Workaround to prevent skew violation on type-c
phy for DP 1.62 and HDMI.

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c         | 16 ++++++++++++++++
 .../gpu/drm/i915/display/intel_dkl_phy_regs.h    |  4 ++++
 2 files changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 74132c1d6385..34b372b18aab 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -77,6 +77,7 @@
 #include "intel_psr.h"
 #include "intel_quirks.h"
 #include "intel_snps_phy.h"
+#include "intel_step.h"
 #include "intel_tc.h"
 #include "intel_vdsc.h"
 #include "intel_vdsc_regs.h"
@@ -1439,6 +1440,21 @@ static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
 					  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2_MASK,
 					  val);
 		}
+
+		/* Wa_16011342517:adl-p */
+		if (display->platform.alderlake_p &&
+		    IS_DISPLAY_STEP(display, STEP_A0, STEP_D0)) {
+			if ((intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
+			     crtc_state->port_clock == 594000) ||
+			     (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) &&
+			     crtc_state->port_clock == 162000)) {
+				intel_dkl_phy_rmw(display, DKLP_TX_DPCNTL2(tc_port),
+						  LOADGEN_SHARING_PMD_DISABLE, 1);
+			} else {
+				intel_dkl_phy_rmw(display, DKLP_TX_DPCNTL2(tc_port),
+						  LOADGEN_SHARING_PMD_DISABLE, 0);
+			}
+		}
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h b/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
index 56085b32956d..fa3bad5efca9 100644
--- a/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
@@ -188,6 +188,10 @@ struct intel_dkl_phy_reg {
 								 _DKL_CMN_UC_DW27)
 #define  DKL_CMN_UC_DW27_UC_HEALTH			(0x1 << 15)
 
+#define _DKLP_PCS_GLUE_TX_DPCNTL2                       0xB68
+#define DKLP_TX_DPCNTL2(tc_port)			_DKL_REG(tc_port, \
+								 _DKLP_PCS_GLUE_TX_DPCNTL2)
+#define LOADGEN_SHARING_PMD_DISABLE                     REG_BIT(12)
 /*
  * Each Dekel PHY is addressed through a 4KB aperture. Each PHY has more than
  * 4KB of register space, so a separate index is programmed in HIP_INDEX_REG0
-- 
2.25.1

