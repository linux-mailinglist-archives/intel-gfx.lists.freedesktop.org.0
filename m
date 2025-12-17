Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE867CC62A9
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 07:10:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3060D10EBA6;
	Wed, 17 Dec 2025 06:10:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HGLBNkXK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F0E910EBA3;
 Wed, 17 Dec 2025 06:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765951844; x=1797487844;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Rkwlg6rl/0X7TggfB2BniwimAK/oED0JfeNSHC4K3RM=;
 b=HGLBNkXKis+xEnUr3CpAhnuEJTKf7IHssXKA1zCRsN3O9YM6xODasK97
 2ftNJpz9c/a2Ej4ZrOXn0tx9s9DKtEFfwvREsASWGjvsU+nKR2stsuHQR
 uFdy1thLK/QEG6KnNbgjBD1NpZ105mqzZdCBI4v94azds1vaQmlfMBkeW
 F4hyOEBs2L0Rub4etcCmcbcQ4bhiOty/Q2G061H5SMPpmjqCj7DvfY8uY
 lvkI/WV4zMQso8YYJnSskRsfwIehAoJz6qLBxoznGqoPIHcTh8Z0VL9/v
 YHAO6l3z5ta7zWwPYrSDjLjv0Y3ni7ru0kUKEhaLyIbQLEk5MxIh+/hv4 Q==;
X-CSE-ConnectionGUID: lyt5l55HQPSjEYyTa3Q2ng==
X-CSE-MsgGUID: V+JI/bcAShGdTFte5CldTQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="85471210"
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="85471210"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 22:10:44 -0800
X-CSE-ConnectionGUID: W546qvC2TgWvO0JXOcg7qw==
X-CSE-MsgGUID: 4illWcGSTR+PkK1Xm8F4fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="198105207"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa006.fm.intel.com with ESMTP; 16 Dec 2025 22:10:42 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 14/19] drm/{i915, xe}: Remove i915_reg.h from intel_psr.c
Date: Wed, 17 Dec 2025 11:52:04 +0530
Message-ID: <20251217062209.852324-15-uma.shankar@intel.com>
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

Move some chicken registers to common header to make
intel_psr.c free from including i915_reg.h.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c  |  2 +-
 drivers/gpu/drm/i915/i915_reg.h           | 26 -----------------------
 include/drm/intel/intel_gmd_common_regs.h | 26 +++++++++++++++++++++++
 3 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 91f4ac86c7ad..79bb2a73ee2f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -28,8 +28,8 @@
 #include <drm/drm_debugfs.h>
 #include <drm/drm_print.h>
 #include <drm/drm_vblank.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
-#include "i915_reg.h"
 #include "intel_alpm.h"
 #include "intel_atomic.h"
 #include "intel_crtc.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index fd3f87f0bcd9..409c450a208a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -806,35 +806,9 @@
 #define   CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE	REG_BIT(5)
 #define   CHICKEN3_DGMG_DONE_FIX_DISABLE	REG_BIT(2)
 
-#define CHICKEN_PAR1_1		_MMIO(0x42080)
-#define   IGNORE_KVMR_PIPE_A		REG_BIT(23)
-#define   KBL_ARB_FILL_SPARE_22		REG_BIT(22)
-#define   DIS_RAM_BYPASS_PSR2_MAN_TRACK	REG_BIT(16)
-#define   SKL_DE_COMPRESSED_HASH_MODE	REG_BIT(15)
-#define   HSW_MASK_VBL_TO_PIPE_IN_SRD	REG_BIT(15) /* hsw/bdw */
-#define   FORCE_ARB_IDLE_PLANES		REG_BIT(14)
-#define   SKL_EDP_PSR_FIX_RDWRAP	REG_BIT(3)
-#define   IGNORE_PSR2_HW_TRACKING	REG_BIT(1)
-
 #define CHICKEN_PAR2_1		_MMIO(0x42090)
 #define   KVM_CONFIG_CHANGE_NOTIFICATION_SELECT	REG_BIT(14)
 
-#define GEN8_CHICKEN_DCPR_1			_MMIO(0x46430)
-#define   _LATENCY_REPORTING_REMOVED_PIPE_D	REG_BIT(31)
-#define   SKL_SELECT_ALTERNATE_DC_EXIT		REG_BIT(30)
-#define   _LATENCY_REPORTING_REMOVED_PIPE_C	REG_BIT(25)
-#define   _LATENCY_REPORTING_REMOVED_PIPE_B	REG_BIT(24)
-#define   _LATENCY_REPORTING_REMOVED_PIPE_A	REG_BIT(23)
-#define   LATENCY_REPORTING_REMOVED(pipe)	_PICK((pipe), \
-						      _LATENCY_REPORTING_REMOVED_PIPE_A, \
-						      _LATENCY_REPORTING_REMOVED_PIPE_B, \
-						      _LATENCY_REPORTING_REMOVED_PIPE_C, \
-						      _LATENCY_REPORTING_REMOVED_PIPE_D)
-#define   ICL_DELAY_PMRSP			REG_BIT(22)
-#define   DISABLE_FLR_SRC			REG_BIT(15)
-#define   MASK_WAKEMEM				REG_BIT(13)
-#define   DDI_CLOCK_REG_ACCESS			REG_BIT(7)
-
 #define  VLV_PMWGICZ				_MMIO(0x1300a4)
 
 #define  HSW_EDRAM_CAP				_MMIO(0x120010)
diff --git a/include/drm/intel/intel_gmd_common_regs.h b/include/drm/intel/intel_gmd_common_regs.h
index 59ea27228935..13b3e4ad27f4 100644
--- a/include/drm/intel/intel_gmd_common_regs.h
+++ b/include/drm/intel/intel_gmd_common_regs.h
@@ -299,4 +299,30 @@
 #define OROM_OFFSET				_MMIO(0x1020c0)
 #define   OROM_OFFSET_MASK			REG_GENMASK(20, 16)
 
+#define GEN8_CHICKEN_DCPR_1			_MMIO(0x46430)
+#define   _LATENCY_REPORTING_REMOVED_PIPE_D	REG_BIT(31)
+#define   SKL_SELECT_ALTERNATE_DC_EXIT		REG_BIT(30)
+#define   _LATENCY_REPORTING_REMOVED_PIPE_C	REG_BIT(25)
+#define   _LATENCY_REPORTING_REMOVED_PIPE_B	REG_BIT(24)
+#define   _LATENCY_REPORTING_REMOVED_PIPE_A	REG_BIT(23)
+#define   LATENCY_REPORTING_REMOVED(pipe)	_PICK((pipe), \
+						      _LATENCY_REPORTING_REMOVED_PIPE_A, \
+						      _LATENCY_REPORTING_REMOVED_PIPE_B, \
+						      _LATENCY_REPORTING_REMOVED_PIPE_C, \
+						      _LATENCY_REPORTING_REMOVED_PIPE_D)
+#define   ICL_DELAY_PMRSP			REG_BIT(22)
+#define   DISABLE_FLR_SRC			REG_BIT(15)
+#define   MASK_WAKEMEM				REG_BIT(13)
+#define   DDI_CLOCK_REG_ACCESS			REG_BIT(7)
+
+#define CHICKEN_PAR1_1		_MMIO(0x42080)
+#define   IGNORE_KVMR_PIPE_A		REG_BIT(23)
+#define   KBL_ARB_FILL_SPARE_22		REG_BIT(22)
+#define   DIS_RAM_BYPASS_PSR2_MAN_TRACK	REG_BIT(16)
+#define   SKL_DE_COMPRESSED_HASH_MODE	REG_BIT(15)
+#define   HSW_MASK_VBL_TO_PIPE_IN_SRD	REG_BIT(15) /* hsw/bdw */
+#define   FORCE_ARB_IDLE_PLANES		REG_BIT(14)
+#define   SKL_EDP_PSR_FIX_RDWRAP	REG_BIT(3)
+#define   IGNORE_PSR2_HW_TRACKING	REG_BIT(1)
+
 #endif
-- 
2.50.1

