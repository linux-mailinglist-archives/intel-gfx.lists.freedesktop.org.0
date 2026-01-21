Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCBQMoRccWnLGAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 00:08:52 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6935F4AE
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 00:08:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20D7010E8B7;
	Wed, 21 Jan 2026 23:08:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jZ36pNcA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB63010E8B4;
 Wed, 21 Jan 2026 23:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769036930; x=1800572930;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=//74KHMIMZ9NmfiwTtZ24rlsB/zG/DwpECr4h3URjbk=;
 b=jZ36pNcAmQCDzTPRz8CylnbRB90F5MORfu00NqCBKCEgTrcj6BInvvIv
 APbPjQXSyKP1AG00OoQK8/Kdjvs3IU6PPUGGAqyxIkgg64rDmKpOHi7Rj
 Iaozor3MASIQFXTeefABOqckEnVY4sNXXSuOg+OVHPvdnTkpL+Me7T+0h
 auSxRB1RAzOKipvCrtPYeevL1u9zkg4Fa+mh1uRZJpeam08wMfO42PrHS
 eeia15NNody0Y/hXXiQ+5ao1waVFzYeTCDUTMqoesAx8UTTv0MJ0N8m6t
 U5whBMKvlTDEyGRsn+mMdfZnczbi+RcRNMoSgwuzKr3P2UfNmEX1L6G+V w==;
X-CSE-ConnectionGUID: q8ga/FT0QiqXdLffC2cVEA==
X-CSE-MsgGUID: caHpovBoTEmXm1x/nGYwnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="70244993"
X-IronPort-AV: E=Sophos;i="6.21,244,1763452800"; d="scan'208";a="70244993"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 15:08:49 -0800
X-CSE-ConnectionGUID: maYcsMBbRe+Z3GfrU4onow==
X-CSE-MsgGUID: rLztvNv1RBWIcgaPFlSrVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,244,1763452800"; d="scan'208";a="206889611"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa010.fm.intel.com with ESMTP; 21 Jan 2026 15:08:48 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v2 11/19] drm/{i915, xe}: Remove i915_reg.h from i9xx_wm.c
Date: Thu, 22 Jan 2026 04:54:06 +0530
Message-ID: <20260121232414.707192-12-uma.shankar@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 7F6935F4AE
X-Rspamd-Action: no action

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
index 39dfceb438ae..fb579490d317 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -6,8 +6,8 @@
 #include <linux/iopoll.h>
 
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
-#include "i915_reg.h"
 #include "i9xx_wm.h"
 #include "i9xx_wm_regs.h"
 #include "intel_atomic.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index eabee5abc23b..477896faa79e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -3113,4 +3113,11 @@ enum skl_power_gate {
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
index c0c2fab99a47..bd3871f458d6 100644
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
@@ -834,11 +820,6 @@
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
index c8b2b5b2739c..049349c365e3 100644
--- a/include/drm/intel/intel_gmd_common_regs.h
+++ b/include/drm/intel/intel_gmd_common_regs.h
@@ -155,4 +155,18 @@
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

