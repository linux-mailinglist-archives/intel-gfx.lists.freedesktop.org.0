Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aADmGgLKe2kQIgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 21:58:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED843B4662
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 21:58:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8249410E8FA;
	Thu, 29 Jan 2026 20:58:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L8B2okgt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EE4B10E8F3;
 Thu, 29 Jan 2026 20:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769720314; x=1801256314;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=URudAlJmAIzrNhvhKBASFZq7vchcSHhNpCBRgUWivSU=;
 b=L8B2okgtUF7u31zOuOnpumBNV6dUyIb6+Uh3JhZai8wv8CRI2GT7Ub3c
 0XOJCXvIalfJrU/EP89dcSWVPhq4hONi4O2g1H8LRIiRSsonTnQWLDlfK
 g6xRPkYOcsCZs/G2jFywkcUAhpJ2r0mpCXm7gqVcEszZtQyFp7V74E/e1
 S3IMKMrPnXAUnKBhIdoK5ahv59RKmymlpxb4sGWLYh1zcFoeUgzPwn+s2
 DCr/+WMhVDSIg6x/1EHA2yy3AfO94UjMYSTV19ZP9MZxzpM/A6XZdtSJb
 +nDSDeLXW+yW/saOI22WeUen5sSdXuv4OK92GdPN/k7c9GPTSo0lzXN9S Q==;
X-CSE-ConnectionGUID: hIiLt0vzT6GmdFIp6rkDGQ==
X-CSE-MsgGUID: XrC/w2QFQZGe6hlOlZDDWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="88545331"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="88545331"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 12:58:34 -0800
X-CSE-ConnectionGUID: cTIsIrKTQympi3lVRr/lnQ==
X-CSE-MsgGUID: Y1jeEPupTEO2L+C3bizUzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="239927162"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa001.fm.intel.com with ESMTP; 29 Jan 2026 12:58:32 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v3 11/19] drm/i915: Remove i915_reg.h from i9xx_wm.c
Date: Fri, 30 Jan 2026 02:43:50 +0530
Message-ID: <20260129211358.1240283-12-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260129211358.1240283-1-uma.shankar@intel.com>
References: <20260129211358.1240283-1-uma.shankar@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: ED843B4662
X-Rspamd-Action: no action

Move FW_BLC_SELF to common header to make i9xx_wm.c
free from i915_reg.h include. Introduce a common
intel_gmd_misc_regs.h to define common miscellaneous
register definitions across graphics and display.

v2: Introdue a common misc header for GMD

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c        |  2 +-
 .../gpu/drm/i915/display/intel_display_regs.h |  8 ++++++-
 drivers/gpu/drm/i915/i915_reg.h               | 20 +-----------------
 include/drm/intel/intel_gmd_misc_regs.h       | 21 +++++++++++++++++++
 4 files changed, 30 insertions(+), 21 deletions(-)
 create mode 100644 include/drm/intel/intel_gmd_misc_regs.h

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 39dfceb438ae..24f898efa9dd 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -6,8 +6,8 @@
 #include <linux/iopoll.h>
 
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_misc_regs.h>
 
-#include "i915_reg.h"
 #include "i9xx_wm.h"
 #include "i9xx_wm_regs.h"
 #include "intel_atomic.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 0164dcbb709f..680020e590cb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -4,6 +4,7 @@
 #ifndef __INTEL_DISPLAY_REGS_H__
 #define __INTEL_DISPLAY_REGS_H__
 
+#include <drm/intel/intel_gmd_misc_regs.h>
 #include "intel_display_reg_defs.h"
 
 #define GU_CNTL_PROTECTED		_MMIO(0x10100C)
@@ -3119,6 +3120,11 @@ enum skl_power_gate {
 #define   MTL_TRAS_MASK			REG_GENMASK(16, 8)
 #define   MTL_TRDPRE_MASK		REG_GENMASK(7, 0)
 
-
+#define FW_BLC		_MMIO(0x20d8)
+#define FW_BLC2		_MMIO(0x20dc)
+#define FW_BLC_SELF	_MMIO(0x20e0) /* 915+ only */
+#define   FW_BLC_SELF_EN_MASK      REG_BIT(31)
+#define   FW_BLC_SELF_FIFO_MASK    REG_BIT(16) /* 945 only */
+#define   FW_BLC_SELF_EN           REG_BIT(15) /* 945 only */
 
 #endif /* __INTEL_DISPLAY_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 6cb72e6e9086..b4b749e52b5b 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -26,6 +26,7 @@
 #define _I915_REG_H_
 
 #include <drm/intel/intel_pcode.h>
+#include <drm/intel/intel_gmd_misc_regs.h>
 #include "i915_reg_defs.h"
 #include "display/intel_display_reg_defs.h"
 
@@ -394,24 +395,10 @@
 
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
@@ -834,11 +821,6 @@
 #define   KVM_CONFIG_CHANGE_NOTIFICATION_SELECT	REG_BIT(14)
 
 
-#define DISP_ARB_CTL	_MMIO(0x45000)
-#define   DISP_FBC_MEMORY_WAKE		REG_BIT(31)
-#define   DISP_TILE_SURFACE_SWIZZLING	REG_BIT(13)
-#define   DISP_FBC_WM_DIS		REG_BIT(15)
-
 #define GEN8_CHICKEN_DCPR_1			_MMIO(0x46430)
 #define   _LATENCY_REPORTING_REMOVED_PIPE_D	REG_BIT(31)
 #define   SKL_SELECT_ALTERNATE_DC_EXIT		REG_BIT(30)
diff --git a/include/drm/intel/intel_gmd_misc_regs.h b/include/drm/intel/intel_gmd_misc_regs.h
new file mode 100644
index 000000000000..377f4e383699
--- /dev/null
+++ b/include/drm/intel/intel_gmd_misc_regs.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2026 Intel Corporation */
+
+#ifndef _INTEL_GMD_MISC_REG_H_
+#define _INTEL_GMD_MISC_REG_H_
+
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
+#endif
-- 
2.50.1

