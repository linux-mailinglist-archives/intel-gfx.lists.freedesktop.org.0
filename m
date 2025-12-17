Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1828FCC62C7
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 07:10:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A17F010EBCA;
	Wed, 17 Dec 2025 06:10:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WpKsZVYe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9938F10EBBB;
 Wed, 17 Dec 2025 06:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765951851; x=1797487851;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZhUwYQIr1aBARLS6XJbwlt5lwJ34xTSD5kcFlJy7cus=;
 b=WpKsZVYe181izcp4p3+cZJdH/DHaErvx/zMb3nFjgmMLowVAzrUIHu3c
 voJNkRSTLTM8OB/TSJCoFrhxIBq4U27x7v4WBLxC2QJ5y1YMhte7JWE6X
 iB2dsymP2U6QT1rOZVFaxrUEiK1et7a6Jw1E/uAYiYy+PRBuUwu5FRm0K
 yIybuy/lBbepsyg9fnsRuP2m2GH7ckorIC/7/WKoCyaZgnKomBCZYkiVo
 tdijXZAvfIoeU3V1ganTRVzYxLpUbsU3Nv6Mww4i2Dmuv1SexIHzKHhlL
 WrbSlq+eAtxPojV4OlDGJfRKyeCfxrGhYGO7pftz1vHjJPzbBteF2ZR1o A==;
X-CSE-ConnectionGUID: j1bjb/DxTtyC+ABtLge5JQ==
X-CSE-MsgGUID: boMPjcBHRmOUFZTPAbzU6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="85471227"
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="85471227"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 22:10:51 -0800
X-CSE-ConnectionGUID: M/lmD1B2RNCR5ozg7grvnA==
X-CSE-MsgGUID: i7CasxmqRwWxdKP0KJOQxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="198105259"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa006.fm.intel.com with ESMTP; 16 Dec 2025 22:10:50 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 18/19] drm/{i915,
 xe}: Remove i915_reg.h from intel_modeset_setup.c
Date: Wed, 17 Dec 2025 11:52:08 +0530
Message-ID: <20251217062209.852324-19-uma.shankar@intel.com>
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

Move GEN9_CLKGATE_DIS_0 reg to common header to make
intel_modeset_setup.c free from i915_reg.h include.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_modeset_setup.c |  2 +-
 drivers/gpu/drm/i915/i915_reg.h                    | 13 -------------
 include/drm/intel/intel_gmd_common_regs.h          | 13 +++++++++++++
 3 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index d10cbf69a5f8..2502f0076e64 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -10,8 +10,8 @@
 #include <drm/drm_atomic_uapi.h>
 #include <drm/drm_print.h>
 #include <drm/drm_vblank.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
-#include "i915_reg.h"
 #include "i9xx_wm.h"
 #include "intel_atomic.h"
 #include "intel_bw.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 44df40e25e37..e41b80cae1d8 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -632,19 +632,6 @@
 #define VLV_CLK_CTL2			_MMIO(0x101104)
 #define   CLK_CTL2_CZCOUNT_30NS_SHIFT	28
 
-/*
- * GEN9 clock gating regs
- */
-#define GEN9_CLKGATE_DIS_0		_MMIO(0x46530)
-#define   DARBF_GATING_DIS		REG_BIT(27)
-#define   MTL_PIPEDMC_GATING_DIS(pipe)	REG_BIT(15 - (pipe))
-#define   PWM2_GATING_DIS		REG_BIT(14)
-#define   PWM1_GATING_DIS		REG_BIT(13)
-
-#define GEN9_CLKGATE_DIS_3		_MMIO(0x46538)
-#define   TGL_VRH_GATING_DIS		REG_BIT(31)
-#define   DPT_GATING_DIS		REG_BIT(22)
-
 #define VLV_DPFLIPSTAT				_MMIO(VLV_DISPLAY_BASE + 0x70028)
 #define   PIPEB_LINE_COMPARE_INT_EN			REG_BIT(29)
 #define   PIPEB_HLINE_INT_EN			REG_BIT(28)
diff --git a/include/drm/intel/intel_gmd_common_regs.h b/include/drm/intel/intel_gmd_common_regs.h
index 5a42b473de8a..6faccce3de2a 100644
--- a/include/drm/intel/intel_gmd_common_regs.h
+++ b/include/drm/intel/intel_gmd_common_regs.h
@@ -403,4 +403,17 @@
 #define  GEN11_GT_DW1_IRQ		(1 << 1)
 #define  GEN11_GT_DW0_IRQ		(1 << 0)
 
+/*
+ * GEN9 clock gating regs
+ */
+#define GEN9_CLKGATE_DIS_0		_MMIO(0x46530)
+#define   DARBF_GATING_DIS		REG_BIT(27)
+#define   MTL_PIPEDMC_GATING_DIS(pipe)	REG_BIT(15 - (pipe))
+#define   PWM2_GATING_DIS		REG_BIT(14)
+#define   PWM1_GATING_DIS		REG_BIT(13)
+
+#define GEN9_CLKGATE_DIS_3		_MMIO(0x46538)
+#define   TGL_VRH_GATING_DIS		REG_BIT(31)
+#define   DPT_GATING_DIS		REG_BIT(22)
+
 #endif
-- 
2.50.1

