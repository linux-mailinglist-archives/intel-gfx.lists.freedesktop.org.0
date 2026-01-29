Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMEMKuzJe2kQIgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 21:58:20 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A29EB461E
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 21:58:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D80D110E8D7;
	Thu, 29 Jan 2026 20:58:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IRgCONV9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BA8710E8D5;
 Thu, 29 Jan 2026 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769720296; x=1801256296;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FAgaoTCynBj3QwLbV0dUIW9OtES1e5MDFBxivjW4hZw=;
 b=IRgCONV9oCQgmyaubY2S/EOrWrZYrMN9ZOSauXhXuMR9Mlb+x4KLty4a
 +9BYxSP1U5k7TnqgH0BaJLwTJVVExjsHtFWefzvRy14Maa/dT14jREhgF
 Sr+w4CWT9mxp82XWsw4dgIWkZHohhktI8IC+dpH5ekeSDzFQIkN6Xsbuy
 PiuTmRK5hnbBPYvPqTf+tkQcgFYdSWOJ76aWZzIMvD6eFpzh9ajcp9gOo
 SLZGXI1p0DqorjLSVj3OtGkad36BrgNqHSzS42Q6lunvkqHatvL25mvWR
 9JGVT5xb5qNe5+mNEhJFGBABLt/3Uqsoie+37nuG8/+UsXmpHnja0XEvi g==;
X-CSE-ConnectionGUID: DSp7wUanRRqlfzzF9rJuww==
X-CSE-MsgGUID: U4lBIgdaTZi8K63sZmCyBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="88545301"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="88545301"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 12:58:16 -0800
X-CSE-ConnectionGUID: 3KjjTAUNQx6qt5qa/qPRxw==
X-CSE-MsgGUID: YGzEjbNNT3m/1CcT3lJXxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="239927116"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa001.fm.intel.com with ESMTP; 29 Jan 2026 12:58:14 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v3 02/19] drm/i915: Extract South chicken registers from i915_reg.h
 to display
Date: Fri, 30 Jan 2026 02:43:41 +0530
Message-ID: <20260129211358.1240283-3-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260129211358.1240283-1-uma.shankar@intel.com>
References: <20260129211358.1240283-1-uma.shankar@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 5A29EB461E
X-Rspamd-Action: no action

Extract South Chicken registers from i915_reg.h to display header.
This allows intel_pch_refclk.c not to include i915_reg.h

v3: Drop whitespace changes, commit header updated (Jani)

v2: Drop common header in include and use display_regs.h (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 .../gpu/drm/i915/display/intel_display_regs.h | 27 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_pch_refclk.c   |  1 -
 drivers/gpu/drm/i915/i915_reg.h               | 27 -------------------
 3 files changed, 27 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 9f8fbfb2e115..db428e10d441 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -2864,6 +2864,33 @@ enum skl_power_gate {
 #define  SFUSE_STRAP_DDIC_DETECTED	(1 << 1)
 #define  SFUSE_STRAP_DDID_DETECTED	(1 << 0)
 
+#define SOUTH_CHICKEN1		_MMIO(0xc2000)
+#define  FDIA_PHASE_SYNC_SHIFT_OVR	19
+#define  FDIA_PHASE_SYNC_SHIFT_EN	18
+#define  INVERT_DDIE_HPD			REG_BIT(28)
+#define  INVERT_DDID_HPD_MTP			REG_BIT(27)
+#define  INVERT_TC4_HPD				REG_BIT(26)
+#define  INVERT_TC3_HPD				REG_BIT(25)
+#define  INVERT_TC2_HPD				REG_BIT(24)
+#define  INVERT_TC1_HPD				REG_BIT(23)
+#define  INVERT_DDID_HPD			(1 << 18)
+#define  INVERT_DDIC_HPD			(1 << 17)
+#define  INVERT_DDIB_HPD			(1 << 16)
+#define  INVERT_DDIA_HPD			(1 << 15)
+#define  FDI_PHASE_SYNC_OVR(pipe) (1 << (FDIA_PHASE_SYNC_SHIFT_OVR - ((pipe) * 2)))
+#define  FDI_PHASE_SYNC_EN(pipe) (1 << (FDIA_PHASE_SYNC_SHIFT_EN - ((pipe) * 2)))
+#define  FDI_BC_BIFURCATION_SELECT	(1 << 12)
+#define  CHASSIS_CLK_REQ_DURATION_MASK	(0xf << 8)
+#define  CHASSIS_CLK_REQ_DURATION(x)	((x) << 8)
+#define  SBCLK_RUN_REFCLK_DIS		(1 << 7)
+#define  ICP_SECOND_PPS_IO_SELECT	REG_BIT(2)
+#define  SPT_PWM_GRANULARITY		(1 << 0)
+#define SOUTH_CHICKEN2		_MMIO(0xc2004)
+#define  FDI_MPHY_IOSFSB_RESET_STATUS	(1 << 13)
+#define  FDI_MPHY_IOSFSB_RESET_CTL	(1 << 12)
+#define  LPT_PWM_GRANULARITY		(1 << 5)
+#define  DPLS_EDP_PPS_FIX_DIS		(1 << 0)
+
 /* Gen4+ Timestamp and Pipe Frame time stamp registers */
 #define GEN4_TIMESTAMP		_MMIO(0x2358)
 #define ILK_TIMESTAMP_HI	_MMIO(0x70070)
diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index 9a89bb6dcf65..5f88663ef5e8 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -5,7 +5,6 @@
 
 #include <drm/drm_print.h>
 
-#include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index f65f50bf44ba..c2efa50f080d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1023,33 +1023,6 @@
 #define   TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE	REG_BIT(10)
 #define   TRANS_CHICKEN1_DP0UNIT_GC_DISABLE	REG_BIT(4)
 
-#define SOUTH_CHICKEN1		_MMIO(0xc2000)
-#define  FDIA_PHASE_SYNC_SHIFT_OVR	19
-#define  FDIA_PHASE_SYNC_SHIFT_EN	18
-#define  INVERT_DDIE_HPD			REG_BIT(28)
-#define  INVERT_DDID_HPD_MTP			REG_BIT(27)
-#define  INVERT_TC4_HPD				REG_BIT(26)
-#define  INVERT_TC3_HPD				REG_BIT(25)
-#define  INVERT_TC2_HPD				REG_BIT(24)
-#define  INVERT_TC1_HPD				REG_BIT(23)
-#define  INVERT_DDID_HPD			(1 << 18)
-#define  INVERT_DDIC_HPD			(1 << 17)
-#define  INVERT_DDIB_HPD			(1 << 16)
-#define  INVERT_DDIA_HPD			(1 << 15)
-#define  FDI_PHASE_SYNC_OVR(pipe) (1 << (FDIA_PHASE_SYNC_SHIFT_OVR - ((pipe) * 2)))
-#define  FDI_PHASE_SYNC_EN(pipe) (1 << (FDIA_PHASE_SYNC_SHIFT_EN - ((pipe) * 2)))
-#define  FDI_BC_BIFURCATION_SELECT	(1 << 12)
-#define  CHASSIS_CLK_REQ_DURATION_MASK	(0xf << 8)
-#define  CHASSIS_CLK_REQ_DURATION(x)	((x) << 8)
-#define  SBCLK_RUN_REFCLK_DIS		(1 << 7)
-#define  ICP_SECOND_PPS_IO_SELECT	REG_BIT(2)
-#define  SPT_PWM_GRANULARITY		(1 << 0)
-#define SOUTH_CHICKEN2		_MMIO(0xc2004)
-#define  FDI_MPHY_IOSFSB_RESET_STATUS	(1 << 13)
-#define  FDI_MPHY_IOSFSB_RESET_CTL	(1 << 12)
-#define  LPT_PWM_GRANULARITY		(1 << 5)
-#define  DPLS_EDP_PPS_FIX_DIS		(1 << 0)
-
 #define SOUTH_DSPCLK_GATE_D	_MMIO(0xc2020)
 #define  PCH_GMBUSUNIT_CLOCK_GATE_DISABLE (1 << 31)
 #define  PCH_DPLUNIT_CLOCK_GATE_DISABLE (1 << 30)
-- 
2.50.1

