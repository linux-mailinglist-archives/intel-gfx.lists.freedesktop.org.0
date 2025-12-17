Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88538CC626E
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 07:10:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8266810EB6F;
	Wed, 17 Dec 2025 06:10:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F96wP4Wb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56FF910EB65;
 Wed, 17 Dec 2025 06:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765951824; x=1797487824;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gr9jSs2U/9ZV0Hm0Cg4BdZkhRD97Esh6kodHSha9mEE=;
 b=F96wP4WbVN+JDA/XEyrDDlUH69wUj00HVuPqaOL/XUd0gKtcZxt8K489
 q5F2lZf+f5yywJ5VgPioxbmU4QflWAqh7qospRyp6fFfd6KDj9GxmMfqg
 zwlWdStonr1B6SNme8chAoqlO/hjJxPZhNu4zxvnFf5uZpIB5B15P2Gyc
 1IlAyrAn9lBSdnOz8YQ/6mjIwKlZseQGHxaWhBguX8fAac52wncPVewjl
 vraWxW9a1GzxgncCIwXC5i8RifYuxcibIWlvKknrbcmuYK4MIqGHGAZQ8
 YJsGWMldwnGdbY0bwxBgpb8jCbl27NjTmBd9Qbp5uE9C9wKtOE1OwSXWM A==;
X-CSE-ConnectionGUID: ak65mzxgR8GyixdfuVdQAg==
X-CSE-MsgGUID: ES3SYLReQq6qi8EIQyd+Ew==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="85471139"
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="85471139"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 22:10:24 -0800
X-CSE-ConnectionGUID: jZOWCMZ0S9KFyjKEhbHFUQ==
X-CSE-MsgGUID: D9A5RFBxQXODGKe8To/fYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="198105155"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa006.fm.intel.com with ESMTP; 16 Dec 2025 22:10:22 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 04/19] drm/{i915, xe}: Extract DSPCLK_GATE_D
Date: Wed, 17 Dec 2025 11:51:54 +0530
Message-ID: <20251217062209.852324-5-uma.shankar@intel.com>
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

Move DSPCLK_GATE_D register definition to common header.
This allows intel_gmbus.c free of i915_reg.h include.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_gmbus.c |  2 +-
 drivers/gpu/drm/i915/i915_reg.h            | 50 ----------------------
 include/drm/intel/intel_gmd_common_regs.h  | 49 +++++++++++++++++++++
 3 files changed, 50 insertions(+), 51 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 2caff677600c..b77860c5d649 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -34,8 +34,8 @@
 
 #include <drm/drm_print.h>
 #include <drm/display/drm_hdcp_helper.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
-#include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a338f01a539b..30f504a47593 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -614,47 +614,6 @@
 #define  DSTATE_GFX_CLOCK_GATING		(1 << 1)
 #define  DSTATE_DOT_CLOCK_GATING		(1 << 0)
 
-#define DSPCLK_GATE_D			_MMIO(0x6200)
-#define VLV_DSPCLK_GATE_D		_MMIO(VLV_DISPLAY_BASE + 0x6200)
-# define DPUNIT_B_CLOCK_GATE_DISABLE		(1 << 30) /* 965 */
-# define VSUNIT_CLOCK_GATE_DISABLE		(1 << 29) /* 965 */
-# define VRHUNIT_CLOCK_GATE_DISABLE		(1 << 28) /* 965 */
-# define VRDUNIT_CLOCK_GATE_DISABLE		(1 << 27) /* 965 */
-# define AUDUNIT_CLOCK_GATE_DISABLE		(1 << 26) /* 965 */
-# define DPUNIT_A_CLOCK_GATE_DISABLE		(1 << 25) /* 965 */
-# define DPCUNIT_CLOCK_GATE_DISABLE		(1 << 24) /* 965 */
-# define PNV_GMBUSUNIT_CLOCK_GATE_DISABLE	(1 << 24) /* pnv */
-# define TVRUNIT_CLOCK_GATE_DISABLE		(1 << 23) /* 915-945 */
-# define TVCUNIT_CLOCK_GATE_DISABLE		(1 << 22) /* 915-945 */
-# define TVFUNIT_CLOCK_GATE_DISABLE		(1 << 21) /* 915-945 */
-# define TVEUNIT_CLOCK_GATE_DISABLE		(1 << 20) /* 915-945 */
-# define DVSUNIT_CLOCK_GATE_DISABLE		(1 << 19) /* 915-945 */
-# define DSSUNIT_CLOCK_GATE_DISABLE		(1 << 18) /* 915-945 */
-# define DDBUNIT_CLOCK_GATE_DISABLE		(1 << 17) /* 915-945 */
-# define DPRUNIT_CLOCK_GATE_DISABLE		(1 << 16) /* 915-945 */
-# define DPFUNIT_CLOCK_GATE_DISABLE		(1 << 15) /* 915-945 */
-# define DPBMUNIT_CLOCK_GATE_DISABLE		(1 << 14) /* 915-945 */
-# define DPLSUNIT_CLOCK_GATE_DISABLE		(1 << 13) /* 915-945 */
-# define DPLUNIT_CLOCK_GATE_DISABLE		(1 << 12) /* 915-945 */
-# define DPOUNIT_CLOCK_GATE_DISABLE		(1 << 11)
-# define DPBUNIT_CLOCK_GATE_DISABLE		(1 << 10)
-# define DCUNIT_CLOCK_GATE_DISABLE		(1 << 9)
-# define DPUNIT_CLOCK_GATE_DISABLE		(1 << 8)
-# define VRUNIT_CLOCK_GATE_DISABLE		(1 << 7) /* 915+: reserved */
-# define OVHUNIT_CLOCK_GATE_DISABLE		(1 << 6) /* 830-865 */
-# define DPIOUNIT_CLOCK_GATE_DISABLE		(1 << 6) /* 915-945 */
-# define OVFUNIT_CLOCK_GATE_DISABLE		(1 << 5)
-# define OVBUNIT_CLOCK_GATE_DISABLE		(1 << 4)
-/*
- * This bit must be set on the 830 to prevent hangs when turning off the
- * overlay scaler.
- */
-# define OVRUNIT_CLOCK_GATE_DISABLE		(1 << 3)
-# define OVCUNIT_CLOCK_GATE_DISABLE		(1 << 2)
-# define OVUUNIT_CLOCK_GATE_DISABLE		(1 << 1)
-# define ZVUNIT_CLOCK_GATE_DISABLE		(1 << 0) /* 830 */
-# define OVLUNIT_CLOCK_GATE_DISABLE		(1 << 0) /* 845,865 */
-
 #define RENCLK_GATE_D1		_MMIO(0x6204)
 # define BLITTER_CLOCK_GATE_DISABLE		(1 << 13) /* 945GM only */
 # define MPEG_CLOCK_GATE_DISABLE		(1 << 12) /* 945GM only */
@@ -990,15 +949,6 @@
 #define   TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE	REG_BIT(10)
 #define   TRANS_CHICKEN1_DP0UNIT_GC_DISABLE	REG_BIT(4)
 
-#define SOUTH_DSPCLK_GATE_D	_MMIO(0xc2020)
-#define  PCH_GMBUSUNIT_CLOCK_GATE_DISABLE (1 << 31)
-#define  PCH_DPLUNIT_CLOCK_GATE_DISABLE (1 << 30)
-#define  PCH_DPLSUNIT_CLOCK_GATE_DISABLE (1 << 29)
-#define  PCH_DPMGUNIT_CLOCK_GATE_DISABLE (1 << 15)
-#define  PCH_CPUNIT_CLOCK_GATE_DISABLE (1 << 14)
-#define  CNP_PWM_CGE_GATING_DISABLE (1 << 13)
-#define  PCH_LP_PARTITION_LEVEL_DISABLE  (1 << 12)
-
 #define  VLV_PMWGICZ				_MMIO(0x1300a4)
 
 #define  HSW_EDRAM_CAP				_MMIO(0x120010)
diff --git a/include/drm/intel/intel_gmd_common_regs.h b/include/drm/intel/intel_gmd_common_regs.h
index b4cfd186d5c0..fb2a327befd8 100644
--- a/include/drm/intel/intel_gmd_common_regs.h
+++ b/include/drm/intel/intel_gmd_common_regs.h
@@ -4,6 +4,46 @@
 #ifndef _INTEL_GMD_COMMON_REG_H_
 #define _INTEL_GMD_COMMON_REG_H_
 
+#define DSPCLK_GATE_D			_MMIO(0x6200)
+#define VLV_DSPCLK_GATE_D		_MMIO(VLV_DISPLAY_BASE + 0x6200)
+# define DPUNIT_B_CLOCK_GATE_DISABLE		(1 << 30) /* 965 */
+# define VSUNIT_CLOCK_GATE_DISABLE		(1 << 29) /* 965 */
+# define VRHUNIT_CLOCK_GATE_DISABLE		(1 << 28) /* 965 */
+# define VRDUNIT_CLOCK_GATE_DISABLE		(1 << 27) /* 965 */
+# define AUDUNIT_CLOCK_GATE_DISABLE		(1 << 26) /* 965 */
+# define DPUNIT_A_CLOCK_GATE_DISABLE		(1 << 25) /* 965 */
+# define DPCUNIT_CLOCK_GATE_DISABLE		(1 << 24) /* 965 */
+# define PNV_GMBUSUNIT_CLOCK_GATE_DISABLE	(1 << 24) /* pnv */
+# define TVRUNIT_CLOCK_GATE_DISABLE		(1 << 23) /* 915-945 */
+# define TVCUNIT_CLOCK_GATE_DISABLE		(1 << 22) /* 915-945 */
+# define TVFUNIT_CLOCK_GATE_DISABLE		(1 << 21) /* 915-945 */
+# define TVEUNIT_CLOCK_GATE_DISABLE		(1 << 20) /* 915-945 */
+# define DVSUNIT_CLOCK_GATE_DISABLE		(1 << 19) /* 915-945 */
+# define DSSUNIT_CLOCK_GATE_DISABLE		(1 << 18) /* 915-945 */
+# define DDBUNIT_CLOCK_GATE_DISABLE		(1 << 17) /* 915-945 */
+# define DPRUNIT_CLOCK_GATE_DISABLE		(1 << 16) /* 915-945 */
+# define DPFUNIT_CLOCK_GATE_DISABLE		(1 << 15) /* 915-945 */
+# define DPBMUNIT_CLOCK_GATE_DISABLE		(1 << 14) /* 915-945 */
+# define DPLSUNIT_CLOCK_GATE_DISABLE		(1 << 13) /* 915-945 */
+# define DPLUNIT_CLOCK_GATE_DISABLE		(1 << 12) /* 915-945 */
+# define DPOUNIT_CLOCK_GATE_DISABLE		(1 << 11)
+# define DPBUNIT_CLOCK_GATE_DISABLE		(1 << 10)
+# define DCUNIT_CLOCK_GATE_DISABLE		(1 << 9)
+# define DPUNIT_CLOCK_GATE_DISABLE		(1 << 8)
+# define VRUNIT_CLOCK_GATE_DISABLE		(1 << 7) /* 915+: reserved */
+# define OVHUNIT_CLOCK_GATE_DISABLE		(1 << 6) /* 830-865 */
+# define DPIOUNIT_CLOCK_GATE_DISABLE		(1 << 6) /* 915-945 */
+# define OVFUNIT_CLOCK_GATE_DISABLE		(1 << 5)
+# define OVBUNIT_CLOCK_GATE_DISABLE		(1 << 4)
+/*
+ * This bit must be set on the 830 to prevent hangs when turning off the
+ * overlay scaler.
+ */
+# define OVRUNIT_CLOCK_GATE_DISABLE		(1 << 3)
+# define OVCUNIT_CLOCK_GATE_DISABLE		(1 << 2)
+# define OVUUNIT_CLOCK_GATE_DISABLE		(1 << 1)
+# define ZVUNIT_CLOCK_GATE_DISABLE		(1 << 0) /* 830 */
+# define OVLUNIT_CLOCK_GATE_DISABLE		(1 << 0) /* 845,865 */
 #define SOUTH_CHICKEN1		_MMIO(0xc2000)
 #define  FDIA_PHASE_SYNC_SHIFT_OVR	19
 #define  FDIA_PHASE_SYNC_SHIFT_EN	18
@@ -31,6 +71,15 @@
 #define  LPT_PWM_GRANULARITY		(1 << 5)
 #define  DPLS_EDP_PPS_FIX_DIS		(1 << 0)
 
+#define SOUTH_DSPCLK_GATE_D	_MMIO(0xc2020)
+#define  PCH_GMBUSUNIT_CLOCK_GATE_DISABLE (1 << 31)
+#define  PCH_DPLUNIT_CLOCK_GATE_DISABLE (1 << 30)
+#define  PCH_DPLSUNIT_CLOCK_GATE_DISABLE (1 << 29)
+#define  PCH_DPMGUNIT_CLOCK_GATE_DISABLE (1 << 15)
+#define  PCH_CPUNIT_CLOCK_GATE_DISABLE (1 << 14)
+#define  CNP_PWM_CGE_GATING_DISABLE (1 << 13)
+#define  PCH_LP_PARTITION_LEVEL_DISABLE  (1 << 12)
+
 #define _TRANSA_CHICKEN2	 0xf0064
 #define _TRANSB_CHICKEN2	 0xf1064
 #define TRANS_CHICKEN2(pipe)	_MMIO_PIPE(pipe, _TRANSA_CHICKEN2, _TRANSB_CHICKEN2)
-- 
2.50.1

