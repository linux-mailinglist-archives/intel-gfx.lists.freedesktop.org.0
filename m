Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 993DAC2D6E6
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 18:20:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0983F10E46B;
	Mon,  3 Nov 2025 17:20:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jsnLBfNd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB34C10E46B;
 Mon,  3 Nov 2025 17:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762190434; x=1793726434;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=aP4c2B09Xd76AgwQcSo5VQVz3gsdHyL6wQWoj3dfIPM=;
 b=jsnLBfNd6v3rti3nseUHgiWBcDUWB6kz1PQqgnHC9QLOBuKau2OhIy+A
 NxBIB6cB6duPqACUnSAnK2+rmCtvbGY19FcchuTR3/8CsWMYlul19LffH
 vBh8G/3PM/swdzbi8USrdBt45YG5AZmlfMO8tcf+KVOXtPLJ1d8T1Mx+c
 7YnQL8bgI8vjDEscmxyZUsXgW4YmOOWhg6TlNUd+rdjC+HXZc72FRuclb
 NZkakkTnVEzUpJu7uxUZOC2CSJvEn5e1CDwb0Xn1EJawgCmyskoN9i4X8
 AqXofXQptzMyYh4fvh9br5DWyPg2wEM5Z6xSOrUJAeXQNxwibJH8PZGYx w==;
X-CSE-ConnectionGUID: jNx0hRfuQFubftM9mPSS0w==
X-CSE-MsgGUID: f7zGzw5zRWylKrnl3m0z0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64310062"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="64310062"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:20:34 -0800
X-CSE-ConnectionGUID: lbThyTELSma6LJgMtrF3Jw==
X-CSE-MsgGUID: XGYIwX5sSuSwPvf0wkue9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="186606552"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.223])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:20:30 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Mon, 03 Nov 2025 14:18:07 -0300
Subject: [PATCH v3 16/29] drm/i915/xe3p_lpd: Underrun debuggability and
 error codes/hints
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251103-xe3p_lpd-basic-enabling-v3-16-00e87b510ae7@intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
In-Reply-To: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>, 
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
X-Mailer: b4 0.15-dev
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

From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>

Starting with Xe3p_LPD, we get two new registers and some bits in
existing registers that expose hardware state information at the time of
underrun notification that can be relevant to debugging.

Add the necessary logic in the driver to print the available debug
information when an underrun happens.

Note that the register FBC_DEBUG_STATUS also got a bit to indicate that
the respective FBC was decompressing when the underrun happened, but we
leave that one to be handled in an upcoming change.

v2:
  - Use seq_buf to generate planes string. (Jani)
  - Move definition of FBC_DEBUG_STATUS to intel_fbc_regs.h. (Ville)
  - Change logic for processing UNDERRUN_DBG1 to use loops and move it
    to a separate function. (Gustavo)
  - Always print underrun error message, even if there wouldn't be any
    debug info associated to the underrun. (Gustavo)
v3:
  - Use REG_FIELD_GET() for fields of UNDERRUN_DBG1. (Matt)
  - Move handling of FBC_DEBUG_STATUS to a separate patch that adds
    extra logic to match FBCs by pipe. (Gustavo)

Bspec: 69111, 69561, 74411, 74412
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Co-developed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_regs.h  | 20 ++++++
 drivers/gpu/drm/i915/display/intel_fifo_underrun.c | 72 ++++++++++++++++++++++
 2 files changed, 92 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 9d71e26a4fa2..c9f8b90faa42 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -882,6 +882,25 @@
 #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK		REG_GENMASK(2, 0) /* tgl+ */
 #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL(plane_id)	REG_FIELD_PREP(PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK, (plane_id))
 
+#define _UNDERRUN_DBG1_A				0x70064
+#define _UNDERRUN_DBG1_B				0x71064
+#define UNDERRUN_DBG1(pipe)				_MMIO_PIPE(pipe, \
+								   _UNDERRUN_DBG1_A, \
+								   _UNDERRUN_DBG1_B)
+#define   UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK		REG_GENMASK(29, 24)
+#define   UNDERRUN_DDB_EMPTY_MASK			REG_GENMASK(21, 16)
+#define   UNDERRUN_DBUF_NOT_FILLED_MASK			REG_GENMASK(13, 8)
+#define   UNDERRUN_BELOW_WM0_MASK			REG_GENMASK(5, 0)
+
+#define _UNDERRUN_DBG2_A				0x70068
+#define _UNDERRUN_DBG2_B				0x71068
+#define UNDERRUN_DBG2(pipe)				_MMIO_PIPE(pipe, \
+								   _UNDERRUN_DBG2_A, \
+								   _UNDERRUN_DBG2_B)
+#define   UNDERRUN_FRAME_LINE_COUNTERS_FROZEN		REG_BIT(31)
+#define   UNDERRUN_PIPE_FRAME_COUNT_MASK		REG_GENMASK(30, 20)
+#define   UNDERRUN_LINE_COUNT_MASK			REG_GENMASK(19, 0)
+
 #define DPINVGTT				_MMIO(VLV_DISPLAY_BASE + 0x7002c) /* VLV/CHV only */
 #define   DPINVGTT_EN_MASK_CHV				REG_GENMASK(27, 16)
 #define   DPINVGTT_EN_MASK_VLV				REG_GENMASK(23, 16)
@@ -1416,6 +1435,7 @@
 
 #define GEN12_DCPR_STATUS_1				_MMIO(0x46440)
 #define  XELPDP_PMDEMAND_INFLIGHT_STATUS		REG_BIT(26)
+#define  XE3P_UNDERRUN_PKGC				REG_BIT(21)
 
 #define FUSE_STRAP		_MMIO(0x42014)
 #define   ILK_INTERNAL_GRAPHICS_DISABLE	REG_BIT(31)
diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index c2ce8461ac9e..1da90c99f93f 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -25,6 +25,8 @@
  *
  */
 
+#include <linux/seq_buf.h>
+
 #include <drm/drm_print.h>
 
 #include "i915_reg.h"
@@ -352,6 +354,73 @@ bool intel_set_pch_fifo_underrun_reporting(struct intel_display *display,
 	return old;
 }
 
+#define UNDERRUN_DBG1_NUM_PLANES 6
+
+static void process_underrun_dbg1(struct intel_display *display,
+				  enum pipe pipe)
+{
+	u32 val = intel_de_read(display, UNDERRUN_DBG1(pipe));
+	struct {
+		u32 plane_mask;
+		const char *info;
+	} masks[] = {
+		{ REG_FIELD_GET(UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK, val), "DBUF block not valid" },
+		{ REG_FIELD_GET(UNDERRUN_DDB_EMPTY_MASK, val), "DDB empty" },
+		{ REG_FIELD_GET(UNDERRUN_DBUF_NOT_FILLED_MASK, val), "DBUF not completely filled" },
+		{ REG_FIELD_GET(UNDERRUN_BELOW_WM0_MASK, val), "DBUF below WM0" },
+	};
+	DECLARE_SEQ_BUF(planes_desc, 32);
+
+	intel_de_write(display, UNDERRUN_DBG1(pipe), val);
+
+	for (int i = 0; i < ARRAY_SIZE(masks); i++) {
+		if (!masks[i].plane_mask)
+			continue;
+
+		seq_buf_clear(&planes_desc);
+
+		for (int j = 0; j < UNDERRUN_DBG1_NUM_PLANES; j++) {
+			if (!(masks[i].plane_mask & REG_BIT(j)))
+				continue;
+
+			if (j == 0)
+				seq_buf_puts(&planes_desc, "[C]");
+			else
+				seq_buf_printf(&planes_desc, "[%d]", j);
+		}
+
+		drm_err(display->drm,
+			"Pipe %c FIFO underrun info: %s on planes: %s\n",
+			pipe_name(pipe), masks[i].info, seq_buf_str(&planes_desc));
+
+		drm_WARN_ON(display->drm, seq_buf_has_overflowed(&planes_desc));
+	}
+}
+
+static void xe3p_lpd_log_underrun(struct intel_display *display,
+				  enum pipe pipe)
+{
+	u32 val;
+
+	process_underrun_dbg1(display, pipe);
+
+	val = intel_de_read(display, UNDERRUN_DBG2(pipe));
+	if (val & UNDERRUN_FRAME_LINE_COUNTERS_FROZEN) {
+		intel_de_write(display, UNDERRUN_DBG2(pipe), UNDERRUN_FRAME_LINE_COUNTERS_FROZEN);
+		drm_err(display->drm, "Pipe %c FIFO underrun info: Frame count: %u, Line count: %u\n",
+			pipe_name(pipe),
+			REG_FIELD_GET(UNDERRUN_PIPE_FRAME_COUNT_MASK, val),
+			REG_FIELD_GET(UNDERRUN_LINE_COUNT_MASK, val));
+	}
+
+	val = intel_de_read(display, GEN12_DCPR_STATUS_1);
+	if (val & XE3P_UNDERRUN_PKGC) {
+		intel_de_write(display, GEN12_DCPR_STATUS_1, XE3P_UNDERRUN_PKGC);
+		drm_err(display->drm, "Pipe %c FIFO underrun info: Pkgc blocking memory\n",
+			pipe_name(pipe));
+	}
+}
+
 /**
  * intel_cpu_fifo_underrun_irq_handler - handle CPU fifo underrun interrupt
  * @display: display device instance
@@ -379,6 +448,9 @@ void intel_cpu_fifo_underrun_irq_handler(struct intel_display *display,
 		trace_intel_cpu_fifo_underrun(display, pipe);
 
 		drm_err(display->drm, "CPU pipe %c FIFO underrun\n", pipe_name(pipe));
+
+		if (DISPLAY_VER(display) >= 35)
+			xe3p_lpd_log_underrun(display, pipe);
 	}
 
 	intel_fbc_handle_fifo_underrun_irq(display);

-- 
2.51.0

