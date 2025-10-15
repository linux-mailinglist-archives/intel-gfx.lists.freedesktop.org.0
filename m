Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 938E5BDC4D8
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 05:17:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0949610E6F6;
	Wed, 15 Oct 2025 03:17:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Od5dy3G1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AF8610E6F3;
 Wed, 15 Oct 2025 03:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760498252; x=1792034252;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=bfvq0S8sEy6qqQBTOGlg6I6q7KvumjvtTTnujx7KpMw=;
 b=Od5dy3G1NPD/1Icp/mv4Ke7Ab5GliE3lr18VhMnC9J7Q0pHnhKWG7wzP
 24OarlQ+ZLsIegRQKCZ/FLPZGlp0HeKarYhh1u6uhrXj4QABGQOo2S7Nl
 p79p6NeRse9lgc/Q6xfTed+F+nxHGJd69nd/TIWLE+2GA8Es2e5mMQ3xp
 LdYEV6H8XD2HPJCNLUBnZEvyqfrWtecPpqzljdyFBc5VvRsIphMmsjobx
 WQhFbGBY6mUn0FYeMJkGuuduHJweo1xHYbRfOtGtNuOlRczFq8F/ExoeS
 2BWI52qwt73ycYBbCIuVVKxnV/daCvho458HYzX2F6PwG9LZK1FrE1dTG A==;
X-CSE-ConnectionGUID: XEe9PoSlSHaarmBN0a6qPg==
X-CSE-MsgGUID: vXSB1EYzRxalzRiQTkXh1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62577209"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62577209"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:17:31 -0700
X-CSE-ConnectionGUID: +iuKeBEwSGmESM51zsWQ0w==
X-CSE-MsgGUID: +iBqCM9KQoWNVvWEopgPIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="186302716"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.185])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:17:27 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 15 Oct 2025 00:15:12 -0300
Subject: [PATCH 12/32] drm/i915/xe3p_lpd: Underrun debuggability and error
 codes/hints
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-xe3p_lpd-basic-enabling-v1-12-d2d1e26520aa@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
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
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
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

Currently there is no way in the driver to classify the underruns into
different categories. Starting with Xe3p_LPD, we get two new registers
and some bits in existing registers which can help us categorise the
underruns and let us know possible reason behind the underrun.

Bspec: 69111, 69561, 74411, 74412
Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_regs.h  |  31 +++++++
 drivers/gpu/drm/i915/display/intel_fifo_underrun.c | 100 ++++++++++++++++++++-
 2 files changed, 130 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 9d71e26a4fa2..9e2414b730db 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -882,6 +882,36 @@
 #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK		REG_GENMASK(2, 0) /* tgl+ */
 #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL(plane_id)	REG_FIELD_PREP(PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK, (plane_id))
 
+#define _UNDERRUN_DBG1_A				0x70064
+#define _UNDERRUN_DBG1_B				0x71064
+#define UNDERRUN_DBG1(pipe)				_MMIO_PIPE(pipe, \
+								   _UNDERRUN_DBG1_A, \
+								   _UNDERRUN_DBG1_B)
+#define   UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK		REG_GENMASK(29, 24)
+#define   UNDERRUN_DBUF_BLOCK_NOT_VALID_PLANE_CURSOR	REG_BIT(24)
+#define   UNDERRUN_DDB_EMPTY_MASK			REG_GENMASK(21, 16)
+#define   UNDERRUN_DDB_EMPTY_PLANE_CURSOR		REG_BIT(16)
+#define   UNDERRUN_DBUF_NOT_FILLED_MASK			REG_GENMASK(13, 8)
+#define   UNDERRUN_DBUF_NOT_FILLED_PLANE_CURSOR		REG_BIT(8)
+#define   UNDERRUN_BELOW_WM0_MASK			REG_GENMASK(5, 0)
+#define   UNDERRUN_BELOW_WM0_PLANE_CURSOR		REG_BIT(0)
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
+#define _FBC_DEBUG_STATUS_A				0x43220
+#define _FBC_DEBUG_STATUS_B				0x43260
+#define FBC_DEBUG_STATUS(pipe)				_MMIO_PIPE(pipe, \
+								   _FBC_DEBUG_STATUS_A, \
+								   _FBC_DEBUG_STATUS_B)
+#define   FBC_UNDERRUN_DECOMPRESSION			REG_BIT(27)
+
 #define DPINVGTT				_MMIO(VLV_DISPLAY_BASE + 0x7002c) /* VLV/CHV only */
 #define   DPINVGTT_EN_MASK_CHV				REG_GENMASK(27, 16)
 #define   DPINVGTT_EN_MASK_VLV				REG_GENMASK(23, 16)
@@ -1416,6 +1446,7 @@
 
 #define GEN12_DCPR_STATUS_1				_MMIO(0x46440)
 #define  XELPDP_PMDEMAND_INFLIGHT_STATUS		REG_BIT(26)
+#define  XE3P_UNDERRUN_PKGC				REG_BIT(21)
 
 #define FUSE_STRAP		_MMIO(0x42014)
 #define   ILK_INTERNAL_GRAPHICS_DISABLE	REG_BIT(31)
diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index c2ce8461ac9e..753872ad28ed 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -352,6 +352,101 @@ bool intel_set_pch_fifo_underrun_reporting(struct intel_display *display,
 	return old;
 }
 
+static void snprintf_underrun_planes(char *buf, size_t len,
+				     u32 underrun_dbg, u32 underrun_cursor)
+{
+	snprintf(buf, len, "%s%s%s%s%s%s",
+		 underrun_dbg & (underrun_cursor << 1) ? "[1]" : "",
+		 underrun_dbg & (underrun_cursor << 2) ? "[2]" : "",
+		 underrun_dbg & (underrun_cursor << 3) ? "[3]" : "",
+		 underrun_dbg & (underrun_cursor << 4) ? "[4]" : "",
+		 underrun_dbg & (underrun_cursor << 5) ? "[5]" : "",
+		 underrun_dbg & underrun_cursor ? "[C]" : "");
+}
+
+static void xe3p_lpd_log_underrun(struct intel_display *display,
+				  enum pipe pipe)
+{
+	u32 underrun_dbg1;
+	u32 underrun_dbg2;
+	u32 fbc_debug_status;
+	u32 dcpr_status;
+	char planes[32];
+
+	/*
+	 * UNDERRUN_DBG1 reports the following things
+	 * 1. If DBUF block is not valid
+	 * 2. If DDB is empty
+	 * 3. If streamer could not completely fill DBUF at the end of vblank
+	 * 4. Each enabled plane/cursor below watermark 0
+	 */
+	underrun_dbg1 = intel_de_read(display, UNDERRUN_DBG1(pipe));
+	intel_de_write(display, UNDERRUN_DBG1(pipe), underrun_dbg1);
+
+	if (underrun_dbg1 & UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK) {
+		snprintf_underrun_planes(planes, sizeof(planes), underrun_dbg1,
+					 UNDERRUN_DBUF_BLOCK_NOT_VALID_PLANE_CURSOR);
+		drm_err(display->drm,
+			"Pipe %c FIFO underrun: DBUF block not valid for plane(s):  %s\n",
+			pipe_name(pipe), planes);
+	}
+
+	if (underrun_dbg1 & UNDERRUN_DDB_EMPTY_MASK) {
+		snprintf_underrun_planes(planes, sizeof(planes), underrun_dbg1,
+					 UNDERRUN_DDB_EMPTY_PLANE_CURSOR);
+		drm_err(display->drm, "Pipe %c FIFO underrun: DDB empty for plane(s):  %s\n",
+			pipe_name(pipe), planes);
+	}
+
+	if (underrun_dbg1 & UNDERRUN_DBUF_NOT_FILLED_MASK) {
+		snprintf_underrun_planes(planes, sizeof(planes), underrun_dbg1,
+					 UNDERRUN_DBUF_NOT_FILLED_PLANE_CURSOR);
+		drm_err(display->drm, "Pipe %c FIFO underrun: DBUF not filled for plane(s):  %s\n",
+			pipe_name(pipe), planes);
+	}
+
+	if (underrun_dbg1 & UNDERRUN_BELOW_WM0_MASK) {
+		snprintf_underrun_planes(planes, sizeof(planes), underrun_dbg1,
+					 UNDERRUN_BELOW_WM0_PLANE_CURSOR);
+		drm_err(display->drm, "Pipe %c FIFO underrun: Below watermark 0 on plane(s):  %s\n",
+			pipe_name(pipe), planes);
+	}
+
+	/*
+	 * UNDERRUN_DBG2 reports the frame count and line count when the underrun started.
+	 */
+	underrun_dbg2 = intel_de_read(display, UNDERRUN_DBG2(pipe));
+	if (underrun_dbg2 & UNDERRUN_FRAME_LINE_COUNTERS_FROZEN) {
+		intel_de_write(display, UNDERRUN_DBG2(pipe), UNDERRUN_FRAME_LINE_COUNTERS_FROZEN);
+		drm_err(display->drm, "Pipe %c FIFO underrun: Frame count: %u, Line count: %u\n",
+			pipe_name(pipe),
+			REG_FIELD_GET(UNDERRUN_PIPE_FRAME_COUNT_MASK, underrun_dbg2),
+			REG_FIELD_GET(UNDERRUN_LINE_COUNT_MASK, underrun_dbg2));
+	}
+
+	/*
+	 * FBC_DEBUG_STATUS's FBC_UNDERRUN_DECOMPRESSION indicates if FBC was
+	 * decompressing when underrun got triggered.
+	 */
+	fbc_debug_status = intel_de_read(display, FBC_DEBUG_STATUS(pipe));
+	if (fbc_debug_status & FBC_UNDERRUN_DECOMPRESSION) {
+		intel_de_write(display, FBC_DEBUG_STATUS(pipe), FBC_UNDERRUN_DECOMPRESSION);
+		drm_err(display->drm, "Pipe %c FIFO underrun: FBC decompression\n",
+			pipe_name(pipe));
+	}
+
+	/*
+	 * GEN12_DCPR_STATUS_1's XE3P_UNDERRUN_PKGC, indicates that underrun started
+	 * while pkgc was blocking memory.
+	 */
+	dcpr_status = intel_de_read(display, GEN12_DCPR_STATUS_1);
+	if (dcpr_status & XE3P_UNDERRUN_PKGC) {
+		intel_de_write(display, GEN12_DCPR_STATUS_1, XE3P_UNDERRUN_PKGC);
+		drm_err(display->drm, "Pipe %c FIFO underrun: Pkgc blocking memory\n",
+			pipe_name(pipe));
+	}
+}
+
 /**
  * intel_cpu_fifo_underrun_irq_handler - handle CPU fifo underrun interrupt
  * @display: display device instance
@@ -378,7 +473,10 @@ void intel_cpu_fifo_underrun_irq_handler(struct intel_display *display,
 	if (intel_set_cpu_fifo_underrun_reporting(display, pipe, false)) {
 		trace_intel_cpu_fifo_underrun(display, pipe);
 
-		drm_err(display->drm, "CPU pipe %c FIFO underrun\n", pipe_name(pipe));
+		if (DISPLAY_VER(display) >= 35)
+			xe3p_lpd_log_underrun(display, pipe);
+		else
+			drm_err(display->drm, "CPU pipe %c FIFO underrun\n", pipe_name(pipe));
 	}
 
 	intel_fbc_handle_fifo_underrun_irq(display);

-- 
2.51.0

