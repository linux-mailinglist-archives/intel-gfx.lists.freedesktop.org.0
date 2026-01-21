Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SHmTCoFccWnLGAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 00:08:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFAC95F49E
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 00:08:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A4AA10E8AA;
	Wed, 21 Jan 2026 23:08:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a3wunSmB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9E0F10E27F;
 Wed, 21 Jan 2026 23:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769036926; x=1800572926;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FYdseCTUx/EGclpicmwZ1YrLslmeGHTuyS3ExYy8W2E=;
 b=a3wunSmBYsnBp90ka150G4asMHWVJnkeVE6MTUtbzLxHVO/+pp8GmhPV
 UoBJGH4pUpgAI+zgUzbq4VOMDNr8RwmrFVX9qEbKWy3jE4AzUxMwf7WIr
 n77r3gJJ66aLcoQT5rE/HKIg7CuyMi5h2a9ud0dVUa7HkrOzRJTCAeum7
 yK5rc2cOsenQGmAWfUng9VCuYBcUfzdfaOKCQU1Khq0ThuNvxDOWaBGS6
 PrO+Y+saYdLgX7YgnXgN0Q6r8Z10pLrk6+r6lzMcCuMSDkkwAm3BP4NcR
 DnuXcyfMIept7iW0leRI06x/6nynM/JxhpW/ScAHgh/VKSkjr84uI96ji Q==;
X-CSE-ConnectionGUID: Gj1d+8fCTrODZbLZk8cLFw==
X-CSE-MsgGUID: MaaM4IqES+S2jcRsOySkLA==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="70244989"
X-IronPort-AV: E=Sophos;i="6.21,244,1763452800"; d="scan'208";a="70244989"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 15:08:45 -0800
X-CSE-ConnectionGUID: I71y1s5vQ1qdmdjqKW/jXg==
X-CSE-MsgGUID: 7zYTDJL+SXe/M8jDxg0TYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,244,1763452800"; d="scan'208";a="206889598"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa010.fm.intel.com with ESMTP; 21 Jan 2026 15:08:44 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v2 09/19] drm/{i915, xe}: Remove i915_reg.h from intel_overlay.c
Date: Thu, 22 Jan 2026 04:54:04 +0530
Message-ID: <20260121232414.707192-10-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260121232414.707192-1-uma.shankar@intel.com>
References: <20260121232414.707192-1-uma.shankar@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: CFAC95F49E
X-Rspamd-Action: no action

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
index c1d141e9ca47..504ba9b2fb5b 100644
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
index 489d59379ab0..2214cee38cf7 100644
--- a/include/drm/intel/intel_gmd_common_regs.h
+++ b/include/drm/intel/intel_gmd_common_regs.h
@@ -110,4 +110,42 @@
 #define   GMD_ID_RELEASE_MASK			REG_GENMASK(21, 14)
 #define   GMD_ID_STEP				REG_GENMASK(5, 0)
 
+#define GEN2_ISR       _MMIO(0x20ac)
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

