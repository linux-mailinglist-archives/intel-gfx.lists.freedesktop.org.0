Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 191378FB6FC
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:27:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D363410E4DD;
	Tue,  4 Jun 2024 15:27:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E2ILKDOg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDC3D10E4E0
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514825; x=1749050825;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cJDOX7ab9Ehcy9lZ6huXxFdOKUvnpLIrJiOGy5dWInY=;
 b=E2ILKDOgjW6vAdh7G0ffsXiY0b/sSygj+nYPX0Y23il2K9XgUH72d4pY
 qLdLhcZ7IY0KGP4rYqNvEe8OLhNc4lB1tO7yGWvWth24v87GeVR/DoRtT
 JErJSqY8dleGO10u6d9rnJjLfo6hu2oMZ0sQPKmafHzQcc0AQL1DUxSoa
 QM5TAQv+a8k5lGySCEODIC4zjZzQ7r5ylX5ny/YXXAHtc4DQeFEz6JdOB
 mLNTWcdZKZ95tiTse8L+4jxMlxE1aYwaB5yPxIIZ3ZQZvS6ojAHX8phUU
 zcLQZzFKbScLxT4RLxM+wzzzyZZnKHZqJwMdYTymKPUCXXeyhjqAtC92P Q==;
X-CSE-ConnectionGUID: qycmy9UHTqa6eJTuSV+WaQ==
X-CSE-MsgGUID: 5WmpI145QBGYgQT1tiShXQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14225513"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="14225513"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:27:04 -0700
X-CSE-ConnectionGUID: GJw96KxDS4mMeSIr+OA/tQ==
X-CSE-MsgGUID: YoA+URWYSTqcD81I36+4/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37382205"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:27:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 07/65] drm/i915: pass dev_priv explicitly to TRANS_VBLANK
Date: Tue,  4 Jun 2024 18:25:25 +0300
Message-Id: <c33739ac6f26105fd1ad79b0027b6626e241c7bc.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the TRANS_VBLANK register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c           |  3 ++-
 drivers/gpu/drm/i915/display/intel_crt.c         | 10 +++++++---
 drivers/gpu/drm/i915/display/intel_display.c     |  9 +++++----
 drivers/gpu/drm/i915/display/intel_pch_display.c |  2 +-
 drivers/gpu/drm/i915/i915_reg.h                  |  2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c      |  8 ++++----
 6 files changed, 20 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index f95709321ea6..0ee42954054f 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -995,7 +995,8 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 	if (DISPLAY_VER(dev_priv) >= 12) {
 		for_each_dsi_port(port, intel_dsi->ports) {
 			dsi_trans = dsi_port_to_transcoder(port);
-			intel_de_write(dev_priv, TRANS_VBLANK(dsi_trans),
+			intel_de_write(dev_priv,
+				       TRANS_VBLANK(dev_priv, dsi_trans),
 				       VBLANK_START(vactive - 1) | VBLANK_END(vtotal - 1));
 		}
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 29ab5b112b86..54549d2cfcff 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -710,7 +710,8 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 	save_bclrpat = intel_de_read(dev_priv, BCLRPAT(cpu_transcoder));
 	save_vtotal = intel_de_read(dev_priv,
 				    TRANS_VTOTAL(dev_priv, cpu_transcoder));
-	vblank = intel_de_read(dev_priv, TRANS_VBLANK(cpu_transcoder));
+	vblank = intel_de_read(dev_priv,
+			       TRANS_VBLANK(dev_priv, cpu_transcoder));
 
 	vtotal = REG_FIELD_GET(VTOTAL_MASK, save_vtotal) + 1;
 	vactive = REG_FIELD_GET(VACTIVE_MASK, save_vtotal) + 1;
@@ -749,7 +750,8 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 			u32 vsync_start = REG_FIELD_GET(VSYNC_START_MASK, vsync) + 1;
 
 			vblank_start = vsync_start;
-			intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder),
+			intel_de_write(dev_priv,
+				       TRANS_VBLANK(dev_priv, cpu_transcoder),
 				       VBLANK_START(vblank_start - 1) |
 				       VBLANK_END(vblank_end - 1));
 			restore_vblank = true;
@@ -782,7 +784,9 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 
 		/* restore vblank if necessary */
 		if (restore_vblank)
-			intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder), vblank);
+			intel_de_write(dev_priv,
+				       TRANS_VBLANK(dev_priv, cpu_transcoder),
+				       vblank);
 		/*
 		 * If more than 3/4 of the scanline detected a monitor,
 		 * then it is assumed to be present. This works even on i830,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c681a23be1eb..87a690cf5808 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2723,7 +2723,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	intel_de_write(dev_priv, TRANS_VTOTAL(dev_priv, cpu_transcoder),
 		       VACTIVE(crtc_vdisplay - 1) |
 		       VTOTAL(crtc_vtotal - 1));
-	intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder),
+	intel_de_write(dev_priv, TRANS_VBLANK(dev_priv, cpu_transcoder),
 		       VBLANK_START(crtc_vblank_start - 1) |
 		       VBLANK_END(crtc_vblank_end - 1));
 	intel_de_write(dev_priv, TRANS_VSYNC(cpu_transcoder),
@@ -2760,7 +2760,7 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	 * The hardware actually ignores TRANS_VBLANK.VBLANK_END in DP mode.
 	 * But let's write it anyway to keep the state checker happy.
 	 */
-	intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder),
+	intel_de_write(dev_priv, TRANS_VBLANK(dev_priv, cpu_transcoder),
 		       VBLANK_START(crtc_vblank_start - 1) |
 		       VBLANK_END(crtc_vblank_end - 1));
 	/*
@@ -2832,7 +2832,8 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 
 	/* FIXME TGL+ DSI transcoders have this! */
 	if (!transcoder_is_dsi(cpu_transcoder)) {
-		tmp = intel_de_read(dev_priv, TRANS_VBLANK(cpu_transcoder));
+		tmp = intel_de_read(dev_priv,
+				    TRANS_VBLANK(dev_priv, cpu_transcoder));
 		adjusted_mode->crtc_vblank_start = REG_FIELD_GET(VBLANK_START_MASK, tmp) + 1;
 		adjusted_mode->crtc_vblank_end = REG_FIELD_GET(VBLANK_END_MASK, tmp) + 1;
 	}
@@ -8198,7 +8199,7 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 		       HSYNC_START(656 - 1) | HSYNC_END(752 - 1));
 	intel_de_write(dev_priv, TRANS_VTOTAL(dev_priv, cpu_transcoder),
 		       VACTIVE(480 - 1) | VTOTAL(525 - 1));
-	intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder),
+	intel_de_write(dev_priv, TRANS_VBLANK(dev_priv, cpu_transcoder),
 		       VBLANK_START(480 - 1) | VBLANK_END(525 - 1));
 	intel_de_write(dev_priv, TRANS_VSYNC(cpu_transcoder),
 		       VSYNC_START(490 - 1) | VSYNC_END(492 - 1));
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 611a9cd2596f..03a33ff2653a 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -233,7 +233,7 @@ static void ilk_pch_transcoder_set_timings(const struct intel_crtc_state *crtc_s
 	intel_de_write(dev_priv, PCH_TRANS_VTOTAL(pch_transcoder),
 		       intel_de_read(dev_priv, TRANS_VTOTAL(dev_priv, cpu_transcoder)));
 	intel_de_write(dev_priv, PCH_TRANS_VBLANK(pch_transcoder),
-		       intel_de_read(dev_priv, TRANS_VBLANK(cpu_transcoder)));
+		       intel_de_read(dev_priv, TRANS_VBLANK(dev_priv, cpu_transcoder)));
 	intel_de_write(dev_priv, PCH_TRANS_VSYNC(pch_transcoder),
 		       intel_de_read(dev_priv, TRANS_VSYNC(cpu_transcoder)));
 	intel_de_write(dev_priv, PCH_TRANS_VSYNCSHIFT(pch_transcoder),
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 3b48022b29a7..155259c11c88 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1221,7 +1221,7 @@
 #define TRANS_HBLANK(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HBLANK_A)
 #define TRANS_HSYNC(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HSYNC_A)
 #define TRANS_VTOTAL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VTOTAL_A)
-#define TRANS_VBLANK(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VBLANK_A)
+#define TRANS_VBLANK(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VBLANK_A)
 #define TRANS_VSYNC(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNC_A)
 #define BCLRPAT(trans)		_MMIO_TRANS2(dev_priv, (trans), _BCLRPAT_A)
 #define TRANS_VSYNCSHIFT(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNCSHIFT_A)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 5dd85943e0a1..baeedcdfdcab 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -235,7 +235,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_A));
 	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_A));
 	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_A));
-	MMIO_D(TRANS_VBLANK(TRANSCODER_A));
+	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_A));
 	MMIO_D(TRANS_VSYNC(TRANSCODER_A));
 	MMIO_D(BCLRPAT(TRANSCODER_A));
 	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_A));
@@ -244,7 +244,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_B));
 	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_B));
 	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_B));
-	MMIO_D(TRANS_VBLANK(TRANSCODER_B));
+	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_B));
 	MMIO_D(TRANS_VSYNC(TRANSCODER_B));
 	MMIO_D(BCLRPAT(TRANSCODER_B));
 	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_B));
@@ -253,7 +253,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_C));
 	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_C));
 	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_C));
-	MMIO_D(TRANS_VBLANK(TRANSCODER_C));
+	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_C));
 	MMIO_D(TRANS_VSYNC(TRANSCODER_C));
 	MMIO_D(BCLRPAT(TRANSCODER_C));
 	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_C));
@@ -262,7 +262,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_EDP));
 	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_EDP));
 	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_EDP));
-	MMIO_D(TRANS_VBLANK(TRANSCODER_EDP));
+	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_EDP));
 	MMIO_D(TRANS_VSYNC(TRANSCODER_EDP));
 	MMIO_D(BCLRPAT(TRANSCODER_EDP));
 	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_EDP));
-- 
2.39.2

