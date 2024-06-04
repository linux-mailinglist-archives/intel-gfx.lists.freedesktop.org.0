Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 113B28FB6FA
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:27:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EE8010E4C3;
	Tue,  4 Jun 2024 15:27:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CQxB9GGC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A365910E4C6
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514820; x=1749050820;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=odUbOsq50iU45Pgg5Iyeueu3C3ezOXEJtAkxLQ/t6qc=;
 b=CQxB9GGCT30YkAcahMiQvQzwibzv01j97826JpUo/L6JBkvr1uPPzySr
 PUEbciB5yLN/pm61wBQsIiwHLi2S9iX0wJ1Oiy61Upl1pUpoNHtmWowVJ
 9z+q8CwqsRSqypQu/xLt3+KrUkgOfge3F9oPRGtTVxtxo+tLfbD6KF58i
 2YprdcNDW4s5GZPcNlBU3h4zkZLq7S4xW6LYYRb+QJ4vNlbCjGaIk/uc9
 uCAsPPRnCmlUnAcnou+/tZohL7f7Nf+zMgJXECAQwTjsNLodsEppGaMwF
 cU6HORYjBOazZ45j2rQ5P2uSezVCj51pxAC69nQneCR4MESCbmYVyaWlW A==;
X-CSE-ConnectionGUID: uH111hz7Q3esYsESRhhdhg==
X-CSE-MsgGUID: NgV01gC/ROCh8fdrjmE9dw==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14225501"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="14225501"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:27:00 -0700
X-CSE-ConnectionGUID: +KqUuEVDQ4q7KOilqq9VCg==
X-CSE-MsgGUID: Ej6s77kPTWCT3XIgfGtidQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37382119"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:26:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 06/65] drm/i915: pass dev_priv explicitly to TRANS_VTOTAL
Date: Tue,  4 Jun 2024 18:25:24 +0300
Message-Id: <751bc7046f5e2c5fc6a4fe5ade2e836c641abdb7.1717514638.git.jani.nikula@intel.com>
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
explicitly to the TRANS_VTOTAL register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c           |  2 +-
 drivers/gpu/drm/i915/display/intel_crt.c         |  3 ++-
 drivers/gpu/drm/i915/display/intel_display.c     | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_pch_display.c |  2 +-
 drivers/gpu/drm/i915/gvt/handlers.c              |  2 +-
 drivers/gpu/drm/i915/i915_reg.h                  |  2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c      |  8 ++++----
 7 files changed, 15 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index f87a2170ac91..f95709321ea6 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -953,7 +953,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 		 * struct drm_display_mode.
 		 * For interlace mode: program required pixel minus 2
 		 */
-		intel_de_write(dev_priv, TRANS_VTOTAL(dsi_trans),
+		intel_de_write(dev_priv, TRANS_VTOTAL(dev_priv, dsi_trans),
 			       VACTIVE(vactive - 1) | VTOTAL(vtotal - 1));
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 10e95dc425a6..29ab5b112b86 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -708,7 +708,8 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 	drm_dbg_kms(&dev_priv->drm, "starting load-detect on CRT\n");
 
 	save_bclrpat = intel_de_read(dev_priv, BCLRPAT(cpu_transcoder));
-	save_vtotal = intel_de_read(dev_priv, TRANS_VTOTAL(cpu_transcoder));
+	save_vtotal = intel_de_read(dev_priv,
+				    TRANS_VTOTAL(dev_priv, cpu_transcoder));
 	vblank = intel_de_read(dev_priv, TRANS_VBLANK(cpu_transcoder));
 
 	vtotal = REG_FIELD_GET(VTOTAL_MASK, save_vtotal) + 1;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 111f2c400ecd..c681a23be1eb 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2720,7 +2720,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
 		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
 
-	intel_de_write(dev_priv, TRANS_VTOTAL(cpu_transcoder),
+	intel_de_write(dev_priv, TRANS_VTOTAL(dev_priv, cpu_transcoder),
 		       VACTIVE(crtc_vdisplay - 1) |
 		       VTOTAL(crtc_vtotal - 1));
 	intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder),
@@ -2736,7 +2736,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	 * bits. */
 	if (IS_HASWELL(dev_priv) && cpu_transcoder == TRANSCODER_EDP &&
 	    (pipe == PIPE_B || pipe == PIPE_C))
-		intel_de_write(dev_priv, TRANS_VTOTAL(pipe),
+		intel_de_write(dev_priv, TRANS_VTOTAL(dev_priv, pipe),
 			       VACTIVE(crtc_vdisplay - 1) |
 			       VTOTAL(crtc_vtotal - 1));
 }
@@ -2767,7 +2767,7 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	 * The double buffer latch point for TRANS_VTOTAL
 	 * is the transcoder's undelayed vblank.
 	 */
-	intel_de_write(dev_priv, TRANS_VTOTAL(cpu_transcoder),
+	intel_de_write(dev_priv, TRANS_VTOTAL(dev_priv, cpu_transcoder),
 		       VACTIVE(crtc_vdisplay - 1) |
 		       VTOTAL(crtc_vtotal - 1));
 }
@@ -2826,7 +2826,7 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 	adjusted_mode->crtc_hsync_start = REG_FIELD_GET(HSYNC_START_MASK, tmp) + 1;
 	adjusted_mode->crtc_hsync_end = REG_FIELD_GET(HSYNC_END_MASK, tmp) + 1;
 
-	tmp = intel_de_read(dev_priv, TRANS_VTOTAL(cpu_transcoder));
+	tmp = intel_de_read(dev_priv, TRANS_VTOTAL(dev_priv, cpu_transcoder));
 	adjusted_mode->crtc_vdisplay = REG_FIELD_GET(VACTIVE_MASK, tmp) + 1;
 	adjusted_mode->crtc_vtotal = REG_FIELD_GET(VTOTAL_MASK, tmp) + 1;
 
@@ -8196,7 +8196,7 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 		       HBLANK_START(640 - 1) | HBLANK_END(800 - 1));
 	intel_de_write(dev_priv, TRANS_HSYNC(dev_priv, cpu_transcoder),
 		       HSYNC_START(656 - 1) | HSYNC_END(752 - 1));
-	intel_de_write(dev_priv, TRANS_VTOTAL(cpu_transcoder),
+	intel_de_write(dev_priv, TRANS_VTOTAL(dev_priv, cpu_transcoder),
 		       VACTIVE(480 - 1) | VTOTAL(525 - 1));
 	intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder),
 		       VBLANK_START(480 - 1) | VBLANK_END(525 - 1));
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 480c0e09434d..611a9cd2596f 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -231,7 +231,7 @@ static void ilk_pch_transcoder_set_timings(const struct intel_crtc_state *crtc_s
 		       intel_de_read(dev_priv, TRANS_HSYNC(dev_priv, cpu_transcoder)));
 
 	intel_de_write(dev_priv, PCH_TRANS_VTOTAL(pch_transcoder),
-		       intel_de_read(dev_priv, TRANS_VTOTAL(cpu_transcoder)));
+		       intel_de_read(dev_priv, TRANS_VTOTAL(dev_priv, cpu_transcoder)));
 	intel_de_write(dev_priv, PCH_TRANS_VBLANK(pch_transcoder),
 		       intel_de_read(dev_priv, TRANS_VBLANK(cpu_transcoder)));
 	intel_de_write(dev_priv, PCH_TRANS_VSYNC(pch_transcoder),
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 06ba39b2b103..00cf35a9669e 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -678,7 +678,7 @@ static void vgpu_update_refresh_rate(struct intel_vgpu *vgpu)
 
 	/* Get H/V total from transcoder timing */
 	htotal = (vgpu_vreg_t(vgpu, TRANS_HTOTAL(dev_priv, TRANSCODER_A)) >> TRANS_HTOTAL_SHIFT);
-	vtotal = (vgpu_vreg_t(vgpu, TRANS_VTOTAL(TRANSCODER_A)) >> TRANS_VTOTAL_SHIFT);
+	vtotal = (vgpu_vreg_t(vgpu, TRANS_VTOTAL(dev_priv, TRANSCODER_A)) >> TRANS_VTOTAL_SHIFT);
 
 	if (dp_br && link_n && htotal && vtotal) {
 		u64 pixel_clk = 0;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0d33815b91a4..3b48022b29a7 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1220,7 +1220,7 @@
 #define TRANS_HTOTAL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HTOTAL_A)
 #define TRANS_HBLANK(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HBLANK_A)
 #define TRANS_HSYNC(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HSYNC_A)
-#define TRANS_VTOTAL(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VTOTAL_A)
+#define TRANS_VTOTAL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VTOTAL_A)
 #define TRANS_VBLANK(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VBLANK_A)
 #define TRANS_VSYNC(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNC_A)
 #define BCLRPAT(trans)		_MMIO_TRANS2(dev_priv, (trans), _BCLRPAT_A)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 09d8960f7398..5dd85943e0a1 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -234,7 +234,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_A));
 	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_A));
 	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_A));
-	MMIO_D(TRANS_VTOTAL(TRANSCODER_A));
+	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_A));
 	MMIO_D(TRANS_VBLANK(TRANSCODER_A));
 	MMIO_D(TRANS_VSYNC(TRANSCODER_A));
 	MMIO_D(BCLRPAT(TRANSCODER_A));
@@ -243,7 +243,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_B));
 	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_B));
 	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_B));
-	MMIO_D(TRANS_VTOTAL(TRANSCODER_B));
+	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_B));
 	MMIO_D(TRANS_VBLANK(TRANSCODER_B));
 	MMIO_D(TRANS_VSYNC(TRANSCODER_B));
 	MMIO_D(BCLRPAT(TRANSCODER_B));
@@ -252,7 +252,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_C));
 	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_C));
 	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_C));
-	MMIO_D(TRANS_VTOTAL(TRANSCODER_C));
+	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_C));
 	MMIO_D(TRANS_VBLANK(TRANSCODER_C));
 	MMIO_D(TRANS_VSYNC(TRANSCODER_C));
 	MMIO_D(BCLRPAT(TRANSCODER_C));
@@ -261,7 +261,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_EDP));
 	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_EDP));
 	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_EDP));
-	MMIO_D(TRANS_VTOTAL(TRANSCODER_EDP));
+	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_EDP));
 	MMIO_D(TRANS_VBLANK(TRANSCODER_EDP));
 	MMIO_D(TRANS_VSYNC(TRANSCODER_EDP));
 	MMIO_D(BCLRPAT(TRANSCODER_EDP));
-- 
2.39.2

