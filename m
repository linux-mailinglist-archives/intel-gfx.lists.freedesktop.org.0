Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C59A9AC8A9C
	for <lists+intel-gfx@lfdr.de>; Fri, 30 May 2025 11:18:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE07410E7F5;
	Fri, 30 May 2025 09:18:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kANMRo+r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D00A910E7FF;
 Fri, 30 May 2025 09:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748596720; x=1780132720;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oMsKmsyrNOYgv5H/s25cR51oo50PfjYa4eF3FA93CEI=;
 b=kANMRo+rwHOkRTII1pSH9LEsmZ4Pvt+ilBxvTR+iW1ez6uLxCSRS0V6W
 fMCzWPFPJ0QQoZ81q8J9Zo64GoVnrphLt/qvlevZaU/9xhf5jZaKWKUpx
 55lgUUULthf24LXgzVcpiB1jE2EkiAZJPTyGdqjtzmDdJlAPPhVG+eFwc
 uiG/b1tcrAkJ9OQaL1ipBbuDgGU6O2aMABDHJVKroiC+GVGNy8/9IuK8u
 lJ4+7bKxBixoUpAp5/EI44Hq9ZZDsskJVq9aaLA8siscnc9nT+xQFlKXq
 5fFjg8JryZMx1eHDcpqyHnDDw2nMTNtOoYc+Ju82S6DZRnp4KYIfUX2z7 w==;
X-CSE-ConnectionGUID: K8gK1FrmQdWEmUr1vlENqw==
X-CSE-MsgGUID: Qiz75pvnR1e5iariRgNK6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11448"; a="50687242"
X-IronPort-AV: E=Sophos;i="6.16,195,1744095600"; d="scan'208";a="50687242"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2025 02:18:39 -0700
X-CSE-ConnectionGUID: 2d790ofVTDuw+Py7OMehww==
X-CSE-MsgGUID: VZJgxLi2RliBYCLrXBd3Gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,195,1744095600"; d="scan'208";a="148853753"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa004.jf.intel.com with ESMTP; 30 May 2025 02:18:38 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH] drm/i915/display: Implement wa_16011342517
Date: Fri, 30 May 2025 14:42:40 +0530
Message-Id: <20250530091240.56570-1-nemesa.garg@intel.com>
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

While doing voltage swing for type-c phy
for DP 1.62 and HDMI write the
LOADGEN_SHARING_PMD_DISABLE bit to 1.

-v2: Update commit message.
     Add bspec[Suraj]

Bspec: 55359
Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c         | 16 ++++++++++++++++
 .../gpu/drm/i915/display/intel_dkl_phy_regs.h    |  4 ++++
 2 files changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 4c845dd410a2..2cdd51cdfe17 100644
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
+				intel_dkl_phy_rmw(display, DKLP_PCS_GLUE_TX_DPCNTL2(tc_port),
+						  LOADGEN_SHARING_PMD_DISABLE, 1);
+			} else {
+				intel_dkl_phy_rmw(display, DKLP_PCS_GLUE_TX_DPCNTL2(tc_port),
+						  LOADGEN_SHARING_PMD_DISABLE, 0);
+			}
+		}
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h b/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
index 56085b32956d..70ad3f1b1289 100644
--- a/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
@@ -188,6 +188,10 @@ struct intel_dkl_phy_reg {
 								 _DKL_CMN_UC_DW27)
 #define  DKL_CMN_UC_DW27_UC_HEALTH			(0x1 << 15)
 
+#define _DKLP_PCS_GLUE_TX_DPCNTL2                       0xB68
+#define DKLP_PCS_GLUE_TX_DPCNTL2(tc_port)		_DKL_REG(tc_port, \
+								 _DKLP_PCS_GLUE_TX_DPCNTL2)
+#define LOADGEN_SHARING_PMD_DISABLE                     REG_BIT(12)
 /*
  * Each Dekel PHY is addressed through a 4KB aperture. Each PHY has more than
  * 4KB of register space, so a separate index is programmed in HIP_INDEX_REG0
-- 
2.25.1

