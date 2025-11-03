Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B63C2D6F7
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 18:20:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B8FF10E46E;
	Mon,  3 Nov 2025 17:20:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dm0CMl1M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B11F10E470;
 Mon,  3 Nov 2025 17:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762190438; x=1793726438;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=gyjz7ZcLdBeOKG6plJ7IUUp4lCsvTuAYemX5GN95FmI=;
 b=Dm0CMl1MZaXPDCDbCtyms7oBhw22tATJAQ0qzMihBQwrglq4UrFdPGs3
 0hUFJxq5Vh7XCIQl9wO2p8a41rhWV6bWTaLiRUS8ELvJBS/V529X1Xyk6
 N2LDa8ins1IQebWe26xl7Nc8+q8De/rSGCkVW7xeC8+yCPFXi/wg7F9M5
 3V0nM4bPKFnUW8/LSY3kYI0Ytey7Xopp/FNvhyi049i1iua6LNyhEdjMy
 uJ0QFw4zixhBIS0aoTuw9lsHQoIKlqwDAENXPs1xL6uzlFM6U0tzv9l0K
 7v6p04SaYkL+g9Un2BWnJ1aXllISsWslVgMzBUIrVQyzqeU4eBp8edb2Z w==;
X-CSE-ConnectionGUID: 84KQ2HdpQoizq/0w+Y3jNg==
X-CSE-MsgGUID: 7CmFXKinRGyn7WkUCzMTvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64310072"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="64310072"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:20:38 -0800
X-CSE-ConnectionGUID: Hhg0DEN6SvysnCXGKM3k0g==
X-CSE-MsgGUID: Ai3Kg5mcTFusvE7bKVnJqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="186606572"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.223])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:20:34 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Mon, 03 Nov 2025 14:18:08 -0300
Subject: [PATCH v3 17/29] drm/i915/xe3p_lpd: Log FBC-related debug info for
 PIPE underrun
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251103-xe3p_lpd-basic-enabling-v3-17-00e87b510ae7@intel.com>
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

Xe3p_LPD added registers and bits to provide debug information at the
time a FIFO underrun happens.  We have already handled most of them,
with FBC being left out.  Let's handle it now.

For FBC, a bit was added to FBC_DEBUG_STATUS that indicates that the
respective FBC was decompressing when a FIFO underrun happened.  Add the
logic log that info.

Bspec: 69561
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c           | 45 ++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fbc.h           |  2 +
 drivers/gpu/drm/i915/display/intel_fbc_regs.h      |  2 +
 drivers/gpu/drm/i915/display/intel_fifo_underrun.c |  1 +
 4 files changed, 50 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index a1e3083022ee..24b72951ea3c 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -129,6 +129,11 @@ struct intel_fbc {
 	const char *no_fbc_reason;
 };
 
+static char fbc_name(enum intel_fbc_id fbc_id)
+{
+	return 'A' + fbc_id;
+}
+
 /* plane stride in pixels */
 static unsigned int intel_fbc_plane_stride(const struct intel_plane_state *plane_state)
 {
@@ -2119,6 +2124,46 @@ void intel_fbc_handle_fifo_underrun_irq(struct intel_display *display)
 		__intel_fbc_handle_fifo_underrun_irq(fbc);
 }
 
+static unsigned int pipe_to_fbc_mask(struct intel_display *display, enum pipe pipe)
+{
+	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
+	struct intel_plane *plane;
+	unsigned int mask = 0;
+
+	for_each_intel_plane_on_crtc(display->drm, crtc, plane) {
+		if (plane->fbc)
+			mask |= BIT(plane->fbc->id);
+	}
+
+	return mask;
+}
+
+static void __intel_fbc_log_fifo_underrun(struct intel_fbc *fbc, enum pipe pipe)
+{
+	struct intel_display *display = fbc->display;
+	u32 val;
+
+	val = intel_de_read(display, FBC_DEBUG_STATUS(fbc->id));
+	if (val & FBC_UNDERRUN_DECMPR) {
+		intel_de_write(display, FBC_DEBUG_STATUS(fbc->id), FBC_UNDERRUN_DECMPR);
+		drm_err(display->drm, "Pipe %c FIFO underrun info: FBC %c decompressing\n",
+			pipe_name(pipe), fbc_name(fbc->id));
+	}
+}
+
+void intel_fbc_log_fifo_underrun(struct intel_display *display, enum pipe pipe)
+{
+	struct intel_fbc *fbc;
+	enum intel_fbc_id fbc_id;
+	unsigned int fbc_mask;
+
+	fbc_mask = pipe_to_fbc_mask(display, pipe);
+
+	for_each_intel_fbc(display, fbc, fbc_id)
+		if (fbc_mask & BIT(fbc_id))
+			__intel_fbc_log_fifo_underrun(fbc, pipe);
+}
+
 /*
  * The DDX driver changes its behavior depending on the value it reads from
  * i915.enable_fbc, so sanitize it by translating the default value into either
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
index 91424563206a..d34282cbe971 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc.h
@@ -9,6 +9,7 @@
 #include <linux/types.h>
 
 enum fb_op_origin;
+enum pipe;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
@@ -46,6 +47,7 @@ void intel_fbc_flush(struct intel_display *display,
 		     unsigned int frontbuffer_bits, enum fb_op_origin origin);
 void intel_fbc_add_plane(struct intel_fbc *fbc, struct intel_plane *plane);
 void intel_fbc_handle_fifo_underrun_irq(struct intel_display *display);
+void intel_fbc_log_fifo_underrun(struct intel_display *display, enum pipe pipe);
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
index 1da90c99f93f..d0dbc4faa3f4 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -403,6 +403,7 @@ static void xe3p_lpd_log_underrun(struct intel_display *display,
 	u32 val;
 
 	process_underrun_dbg1(display, pipe);
+	intel_fbc_log_fifo_underrun(display, pipe);
 
 	val = intel_de_read(display, UNDERRUN_DBG2(pipe));
 	if (val & UNDERRUN_FRAME_LINE_COUNTERS_FROZEN) {

-- 
2.51.0

