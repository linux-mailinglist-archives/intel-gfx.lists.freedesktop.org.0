Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 078806BD0DA
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 14:29:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D156A10E1DF;
	Thu, 16 Mar 2023 13:29:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6BA410E1DF
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678973393; x=1710509393;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=u69CW3jNWH8J05QXvXeY7zkveloKyEfiTv0n3Z96P8Y=;
 b=E4wtTRjbVzB/GNLe7q65MDIR0ONPB/309W5AJSuYeCRwfEqaCWC9fyPN
 aTcAKY9kdEBBQ7x8ILMwtAtr5X2JE8+Ys7WKYuobmcmQgFpVx1Kh3/DBc
 aSmclvXeyLS835BJMZKf7+ZHi6VVyDFt2mpke3ZXahWoyF/a/GyGpSrLN
 VVlrUKqe+eC+fsIzANuUeGZmZMr87DtNGGX21xT4dQWG9qlEApDwE8jx4
 +VScBchsxDQQdDNEa1Uu4twqpM/SgcdHm5h73UfiIQ9pf3V2VIag4MoKa
 WeRF6/dMwP5HlXuhIqsGRlQhRJcouFydwL3uA1HNR9L2LeEqd5apO7aZp Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="317639123"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="317639123"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:29:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="712358867"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="712358867"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.158])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:29:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 15:29:32 +0200
Message-Id: <aa93b34e786c5566acf8f053ffed96c160a23898.1678973282.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1678973282.git.jani.nikula@intel.com>
References: <cover.1678973282.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/7] drm/i915/aux: split out DP AUX regs to a
 separate file
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Clean up i915_reg.h by splitting out DP AUX regs to
display/intel_dp_aux_regs.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../i915/display/intel_display_power_well.c   |  1 +
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |  1 +
 .../gpu/drm/i915/display/intel_dp_aux_regs.h  | 84 +++++++++++++++++++
 drivers/gpu/drm/i915/gvt/edid.c               |  1 +
 drivers/gpu/drm/i915/gvt/handlers.c           |  1 +
 drivers/gpu/drm/i915/i915_reg.h               | 73 ----------------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  1 +
 7 files changed, 89 insertions(+), 73 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dp_aux_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 1676df1dc066..9accc24db7f7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -15,6 +15,7 @@
 #include "intel_dkl_phy.h"
 #include "intel_dkl_phy_regs.h"
 #include "intel_dmc.h"
+#include "intel_dp_aux_regs.h"
 #include "intel_dpio_phy.h"
 #include "intel_dpll.h"
 #include "intel_hotplug.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 96967e21c94c..83317115b51b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -10,6 +10,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dp_aux.h"
+#include "intel_dp_aux_regs.h"
 #include "intel_pps.h"
 #include "intel_tc.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
new file mode 100644
index 000000000000..5702f318d537
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
@@ -0,0 +1,84 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef __INTEL_DP_AUX_REGS_H__
+#define __INTEL_DP_AUX_REGS_H__
+
+#include "intel_display_reg_defs.h"
+
+/*
+ * The aux channel provides a way to talk to the signal sink for DDC etc. Max
+ * packet size supported is 20 bytes in each direction, hence the 5 fixed data
+ * registers
+ */
+#define _DPA_AUX_CH_CTL		(DISPLAY_MMIO_BASE(dev_priv) + 0x64010)
+#define _DPA_AUX_CH_DATA1	(DISPLAY_MMIO_BASE(dev_priv) + 0x64014)
+
+#define _DPB_AUX_CH_CTL		(DISPLAY_MMIO_BASE(dev_priv) + 0x64110)
+#define _DPB_AUX_CH_DATA1	(DISPLAY_MMIO_BASE(dev_priv) + 0x64114)
+
+#define DP_AUX_CH_CTL(aux_ch)	_MMIO_PORT(aux_ch, _DPA_AUX_CH_CTL, _DPB_AUX_CH_CTL)
+#define DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PORT(aux_ch, _DPA_AUX_CH_DATA1, _DPB_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
+
+#define _XELPDP_USBC1_AUX_CH_CTL	0x16F210
+#define _XELPDP_USBC2_AUX_CH_CTL	0x16F410
+#define _XELPDP_USBC3_AUX_CH_CTL	0x16F610
+#define _XELPDP_USBC4_AUX_CH_CTL	0x16F810
+
+#define XELPDP_DP_AUX_CH_CTL(aux_ch)		_MMIO(_PICK(aux_ch, \
+						       _DPA_AUX_CH_CTL, \
+						       _DPB_AUX_CH_CTL, \
+						       0, /* port/aux_ch C is non-existent */ \
+						       _XELPDP_USBC1_AUX_CH_CTL, \
+						       _XELPDP_USBC2_AUX_CH_CTL, \
+						       _XELPDP_USBC3_AUX_CH_CTL, \
+						       _XELPDP_USBC4_AUX_CH_CTL))
+
+#define _XELPDP_USBC1_AUX_CH_DATA1      0x16F214
+#define _XELPDP_USBC2_AUX_CH_DATA1      0x16F414
+#define _XELPDP_USBC3_AUX_CH_DATA1      0x16F614
+#define _XELPDP_USBC4_AUX_CH_DATA1      0x16F814
+
+#define XELPDP_DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PICK(aux_ch, \
+						       _DPA_AUX_CH_DATA1, \
+						       _DPB_AUX_CH_DATA1, \
+						       0, /* port/aux_ch C is non-existent */ \
+						       _XELPDP_USBC1_AUX_CH_DATA1, \
+						       _XELPDP_USBC2_AUX_CH_DATA1, \
+						       _XELPDP_USBC3_AUX_CH_DATA1, \
+						       _XELPDP_USBC4_AUX_CH_DATA1) + (i) * 4)
+
+#define   DP_AUX_CH_CTL_SEND_BUSY	    (1 << 31)
+#define   DP_AUX_CH_CTL_DONE		    (1 << 30)
+#define   DP_AUX_CH_CTL_INTERRUPT	    (1 << 29)
+#define   DP_AUX_CH_CTL_TIME_OUT_ERROR	    (1 << 28)
+#define   DP_AUX_CH_CTL_TIME_OUT_400us	    (0 << 26)
+#define   DP_AUX_CH_CTL_TIME_OUT_600us	    (1 << 26)
+#define   DP_AUX_CH_CTL_TIME_OUT_800us	    (2 << 26)
+#define   DP_AUX_CH_CTL_TIME_OUT_MAX	    (3 << 26) /* Varies per platform */
+#define   DP_AUX_CH_CTL_TIME_OUT_MASK	    (3 << 26)
+#define   DP_AUX_CH_CTL_RECEIVE_ERROR	    (1 << 25)
+#define   DP_AUX_CH_CTL_MESSAGE_SIZE_MASK    (0x1f << 20)
+#define   DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT   20
+#define   XELPDP_DP_AUX_CH_CTL_POWER_REQUEST REG_BIT(19)
+#define   XELPDP_DP_AUX_CH_CTL_POWER_STATUS  REG_BIT(18)
+#define   DP_AUX_CH_CTL_PRECHARGE_2US_MASK   (0xf << 16)
+#define   DP_AUX_CH_CTL_PRECHARGE_2US_SHIFT  16
+#define   DP_AUX_CH_CTL_AUX_AKSV_SELECT	    (1 << 15)
+#define   DP_AUX_CH_CTL_MANCHESTER_TEST	    (1 << 14)
+#define   DP_AUX_CH_CTL_SYNC_TEST	    (1 << 13)
+#define   DP_AUX_CH_CTL_DEGLITCH_TEST	    (1 << 12)
+#define   DP_AUX_CH_CTL_PRECHARGE_TEST	    (1 << 11)
+#define   DP_AUX_CH_CTL_BIT_CLOCK_2X_MASK    (0x7ff)
+#define   DP_AUX_CH_CTL_BIT_CLOCK_2X_SHIFT   0
+#define   DP_AUX_CH_CTL_PSR_DATA_AUX_REG_SKL	(1 << 14)
+#define   DP_AUX_CH_CTL_FS_DATA_AUX_REG_SKL	(1 << 13)
+#define   DP_AUX_CH_CTL_GTC_DATA_AUX_REG_SKL	(1 << 12)
+#define   DP_AUX_CH_CTL_TBT_IO			(1 << 11)
+#define   DP_AUX_CH_CTL_FW_SYNC_PULSE_SKL_MASK (0x1f << 5)
+#define   DP_AUX_CH_CTL_FW_SYNC_PULSE_SKL(c) (((c) - 1) << 5)
+#define   DP_AUX_CH_CTL_SYNC_PULSE_SKL(c)   ((c) - 1)
+
+#endif /* __INTEL_DP_AUX_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/gvt/edid.c b/drivers/gpu/drm/i915/gvt/edid.c
index 1b509c1a1e33..7c49a3d673a5 100644
--- a/drivers/gpu/drm/i915/gvt/edid.c
+++ b/drivers/gpu/drm/i915/gvt/edid.c
@@ -32,6 +32,7 @@
  *
  */
 
+#include "display/intel_dp_aux_regs.h"
 #include "display/intel_gmbus_regs.h"
 #include "gvt.h"
 #include "i915_drv.h"
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index d670abd2e6f9..70f8e35aa0af 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -43,6 +43,7 @@
 #include "intel_mchbar_regs.h"
 #include "display/intel_display_types.h"
 #include "display/intel_dmc_regs.h"
+#include "display/intel_dp_aux_regs.h"
 #include "display/intel_dpio_phy.h"
 #include "display/intel_fbc.h"
 #include "display/intel_pps_regs.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 30e745762424..c1a0f8c746ba 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2686,79 +2686,6 @@
 /* A fantasy */
 #define   DP_DETECTED			(1 << 2)
 
-/* The aux channel provides a way to talk to the
- * signal sink for DDC etc. Max packet size supported
- * is 20 bytes in each direction, hence the 5 fixed
- * data registers
- */
-#define _DPA_AUX_CH_CTL		(DISPLAY_MMIO_BASE(dev_priv) + 0x64010)
-#define _DPA_AUX_CH_DATA1	(DISPLAY_MMIO_BASE(dev_priv) + 0x64014)
-
-#define _DPB_AUX_CH_CTL		(DISPLAY_MMIO_BASE(dev_priv) + 0x64110)
-#define _DPB_AUX_CH_DATA1	(DISPLAY_MMIO_BASE(dev_priv) + 0x64114)
-
-#define DP_AUX_CH_CTL(aux_ch)	_MMIO_PORT(aux_ch, _DPA_AUX_CH_CTL, _DPB_AUX_CH_CTL)
-#define DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PORT(aux_ch, _DPA_AUX_CH_DATA1, _DPB_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
-
-#define _XELPDP_USBC1_AUX_CH_CTL	0x16F210
-#define _XELPDP_USBC2_AUX_CH_CTL	0x16F410
-#define _XELPDP_USBC3_AUX_CH_CTL	0x16F610
-#define _XELPDP_USBC4_AUX_CH_CTL	0x16F810
-
-#define XELPDP_DP_AUX_CH_CTL(aux_ch)		_MMIO(_PICK(aux_ch, \
-						       _DPA_AUX_CH_CTL, \
-						       _DPB_AUX_CH_CTL, \
-						       0, /* port/aux_ch C is non-existent */ \
-						       _XELPDP_USBC1_AUX_CH_CTL, \
-						       _XELPDP_USBC2_AUX_CH_CTL, \
-						       _XELPDP_USBC3_AUX_CH_CTL, \
-						       _XELPDP_USBC4_AUX_CH_CTL))
-
-#define _XELPDP_USBC1_AUX_CH_DATA1      0x16F214
-#define _XELPDP_USBC2_AUX_CH_DATA1      0x16F414
-#define _XELPDP_USBC3_AUX_CH_DATA1      0x16F614
-#define _XELPDP_USBC4_AUX_CH_DATA1      0x16F814
-
-#define XELPDP_DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PICK(aux_ch, \
-						       _DPA_AUX_CH_DATA1, \
-						       _DPB_AUX_CH_DATA1, \
-						       0, /* port/aux_ch C is non-existent */ \
-						       _XELPDP_USBC1_AUX_CH_DATA1, \
-						       _XELPDP_USBC2_AUX_CH_DATA1, \
-						       _XELPDP_USBC3_AUX_CH_DATA1, \
-						       _XELPDP_USBC4_AUX_CH_DATA1) + (i) * 4)
-
-#define   DP_AUX_CH_CTL_SEND_BUSY	    (1 << 31)
-#define   DP_AUX_CH_CTL_DONE		    (1 << 30)
-#define   DP_AUX_CH_CTL_INTERRUPT	    (1 << 29)
-#define   DP_AUX_CH_CTL_TIME_OUT_ERROR	    (1 << 28)
-#define   DP_AUX_CH_CTL_TIME_OUT_400us	    (0 << 26)
-#define   DP_AUX_CH_CTL_TIME_OUT_600us	    (1 << 26)
-#define   DP_AUX_CH_CTL_TIME_OUT_800us	    (2 << 26)
-#define   DP_AUX_CH_CTL_TIME_OUT_MAX	    (3 << 26) /* Varies per platform */
-#define   DP_AUX_CH_CTL_TIME_OUT_MASK	    (3 << 26)
-#define   DP_AUX_CH_CTL_RECEIVE_ERROR	    (1 << 25)
-#define   DP_AUX_CH_CTL_MESSAGE_SIZE_MASK    (0x1f << 20)
-#define   DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT   20
-#define   XELPDP_DP_AUX_CH_CTL_POWER_REQUEST REG_BIT(19)
-#define   XELPDP_DP_AUX_CH_CTL_POWER_STATUS  REG_BIT(18)
-#define   DP_AUX_CH_CTL_PRECHARGE_2US_MASK   (0xf << 16)
-#define   DP_AUX_CH_CTL_PRECHARGE_2US_SHIFT  16
-#define   DP_AUX_CH_CTL_AUX_AKSV_SELECT	    (1 << 15)
-#define   DP_AUX_CH_CTL_MANCHESTER_TEST	    (1 << 14)
-#define   DP_AUX_CH_CTL_SYNC_TEST	    (1 << 13)
-#define   DP_AUX_CH_CTL_DEGLITCH_TEST	    (1 << 12)
-#define   DP_AUX_CH_CTL_PRECHARGE_TEST	    (1 << 11)
-#define   DP_AUX_CH_CTL_BIT_CLOCK_2X_MASK    (0x7ff)
-#define   DP_AUX_CH_CTL_BIT_CLOCK_2X_SHIFT   0
-#define   DP_AUX_CH_CTL_PSR_DATA_AUX_REG_SKL	(1 << 14)
-#define   DP_AUX_CH_CTL_FS_DATA_AUX_REG_SKL	(1 << 13)
-#define   DP_AUX_CH_CTL_GTC_DATA_AUX_REG_SKL	(1 << 12)
-#define   DP_AUX_CH_CTL_TBT_IO			(1 << 11)
-#define   DP_AUX_CH_CTL_FW_SYNC_PULSE_SKL_MASK (0x1f << 5)
-#define   DP_AUX_CH_CTL_FW_SYNC_PULSE_SKL(c) (((c) - 1) << 5)
-#define   DP_AUX_CH_CTL_SYNC_PULSE_SKL(c)   ((c) - 1)
-
 /*
  * Computing GMCH M and N values for the Display Port link
  *
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 2b3fe469b360..145543b3aff0 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -7,6 +7,7 @@
 #include "display/intel_backlight_regs.h"
 #include "display/intel_display_types.h"
 #include "display/intel_dmc_regs.h"
+#include "display/intel_dp_aux_regs.h"
 #include "display/intel_dpio_phy.h"
 #include "display/intel_lvds_regs.h"
 #include "display/vlv_dsi_pll_regs.h"
-- 
2.39.2

