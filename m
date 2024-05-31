Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A23EC8D60FE
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 13:54:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6F2710E26D;
	Fri, 31 May 2024 11:54:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jxkUY8s1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECD1410E3A2
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 11:53:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717156428; x=1748692428;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=wW6wHbkN6a1BYklWavSPUeW3VpwrPhGBINDfuauuwQs=;
 b=jxkUY8s1/QeNwcT11iURardTpFj4kv5d161VhgjM573EXnFdEzs5h0pM
 zBHh8kCWFyndMLBsI1HsO7Khqn8lbJIMG4vRy6o2oyQDaYlsBNPdLolhy
 8SyeMzJ5OB8WCzJEtbdsaQLYCmGuZIY6EdpGF1QXKQSd/RfIvJg4Fknge
 d/hVZZmGoMDRpxkEUt1YPYpi8s6I43WtmJ/s2ROEQMnNgxanNX5Q/+puR
 GzglvQ8TFw19QE0RIkBt/TI//TVkiVTSLy62YukiOJf48fmP2ADaZkOYo
 OGzu2sVaZqW1+mVOQs6Y0XV1orZ617cngUv0oMZ1SWKZp/ShuMwUllUMX A==;
X-CSE-ConnectionGUID: BTeiqfDJSHiLmAGIT4UUvw==
X-CSE-MsgGUID: aXYbVjrfQxa7B/g2fB0QDg==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13864654"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="13864654"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 04:53:48 -0700
X-CSE-ConnectionGUID: uQS74SaLQcihYtB1apOsdg==
X-CSE-MsgGUID: J2x9tCxqTaOu0T0l0nlAiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="36134997"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 31 May 2024 04:53:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 31 May 2024 14:53:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/7] drm/i915: Extract intel_pipe_crc_regs.h
Date: Fri, 31 May 2024 14:53:36 +0300
Message-ID: <20240531115342.2763-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240531115342.2763-1-ville.syrjala@linux.intel.com>
References: <20240531115342.2763-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The CRC registers are a pretty self contained bunch.
Extract them to a separate header to declutter i915_reg.h.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  |  1 +
 drivers/gpu/drm/i915/display/intel_pipe_crc.c |  1 +
 .../drm/i915/display/intel_pipe_crc_regs.h    | 92 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h               | 81 ----------------
 4 files changed, 94 insertions(+), 81 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 1674570dff1e..9c12cc0f2ed0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -18,6 +18,7 @@
 #include "intel_fifo_underrun.h"
 #include "intel_gmbus.h"
 #include "intel_hotplug_irq.h"
+#include "intel_pipe_crc_regs.h"
 #include "intel_pmdemand.h"
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc.c b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
index b3dcfee6ec0e..82ceede0b2b1 100644
--- a/drivers/gpu/drm/i915/display/intel_pipe_crc.c
+++ b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
@@ -34,6 +34,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_pipe_crc.h"
+#include "intel_pipe_crc_regs.h"
 
 static const char * const pipe_crc_sources[] = {
 	[INTEL_PIPE_CRC_SOURCE_NONE] = "none",
diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h b/drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h
new file mode 100644
index 000000000000..e684bc9ae1c0
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h
@@ -0,0 +1,92 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#ifndef __INTEL_PIPE_CRC_REGS_H__
+#define __INTEL_PIPE_CRC_REGS_H__
+
+#include "intel_display_reg_defs.h"
+
+/* Pipe A CRC regs */
+#define _PIPE_CRC_CTL_A			0x60050
+#define   PIPE_CRC_ENABLE		REG_BIT(31)
+/* skl+ source selection */
+#define   PIPE_CRC_SOURCE_MASK_SKL	REG_GENMASK(30, 28)
+#define   PIPE_CRC_SOURCE_PLANE_1_SKL	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_SKL, 0)
+#define   PIPE_CRC_SOURCE_PLANE_2_SKL	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_SKL, 2)
+#define   PIPE_CRC_SOURCE_DMUX_SKL	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_SKL, 4)
+#define   PIPE_CRC_SOURCE_PLANE_3_SKL	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_SKL, 6)
+#define   PIPE_CRC_SOURCE_PLANE_4_SKL	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_SKL, 7)
+#define   PIPE_CRC_SOURCE_PLANE_5_SKL	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_SKL, 5)
+#define   PIPE_CRC_SOURCE_PLANE_6_SKL	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_SKL, 3)
+#define   PIPE_CRC_SOURCE_PLANE_7_SKL	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_SKL, 1)
+/* ivb+ source selection */
+#define   PIPE_CRC_SOURCE_MASK_IVB	REG_GENMASK(30, 29)
+#define   PIPE_CRC_SOURCE_PRIMARY_IVB	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_IVB, 0)
+#define   PIPE_CRC_SOURCE_SPRITE_IVB	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_IVB, 1)
+#define   PIPE_CRC_SOURCE_PF_IVB	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_IVB, 2)
+/* ilk+ source selection */
+#define   PIPE_CRC_SOURCE_MASK_ILK	REG_GENMASK(30, 28)
+#define   PIPE_CRC_SOURCE_PRIMARY_ILK	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_ILK, 0)
+#define   PIPE_CRC_SOURCE_SPRITE_ILK	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_ILK, 1)
+#define   PIPE_CRC_SOURCE_PIPE_ILK	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_ILK, 2)
+/* embedded DP port on the north display block */
+#define   PIPE_CRC_SOURCE_PORT_A_ILK	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_ILK, 4)
+#define   PIPE_CRC_SOURCE_FDI_ILK	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_ILK, 5)
+/* vlv source selection */
+#define   PIPE_CRC_SOURCE_MASK_VLV	REG_GENMASK(30, 27)
+#define   PIPE_CRC_SOURCE_PIPE_VLV	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_VLV, 0)
+#define   PIPE_CRC_SOURCE_HDMIB_VLV	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_VLV, 1)
+#define   PIPE_CRC_SOURCE_HDMIC_VLV	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_VLV, 2)
+/* with DP port the pipe source is invalid */
+#define   PIPE_CRC_SOURCE_DP_D_VLV	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_VLV, 3)
+#define   PIPE_CRC_SOURCE_DP_B_VLV	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_VLV, 6)
+#define   PIPE_CRC_SOURCE_DP_C_VLV	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_VLV, 7)
+/* gen3+ source selection */
+#define   PIPE_CRC_SOURCE_MASK_I9XX	REG_GENMASK(30, 28)
+#define   PIPE_CRC_SOURCE_PIPE_I9XX	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 0)
+#define   PIPE_CRC_SOURCE_SDVOB_I9XX	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 1)
+#define   PIPE_CRC_SOURCE_SDVOC_I9XX	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 2)
+/* with DP/TV port the pipe source is invalid */
+#define   PIPE_CRC_SOURCE_DP_D_G4X	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 3)
+#define   PIPE_CRC_SOURCE_TV_PRE	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 4)
+#define   PIPE_CRC_SOURCE_TV_POST	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 5)
+#define   PIPE_CRC_SOURCE_DP_B_G4X	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 6)
+#define   PIPE_CRC_SOURCE_DP_C_G4X	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 7)
+/* gen2 doesn't have source selection bits */
+#define   PIPE_CRC_INCLUDE_BORDER_I8XX	REG_BIT(30)
+
+#define _PIPE_CRC_RES_1_A_IVB		0x60064
+#define _PIPE_CRC_RES_2_A_IVB		0x60068
+#define _PIPE_CRC_RES_3_A_IVB		0x6006c
+#define _PIPE_CRC_RES_4_A_IVB		0x60070
+#define _PIPE_CRC_RES_5_A_IVB		0x60074
+
+#define _PIPE_CRC_RES_RED_A		0x60060
+#define _PIPE_CRC_RES_GREEN_A		0x60064
+#define _PIPE_CRC_RES_BLUE_A		0x60068
+#define _PIPE_CRC_RES_RES1_A_I915	0x6006c
+#define _PIPE_CRC_RES_RES2_A_G4X	0x60080
+
+/* Pipe B CRC regs */
+#define _PIPE_CRC_RES_1_B_IVB		0x61064
+#define _PIPE_CRC_RES_2_B_IVB		0x61068
+#define _PIPE_CRC_RES_3_B_IVB		0x6106c
+#define _PIPE_CRC_RES_4_B_IVB		0x61070
+#define _PIPE_CRC_RES_5_B_IVB		0x61074
+
+#define PIPE_CRC_CTL(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_CTL_A)
+#define PIPE_CRC_RES_1_IVB(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_1_A_IVB)
+#define PIPE_CRC_RES_2_IVB(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_2_A_IVB)
+#define PIPE_CRC_RES_3_IVB(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_3_A_IVB)
+#define PIPE_CRC_RES_4_IVB(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_4_A_IVB)
+#define PIPE_CRC_RES_5_IVB(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_5_A_IVB)
+
+#define PIPE_CRC_RES_RED(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RED_A)
+#define PIPE_CRC_RES_GREEN(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_GREEN_A)
+#define PIPE_CRC_RES_BLUE(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_BLUE_A)
+#define PIPE_CRC_RES_RES1_I915(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES1_A_I915)
+#define PIPE_CRC_RES_RES2_G4X(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES2_A_G4X)
+
+#endif /* __INTEL_PIPE_CRC_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index be57812a6b07..b62adb1829f1 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1069,87 +1069,6 @@
  * Display engine regs
  */
 
-/* Pipe A CRC regs */
-#define _PIPE_CRC_CTL_A			0x60050
-#define   PIPE_CRC_ENABLE		REG_BIT(31)
-/* skl+ source selection */
-#define   PIPE_CRC_SOURCE_MASK_SKL	REG_GENMASK(30, 28)
-#define   PIPE_CRC_SOURCE_PLANE_1_SKL	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_SKL, 0)
-#define   PIPE_CRC_SOURCE_PLANE_2_SKL	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_SKL, 2)
-#define   PIPE_CRC_SOURCE_DMUX_SKL	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_SKL, 4)
-#define   PIPE_CRC_SOURCE_PLANE_3_SKL	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_SKL, 6)
-#define   PIPE_CRC_SOURCE_PLANE_4_SKL	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_SKL, 7)
-#define   PIPE_CRC_SOURCE_PLANE_5_SKL	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_SKL, 5)
-#define   PIPE_CRC_SOURCE_PLANE_6_SKL	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_SKL, 3)
-#define   PIPE_CRC_SOURCE_PLANE_7_SKL	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_SKL, 1)
-/* ivb+ source selection */
-#define   PIPE_CRC_SOURCE_MASK_IVB	REG_GENMASK(30, 29)
-#define   PIPE_CRC_SOURCE_PRIMARY_IVB	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_IVB, 0)
-#define   PIPE_CRC_SOURCE_SPRITE_IVB	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_IVB, 1)
-#define   PIPE_CRC_SOURCE_PF_IVB	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_IVB, 2)
-/* ilk+ source selection */
-#define   PIPE_CRC_SOURCE_MASK_ILK	REG_GENMASK(30, 28)
-#define   PIPE_CRC_SOURCE_PRIMARY_ILK	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_ILK, 0)
-#define   PIPE_CRC_SOURCE_SPRITE_ILK	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_ILK, 1)
-#define   PIPE_CRC_SOURCE_PIPE_ILK	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_ILK, 2)
-/* embedded DP port on the north display block */
-#define   PIPE_CRC_SOURCE_PORT_A_ILK	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_ILK, 4)
-#define   PIPE_CRC_SOURCE_FDI_ILK	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_ILK, 5)
-/* vlv source selection */
-#define   PIPE_CRC_SOURCE_MASK_VLV	REG_GENMASK(30, 27)
-#define   PIPE_CRC_SOURCE_PIPE_VLV	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_VLV, 0)
-#define   PIPE_CRC_SOURCE_HDMIB_VLV	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_VLV, 1)
-#define   PIPE_CRC_SOURCE_HDMIC_VLV	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_VLV, 2)
-/* with DP port the pipe source is invalid */
-#define   PIPE_CRC_SOURCE_DP_D_VLV	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_VLV, 3)
-#define   PIPE_CRC_SOURCE_DP_B_VLV	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_VLV, 6)
-#define   PIPE_CRC_SOURCE_DP_C_VLV	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_VLV, 7)
-/* gen3+ source selection */
-#define   PIPE_CRC_SOURCE_MASK_I9XX	REG_GENMASK(30, 28)
-#define   PIPE_CRC_SOURCE_PIPE_I9XX	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 0)
-#define   PIPE_CRC_SOURCE_SDVOB_I9XX	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 1)
-#define   PIPE_CRC_SOURCE_SDVOC_I9XX	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 2)
-/* with DP/TV port the pipe source is invalid */
-#define   PIPE_CRC_SOURCE_DP_D_G4X	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 3)
-#define   PIPE_CRC_SOURCE_TV_PRE	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 4)
-#define   PIPE_CRC_SOURCE_TV_POST	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 5)
-#define   PIPE_CRC_SOURCE_DP_B_G4X	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 6)
-#define   PIPE_CRC_SOURCE_DP_C_G4X	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 7)
-/* gen2 doesn't have source selection bits */
-#define   PIPE_CRC_INCLUDE_BORDER_I8XX	REG_BIT(30)
-
-#define _PIPE_CRC_RES_1_A_IVB		0x60064
-#define _PIPE_CRC_RES_2_A_IVB		0x60068
-#define _PIPE_CRC_RES_3_A_IVB		0x6006c
-#define _PIPE_CRC_RES_4_A_IVB		0x60070
-#define _PIPE_CRC_RES_5_A_IVB		0x60074
-
-#define _PIPE_CRC_RES_RED_A		0x60060
-#define _PIPE_CRC_RES_GREEN_A		0x60064
-#define _PIPE_CRC_RES_BLUE_A		0x60068
-#define _PIPE_CRC_RES_RES1_A_I915	0x6006c
-#define _PIPE_CRC_RES_RES2_A_G4X	0x60080
-
-/* Pipe B CRC regs */
-#define _PIPE_CRC_RES_1_B_IVB		0x61064
-#define _PIPE_CRC_RES_2_B_IVB		0x61068
-#define _PIPE_CRC_RES_3_B_IVB		0x6106c
-#define _PIPE_CRC_RES_4_B_IVB		0x61070
-#define _PIPE_CRC_RES_5_B_IVB		0x61074
-
-#define PIPE_CRC_CTL(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_CTL_A)
-#define PIPE_CRC_RES_1_IVB(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_1_A_IVB)
-#define PIPE_CRC_RES_2_IVB(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_2_A_IVB)
-#define PIPE_CRC_RES_3_IVB(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_3_A_IVB)
-#define PIPE_CRC_RES_4_IVB(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_4_A_IVB)
-#define PIPE_CRC_RES_5_IVB(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_5_A_IVB)
-
-#define PIPE_CRC_RES_RED(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RED_A)
-#define PIPE_CRC_RES_GREEN(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_GREEN_A)
-#define PIPE_CRC_RES_BLUE(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_BLUE_A)
-#define PIPE_CRC_RES_RES1_I915(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES1_A_I915)
-#define PIPE_CRC_RES_RES2_G4X(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES2_A_G4X)
-
 /* Pipe/transcoder A timing regs */
 #define _TRANS_HTOTAL_A		0x60000
 #define   HTOTAL_MASK			REG_GENMASK(31, 16)
-- 
2.44.1

