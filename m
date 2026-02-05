Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6CteC71ihGkK2wMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 10:28:29 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1445F0B81
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 10:28:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17E5010E858;
	Thu,  5 Feb 2026 09:28:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JefFpZc9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6EEC10E843;
 Thu,  5 Feb 2026 09:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770283705; x=1801819705;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E4i/7XhIYPIDAyRmGf0nVPAV2+nefZLbev2YX90Jil8=;
 b=JefFpZc9ciM47STUC0QbZeoE+cGDsP2TFGyMrq6JcNjsWPXd4FNhc4Fm
 iO6HEIWvd/VRr8mv2d9bSYqwhHT3Ptuew7ZR5mI2l1LFEKdqGedN5QbnG
 4BSlOdcHJ5ppP/no4W+5XM/2MdWJQGlPXyU09reU4tGHN+6Bl1cG0JzDu
 YVP1RWIA7RJWK3TuA+TgVqDgTrrxwu7pSSYpP6o4BJV4JgYoNHxCK8g0g
 oQVh4GIFAeLb/WVSZ89Y+2Ypt4L4L65F1KGwY53boy+HL5GwYq2Xi77fQ
 XcdqpiH5W3Cikv/m+U/q6oA4xqGWE/FrOOVispLkd/p0B4xnbMUfW7Y6S w==;
X-CSE-ConnectionGUID: 9IL1535KT3m9hIaJZb7Zhw==
X-CSE-MsgGUID: mNqrqdXNR5KyEXLl9x9iHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="89060134"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="89060134"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 01:28:25 -0800
X-CSE-ConnectionGUID: 0YthRyEwQJWYj3HfI2foBQ==
X-CSE-MsgGUID: j34rEPjkRqaQiQ59zKRMiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="209807805"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa007.fm.intel.com with ESMTP; 05 Feb 2026 01:28:23 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v4 15/20] drm/i915: Remove i915_reg.h from intel_psr.c
Date: Thu,  5 Feb 2026 15:13:36 +0530
Message-ID: <20260205094341.1882816-16-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260205094341.1882816-1-uma.shankar@intel.com>
References: <20260205094341.1882816-1-uma.shankar@intel.com>
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
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: D1445F0B81
X-Rspamd-Action: no action

Move some chicken registers to display header to make
intel_psr.c free from including i915_reg.h.

v3: Update commit header

v2: Use display header instead of gmd common include (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 .../gpu/drm/i915/display/intel_display_regs.h | 26 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.c      |  1 -
 drivers/gpu/drm/i915/i915_reg.h               | 28 -------------------
 3 files changed, 26 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index d4c5fd975b1b..9a7005e125a9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -357,6 +357,32 @@
 #define OGAMC1			_MMIO(0x30020)
 #define OGAMC0			_MMIO(0x30024)
 
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
 #define GEN9_CLKGATE_DIS_4		_MMIO(0x4653C)
 #define   BXT_GMBUS_GATING_DIS		(1 << 14)
 #define   DG2_DPFC_GATING_DIS		REG_BIT(31)
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4e644711c571..5bea2eda744b 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -29,7 +29,6 @@
 #include <drm/drm_print.h>
 #include <drm/drm_vblank.h>
 
-#include "i915_reg.h"
 #include "intel_alpm.h"
 #include "intel_atomic.h"
 #include "intel_crtc.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 9cb753b65bc2..3a54b31bc072 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -805,37 +805,9 @@
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
 
-
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
-
 #define  VLV_PMWGICZ				_MMIO(0x1300a4)
 
 #define  HSW_EDRAM_CAP				_MMIO(0x120010)
-- 
2.50.1

