Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8405BCC629A
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 07:10:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CF6B10EB6C;
	Wed, 17 Dec 2025 06:10:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f757L70g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4415110EB9B;
 Wed, 17 Dec 2025 06:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765951838; x=1797487838;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=g86QO8qvSzOIirhm/IIQZmmAynbyyxNAbXvJjky/5ts=;
 b=f757L70gYMTieKIYIln8nBsw2CwVznLGPzCC+jXXetoB/iWEmS/3t/L2
 RFhe+D5PogkjFy8EmWIhkw5bkBBO2AuHH8TZBYT+FoCx1pQIj4GCs7GNI
 z4oFGnP1ZA6hMf+qcU9vP5ioR1XeL00t7Ox+XarAxf2IBosjh6/jR05gP
 qdcpEAZF1dayAilpNH9LCXrcAelYdeFf5VYWj4Uel9fB+ahtoBCSQsgRq
 fpAreEVPp1Cd+NxIOyR6thOSTh7cB+ACxOqChJqDDwCVAaNZucs4mqJzo
 YzAk6OW7RSSIZEaqXqSxSiZzShXoI2FWg6Hmt6WMVo34KpwUxGMkL4eBp A==;
X-CSE-ConnectionGUID: py8PXZCKShKMXOYIFFYC/Q==
X-CSE-MsgGUID: c9w06xCKS46e4QXGZj3MVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="85471195"
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="85471195"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 22:10:38 -0800
X-CSE-ConnectionGUID: ujDRo4cVRWqdtrwGG0dsxQ==
X-CSE-MsgGUID: mNrXwGhyQK+SawBg5TwMFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="198105193"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa006.fm.intel.com with ESMTP; 16 Dec 2025 22:10:36 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 11/19] drm/{i915, xe}: Remove i915_reg.h from i9xx_wm.c
Date: Wed, 17 Dec 2025 11:52:01 +0530
Message-ID: <20251217062209.852324-12-uma.shankar@intel.com>
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

Move FW_BLC_SELF to common header to make i9xx_wm.c
free from i915_reg.h include.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c        |  2 +-
 .../gpu/drm/i915/display/intel_display_regs.h |  7 +++++++
 drivers/gpu/drm/i915/i915_reg.h               | 19 -------------------
 include/drm/intel/intel_gmd_common_regs.h     | 14 ++++++++++++++
 4 files changed, 22 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 167277cd8877..2d5c71ce39a2 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -6,9 +6,9 @@
 #include <linux/iopoll.h>
 
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
 #include "i915_drv.h"
-#include "i915_reg.h"
 #include "i9xx_wm.h"
 #include "i9xx_wm_regs.h"
 #include "intel_atomic.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 14fa089d4f5b..ecae358c5b0e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -3002,4 +3002,11 @@ enum skl_power_gate {
 					      DEIER, \
 					      DEIIR)
 
+#define FW_BLC		_MMIO(0x20d8)
+#define FW_BLC2		_MMIO(0x20dc)
+#define FW_BLC_SELF	_MMIO(0x20e0) /* 915+ only */
+#define   FW_BLC_SELF_EN_MASK      REG_BIT(31)
+#define   FW_BLC_SELF_FIFO_MASK    REG_BIT(16) /* 945 only */
+#define   FW_BLC_SELF_EN           REG_BIT(15) /* 945 only */
+
 #endif /* __INTEL_DISPLAY_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a75853cf58ab..1ae12cd1911b 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -395,24 +395,10 @@
 
 #define GEN2_ERROR_REGS		I915_ERROR_REGS(EMR, EIR)
 
-#define INSTPM	        _MMIO(0x20c0)
-#define   INSTPM_SELF_EN (1 << 12) /* 915GM only */
-#define   INSTPM_AGPBUSY_INT_EN (1 << 11) /* gen3: when disabled, pending interrupts
-					will not assert AGPBUSY# and will only
-					be delivered when out of C3. */
-#define   INSTPM_FORCE_ORDERING				(1 << 7) /* GEN6+ */
-#define   INSTPM_TLB_INVALIDATE	(1 << 9)
-#define   INSTPM_SYNC_FLUSH	(1 << 5)
 #define MEM_MODE	_MMIO(0x20cc)
 #define   MEM_DISPLAY_B_TRICKLE_FEED_DISABLE (1 << 3) /* 830 only */
 #define   MEM_DISPLAY_A_TRICKLE_FEED_DISABLE (1 << 2) /* 830/845 only */
 #define   MEM_DISPLAY_TRICKLE_FEED_DISABLE (1 << 2) /* 85x only */
-#define FW_BLC		_MMIO(0x20d8)
-#define FW_BLC2		_MMIO(0x20dc)
-#define FW_BLC_SELF	_MMIO(0x20e0) /* 915+ only */
-#define   FW_BLC_SELF_EN_MASK      REG_BIT(31)
-#define   FW_BLC_SELF_FIFO_MASK    REG_BIT(16) /* 945 only */
-#define   FW_BLC_SELF_EN           REG_BIT(15) /* 945 only */
 #define MM_BURST_LENGTH     0x00700000
 #define MM_FIFO_WATERMARK   0x0001F000
 #define LM_BURST_LENGTH     0x00000700
@@ -833,11 +819,6 @@
 #define CHICKEN_PAR2_1		_MMIO(0x42090)
 #define   KVM_CONFIG_CHANGE_NOTIFICATION_SELECT	REG_BIT(14)
 
-#define DISP_ARB_CTL	_MMIO(0x45000)
-#define   DISP_FBC_MEMORY_WAKE		REG_BIT(31)
-#define   DISP_TILE_SURFACE_SWIZZLING	REG_BIT(13)
-#define   DISP_FBC_WM_DIS		REG_BIT(15)
-
 #define GEN8_CHICKEN_DCPR_1			_MMIO(0x46430)
 #define   _LATENCY_REPORTING_REMOVED_PIPE_D	REG_BIT(31)
 #define   SKL_SELECT_ALTERNATE_DC_EXIT		REG_BIT(30)
diff --git a/include/drm/intel/intel_gmd_common_regs.h b/include/drm/intel/intel_gmd_common_regs.h
index cf91c4786e7b..9cd7f50c5de3 100644
--- a/include/drm/intel/intel_gmd_common_regs.h
+++ b/include/drm/intel/intel_gmd_common_regs.h
@@ -264,4 +264,18 @@
 #define SDEIIR  _MMIO(0xc4008)
 #define SDEIER  _MMIO(0xc400c)
 
+#define DISP_ARB_CTL	_MMIO(0x45000)
+#define   DISP_FBC_MEMORY_WAKE		REG_BIT(31)
+#define   DISP_TILE_SURFACE_SWIZZLING	REG_BIT(13)
+#define   DISP_FBC_WM_DIS		REG_BIT(15)
+
+#define INSTPM	        _MMIO(0x20c0)
+#define   INSTPM_SELF_EN (1 << 12) /* 915GM only */
+#define   INSTPM_AGPBUSY_INT_EN (1 << 11) /* gen3: when disabled, pending interrupts
+					will not assert AGPBUSY# and will only
+					be delivered when out of C3. */
+#define   INSTPM_FORCE_ORDERING				(1 << 7) /* GEN6+ */
+#define   INSTPM_TLB_INVALIDATE	(1 << 9)
+#define   INSTPM_SYNC_FLUSH	(1 << 5)
+
 #endif
-- 
2.50.1

