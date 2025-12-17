Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47DECCC62A1
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 07:10:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6A9510EBA2;
	Wed, 17 Dec 2025 06:10:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZY/abXCL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9883910EB98;
 Wed, 17 Dec 2025 06:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765951840; x=1797487840;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fUe6hE8iJ1h3YRuOIOZCPv/fn/yZUvk8DZ9XAphYlLE=;
 b=ZY/abXCLAcEaGQEvyhBzmnYWAQwV0QE8qu2ReG5ga/SqWOFgyu1AMA4e
 dc7FP+kgw8h27Mod+KuG+s1q49rk6xtGNlnpKDkxt+C7ROS6iZ7KnjqnM
 ZAbmfZzLpEQUOph3jHtT46OLKfjNnLvIp+JRn9V9LnO/YefUR3V1zdMQ+
 WG4ztRQGNsD3EOiP2iPaP4Elj0oNPzdMmgSLUCvu/jw1ekdO+LBdkOoKG
 NKnmHTQaDcDu05qEr9EExTyUNjRuCD+VyGFwwwwCCE1q8DK7PZ+x9E5nk
 ZzdQENVk8Rm25sf/3M7qUyIEc7zn279J8tXbWtpNalREvu07tAnBGsTji Q==;
X-CSE-ConnectionGUID: 1Th1fmUgTrGP8SpaafHUJA==
X-CSE-MsgGUID: Pc/qkop1R42063VmitdgEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="85471202"
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="85471202"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 22:10:40 -0800
X-CSE-ConnectionGUID: Fam0nm/ORVmkK0B+ay10WQ==
X-CSE-MsgGUID: y35PsiYzRX2jF/53VQG8TQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="198105197"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa006.fm.intel.com with ESMTP; 16 Dec 2025 22:10:38 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 12/19] drm/{i915, xe}: Remove i915_reg.h from g4x_hdmi.c
Date: Wed, 17 Dec 2025 11:52:02 +0530
Message-ID: <20251217062209.852324-13-uma.shankar@intel.com>
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

Move TRANS_CHICKEN1 reg to common header to make g4x_hdmi.c
free from i915_reg.h dependency.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_hdmi.c   |  2 +-
 drivers/gpu/drm/i915/i915_reg.h           | 12 ------------
 include/drm/intel/intel_gmd_common_regs.h | 13 +++++++++++++
 3 files changed, 14 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 8b22447e8e23..c5bff08c7cee 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -6,9 +6,9 @@
  */
 
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
 #include "g4x_hdmi.h"
-#include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_audio.h"
 #include "intel_connector.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 1ae12cd1911b..77ae9a9ba27a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -835,18 +835,6 @@
 #define   MASK_WAKEMEM				REG_BIT(13)
 #define   DDI_CLOCK_REG_ACCESS			REG_BIT(7)
 
-/* Icelake PPS_DATA and _ECC DIP Registers.
- * These are available for transcoders B,C and eDP.
- * Adding the _A so as to reuse the _MMIO_TRANS2
- * definition, with which it offsets to the right location.
- */
-
-#define _TRANSA_CHICKEN1	 0xf0060
-#define _TRANSB_CHICKEN1	 0xf1060
-#define TRANS_CHICKEN1(pipe)	_MMIO_PIPE(pipe, _TRANSA_CHICKEN1, _TRANSB_CHICKEN1)
-#define   TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE	REG_BIT(10)
-#define   TRANS_CHICKEN1_DP0UNIT_GC_DISABLE	REG_BIT(4)
-
 #define  VLV_PMWGICZ				_MMIO(0x1300a4)
 
 #define  HSW_EDRAM_CAP				_MMIO(0x120010)
diff --git a/include/drm/intel/intel_gmd_common_regs.h b/include/drm/intel/intel_gmd_common_regs.h
index 9cd7f50c5de3..01fffc983e47 100644
--- a/include/drm/intel/intel_gmd_common_regs.h
+++ b/include/drm/intel/intel_gmd_common_regs.h
@@ -103,6 +103,19 @@
 #define   SKL_PLANE1_STRETCH_MAX_X1	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 3)
 #define   BDW_UNMASK_VBL_TO_REGS_IN_SRD	REG_BIT(0) /* bdw */
 
+/*
+ * Icelake PPS_DATA and _ECC DIP Registers.
+ * These are available for transcoders B,C and eDP.
+ * Adding the _A so as to reuse the _MMIO_TRANS2
+ * definition, with which it offsets to the right location.
+ */
+
+#define _TRANSA_CHICKEN1	 0xf0060
+#define _TRANSB_CHICKEN1	 0xf1060
+#define TRANS_CHICKEN1(pipe)	_MMIO_PIPE(pipe, _TRANSA_CHICKEN1, _TRANSB_CHICKEN1)
+#define   TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE	REG_BIT(10)
+#define   TRANS_CHICKEN1_DP0UNIT_GC_DISABLE	REG_BIT(4)
+
 #define _TRANSA_CHICKEN2	 0xf0064
 #define _TRANSB_CHICKEN2	 0xf1064
 #define TRANS_CHICKEN2(pipe)	_MMIO_PIPE(pipe, _TRANSA_CHICKEN2, _TRANSB_CHICKEN2)
-- 
2.50.1

