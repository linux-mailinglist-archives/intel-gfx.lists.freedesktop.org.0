Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96AC2ACEE32
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jun 2025 12:58:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27C1210E123;
	Thu,  5 Jun 2025 10:58:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hWyUS4de";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EA0B10E123;
 Thu,  5 Jun 2025 10:58:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749121132; x=1780657132;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=y+Smwt7CDUJBs2LdBWQkbQKm0OorlgcoMQtlFIxQUq8=;
 b=hWyUS4devXmTZSC7gupfx61j9UUaTHJsB8Nk8em/IOeqcWU4JFeWCr43
 BFD9wpw7FfS/HfLcUrdJbZ3+HUyeHQsIek9rbuQ7RwC9JbO1204jMCvKV
 14gxvx+5VPQqwT+0/DrX4m1L1MrlO0eQkad7tVZpsKqMmW6zxxarsT9r4
 kpmMg1ifvg8dUOvmfvbMjKWAZ2zSq/rs3mbBFA7uT3Ae+bakXfegiWih0
 Qpvltqdsvz0pamXClxRGybWXTxNRhXGzzbTEXhmVlrPmMzxKaJPZPxiy4
 93vKeaSTkVHcPxtTBrozmtLz+d+qeX18SwEVKh/HdxzQn4sn+Wxo8qWNP w==;
X-CSE-ConnectionGUID: pw/MQs7eSvGhPkQLvU2OtQ==
X-CSE-MsgGUID: BplPLe/JTfqyE5bk/6RMPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11454"; a="50472599"
X-IronPort-AV: E=Sophos;i="6.16,211,1744095600"; d="scan'208";a="50472599"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2025 03:58:52 -0700
X-CSE-ConnectionGUID: AL4hPLqeTsqfpDhtnLLadQ==
X-CSE-MsgGUID: CVs9gmjrTDOkdDC8Rvp6GA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,211,1744095600"; d="scan'208";a="176339897"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa001.fm.intel.com with ESMTP; 05 Jun 2025 03:58:51 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH v3] drm/i915/display: Implement wa_16011342517
Date: Thu,  5 Jun 2025 16:24:32 +0530
Message-Id: <20250605105432.1273182-1-nemesa.garg@intel.com>
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

Bspec: 55359
Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c         | 16 ++++++++++++++++
 .../gpu/drm/i915/display/intel_dkl_phy_regs.h    |  1 +
 2 files changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 4c845dd410a2..d99d4c80fe17 100644
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
@@ -1393,6 +1394,21 @@ static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
 	for (ln = 0; ln < 2; ln++) {
 		int level;
 
+		/* Wa_16011342517:adl-p */
+		if (display->platform.alderlake_p &&
+		    IS_DISPLAY_STEP(display, STEP_A0, STEP_D0)) {
+			if ((intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
+			     crtc_state->port_clock == 594000) ||
+			     (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) &&
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
index 56085b32956d..ac2f92482d67 100644
--- a/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
@@ -151,6 +151,7 @@ struct intel_dkl_phy_reg {
 #define  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1(val)	REG_FIELD_PREP(DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1_MASK, (val))
 #define  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2_MASK	REG_GENMASK(6, 5)
 #define  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2(val)	REG_FIELD_PREP(DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2_MASK, (val))
+#define  LOADGEN_SHARING_PMD_DISABLE			REG_BIT(12)
 
 #define _DKL_TX_FW_CALIB_LN0				0x02F8
 #define _DKL_TX_FW_CALIB_LN1				0x12F8
-- 
2.25.1

