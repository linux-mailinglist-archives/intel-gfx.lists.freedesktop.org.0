Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89197CC627F
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 07:10:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04AD310EB7E;
	Wed, 17 Dec 2025 06:10:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R7GdK0XS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 856F810EB78;
 Wed, 17 Dec 2025 06:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765951826; x=1797487826;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ohmtKbab/HvVNtnIrmZ/Qp5GiM/7UDkD/hC67g8wQxk=;
 b=R7GdK0XSWDUytZGKlnplP4Tm2//F6BP8mpBTHW0hWZ/DSlp9PpSbi6ld
 6IRwRDPaKQm7CV5B13La8B/KoyKDIFD/CAjeb3nsF2cKK4kzHLbt57Un8
 +PrUxKf8ftKJxb4KAMXMCH+AZTK5MwzY6TZnbyeXZeS8LgGX1hveUgpd0
 Wu4NkAnW9700P24dF9Z1MZmmRanGrsQvFoNuhxEhZYsdxhDmiY8b/DK0N
 Ie8DVKfymO8KqCTGrvOQ1dQkQjucz+MA5Q+t/Bh0kZz8msY6RIdJRVYnS
 pvpzuo8Bi7tXtkkT4bTwyYBMzIxNdQXnkOfx4OqyH0BO8tIeljHaLKMxF A==;
X-CSE-ConnectionGUID: sn+BhzrZQn6vIrt1WIqTFQ==
X-CSE-MsgGUID: pvHxxPVYQX23DIyA1WQekw==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="85471142"
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="85471142"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 22:10:26 -0800
X-CSE-ConnectionGUID: rSkIxc0JQ2q46ciPNBa+ew==
X-CSE-MsgGUID: 2+HWaUQpSqamD9zBraMDMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="198105160"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa006.fm.intel.com with ESMTP; 16 Dec 2025 22:10:24 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 05/19] drm/{i915, xe}: Extract pcode definitions
Date: Wed, 17 Dec 2025 11:51:55 +0530
Message-ID: <20251217062209.852324-6-uma.shankar@intel.com>
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

Move GEN6_PCODE_MAILBOX to common header to make
intel_cdclk.c free from including i915_reg.h

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c |   2 +-
 drivers/gpu/drm/i915/i915_reg.h            | 100 --------------------
 include/drm/intel/intel_gmd_common_regs.h  | 101 +++++++++++++++++++++
 3 files changed, 102 insertions(+), 101 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 0aa59d624095..56e5ef0f3bc9 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -27,9 +27,9 @@
 
 #include <drm/drm_fixed.h>
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
 #include "hsw_ips.h"
-#include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_audio.h"
 #include "intel_cdclk.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 30f504a47593..35122c997b8a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -957,106 +957,6 @@
 #define    EDRAM_WAYS_IDX(cap)			(((cap) >> 5) & 0x7)
 #define    EDRAM_SETS_IDX(cap)			(((cap) >> 8) & 0x3)
 
-#define GEN6_PCODE_MAILBOX			_MMIO(0x138124)
-#define   GEN6_PCODE_READY			(1 << 31)
-#define   GEN6_PCODE_MB_PARAM2			REG_GENMASK(23, 16)
-#define   GEN6_PCODE_MB_PARAM1			REG_GENMASK(15, 8)
-#define   GEN6_PCODE_MB_COMMAND			REG_GENMASK(7, 0)
-#define   GEN6_PCODE_ERROR_MASK			0xFF
-#define     GEN6_PCODE_SUCCESS			0x0
-#define     GEN6_PCODE_ILLEGAL_CMD		0x1
-#define     GEN6_PCODE_MIN_FREQ_TABLE_GT_RATIO_OUT_OF_RANGE 0x2
-#define     GEN6_PCODE_TIMEOUT			0x3
-#define     GEN6_PCODE_UNIMPLEMENTED_CMD	0xFF
-#define     GEN7_PCODE_TIMEOUT			0x2
-#define     GEN7_PCODE_ILLEGAL_DATA		0x3
-#define     GEN11_PCODE_ILLEGAL_SUBCOMMAND	0x4
-#define     GEN11_PCODE_LOCKED			0x6
-#define     GEN11_PCODE_REJECTED		0x11
-#define     GEN7_PCODE_MIN_FREQ_TABLE_GT_RATIO_OUT_OF_RANGE 0x10
-#define   GEN6_PCODE_WRITE_RC6VIDS		0x4
-#define   GEN6_PCODE_READ_RC6VIDS		0x5
-#define     GEN6_ENCODE_RC6_VID(mv)		(((mv) - 245) / 5)
-#define     GEN6_DECODE_RC6_VID(vids)		(((vids) * 5) + 245)
-#define   BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ	0x18
-#define   GEN9_PCODE_READ_MEM_LATENCY		0x6
-#define     GEN9_MEM_LATENCY_LEVEL_3_7_MASK	REG_GENMASK(31, 24)
-#define     GEN9_MEM_LATENCY_LEVEL_2_6_MASK	REG_GENMASK(23, 16)
-#define     GEN9_MEM_LATENCY_LEVEL_1_5_MASK	REG_GENMASK(15, 8)
-#define     GEN9_MEM_LATENCY_LEVEL_0_4_MASK	REG_GENMASK(7, 0)
-#define   SKL_PCODE_LOAD_HDCP_KEYS		0x5
-#define   SKL_PCODE_CDCLK_CONTROL		0x7
-#define     SKL_CDCLK_PREPARE_FOR_CHANGE	0x3
-#define     SKL_CDCLK_READY_FOR_CHANGE		0x1
-#define   GEN6_PCODE_WRITE_MIN_FREQ_TABLE	0x8
-#define   GEN6_PCODE_READ_MIN_FREQ_TABLE	0x9
-#define   GEN6_READ_OC_PARAMS			0xc
-#define   ICL_PCODE_MEM_SUBSYSYSTEM_INFO	0xd
-#define     ICL_PCODE_MEM_SS_READ_GLOBAL_INFO	(0x0 << 8)
-#define     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point)	(((point) << 16) | (0x1 << 8))
-#define     ADL_PCODE_MEM_SS_READ_PSF_GV_INFO	((0) | (0x2 << 8))
-#define   DISPLAY_TO_PCODE_CDCLK_MAX		0x28D
-#define   DISPLAY_TO_PCODE_VOLTAGE_MASK		REG_GENMASK(1, 0)
-#define	  DISPLAY_TO_PCODE_VOLTAGE_MAX		DISPLAY_TO_PCODE_VOLTAGE_MASK
-#define   DISPLAY_TO_PCODE_CDCLK_VALID		REG_BIT(27)
-#define   DISPLAY_TO_PCODE_PIPE_COUNT_VALID	REG_BIT(31)
-#define   DISPLAY_TO_PCODE_CDCLK_MASK		REG_GENMASK(25, 16)
-#define   DISPLAY_TO_PCODE_PIPE_COUNT_MASK	REG_GENMASK(30, 28)
-#define   DISPLAY_TO_PCODE_CDCLK(x)		REG_FIELD_PREP(DISPLAY_TO_PCODE_CDCLK_MASK, (x))
-#define   DISPLAY_TO_PCODE_PIPE_COUNT(x)	REG_FIELD_PREP(DISPLAY_TO_PCODE_PIPE_COUNT_MASK, (x))
-#define   DISPLAY_TO_PCODE_VOLTAGE(x)		REG_FIELD_PREP(DISPLAY_TO_PCODE_VOLTAGE_MASK, (x))
-#define   DISPLAY_TO_PCODE_UPDATE_MASK(cdclk, num_pipes, voltage_level) \
-		((DISPLAY_TO_PCODE_CDCLK(cdclk)) | \
-		(DISPLAY_TO_PCODE_PIPE_COUNT(num_pipes)) | \
-		(DISPLAY_TO_PCODE_VOLTAGE(voltage_level)))
-#define   ICL_PCODE_SAGV_DE_MEM_SS_CONFIG	0xe
-#define     ICL_PCODE_REP_QGV_MASK		REG_GENMASK(1, 0)
-#define     ICL_PCODE_REP_QGV_SAFE		REG_FIELD_PREP(ICL_PCODE_REP_QGV_MASK, 0)
-#define     ICL_PCODE_REP_QGV_POLL		REG_FIELD_PREP(ICL_PCODE_REP_QGV_MASK, 1)
-#define     ICL_PCODE_REP_QGV_REJECTED		REG_FIELD_PREP(ICL_PCODE_REP_QGV_MASK, 2)
-#define     ADLS_PCODE_REP_PSF_MASK		REG_GENMASK(3, 2)
-#define     ADLS_PCODE_REP_PSF_SAFE		REG_FIELD_PREP(ADLS_PCODE_REP_PSF_MASK, 0)
-#define     ADLS_PCODE_REP_PSF_POLL		REG_FIELD_PREP(ADLS_PCODE_REP_PSF_MASK, 1)
-#define     ADLS_PCODE_REP_PSF_REJECTED		REG_FIELD_PREP(ADLS_PCODE_REP_PSF_MASK, 2)
-#define     ICL_PCODE_REQ_QGV_PT_MASK		REG_GENMASK(7, 0)
-#define     ICL_PCODE_REQ_QGV_PT(x)		REG_FIELD_PREP(ICL_PCODE_REQ_QGV_PT_MASK, (x))
-#define     ADLS_PCODE_REQ_PSF_PT_MASK		REG_GENMASK(10, 8)
-#define     ADLS_PCODE_REQ_PSF_PT(x)		REG_FIELD_PREP(ADLS_PCODE_REQ_PSF_PT_MASK, (x))
-#define   GEN6_PCODE_READ_D_COMP		0x10
-#define   GEN6_PCODE_WRITE_D_COMP		0x11
-#define   ICL_PCODE_EXIT_TCCOLD			0x12
-#define   HSW_PCODE_DE_WRITE_FREQ_REQ		0x17
-#define   DISPLAY_IPS_CONTROL			0x19
-#define   TGL_PCODE_TCCOLD			0x26
-#define     TGL_PCODE_EXIT_TCCOLD_DATA_L_EXIT_FAILED	REG_BIT(0)
-#define     TGL_PCODE_EXIT_TCCOLD_DATA_L_BLOCK_REQ	0
-#define     TGL_PCODE_EXIT_TCCOLD_DATA_L_UNBLOCK_REQ	REG_BIT(0)
-            /* See also IPS_CTL */
-#define     IPS_PCODE_CONTROL			(1 << 30)
-#define   HSW_PCODE_DYNAMIC_DUTY_CYCLE_CONTROL	0x1A
-#define   GEN9_PCODE_SAGV_CONTROL		0x21
-#define     GEN9_SAGV_DISABLE			0x0
-#define     GEN9_SAGV_IS_DISABLED		0x1
-#define     GEN9_SAGV_ENABLE			0x3
-#define   DG1_PCODE_STATUS			0x7E
-#define     DG1_UNCORE_GET_INIT_STATUS		0x0
-#define     DG1_UNCORE_INIT_STATUS_COMPLETE	0x1
-#define   PCODE_POWER_SETUP			0x7C
-#define     POWER_SETUP_SUBCOMMAND_READ_I1	0x4
-#define     POWER_SETUP_SUBCOMMAND_WRITE_I1	0x5
-#define	    POWER_SETUP_I1_WATTS		REG_BIT(31)
-#define	    POWER_SETUP_I1_SHIFT		6	/* 10.6 fixed point format */
-#define	    POWER_SETUP_I1_DATA_MASK		REG_GENMASK(15, 0)
-#define     POWER_SETUP_SUBCOMMAND_G8_ENABLE	0x6
-#define GEN12_PCODE_READ_SAGV_BLOCK_TIME_US	0x23
-#define   XEHP_PCODE_FREQUENCY_CONFIG		0x6e	/* pvc */
-/* XEHP_PCODE_FREQUENCY_CONFIG sub-commands (param1) */
-#define     PCODE_MBOX_FC_SC_READ_FUSED_P0	0x0
-#define     PCODE_MBOX_FC_SC_READ_FUSED_PN	0x1
-/* PCODE_MBOX_DOMAIN_* - mailbox domain IDs */
-/*   XEHP_PCODE_FREQUENCY_CONFIG param2 */
-#define     PCODE_MBOX_DOMAIN_NONE		0x0
-#define     PCODE_MBOX_DOMAIN_MEDIAFF		0x3
 #define GEN6_PCODE_DATA				_MMIO(0x138128)
 #define   GEN6_PCODE_FREQ_IA_RATIO_SHIFT	8
 #define   GEN6_PCODE_FREQ_RING_RATIO_SHIFT	16
diff --git a/include/drm/intel/intel_gmd_common_regs.h b/include/drm/intel/intel_gmd_common_regs.h
index fb2a327befd8..5d156d7cfdbe 100644
--- a/include/drm/intel/intel_gmd_common_regs.h
+++ b/include/drm/intel/intel_gmd_common_regs.h
@@ -90,4 +90,105 @@
 #define   TRANS_CHICKEN2_DISABLE_DEEP_COLOR_COUNTER	REG_BIT(26)
 #define   TRANS_CHICKEN2_DISABLE_DEEP_COLOR_MODESWITCH	REG_BIT(25)
 
+#define GEN6_PCODE_MAILBOX			_MMIO(0x138124)
+#define   GEN6_PCODE_READY			(1 << 31)
+#define   GEN6_PCODE_MB_PARAM2			REG_GENMASK(23, 16)
+#define   GEN6_PCODE_MB_PARAM1			REG_GENMASK(15, 8)
+#define   GEN6_PCODE_MB_COMMAND			REG_GENMASK(7, 0)
+#define   GEN6_PCODE_ERROR_MASK			0xFF
+#define     GEN6_PCODE_SUCCESS			0x0
+#define     GEN6_PCODE_ILLEGAL_CMD		0x1
+#define     GEN6_PCODE_MIN_FREQ_TABLE_GT_RATIO_OUT_OF_RANGE 0x2
+#define     GEN6_PCODE_TIMEOUT			0x3
+#define     GEN6_PCODE_UNIMPLEMENTED_CMD	0xFF
+#define     GEN7_PCODE_TIMEOUT			0x2
+#define     GEN7_PCODE_ILLEGAL_DATA		0x3
+#define     GEN11_PCODE_ILLEGAL_SUBCOMMAND	0x4
+#define     GEN11_PCODE_LOCKED			0x6
+#define     GEN11_PCODE_REJECTED		0x11
+#define     GEN7_PCODE_MIN_FREQ_TABLE_GT_RATIO_OUT_OF_RANGE 0x10
+#define   GEN6_PCODE_WRITE_RC6VIDS		0x4
+#define   GEN6_PCODE_READ_RC6VIDS		0x5
+#define     GEN6_ENCODE_RC6_VID(mv)		(((mv) - 245) / 5)
+#define     GEN6_DECODE_RC6_VID(vids)		(((vids) * 5) + 245)
+#define   BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ	0x18
+#define   GEN9_PCODE_READ_MEM_LATENCY		0x6
+#define     GEN9_MEM_LATENCY_LEVEL_3_7_MASK	REG_GENMASK(31, 24)
+#define     GEN9_MEM_LATENCY_LEVEL_2_6_MASK	REG_GENMASK(23, 16)
+#define     GEN9_MEM_LATENCY_LEVEL_1_5_MASK	REG_GENMASK(15, 8)
+#define     GEN9_MEM_LATENCY_LEVEL_0_4_MASK	REG_GENMASK(7, 0)
+#define   SKL_PCODE_LOAD_HDCP_KEYS		0x5
+#define   SKL_PCODE_CDCLK_CONTROL		0x7
+#define     SKL_CDCLK_PREPARE_FOR_CHANGE	0x3
+#define     SKL_CDCLK_READY_FOR_CHANGE		0x1
+#define   GEN6_PCODE_WRITE_MIN_FREQ_TABLE	0x8
+#define   GEN6_PCODE_READ_MIN_FREQ_TABLE	0x9
+#define   GEN6_READ_OC_PARAMS			0xc
+#define   ICL_PCODE_MEM_SUBSYSYSTEM_INFO	0xd
+#define     ICL_PCODE_MEM_SS_READ_GLOBAL_INFO	(0x0 << 8)
+#define     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point)	(((point) << 16) | (0x1 << 8))
+#define     ADL_PCODE_MEM_SS_READ_PSF_GV_INFO	((0) | (0x2 << 8))
+#define   DISPLAY_TO_PCODE_CDCLK_MAX		0x28D
+#define   DISPLAY_TO_PCODE_VOLTAGE_MASK		REG_GENMASK(1, 0)
+#define	  DISPLAY_TO_PCODE_VOLTAGE_MAX		DISPLAY_TO_PCODE_VOLTAGE_MASK
+#define   DISPLAY_TO_PCODE_CDCLK_VALID		REG_BIT(27)
+#define   DISPLAY_TO_PCODE_PIPE_COUNT_VALID	REG_BIT(31)
+#define   DISPLAY_TO_PCODE_CDCLK_MASK		REG_GENMASK(25, 16)
+#define   DISPLAY_TO_PCODE_PIPE_COUNT_MASK	REG_GENMASK(30, 28)
+#define   DISPLAY_TO_PCODE_CDCLK(x)		REG_FIELD_PREP(DISPLAY_TO_PCODE_CDCLK_MASK, (x))
+#define   DISPLAY_TO_PCODE_PIPE_COUNT(x)	REG_FIELD_PREP(DISPLAY_TO_PCODE_PIPE_COUNT_MASK, (x))
+#define   DISPLAY_TO_PCODE_VOLTAGE(x)		REG_FIELD_PREP(DISPLAY_TO_PCODE_VOLTAGE_MASK, (x))
+#define   DISPLAY_TO_PCODE_UPDATE_MASK(cdclk, num_pipes, voltage_level) \
+		((DISPLAY_TO_PCODE_CDCLK(cdclk)) | \
+		(DISPLAY_TO_PCODE_PIPE_COUNT(num_pipes)) | \
+		(DISPLAY_TO_PCODE_VOLTAGE(voltage_level)))
+#define   ICL_PCODE_SAGV_DE_MEM_SS_CONFIG	0xe
+#define     ICL_PCODE_REP_QGV_MASK		REG_GENMASK(1, 0)
+#define     ICL_PCODE_REP_QGV_SAFE		REG_FIELD_PREP(ICL_PCODE_REP_QGV_MASK, 0)
+#define     ICL_PCODE_REP_QGV_POLL		REG_FIELD_PREP(ICL_PCODE_REP_QGV_MASK, 1)
+#define     ICL_PCODE_REP_QGV_REJECTED		REG_FIELD_PREP(ICL_PCODE_REP_QGV_MASK, 2)
+#define     ADLS_PCODE_REP_PSF_MASK		REG_GENMASK(3, 2)
+#define     ADLS_PCODE_REP_PSF_SAFE		REG_FIELD_PREP(ADLS_PCODE_REP_PSF_MASK, 0)
+#define     ADLS_PCODE_REP_PSF_POLL		REG_FIELD_PREP(ADLS_PCODE_REP_PSF_MASK, 1)
+#define     ADLS_PCODE_REP_PSF_REJECTED		REG_FIELD_PREP(ADLS_PCODE_REP_PSF_MASK, 2)
+#define     ICL_PCODE_REQ_QGV_PT_MASK		REG_GENMASK(7, 0)
+#define     ICL_PCODE_REQ_QGV_PT(x)		REG_FIELD_PREP(ICL_PCODE_REQ_QGV_PT_MASK, (x))
+#define     ADLS_PCODE_REQ_PSF_PT_MASK		REG_GENMASK(10, 8)
+#define     ADLS_PCODE_REQ_PSF_PT(x)		REG_FIELD_PREP(ADLS_PCODE_REQ_PSF_PT_MASK, (x))
+#define   GEN6_PCODE_READ_D_COMP		0x10
+#define   GEN6_PCODE_WRITE_D_COMP		0x11
+#define   ICL_PCODE_EXIT_TCCOLD			0x12
+#define   HSW_PCODE_DE_WRITE_FREQ_REQ		0x17
+#define   DISPLAY_IPS_CONTROL			0x19
+#define   TGL_PCODE_TCCOLD			0x26
+#define     TGL_PCODE_EXIT_TCCOLD_DATA_L_EXIT_FAILED	REG_BIT(0)
+#define     TGL_PCODE_EXIT_TCCOLD_DATA_L_BLOCK_REQ	0
+#define     TGL_PCODE_EXIT_TCCOLD_DATA_L_UNBLOCK_REQ	REG_BIT(0)
+            /* See also IPS_CTL */
+#define     IPS_PCODE_CONTROL			(1 << 30)
+#define   HSW_PCODE_DYNAMIC_DUTY_CYCLE_CONTROL	0x1A
+#define   GEN9_PCODE_SAGV_CONTROL		0x21
+#define     GEN9_SAGV_DISABLE			0x0
+#define     GEN9_SAGV_IS_DISABLED		0x1
+#define     GEN9_SAGV_ENABLE			0x3
+#define   DG1_PCODE_STATUS			0x7E
+#define     DG1_UNCORE_GET_INIT_STATUS		0x0
+#define     DG1_UNCORE_INIT_STATUS_COMPLETE	0x1
+#define   PCODE_POWER_SETUP			0x7C
+#define     POWER_SETUP_SUBCOMMAND_READ_I1	0x4
+#define     POWER_SETUP_SUBCOMMAND_WRITE_I1	0x5
+#define	    POWER_SETUP_I1_WATTS		REG_BIT(31)
+#define	    POWER_SETUP_I1_SHIFT		6	/* 10.6 fixed point format */
+#define	    POWER_SETUP_I1_DATA_MASK		REG_GENMASK(15, 0)
+#define     POWER_SETUP_SUBCOMMAND_G8_ENABLE	0x6
+#define GEN12_PCODE_READ_SAGV_BLOCK_TIME_US	0x23
+#define   XEHP_PCODE_FREQUENCY_CONFIG		0x6e	/* pvc */
+/* XEHP_PCODE_FREQUENCY_CONFIG sub-commands (param1) */
+#define     PCODE_MBOX_FC_SC_READ_FUSED_P0	0x0
+#define     PCODE_MBOX_FC_SC_READ_FUSED_PN	0x1
+/* PCODE_MBOX_DOMAIN_* - mailbox domain IDs */
+/*   XEHP_PCODE_FREQUENCY_CONFIG param2 */
+#define     PCODE_MBOX_DOMAIN_NONE		0x0
+#define     PCODE_MBOX_DOMAIN_MEDIAFF		0x3
+
 #endif
-- 
2.50.1

