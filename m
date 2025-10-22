Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE004BF9769
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 02:31:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42EC610E67B;
	Wed, 22 Oct 2025 00:31:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="buwazZyX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74E2510E67B;
 Wed, 22 Oct 2025 00:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761093099; x=1792629099;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=sLdR6CJ812VcIgRpvLj0S3X3R8gTkaFp4oXYb2fQjiI=;
 b=buwazZyXKamklYjy01tVR72lYah83LP0SEK6t4fxli75+EUbmvPUHPLO
 6nO0izkw8MnEyxkeVH8qD7UwF0ZGQtz7MOnhsw1QM/k46dOYLcZsT50E7
 RmOD98ZNeccIgOTIo1WQE3o2ro/8qi2Uq+3j2eASgWZher0nTI3Xa5ost
 q/VWnBRmLFK917TZxcrTUI+PqIVf21S/O3oW1YoGuKtJwkKf/v8DZqWib
 l32p7uFElIJ3TjEoN/bBjQFZW+05Au2XLLZxL5hS6FdktvRi2HTAgB+QM
 r+ue7urfND/azf5vmSQ5rY7KbvLzQeR1jzOtyxBxI4+FIJaRKhL2Y4GfN A==;
X-CSE-ConnectionGUID: dfABi1KoQk6FYJaMguRWEw==
X-CSE-MsgGUID: fYSedJQnQESCKOr/CkMlWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="85855734"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="85855734"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:31:39 -0700
X-CSE-ConnectionGUID: v3HCt+zrRC2E4A4z3STfCQ==
X-CSE-MsgGUID: yoyKq2FWRtipifCmqyUv+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="188132395"
Received: from gpacheco-mobl.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.26])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:31:35 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Tue, 21 Oct 2025 21:28:36 -0300
Subject: [PATCH v2 11/32] drm/i915/xe3p_lpd: Underrun debuggability and
 error codes/hints
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251021-xe3p_lpd-basic-enabling-v2-11-10eae6d655b8@intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
In-Reply-To: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
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

v2:
  - Use seq_buf to generate planes string. (Jani)
  - Move definition of FBC_DEBUG_STATUS to intel_fbc_regs.h. (Ville)
  - Change logic for processing UNDERRUN_DBG1 to use loops and move it
    to a separate function. (Gustavo)
  - Always print underrun error message, even if there wouldn't be any
    debug info associated to the underrun. (Gustavo)

Bspec: 69111, 69561, 74411, 74412
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Co-developed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_regs.h  | 20 +++++
 drivers/gpu/drm/i915/display/intel_fbc_regs.h      |  2 +
 drivers/gpu/drm/i915/display/intel_fifo_underrun.c | 87 ++++++++++++++++++++++
 3 files changed, 109 insertions(+)

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
diff --git a/drivers/gpu/drm/i915/display/intel_fbc_regs.h b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
index b1d0161a3196..272dba7f9695 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
@@ -88,6 +88,8 @@
 #define DPFC_FENCE_YOFF			_MMIO(0x3218)
 #define ILK_DPFC_FENCE_YOFF(fbc_id)	_MMIO_PIPE((fbc_id), 0x43218, 0x43258)
 #define DPFC_CHICKEN			_MMIO(0x3224)
+#define FBC_DEBUG_STATUS(pipe)		_MMIO_PIPE(pipe, 0x43220, 0x43260)
+#define   FBC_UNDERRUN_DECOMPRESSION		REG_BIT(27)
 #define ILK_DPFC_CHICKEN(fbc_id)	_MMIO_PIPE((fbc_id), 0x43224, 0x43264)
 #define   DPFC_HT_MODIFY			REG_BIT(31) /* pre-ivb */
 #define   DPFC_NUKE_ON_ANY_MODIFICATION		REG_BIT(23) /* bdw+ */
diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index c2ce8461ac9e..43cf141a59ae 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -25,6 +25,8 @@
  *
  */
 
+#include <linux/seq_buf.h>
+
 #include <drm/drm_print.h>
 
 #include "i915_reg.h"
@@ -34,6 +36,7 @@
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
 #include "intel_fbc.h"
+#include "intel_fbc_regs.h"
 #include "intel_fifo_underrun.h"
 #include "intel_pch_display.h"
 
@@ -352,6 +355,87 @@ bool intel_set_pch_fifo_underrun_reporting(struct intel_display *display,
 	return old;
 }
 
+#define UNDERRUN_DBG1_NUM_PLANES 6
+
+static void process_underrun_dbg1(struct intel_display *display,
+				  enum pipe pipe)
+{
+	struct {
+		u32 mask;
+		const char *info;
+	} info_masks[] = {
+		{ UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK, "DBUF block not valid" },
+		{ UNDERRUN_DDB_EMPTY_MASK, "DDB empty" },
+		{ UNDERRUN_DBUF_NOT_FILLED_MASK, "DBUF not completely filled" },
+		{ UNDERRUN_BELOW_WM0_MASK, "DBUF below WM0" },
+	};
+	DECLARE_SEQ_BUF(planes_desc, 32);
+	u32 val;
+
+	val = intel_de_read(display, UNDERRUN_DBG1(pipe));
+	intel_de_write(display, UNDERRUN_DBG1(pipe), val);
+
+	for (int i = 0; i < ARRAY_SIZE(info_masks); i++) {
+		u32 plane_bits;
+
+		plane_bits = val & info_masks[i].mask;
+
+		if (!plane_bits)
+			continue;
+
+		plane_bits >>= ffs(info_masks[i].mask) - 1;
+
+		seq_buf_clear(&planes_desc);
+
+		for (int j = 0; j < UNDERRUN_DBG1_NUM_PLANES; j++) {
+			if (!(plane_bits & REG_BIT(j)))
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
+			pipe_name(pipe), info_masks[i].info, seq_buf_str(&planes_desc));
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
+	val = intel_de_read(display, FBC_DEBUG_STATUS(pipe));
+	if (val & FBC_UNDERRUN_DECOMPRESSION) {
+		intel_de_write(display, FBC_DEBUG_STATUS(pipe), FBC_UNDERRUN_DECOMPRESSION);
+		drm_err(display->drm, "Pipe %c FIFO underrun info: FBC decompression\n",
+			pipe_name(pipe));
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
@@ -379,6 +463,9 @@ void intel_cpu_fifo_underrun_irq_handler(struct intel_display *display,
 		trace_intel_cpu_fifo_underrun(display, pipe);
 
 		drm_err(display->drm, "CPU pipe %c FIFO underrun\n", pipe_name(pipe));
+
+		if (DISPLAY_VER(display) >= 35)
+			xe3p_lpd_log_underrun(display, pipe);
 	}
 
 	intel_fbc_handle_fifo_underrun_irq(display);

-- 
2.51.0

