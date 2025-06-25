Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED038AE791D
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jun 2025 09:54:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ACDA10E688;
	Wed, 25 Jun 2025 07:54:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dc+3mzRl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BC4F10E685;
 Wed, 25 Jun 2025 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750838094; x=1782374094;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kD7gIz4GYfVlA8lccaJXL4nVRbqdXXvohReVTYEntsg=;
 b=Dc+3mzRlZuvOeyux7H6bRMJDmc8r3x5ios8lbm9/NDdtkoGM2LEfJZvk
 dWs4xTc8FLZNY5t3CTCTNjCns/Kmebg3XfVfpYcX0YgUJs59ylHThtLJf
 BcFKvYwq11vvLWIJtBOuJSDMrS4St5PpMqi4EYSIny/Z6Z/u/McbdiXHv
 I0T77lyKMpRXhucUs1T14PRTLzKPIXgtOAW5urh+6iV0kBK8CRYMujlAR
 qvKk+l8OuPL6OB1NyfZtQ8BrK+i2n/iRZMAq/CGz4zFTMn2nhzvCEk1rh
 SqQGe6rEBGFS0YZbthX4qjs60GB0Y0WHp1enNm4ZcO3sBd1QULfF2nOHg Q==;
X-CSE-ConnectionGUID: El2IvgWIR1SPiWOjIW6ysQ==
X-CSE-MsgGUID: fHfOVk9IRY2v4cnUGpPgAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="56881903"
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="56881903"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 00:54:53 -0700
X-CSE-ConnectionGUID: lx0ZI2frRGa4/DBEnP3SoA==
X-CSE-MsgGUID: 6+i/retaSd+RBlEDSi19ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="152434634"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa009.fm.intel.com with ESMTP; 25 Jun 2025 00:54:52 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/display: Implement wa_16011342517
Date: Wed, 25 Jun 2025 13:19:11 +0530
Message-Id: <20250625074911.194085-1-nemesa.garg@intel.com>
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

-v2: Update commit.
     Add bspec[Suraj]
-v3: Move w/a before DKL_TX_PMD_LANE_SUS.
     Use DKL_TX_DPCNTL2[Ville]
-v4: Use intel_encoder_is_dp and
     intel_encoder_is_hdmi. [Suraj]

Bspec: 55359
Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c         | 16 ++++++++++++++++
 .../gpu/drm/i915/display/intel_dkl_phy_regs.h    |  1 +
 2 files changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index cbd1060e9664..5d672fb82c2c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -78,6 +78,7 @@
 #include "intel_psr.h"
 #include "intel_quirks.h"
 #include "intel_snps_phy.h"
+#include "intel_step.h"
 #include "intel_tc.h"
 #include "intel_vdsc.h"
 #include "intel_vdsc_regs.h"
@@ -1394,6 +1395,21 @@ static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
 	for (ln = 0; ln < 2; ln++) {
 		int level;
 
+		/* Wa_16011342517:adl-p */
+		if (display->platform.alderlake_p &&
+		    IS_DISPLAY_STEP(display, STEP_A0, STEP_D0)) {
+			if ((intel_encoder_is_hdmi(encoder) &&
+			     crtc_state->port_clock == 594000) ||
+			     (intel_encoder_is_dp(encoder) &&
+			      crtc_state->port_clock == 162000)) {
+				intel_dkl_phy_rmw(display, DKL_TX_DPCNTL2(tc_port, ln),
+						  LOADGEN_SHARING_PMD_DISABLE, 1);
+			} else {
+				intel_dkl_phy_rmw(display, DKL_TX_DPCNTL2(tc_port, ln),
+						  LOADGEN_SHARING_PMD_DISABLE, 0);
+			}
+		}
+
 		intel_dkl_phy_write(display, DKL_TX_PMD_LANE_SUS(tc_port, ln), 0);
 
 		level = intel_ddi_level(encoder, crtc_state, 2*ln+0);
diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h b/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
index 3d8fa667cc73..f8ffeec29e93 100644
--- a/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
@@ -153,6 +153,7 @@ struct intel_dkl_phy_reg {
 #define  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1(val)	REG_FIELD_PREP(DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1_MASK, (val))
 #define  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2_MASK	REG_GENMASK(6, 5)
 #define  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2(val)	REG_FIELD_PREP(DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2_MASK, (val))
+#define  LOADGEN_SHARING_PMD_DISABLE			REG_BIT(12)
 
 #define _DKL_TX_FW_CALIB_LN0				0x02F8
 #define _DKL_TX_FW_CALIB_LN1				0x12F8
-- 
2.25.1

