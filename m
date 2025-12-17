Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14677CC628E
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 07:10:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9849D10EB89;
	Wed, 17 Dec 2025 06:10:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P/j4/kn5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59BE910EB89;
 Wed, 17 Dec 2025 06:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765951834; x=1797487834;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=D0fnuZ09PSXwh6g/jMhGwuoRoTc9dVvR8/zs1VN+hIs=;
 b=P/j4/kn5xw1roy4ABSkzg+AqiRJW0Xa2BonIihn02miQOc3EgqdHIVEl
 cInkqoJpwuJBPMv51x1gpgOy9uWEua9DKSgsfvSr/dxzal26SCf87YlUB
 e7cg4w6znj+ESpEyz5tQQyQK800w+5g0P4xRKKvYTUYslTD7Tf+so04Zb
 NclZDyq1I1+pwf0jlNavpI6zJzUHzObBoWnw80TMu5knlYS3V0tD6HnZL
 /EZY6vISEU3gtqIR2R38bem+0OpSqY4qU6zdWxGztYaiKRx1vNtsJ4fCN
 mVVoRfOqhmvNVLfljDb6mNpDoXzfuAaNvj5fIRVElkvDECSxRtLZulPPg Q==;
X-CSE-ConnectionGUID: ttSse37YTauv9rGbsRDi1g==
X-CSE-MsgGUID: ci7VT8FvSWScBfPl1uWa1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="85471176"
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="85471176"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 22:10:34 -0800
X-CSE-ConnectionGUID: eVPhl9o2TwqxIif4SAxa0w==
X-CSE-MsgGUID: ORXKGQeIQSaKF8hXvyJVSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="198105183"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa006.fm.intel.com with ESMTP; 16 Dec 2025 22:10:32 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 09/19] drm/{i915, xe}: Remove i915_reg.h from intel_overlay.c
Date: Wed, 17 Dec 2025 11:51:59 +0530
Message-ID: <20251217062209.852324-10-uma.shankar@intel.com>
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

Move GEN2_ISR and some interrupt definitions to common header.
This removes dependency of i915_reg.h from intel_overlay.c.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c |  2 +-
 drivers/gpu/drm/i915/i915_reg.h              | 36 -------------------
 include/drm/intel/intel_gmd_common_regs.h    | 38 ++++++++++++++++++++
 3 files changed, 39 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 88eb7ae5765c..62026f7f71d3 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -28,6 +28,7 @@
 
 #include <drm/drm_fourcc.h>
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
 #include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_object_frontbuffer.h"
@@ -37,7 +38,6 @@
 #include "gt/intel_ring.h"
 
 #include "i915_drv.h"
-#include "i915_reg.h"
 #include "intel_color_regs.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index e807be4a9962..ec80c21f88b8 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -522,42 +522,6 @@
 /* These are all the "old" interrupts */
 #define ILK_BSD_USER_INTERRUPT				(1 << 5)
 
-#define I915_PM_INTERRUPT				(1 << 31)
-#define I915_ISP_INTERRUPT				(1 << 22)
-#define I915_LPE_PIPE_B_INTERRUPT			(1 << 21)
-#define I915_LPE_PIPE_A_INTERRUPT			(1 << 20)
-#define I915_MIPIC_INTERRUPT				(1 << 19)
-#define I915_MIPIA_INTERRUPT				(1 << 18)
-#define I915_PIPE_CONTROL_NOTIFY_INTERRUPT		(1 << 18)
-#define I915_DISPLAY_PORT_INTERRUPT			(1 << 17)
-#define I915_DISPLAY_PIPE_C_HBLANK_INTERRUPT		(1 << 16)
-#define I915_MASTER_ERROR_INTERRUPT			(1 << 15)
-#define I915_DISPLAY_PIPE_B_HBLANK_INTERRUPT		(1 << 14)
-#define I915_GMCH_THERMAL_SENSOR_EVENT_INTERRUPT	(1 << 14) /* p-state */
-#define I915_DISPLAY_PIPE_A_HBLANK_INTERRUPT		(1 << 13)
-#define I915_HWB_OOM_INTERRUPT				(1 << 13)
-#define I915_LPE_PIPE_C_INTERRUPT			(1 << 12)
-#define I915_SYNC_STATUS_INTERRUPT			(1 << 12)
-#define I915_MISC_INTERRUPT				(1 << 11)
-#define I915_DISPLAY_PLANE_A_FLIP_PENDING_INTERRUPT	(1 << 11)
-#define I915_DISPLAY_PIPE_C_VBLANK_INTERRUPT		(1 << 10)
-#define I915_DISPLAY_PLANE_B_FLIP_PENDING_INTERRUPT	(1 << 10)
-#define I915_DISPLAY_PIPE_C_EVENT_INTERRUPT		(1 << 9)
-#define I915_OVERLAY_PLANE_FLIP_PENDING_INTERRUPT	(1 << 9)
-#define I915_DISPLAY_PIPE_C_DPBM_INTERRUPT		(1 << 8)
-#define I915_DISPLAY_PLANE_C_FLIP_PENDING_INTERRUPT	(1 << 8)
-#define I915_DISPLAY_PIPE_A_VBLANK_INTERRUPT		(1 << 7)
-#define I915_DISPLAY_PIPE_A_EVENT_INTERRUPT		(1 << 6)
-#define I915_DISPLAY_PIPE_B_VBLANK_INTERRUPT		(1 << 5)
-#define I915_DISPLAY_PIPE_B_EVENT_INTERRUPT		(1 << 4)
-#define I915_DISPLAY_PIPE_A_DPBM_INTERRUPT		(1 << 3)
-#define I915_DISPLAY_PIPE_B_DPBM_INTERRUPT		(1 << 2)
-#define I915_DEBUG_INTERRUPT				(1 << 2)
-#define I915_WINVALID_INTERRUPT				(1 << 1)
-#define I915_USER_INTERRUPT				(1 << 1)
-#define I915_ASLE_INTERRUPT				(1 << 0)
-#define I915_BSD_USER_INTERRUPT				(1 << 25)
-
 #define GEN6_BSD_RNCID			_MMIO(0x12198)
 
 #define GEN7_FF_THREAD_MODE		_MMIO(0x20a0)
diff --git a/include/drm/intel/intel_gmd_common_regs.h b/include/drm/intel/intel_gmd_common_regs.h
index 1908c203d54c..6d302fb8aa94 100644
--- a/include/drm/intel/intel_gmd_common_regs.h
+++ b/include/drm/intel/intel_gmd_common_regs.h
@@ -219,4 +219,42 @@
 #define   GMD_ID_RELEASE_MASK			REG_GENMASK(21, 14)
 #define   GMD_ID_STEP				REG_GENMASK(5, 0)
 
+#define GEN2_ISR	_MMIO(0x20ac)
+
+#define I915_PM_INTERRUPT				(1 << 31)
+#define I915_ISP_INTERRUPT				(1 << 22)
+#define I915_LPE_PIPE_B_INTERRUPT			(1 << 21)
+#define I915_LPE_PIPE_A_INTERRUPT			(1 << 20)
+#define I915_MIPIC_INTERRUPT				(1 << 19)
+#define I915_MIPIA_INTERRUPT				(1 << 18)
+#define I915_PIPE_CONTROL_NOTIFY_INTERRUPT		(1 << 18)
+#define I915_DISPLAY_PORT_INTERRUPT			(1 << 17)
+#define I915_DISPLAY_PIPE_C_HBLANK_INTERRUPT		(1 << 16)
+#define I915_MASTER_ERROR_INTERRUPT			(1 << 15)
+#define I915_DISPLAY_PIPE_B_HBLANK_INTERRUPT		(1 << 14)
+#define I915_GMCH_THERMAL_SENSOR_EVENT_INTERRUPT	(1 << 14) /* p-state */
+#define I915_DISPLAY_PIPE_A_HBLANK_INTERRUPT		(1 << 13)
+#define I915_HWB_OOM_INTERRUPT				(1 << 13)
+#define I915_LPE_PIPE_C_INTERRUPT			(1 << 12)
+#define I915_SYNC_STATUS_INTERRUPT			(1 << 12)
+#define I915_MISC_INTERRUPT				(1 << 11)
+#define I915_DISPLAY_PLANE_A_FLIP_PENDING_INTERRUPT	(1 << 11)
+#define I915_DISPLAY_PIPE_C_VBLANK_INTERRUPT		(1 << 10)
+#define I915_DISPLAY_PLANE_B_FLIP_PENDING_INTERRUPT	(1 << 10)
+#define I915_DISPLAY_PIPE_C_EVENT_INTERRUPT		(1 << 9)
+#define I915_OVERLAY_PLANE_FLIP_PENDING_INTERRUPT	(1 << 9)
+#define I915_DISPLAY_PIPE_C_DPBM_INTERRUPT		(1 << 8)
+#define I915_DISPLAY_PLANE_C_FLIP_PENDING_INTERRUPT	(1 << 8)
+#define I915_DISPLAY_PIPE_A_VBLANK_INTERRUPT		(1 << 7)
+#define I915_DISPLAY_PIPE_A_EVENT_INTERRUPT		(1 << 6)
+#define I915_DISPLAY_PIPE_B_VBLANK_INTERRUPT		(1 << 5)
+#define I915_DISPLAY_PIPE_B_EVENT_INTERRUPT		(1 << 4)
+#define I915_DISPLAY_PIPE_A_DPBM_INTERRUPT		(1 << 3)
+#define I915_DISPLAY_PIPE_B_DPBM_INTERRUPT		(1 << 2)
+#define I915_DEBUG_INTERRUPT				(1 << 2)
+#define I915_WINVALID_INTERRUPT				(1 << 1)
+#define I915_USER_INTERRUPT				(1 << 1)
+#define I915_ASLE_INTERRUPT				(1 << 0)
+#define I915_BSD_USER_INTERRUPT				(1 << 25)
+
 #endif
-- 
2.50.1

