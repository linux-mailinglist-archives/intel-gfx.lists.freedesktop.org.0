Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4735CC5F4A9
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 21:53:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6F5410EB18;
	Fri, 14 Nov 2025 20:53:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dZc0sZLD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79BF410EB18;
 Fri, 14 Nov 2025 20:53:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763153617; x=1794689617;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=65Fl9+eFogzHSQnlefCnjxub+5TEwb+L9CLnLRvhEkE=;
 b=dZc0sZLD0zkskMK9nbQzdu9AUMTOkC7c9C8d3qnSBXxxXNZ8S3YIO+U2
 tS0HU0XWb5AMwQ8YLeO5BlYBp7zqpjkI3pnztZ9Kzg/vBujSVDgjxBGuo
 JxksunVfWgQwv1vS7fwZIjZKqQdg7IoJSTr4O0e7c+DdgP7/fh9pC8IFi
 vgtoQXxiborByEejlpvf93kJ7GWUpoZ/YYTGw/eGTaNmta532hj6ti6wY
 XFl7dep8c+cFrDqACXDs3r+WImvPXhtQ1T2EpfyLgOwPrRcmDrvurQlCO
 qKWaesme4a2DT5KrJmM5co80LuCMHOfhqRks834P+kPzXKUyjwK3tCCXE g==;
X-CSE-ConnectionGUID: YYgouJ/1Qp2biXu7p68p+A==
X-CSE-MsgGUID: d6rr0WemRqODcsEqWIG5eA==
X-IronPort-AV: E=McAfee;i="6800,10657,11613"; a="67859892"
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="67859892"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 12:53:32 -0800
X-CSE-ConnectionGUID: 4xkHq2x1T+OivBwdhagJLQ==
X-CSE-MsgGUID: PCcHDgG4SkqpiNjhknb2QQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="227214219"
Received: from dnelso2-mobl.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.50])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 12:53:28 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Fri, 14 Nov 2025 17:52:11 -0300
Subject: [PATCH v5 4/8] drm/i915/xe3p_lpd: Handle underrun debug bits
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251114-xe3p_lpd-basic-enabling-v5-4-c183388367f4@intel.com>
References: <20251114-xe3p_lpd-basic-enabling-v5-0-c183388367f4@intel.com>
In-Reply-To: <20251114-xe3p_lpd-basic-enabling-v5-0-c183388367f4@intel.com>
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
 Jani Nikula <jani.nikula@intel.com>, 
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

Xe3p_LPD added several bits containing information that can be relevant
to debugging FIFO underruns.  Add the logic necessary to handle them
when reporting underruns.

This was adapted from the initial patch[1] from Sai Teja Pottumuttu.

[1] https://lore.kernel.org/all/20251015-xe3p_lpd-basic-enabling-v1-12-d2d1e26520aa@intel.com/

v2:
  - Handle FBC-related bits in intel_fbc.c. (Ville)
  - Do not use intel_fbc_id_for_pipe (promoted from
    skl_fbc_id_for_pipe), but use pipe's primary plane to get the FBC
    instance. (Ville, Matt)
  - Improve code readability by moving logic specific to logging fields
    of UNDERRUN_DBG1 to a separate function. (Jani)

Bspec: 69111, 69561, 74411, 74412
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
I tested this by adding a change on top of this series that updates
Xe3p_LPD's CDCLK table to use bad values and I got the following
messages:

    [  +0.000237] xe 0000:00:02.0: [drm:intel_modeset_verify_crtc [xe]] [CRTC:88:pipe A]
    [  +0.000674] xe 0000:00:02.0: [drm] *ERROR* CPU pipe A FIFO underrun
    [  +0.000015] xe 0000:00:02.0: [drm] *ERROR* Pipe A FIFO underrun info: DBUF block not valid on planes: [1]
    [  +0.000001] xe 0000:00:02.0: [drm] *ERROR* Pipe A FIFO underrun info: DDB empty on planes: [1]
    [  +0.000001] xe 0000:00:02.0: [drm] *ERROR* Pipe A FIFO underrun info: DBUF below WM0 on planes: [1]
    [  +0.000004] xe 0000:00:02.0: [drm] *ERROR* Pipe A FIFO underrun info: frame count: 1890, line count: 44
---
 .../gpu/drm/i915/display/intel_display_device.h    |   1 +
 drivers/gpu/drm/i915/display/intel_display_regs.h  |  16 +++
 drivers/gpu/drm/i915/display/intel_fbc.c           |  50 ++++++++++
 drivers/gpu/drm/i915/display/intel_fbc.h           |   3 +
 drivers/gpu/drm/i915/display/intel_fbc_regs.h      |   2 +
 drivers/gpu/drm/i915/display/intel_fifo_underrun.c | 109 +++++++++++++++++++++
 6 files changed, 181 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index b559ef43d547..91d8cfac5eff 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -197,6 +197,7 @@ struct intel_display_platforms {
 #define HAS_TRANSCODER(__display, trans)	((DISPLAY_RUNTIME_INFO(__display)->cpu_transcoder_mask & \
 						  BIT(trans)) != 0)
 #define HAS_UNCOMPRESSED_JOINER(__display)	(DISPLAY_VER(__display) >= 13)
+#define HAS_UNDERRUN_DBG_INFO(__display)	(DISPLAY_VER(__display) >= 35)
 #define HAS_ULTRAJOINER(__display)	(((__display)->platform.dgfx && \
 					  DISPLAY_VER(__display) == 14) && HAS_DSC(__display))
 #define HAS_VRR(__display)		(DISPLAY_VER(__display) >= 11)
diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 9d71e26a4fa2..89ea0156ee06 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -882,6 +882,21 @@
 #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK		REG_GENMASK(2, 0) /* tgl+ */
 #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL(plane_id)	REG_FIELD_PREP(PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK, (plane_id))
 
+#define _UNDERRUN_DBG1_A			0x70064
+#define _UNDERRUN_DBG1_B			0x71064
+#define UNDERRUN_DBG1(pipe)			_MMIO_PIPE(pipe, _UNDERRUN_DBG1_A, _UNDERRUN_DBG1_B)
+#define   UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK	REG_GENMASK(29, 24)
+#define   UNDERRUN_DDB_EMPTY_MASK		REG_GENMASK(21, 16)
+#define   UNDERRUN_DBUF_NOT_FILLED_MASK		REG_GENMASK(13, 8)
+#define   UNDERRUN_BELOW_WM0_MASK		REG_GENMASK(5, 0)
+
+#define _UNDERRUN_DBG2_A			0x70068
+#define _UNDERRUN_DBG2_B			0x71068
+#define UNDERRUN_DBG2(pipe)			_MMIO_PIPE(pipe, _UNDERRUN_DBG2_A, _UNDERRUN_DBG2_B)
+#define   UNDERRUN_FRAME_LINE_COUNTERS_FROZEN	REG_BIT(31)
+#define   UNDERRUN_PIPE_FRAME_COUNT_MASK	REG_GENMASK(30, 20)
+#define   UNDERRUN_LINE_COUNT_MASK		REG_GENMASK(19, 0)
+
 #define DPINVGTT				_MMIO(VLV_DISPLAY_BASE + 0x7002c) /* VLV/CHV only */
 #define   DPINVGTT_EN_MASK_CHV				REG_GENMASK(27, 16)
 #define   DPINVGTT_EN_MASK_VLV				REG_GENMASK(23, 16)
@@ -1416,6 +1431,7 @@
 
 #define GEN12_DCPR_STATUS_1				_MMIO(0x46440)
 #define  XELPDP_PMDEMAND_INFLIGHT_STATUS		REG_BIT(26)
+#define  XE3P_UNDERRUN_PKGC				REG_BIT(21)
 
 #define FUSE_STRAP		_MMIO(0x42014)
 #define   ILK_INTERNAL_GRAPHICS_DISABLE	REG_BIT(31)
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 437d2fda20a7..ec316f9843c6 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -129,6 +129,25 @@ struct intel_fbc {
 	const char *no_fbc_reason;
 };
 
+static struct intel_fbc *intel_fbc_for_pipe(struct intel_display *display, enum pipe pipe)
+{
+	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
+	struct intel_plane *primary = NULL;
+	struct intel_plane *plane;
+
+	for_each_intel_plane_on_crtc(display->drm, crtc, plane) {
+		if (plane->base.type == DRM_PLANE_TYPE_PRIMARY) {
+			primary = plane;
+			break;
+		}
+	}
+
+	if (drm_WARN_ON(display->drm, !primary))
+		return NULL;
+
+	return primary->fbc;
+}
+
 /* plane stride in pixels */
 static unsigned int intel_fbc_plane_stride(const struct intel_plane_state *plane_state)
 {
@@ -2119,6 +2138,37 @@ void intel_fbc_handle_fifo_underrun_irq(struct intel_display *display)
 		__intel_fbc_handle_fifo_underrun_irq(fbc);
 }
 
+/**
+ * intel_fbc_read_underrun_dbg_info - Read and log FBC-related FIFO underrun debug info
+ * @display: display device instance
+ * @pipe: the pipe possibly containing the FBC
+ * @log: log the info?
+ *
+ * If @pipe does not contain an FBC instance, this function bails early.
+ * Otherwise, FBC-related FIFO underrun is read and cleared, and then, if @log
+ * is true, printed with error level.
+ */
+void intel_fbc_read_underrun_dbg_info(struct intel_display *display,
+				      enum pipe pipe, bool log)
+{
+	struct intel_fbc *fbc = intel_fbc_for_pipe(display, pipe);
+	u32 val;
+
+	if (!fbc)
+		return;
+
+	val = intel_de_read(display, FBC_DEBUG_STATUS(fbc->id));
+	if (!(val & FBC_UNDERRUN_DECMPR))
+		return;
+
+	intel_de_write(display, FBC_DEBUG_STATUS(fbc->id), FBC_UNDERRUN_DECMPR);
+
+	if (log)
+		drm_err(display->drm,
+			"Pipe %c FIFO underrun info: FBC decompressing\n",
+			pipe_name(pipe));
+}
+
 /*
  * The DDX driver changes its behavior depending on the value it reads from
  * i915.enable_fbc, so sanitize it by translating the default value into either
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
index 91424563206a..f0255ddae2b6 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc.h
@@ -9,6 +9,7 @@
 #include <linux/types.h>
 
 enum fb_op_origin;
+enum pipe;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
@@ -46,6 +47,8 @@ void intel_fbc_flush(struct intel_display *display,
 		     unsigned int frontbuffer_bits, enum fb_op_origin origin);
 void intel_fbc_add_plane(struct intel_fbc *fbc, struct intel_plane *plane);
 void intel_fbc_handle_fifo_underrun_irq(struct intel_display *display);
+void intel_fbc_read_underrun_dbg_info(struct intel_display *display,
+				      enum pipe, bool log);
 void intel_fbc_reset_underrun(struct intel_display *display);
 void intel_fbc_crtc_debugfs_add(struct intel_crtc *crtc);
 void intel_fbc_debugfs_register(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/display/intel_fbc_regs.h b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
index b1d0161a3196..77d8321c4fb3 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
@@ -88,6 +88,8 @@
 #define DPFC_FENCE_YOFF			_MMIO(0x3218)
 #define ILK_DPFC_FENCE_YOFF(fbc_id)	_MMIO_PIPE((fbc_id), 0x43218, 0x43258)
 #define DPFC_CHICKEN			_MMIO(0x3224)
+#define FBC_DEBUG_STATUS(fbc_id)	_MMIO_PIPE((fbc_id), 0x43220, 0x43260)
+#define   FBC_UNDERRUN_DECMPR			REG_BIT(27)
 #define ILK_DPFC_CHICKEN(fbc_id)	_MMIO_PIPE((fbc_id), 0x43224, 0x43264)
 #define   DPFC_HT_MODIFY			REG_BIT(31) /* pre-ivb */
 #define   DPFC_NUKE_ON_ANY_MODIFICATION		REG_BIT(23) /* bdw+ */
diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index c2ce8461ac9e..b413b3e871d8 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -25,6 +25,8 @@
  *
  */
 
+#include <linux/seq_buf.h>
+
 #include <drm/drm_print.h>
 
 #include "i915_reg.h"
@@ -57,6 +59,100 @@
  * The code also supports underrun detection on the PCH transcoder.
  */
 
+#define UNDERRUN_DBG1_NUM_PLANES 6
+
+static void log_underrun_dbg1(struct intel_display *display, enum pipe pipe,
+			      unsigned long plane_mask, const char *info)
+{
+	DECLARE_SEQ_BUF(planes_desc, 32);
+	unsigned int i;
+
+	if (!plane_mask)
+		return;
+
+	for_each_set_bit(i, &plane_mask, UNDERRUN_DBG1_NUM_PLANES) {
+		if (i == 0)
+			seq_buf_puts(&planes_desc, "[C]");
+		else
+			seq_buf_printf(&planes_desc, "[%d]", i);
+	}
+
+	drm_err(display->drm, "Pipe %c FIFO underrun info: %s on planes: %s\n",
+		pipe_name(pipe), info, seq_buf_str(&planes_desc));
+
+	drm_WARN_ON(display->drm, seq_buf_has_overflowed(&planes_desc));
+}
+
+static void read_underrun_dbg1(struct intel_display *display, enum pipe pipe, bool log)
+{
+	u32 val = intel_de_read(display, UNDERRUN_DBG1(pipe));
+
+	if (!val)
+		return;
+
+	intel_de_write(display, UNDERRUN_DBG1(pipe), val);
+
+	if (!log)
+		return;
+
+	log_underrun_dbg1(display, pipe, REG_FIELD_GET(UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK, val),
+			  "DBUF block not valid");
+	log_underrun_dbg1(display, pipe, REG_FIELD_GET(UNDERRUN_DDB_EMPTY_MASK, val),
+			  "DDB empty");
+	log_underrun_dbg1(display, pipe, REG_FIELD_GET(UNDERRUN_DBUF_NOT_FILLED_MASK, val),
+			  "DBUF not completely filled");
+	log_underrun_dbg1(display, pipe, REG_FIELD_GET(UNDERRUN_BELOW_WM0_MASK, val),
+			  "DBUF below WM0");
+}
+
+static void read_underrun_dbg2(struct intel_display *display, enum pipe pipe, bool log)
+{
+	u32 val = intel_de_read(display, UNDERRUN_DBG2(pipe));
+
+	if (!(val & UNDERRUN_FRAME_LINE_COUNTERS_FROZEN))
+		return;
+
+	intel_de_write(display, UNDERRUN_DBG2(pipe), UNDERRUN_FRAME_LINE_COUNTERS_FROZEN);
+
+	if (log)
+		drm_err(display->drm,
+			"Pipe %c FIFO underrun info: frame count: %u, line count: %u\n",
+			pipe_name(pipe),
+			REG_FIELD_GET(UNDERRUN_PIPE_FRAME_COUNT_MASK, val),
+			REG_FIELD_GET(UNDERRUN_LINE_COUNT_MASK, val));
+}
+
+static void read_underrun_dbg_pkgc(struct intel_display *display, bool log)
+{
+	u32 val = intel_de_read(display, GEN12_DCPR_STATUS_1);
+
+	if (!(val & XE3P_UNDERRUN_PKGC))
+		return;
+
+	/*
+	 * Note: If there are multiple pipes enabled, only one of them will see
+	 * XE3P_UNDERRUN_PKGC set.
+	 */
+	intel_de_write(display, GEN12_DCPR_STATUS_1, XE3P_UNDERRUN_PKGC);
+
+	if (log)
+		drm_err(display->drm,
+			"General FIFO underrun info: Package C-state blocking memory\n");
+}
+
+static void read_underrun_dbg_info(struct intel_display *display,
+				   enum pipe pipe,
+				   bool log)
+{
+	if (!HAS_UNDERRUN_DBG_INFO(display))
+		return;
+
+	read_underrun_dbg1(display, pipe, log);
+	read_underrun_dbg2(display, pipe, log);
+	intel_fbc_read_underrun_dbg_info(display, pipe, log);
+	read_underrun_dbg_pkgc(display, log);
+}
+
 static bool ivb_can_enable_err_int(struct intel_display *display)
 {
 	struct intel_crtc *crtc;
@@ -262,6 +358,17 @@ static bool __intel_set_cpu_fifo_underrun_reporting(struct intel_display *displa
 	old = !crtc->cpu_fifo_underrun_disabled;
 	crtc->cpu_fifo_underrun_disabled = !enable;
 
+	/*
+	 * The debug bits get latched at the time of the FIFO underrun ISR bit
+	 * getting set.  That means that any non-zero debug bit that is read when
+	 * handling a FIFO underrun interrupt has the potential to belong to
+	 * another underrun event (past or future).  To alleviate this problem,
+	 * let's clear existing bits before enabling the interrupt, so that at
+	 * least we don't get information that is too out-of-date.
+	 */
+	if (enable && !old)
+		read_underrun_dbg_info(display, pipe, false);
+
 	if (HAS_GMCH(display))
 		i9xx_set_fifo_underrun_reporting(display, pipe, enable, old);
 	else if (display->platform.ironlake || display->platform.sandybridge)
@@ -379,6 +486,8 @@ void intel_cpu_fifo_underrun_irq_handler(struct intel_display *display,
 		trace_intel_cpu_fifo_underrun(display, pipe);
 
 		drm_err(display->drm, "CPU pipe %c FIFO underrun\n", pipe_name(pipe));
+
+		read_underrun_dbg_info(display, pipe, true);
 	}
 
 	intel_fbc_handle_fifo_underrun_irq(display);

-- 
2.51.0

