Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IIvrJ3ZccWnLGAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 00:08:38 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 503AF5F45A
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 00:08:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 929DD10E8A4;
	Wed, 21 Jan 2026 23:08:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q6vXW3Dg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A713210E8A3;
 Wed, 21 Jan 2026 23:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769036916; x=1800572916;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VBq5raXPFvRM43KF/oyT0JKuKP0ln5NbbXSJL2FOYU0=;
 b=Q6vXW3Dg3bjYozYmHejHFJXRdBtfsKPf1jiqrWophfRtUpP2iiZ1j2P4
 z0aD2KWTpTA9T2SjUb+INeKsnRA3M1eF9acvQ/hbDCX03fTusLArHYpfh
 Fqu63YUb779zX9PMthl5hwp4fq9P99P4Qh/Q/Q5JUUUuKEnl67z6ClKgx
 Ezl4f096W0tpzLsp/xwJU1JSBcmqJE6Ypn1F6ippRcMcg6/6Hac4nRKcx
 h6FnrECri4K86g+3otUTGUgmyBZYloMe53WKmn6E0J6qFaecTDQfzKysl
 IFIa1EUDjGEX/Y1gLSw6/fIDl5jbW6Gdt1XOBkorLODI5a8LRzX6CJVJf g==;
X-CSE-ConnectionGUID: nO/0cQYTSS2wfxznxsTaRA==
X-CSE-MsgGUID: 5IJYQEjbSgKjtT7683rtoA==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="70244972"
X-IronPort-AV: E=Sophos;i="6.21,244,1763452800"; d="scan'208";a="70244972"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 15:08:35 -0800
X-CSE-ConnectionGUID: JIwd2lelRXmn/72FItX8Rg==
X-CSE-MsgGUID: 3/6GwcZNR1W5u53GsbV69w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,244,1763452800"; d="scan'208";a="206889570"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa010.fm.intel.com with ESMTP; 21 Jan 2026 15:08:33 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v2 04/19] drm/{i915,
 xe}: Extract DSPCLK_GATE_D from i915_reg to display
Date: Thu, 22 Jan 2026 04:53:59 +0530
Message-ID: <20260121232414.707192-5-uma.shankar@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 503AF5F45A
X-Rspamd-Action: no action

Move DSPCLK_GATE_D register definition to display header.
This allows intel_gmbus.c free of i915_reg.h include.

v2: Drop common header in include and use display_regs.h (Jani)

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 .../gpu/drm/i915/display/intel_display_regs.h | 50 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_gmbus.c    |  1 -
 drivers/gpu/drm/i915/i915_reg.h               | 50 -------------------
 3 files changed, 50 insertions(+), 51 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 1f922d013cd3..5136b7166775 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -160,6 +160,47 @@
 
 #define   DPLL_FPA01_P1_POST_DIV_MASK_I830	0x001f0000
 
+#define DSPCLK_GATE_D			_MMIO(0x6200)
+#define VLV_DSPCLK_GATE_D		_MMIO(VLV_DISPLAY_BASE + 0x6200)
+# define DPUNIT_B_CLOCK_GATE_DISABLE		(1 << 30) /* 965 */
+# define VSUNIT_CLOCK_GATE_DISABLE		(1 << 29) /* 965 */
+# define VRHUNIT_CLOCK_GATE_DISABLE		(1 << 28) /* 965 */
+# define VRDUNIT_CLOCK_GATE_DISABLE		(1 << 27) /* 965 */
+# define AUDUNIT_CLOCK_GATE_DISABLE		(1 << 26) /* 965 */
+# define DPUNIT_A_CLOCK_GATE_DISABLE		(1 << 25) /* 965 */
+# define DPCUNIT_CLOCK_GATE_DISABLE		(1 << 24) /* 965 */
+# define PNV_GMBUSUNIT_CLOCK_GATE_DISABLE	(1 << 24) /* pnv */
+# define TVRUNIT_CLOCK_GATE_DISABLE		(1 << 23) /* 915-945 */
+# define TVCUNIT_CLOCK_GATE_DISABLE		(1 << 22) /* 915-945 */
+# define TVFUNIT_CLOCK_GATE_DISABLE		(1 << 21) /* 915-945 */
+# define TVEUNIT_CLOCK_GATE_DISABLE		(1 << 20) /* 915-945 */
+# define DVSUNIT_CLOCK_GATE_DISABLE		(1 << 19) /* 915-945 */
+# define DSSUNIT_CLOCK_GATE_DISABLE		(1 << 18) /* 915-945 */
+# define DDBUNIT_CLOCK_GATE_DISABLE		(1 << 17) /* 915-945 */
+# define DPRUNIT_CLOCK_GATE_DISABLE		(1 << 16) /* 915-945 */
+# define DPFUNIT_CLOCK_GATE_DISABLE		(1 << 15) /* 915-945 */
+# define DPBMUNIT_CLOCK_GATE_DISABLE		(1 << 14) /* 915-945 */
+# define DPLSUNIT_CLOCK_GATE_DISABLE		(1 << 13) /* 915-945 */
+# define DPLUNIT_CLOCK_GATE_DISABLE		(1 << 12) /* 915-945 */
+# define DPOUNIT_CLOCK_GATE_DISABLE		(1 << 11)
+# define DPBUNIT_CLOCK_GATE_DISABLE		(1 << 10)
+# define DCUNIT_CLOCK_GATE_DISABLE		(1 << 9)
+# define DPUNIT_CLOCK_GATE_DISABLE		(1 << 8)
+# define VRUNIT_CLOCK_GATE_DISABLE		(1 << 7) /* 915+: reserved */
+# define OVHUNIT_CLOCK_GATE_DISABLE		(1 << 6) /* 830-865 */
+# define DPIOUNIT_CLOCK_GATE_DISABLE		(1 << 6) /* 915-945 */
+# define OVFUNIT_CLOCK_GATE_DISABLE		(1 << 5)
+# define OVBUNIT_CLOCK_GATE_DISABLE		(1 << 4)
+/*
+ * This bit must be set on the 830 to prevent hangs when turning off the
+ * overlay scaler.
+ */
+# define OVRUNIT_CLOCK_GATE_DISABLE		(1 << 3)
+# define OVCUNIT_CLOCK_GATE_DISABLE		(1 << 2)
+# define OVUUNIT_CLOCK_GATE_DISABLE		(1 << 1)
+# define ZVUNIT_CLOCK_GATE_DISABLE		(1 << 0) /* 830 */
+# define OVLUNIT_CLOCK_GATE_DISABLE		(1 << 0) /* 845,865 */
+
 /* Additional CHV pll/phy registers */
 #define DPIO_PHY_STATUS			_MMIO(VLV_DISPLAY_BASE + 0x6240)
 #define   DPLL_PORTD_READY_MASK		(0xf)
@@ -2926,6 +2967,15 @@ enum skl_power_gate {
 #define  LPT_PWM_GRANULARITY		(1 << 5)
 #define  DPLS_EDP_PPS_FIX_DIS		(1 << 0)
 
+#define SOUTH_DSPCLK_GATE_D	_MMIO(0xc2020)
+#define  PCH_GMBUSUNIT_CLOCK_GATE_DISABLE (1 << 31)
+#define  PCH_DPLUNIT_CLOCK_GATE_DISABLE (1 << 30)
+#define  PCH_DPLSUNIT_CLOCK_GATE_DISABLE (1 << 29)
+#define  PCH_DPMGUNIT_CLOCK_GATE_DISABLE (1 << 15)
+#define  PCH_CPUNIT_CLOCK_GATE_DISABLE (1 << 14)
+#define  CNP_PWM_CGE_GATING_DISABLE (1 << 13)
+#define  PCH_LP_PARTITION_LEVEL_DISABLE  (1 << 12)
+
 /* Gen4+ Timestamp and Pipe Frame time stamp registers */
 #define GEN4_TIMESTAMP		_MMIO(0x2358)
 #define ILK_TIMESTAMP_HI	_MMIO(0x70070)
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 2caff677600c..81b6c6991323 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -35,7 +35,6 @@
 #include <drm/drm_print.h>
 #include <drm/display/drm_hdcp_helper.h>
 
-#include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 5cd124083c17..dc13f9eb4cd7 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -613,47 +613,6 @@
 #define  DSTATE_GFX_CLOCK_GATING		(1 << 1)
 #define  DSTATE_DOT_CLOCK_GATING		(1 << 0)
 
-#define DSPCLK_GATE_D			_MMIO(0x6200)
-#define VLV_DSPCLK_GATE_D		_MMIO(VLV_DISPLAY_BASE + 0x6200)
-# define DPUNIT_B_CLOCK_GATE_DISABLE		(1 << 30) /* 965 */
-# define VSUNIT_CLOCK_GATE_DISABLE		(1 << 29) /* 965 */
-# define VRHUNIT_CLOCK_GATE_DISABLE		(1 << 28) /* 965 */
-# define VRDUNIT_CLOCK_GATE_DISABLE		(1 << 27) /* 965 */
-# define AUDUNIT_CLOCK_GATE_DISABLE		(1 << 26) /* 965 */
-# define DPUNIT_A_CLOCK_GATE_DISABLE		(1 << 25) /* 965 */
-# define DPCUNIT_CLOCK_GATE_DISABLE		(1 << 24) /* 965 */
-# define PNV_GMBUSUNIT_CLOCK_GATE_DISABLE	(1 << 24) /* pnv */
-# define TVRUNIT_CLOCK_GATE_DISABLE		(1 << 23) /* 915-945 */
-# define TVCUNIT_CLOCK_GATE_DISABLE		(1 << 22) /* 915-945 */
-# define TVFUNIT_CLOCK_GATE_DISABLE		(1 << 21) /* 915-945 */
-# define TVEUNIT_CLOCK_GATE_DISABLE		(1 << 20) /* 915-945 */
-# define DVSUNIT_CLOCK_GATE_DISABLE		(1 << 19) /* 915-945 */
-# define DSSUNIT_CLOCK_GATE_DISABLE		(1 << 18) /* 915-945 */
-# define DDBUNIT_CLOCK_GATE_DISABLE		(1 << 17) /* 915-945 */
-# define DPRUNIT_CLOCK_GATE_DISABLE		(1 << 16) /* 915-945 */
-# define DPFUNIT_CLOCK_GATE_DISABLE		(1 << 15) /* 915-945 */
-# define DPBMUNIT_CLOCK_GATE_DISABLE		(1 << 14) /* 915-945 */
-# define DPLSUNIT_CLOCK_GATE_DISABLE		(1 << 13) /* 915-945 */
-# define DPLUNIT_CLOCK_GATE_DISABLE		(1 << 12) /* 915-945 */
-# define DPOUNIT_CLOCK_GATE_DISABLE		(1 << 11)
-# define DPBUNIT_CLOCK_GATE_DISABLE		(1 << 10)
-# define DCUNIT_CLOCK_GATE_DISABLE		(1 << 9)
-# define DPUNIT_CLOCK_GATE_DISABLE		(1 << 8)
-# define VRUNIT_CLOCK_GATE_DISABLE		(1 << 7) /* 915+: reserved */
-# define OVHUNIT_CLOCK_GATE_DISABLE		(1 << 6) /* 830-865 */
-# define DPIOUNIT_CLOCK_GATE_DISABLE		(1 << 6) /* 915-945 */
-# define OVFUNIT_CLOCK_GATE_DISABLE		(1 << 5)
-# define OVBUNIT_CLOCK_GATE_DISABLE		(1 << 4)
-/*
- * This bit must be set on the 830 to prevent hangs when turning off the
- * overlay scaler.
- */
-# define OVRUNIT_CLOCK_GATE_DISABLE		(1 << 3)
-# define OVCUNIT_CLOCK_GATE_DISABLE		(1 << 2)
-# define OVUUNIT_CLOCK_GATE_DISABLE		(1 << 1)
-# define ZVUNIT_CLOCK_GATE_DISABLE		(1 << 0) /* 830 */
-# define OVLUNIT_CLOCK_GATE_DISABLE		(1 << 0) /* 845,865 */
-
 #define RENCLK_GATE_D1		_MMIO(0x6204)
 # define BLITTER_CLOCK_GATE_DISABLE		(1 << 13) /* 945GM only */
 # define MPEG_CLOCK_GATE_DISABLE		(1 << 12) /* 945GM only */
@@ -989,15 +948,6 @@
 #define   TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE	REG_BIT(10)
 #define   TRANS_CHICKEN1_DP0UNIT_GC_DISABLE	REG_BIT(4)
 
-#define SOUTH_DSPCLK_GATE_D	_MMIO(0xc2020)
-#define  PCH_GMBUSUNIT_CLOCK_GATE_DISABLE (1 << 31)
-#define  PCH_DPLUNIT_CLOCK_GATE_DISABLE (1 << 30)
-#define  PCH_DPLSUNIT_CLOCK_GATE_DISABLE (1 << 29)
-#define  PCH_DPMGUNIT_CLOCK_GATE_DISABLE (1 << 15)
-#define  PCH_CPUNIT_CLOCK_GATE_DISABLE (1 << 14)
-#define  CNP_PWM_CGE_GATING_DISABLE (1 << 13)
-#define  PCH_LP_PARTITION_LEVEL_DISABLE  (1 << 12)
-
 #define  VLV_PMWGICZ				_MMIO(0x1300a4)
 
 #define  HSW_EDRAM_CAP				_MMIO(0x120010)
-- 
2.50.1

