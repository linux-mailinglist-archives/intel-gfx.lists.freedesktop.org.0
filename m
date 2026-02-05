Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uM5pMq1ihGkK2wMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 10:28:13 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC0BF0B42
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 10:28:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB51A10E82E;
	Thu,  5 Feb 2026 09:28:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b6b8hnDz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B7E410E826;
 Thu,  5 Feb 2026 09:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770283685; x=1801819685;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qHtko9IMlpzNRxErs09GMCQu5x8s6zVL63xph1JBX1w=;
 b=b6b8hnDzPq1/64Lovf68z5J4VXhuLzGtKSACkH3sUOxNwv4KhpNX9BYY
 nb1cGRXIoUqzrhbGAgImIijZTz6KXRWr2fkDHCDuI92f+S6IO6iaqtOzr
 LQuAKV3istjyW4LK8O4CuaJ8P4JxYnfwjCFlgpwTQvq3j6dB6RenmmhVI
 a5PDJO2nyMZXF3PnKB3DCBScc/qYI3zbnPL65OD4hRKI2We/9OASZc1dT
 dpKqnhUlCsugIktIh5yi2G67Mtseg5lVBVJfLUQjPi9GYDRIV87/6P4BS
 aT38Or5Myjy1u/jl3vwdPcSW3uzDRy7A5hH6no0c9ReBWXObMELWibSaq g==;
X-CSE-ConnectionGUID: 2Xbjr75WRcGjBOHjY5HGlw==
X-CSE-MsgGUID: yYtOJJ61TLCPYFjT8SdfSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="89060101"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="89060101"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 01:28:05 -0800
X-CSE-ConnectionGUID: 7OS+z0osSNWi6GgLo15NGw==
X-CSE-MsgGUID: pIcwFZlrQ+uUWoP7p59cHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="209807745"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa007.fm.intel.com with ESMTP; 05 Feb 2026 01:28:03 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v4 05/20] drm/{i915, xe}: Extract pcode definitions to common header
Date: Thu,  5 Feb 2026 15:13:26 +0530
Message-ID: <20260205094341.1882816-6-uma.shankar@intel.com>
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
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 7AC0BF0B42
X-Rspamd-Action: no action

There are certain register definitions which are commonly shared
by i915, xe and display. Extract the same to a common header to
avoid duplication.

Move GEN6_PCODE_MAILBOX to common pcode header to make intel_cdclk.c
free from including i915_reg.h.

v3: Include pcode header as required, instead in i915_reg.h (Jani)

v2: Make the header granular and per feature (Jani)

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/hsw_ips.c        |   1 +
 drivers/gpu/drm/i915/display/intel_bw.c       |   1 +
 drivers/gpu/drm/i915/display/intel_cdclk.c    |   2 +-
 .../drm/i915/display/intel_display_power.c    |   1 +
 .../i915/display/intel_display_power_well.c   |   1 +
 drivers/gpu/drm/i915/display/intel_dram.c     |   1 +
 drivers/gpu/drm/i915/display/intel_hdcp.c     |   1 +
 drivers/gpu/drm/i915/display/skl_watermark.c  |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   |   2 +
 drivers/gpu/drm/i915/gt/intel_llc.c           |   2 +
 drivers/gpu/drm/i915/gt/intel_rc6.c           |   1 +
 drivers/gpu/drm/i915/gt/intel_rps.c           |   1 +
 drivers/gpu/drm/i915/gvt/handlers.c           |   1 +
 drivers/gpu/drm/i915/i915_driver.c            |   1 +
 drivers/gpu/drm/i915/i915_hwmon.c             |   2 +
 drivers/gpu/drm/i915/i915_reg.h               | 100 ----------------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   2 +
 drivers/gpu/drm/i915/intel_pcode.c            |   1 +
 include/drm/intel/intel_pcode_regs.h          | 108 ++++++++++++++++++
 20 files changed, 130 insertions(+), 101 deletions(-)
 create mode 100644 include/drm/intel/intel_pcode_regs.h

diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
index 0caaea2e64e1..8658872ed86f 100644
--- a/drivers/gpu/drm/i915/display/hsw_ips.c
+++ b/drivers/gpu/drm/i915/display/hsw_ips.c
@@ -6,6 +6,7 @@
 #include <linux/debugfs.h>
 
 #include <drm/drm_print.h>
+#include <drm/intel/intel_pcode_regs.h>
 
 #include "hsw_ips.h"
 #include "i915_reg.h"
diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 8d84445c69f1..618da1dfb671 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -5,6 +5,7 @@
 
 #include <drm/drm_atomic_state_helper.h>
 #include <drm/drm_print.h>
+#include <drm/intel/intel_pcode_regs.h>
 
 #include "i915_reg.h"
 #include "intel_bw.h"
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 9217050a76e0..29d90d612bb2 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -27,9 +27,9 @@
 
 #include <drm/drm_fixed.h>
 #include <drm/drm_print.h>
+#include <drm/intel/intel_pcode_regs.h>
 
 #include "hsw_ips.h"
-#include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_audio.h"
 #include "intel_cdclk.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 06adf6afbec0..cb9256f72aa9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -7,6 +7,7 @@
 #include <linux/string_helpers.h>
 
 #include <drm/drm_print.h>
+#include <drm/intel/intel_pcode_regs.h>
 
 #include "i915_reg.h"
 #include "intel_backlight_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 78f707b00550..45c4313e6900 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -6,6 +6,7 @@
 #include <linux/iopoll.h>
 
 #include <drm/drm_print.h>
+#include <drm/intel/intel_pcode_regs.h>
 
 #include "i915_reg.h"
 #include "intel_backlight_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dram.c b/drivers/gpu/drm/i915/display/intel_dram.c
index 3b9879714ea9..61aefe77f90f 100644
--- a/drivers/gpu/drm/i915/display/intel_dram.c
+++ b/drivers/gpu/drm/i915/display/intel_dram.c
@@ -7,6 +7,7 @@
 
 #include <drm/drm_managed.h>
 #include <drm/drm_print.h>
+#include <drm/intel/intel_pcode_regs.h>
 
 #include "i915_reg.h"
 #include "intel_display_core.h"
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index b7479ced7871..c96f51d88186 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -17,6 +17,7 @@
 #include <drm/display/drm_hdcp_helper.h>
 #include <drm/drm_print.h>
 #include <drm/intel/i915_component.h>
+#include <drm/intel/intel_pcode_regs.h>
 
 #include "i915_reg.h"
 #include "intel_connector.h"
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index b41da10f0f85..1455ea068d22 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -7,6 +7,7 @@
 
 #include <drm/drm_blend.h>
 #include <drm/drm_print.h>
+#include <drm/intel/intel_pcode_regs.h>
 
 #include "i915_reg.h"
 #include "i9xx_wm.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index c0aff4b3cbba..babaf16e72f2 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -8,6 +8,7 @@
 #include <linux/string_helpers.h>
 
 #include <drm/drm_print.h>
+#include <drm/intel/intel_pcode_regs.h>
 
 #include "i915_drv.h"
 #include "i915_reg.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
index 1154cd2b7c34..a48601395dce 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
@@ -7,6 +7,8 @@
 #include <linux/sysfs.h>
 #include <linux/printk.h>
 
+#include <drm/intel/intel_pcode_regs.h>
+
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "i915_sysfs.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_llc.c b/drivers/gpu/drm/i915/gt/intel_llc.c
index 1d19c073ba2e..bcd707e3d436 100644
--- a/drivers/gpu/drm/i915/gt/intel_llc.c
+++ b/drivers/gpu/drm/i915/gt/intel_llc.c
@@ -6,6 +6,8 @@
 #include <asm/tsc.h>
 #include <linux/cpufreq.h>
 
+#include <drm/intel/intel_pcode_regs.h>
+
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_gt.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 286d49ecc449..942ac1ebecee 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -7,6 +7,7 @@
 #include <linux/string_helpers.h>
 
 #include <drm/drm_print.h>
+#include <drm/intel/intel_pcode_regs.h>
 
 #include "display/vlv_clock.h"
 #include "gem/i915_gem_region.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 90b7eee78f1f..844f2716a386 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -7,6 +7,7 @@
 
 #include <drm/intel/i915_drm.h>
 #include <drm/intel/display_parent_interface.h>
+#include <drm/intel/intel_pcode_regs.h>
 
 #include "display/intel_display_rps.h"
 #include "display/vlv_clock.h"
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 6f860c320afc..2e9d9d0638ae 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -40,6 +40,7 @@
 
 #include <drm/display/drm_dp.h>
 #include <drm/drm_print.h>
+#include <drm/intel/intel_pcode_regs.h>
 
 #include "display/bxt_dpio_phy_regs.h"
 #include "display/i9xx_plane_regs.h"
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index c01a35ecfa2f..6d8fbf845bc2 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -48,6 +48,7 @@
 #include <drm/drm_probe_helper.h>
 #include <drm/intel/display_member.h>
 #include <drm/intel/display_parent_interface.h>
+#include <drm/intel/intel_pcode_regs.h>
 
 #include "display/i9xx_display_sr.h"
 #include "display/intel_bw.h"
diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index 7dfe1784153f..a94f26e3b6bf 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -9,6 +9,8 @@
 #include <linux/types.h>
 #include <linux/units.h>
 
+#include <drm/intel/intel_pcode_regs.h>
+
 #include "i915_drv.h"
 #include "i915_hwmon.h"
 #include "i915_reg.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 26e5504dbc67..bb87af7d3c22 100644
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
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index c0154fd77fc9..8cfe9b56f1d0 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -3,6 +3,8 @@
  * Copyright © 2020 Intel Corporation
  */
 
+#include <drm/intel/intel_pcode_regs.h>
+
 #include "display/bxt_dpio_phy_regs.h"
 #include "display/i9xx_plane_regs.h"
 #include "display/i9xx_wm_regs.h"
diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
index 76c5916b28f4..c07d48fc1b35 100644
--- a/drivers/gpu/drm/i915/intel_pcode.c
+++ b/drivers/gpu/drm/i915/intel_pcode.c
@@ -5,6 +5,7 @@
 
 #include <drm/drm_print.h>
 #include <drm/intel/display_parent_interface.h>
+#include <drm/intel/intel_pcode_regs.h>
 
 #include "i915_drv.h"
 #include "i915_reg.h"
diff --git a/include/drm/intel/intel_pcode_regs.h b/include/drm/intel/intel_pcode_regs.h
new file mode 100644
index 000000000000..db989ee7c488
--- /dev/null
+++ b/include/drm/intel/intel_pcode_regs.h
@@ -0,0 +1,108 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2026 Intel Corporation */
+
+#ifndef _INTEL_PCODE_REGS_H_
+#define _INTEL_PCODE_REGS_H_
+
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
+/* See also IPS_CTL */
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
+#endif
-- 
2.50.1

