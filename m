Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QD8uL7NihGkM2wMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 10:28:19 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9E9F0B64
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 10:28:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74EB710E82F;
	Thu,  5 Feb 2026 09:28:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eHtxBwXY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1147D10E835;
 Thu,  5 Feb 2026 09:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770283695; x=1801819695;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TGRR+P8Mp5uZLI5+4a6WplLdCr2+GG77pIDRBD4J2gU=;
 b=eHtxBwXY6hX6YURuM8WDwnPc4OuFk1OLKUDYx6fivuAXvaOA+/eOFVOS
 6IBqL+JAMq7gxkA4Lw6xMBQhazB+kMJAOu0PQ7ZRpjAuHcm9spl1goZEE
 qKPBozjHUtReMgyw5IX8Wh1Li/JGuGB0be/J30yy61+RoFHWHbSbg2RXp
 AjqwCpgGrJY93lykNAk6JxAoT8YBYZ6+rcm2E9Zh+JSEB3o4LjO7yGVip
 KDseaNQV93c3wR3mpJoWCwnm/cDFiHRilc31kne/THMrxjdOu/fKXQ/GC
 8EiEMoB4sQcYeVuUBy8N7zI1zdCfbYsOdp99fhzPOP6cxJAYLLgFu+Bwr A==;
X-CSE-ConnectionGUID: Jxp96I0AQa6yCXOWaBvSAg==
X-CSE-MsgGUID: ZDxAM/w/SeabQsNXlf2aWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="89060119"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="89060119"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 01:28:15 -0800
X-CSE-ConnectionGUID: T0vbdpE0R+68V3JBl97Qjw==
X-CSE-MsgGUID: fEB4Ifh6SZGr+JThtKPi5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="209807785"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa007.fm.intel.com with ESMTP; 05 Feb 2026 01:28:13 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v4 10/20] drm/i915: Remove i915_reg.h from intel_overlay.c
Date: Thu,  5 Feb 2026 15:13:31 +0530
Message-ID: <20260205094341.1882816-11-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260205094341.1882816-1-uma.shankar@intel.com>
References: <20260205094341.1882816-1-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 4E9E9F0B64
X-Rspamd-Action: no action

Move GEN2_ISR and some interrupt definitions to common header.
This removes dependency of i915_reg.h from intel_overlay.c.

v3: Rename interrupt header with regs suffix (Jani)

v2: Create a separate file for common interrupts (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  |  1 +
 .../gpu/drm/i915/display/intel_display_regs.h |  2 +
 drivers/gpu/drm/i915/display/intel_overlay.c  |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            |  1 +
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  1 +
 drivers/gpu/drm/i915/i915_irq.c               |  1 +
 drivers/gpu/drm/i915/i915_reg.h               | 37 ----------------
 include/drm/intel/intel_gmd_interrupt_regs.h  | 43 +++++++++++++++++++
 8 files changed, 50 insertions(+), 38 deletions(-)
 create mode 100644 include/drm/intel/intel_gmd_interrupt_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 0a71840041de..432a9c895c39 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -5,6 +5,7 @@
 
 #include <drm/drm_print.h>
 #include <drm/drm_vblank.h>
+#include <drm/intel/intel_gmd_interrupt_regs.h>
 
 #include "i915_reg.h"
 #include "icl_dsi_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 0ee7295e1d4e..d03f554ecd7e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -94,6 +94,8 @@
 #define   VLV_ERROR_PAGE_TABLE				(1 << 4)
 #define   VLV_ERROR_CLAIM				(1 << 0)
 
+#define GEN2_ISR	_MMIO(0x20ac)
+
 #define VLV_ERROR_REGS		I915_ERROR_REGS(VLV_EMR, VLV_EIR)
 
 #define _MBUS_ABOX0_CTL			0x45038
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 88eb7ae5765c..ed033e51f1d3 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -28,6 +28,7 @@
 
 #include <drm/drm_fourcc.h>
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_interrupt_regs.h>
 
 #include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_object_frontbuffer.h"
@@ -37,7 +38,6 @@
 #include "gt/intel_ring.h"
 
 #include "i915_drv.h"
-#include "i915_reg.h"
 #include "intel_color_regs.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index ac527d878820..d76121e117e1 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -5,6 +5,7 @@
 
 #include <drm/drm_managed.h>
 #include <drm/intel/intel-gtt.h>
+#include <drm/intel/intel_gmd_interrupt_regs.h>
 
 #include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_lmem.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 8314a4b0505e..c1797e49811d 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -4,6 +4,7 @@
  */
 
 #include <drm/drm_cache.h>
+#include <drm/intel/intel_gmd_interrupt_regs.h>
 
 #include "gem/i915_gem_internal.h"
 
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 3fe978d4ea53..d4d8dd0a4174 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -34,6 +34,7 @@
 #include <drm/drm_drv.h>
 #include <drm/drm_print.h>
 #include <drm/intel/display_parent_interface.h>
+#include <drm/intel/intel_gmd_interrupt_regs.h>
 
 #include "display/intel_display_irq.h"
 #include "display/intel_hotplug.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2be799ffbc2b..1be8426b6a91 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -364,7 +364,6 @@
 #define GEN2_IER	_MMIO(0x20a0)
 #define GEN2_IIR	_MMIO(0x20a4)
 #define GEN2_IMR	_MMIO(0x20a8)
-#define GEN2_ISR	_MMIO(0x20ac)
 
 #define GEN2_IRQ_REGS		I915_IRQ_REGS(GEN2_IMR, \
 					      GEN2_IER, \
@@ -521,42 +520,6 @@
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
diff --git a/include/drm/intel/intel_gmd_interrupt_regs.h b/include/drm/intel/intel_gmd_interrupt_regs.h
new file mode 100644
index 000000000000..dc9d5fc29ff6
--- /dev/null
+++ b/include/drm/intel/intel_gmd_interrupt_regs.h
@@ -0,0 +1,43 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2026 Intel Corporation */
+
+#ifndef _INTEL_GMD_INTERRUPT_REGS_H_
+#define _INTEL_GMD_INTERRUPT_REGS_H_
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
+#endif
-- 
2.50.1

