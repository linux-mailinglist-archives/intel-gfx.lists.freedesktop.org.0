Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7DA18FB6FE
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:27:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9422C10E4F7;
	Tue,  4 Jun 2024 15:27:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TdTgYpa8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 732F510E4DE
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514829; x=1749050829;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hSZnKu2qg8Qf2ZC9LBWH4YLMqMMDHqGGjrGadoP6zU0=;
 b=TdTgYpa8Fgq8uvVYvm1WCSUld6aiwpB/PcOZTz/QS/AuIMwB9JnvaCA2
 EcYd3suJNCSjijRED3uHpXLf5QR+zZneYpGK9nu/OISOTlAZb7Cscv08M
 xVY/EWqVf9+88bQkGyJoaZ2P6Y7HmPIhejWkZzuraFExHWWjPGd0eJqIf
 Jj4YzoPXZKPjM1+EaLT7oqfDoLUi6iHyZBA4naQDNyIu88uI/BqZJttXY
 ynHT49MBFUJXjxwkzH0bxF01ZfUg5qFoJmSj1OYBQONMMF7gDVHaAWtP4
 juOkXjG4HzhXkvcGuRLeUPMn/V9++JNzvyp5veYKmlblM3HT5ooDNPPWD g==;
X-CSE-ConnectionGUID: S7Mbj6bSTGaMKbgMYYjxBA==
X-CSE-MsgGUID: KsbSxXAURoWYZlArYzV1/A==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14225523"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="14225523"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:27:09 -0700
X-CSE-ConnectionGUID: 6/O7cwOTQsaiXsfMjZGi7g==
X-CSE-MsgGUID: tQCWRF7bT36gcvIJ4dLkKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37382277"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:27:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 08/65] drm/i915: pass dev_priv explicitly to TRANS_VSYNC
Date: Tue,  4 Jun 2024 18:25:26 +0300
Message-Id: <eed30cb59cc45955a88cdf951023b0e695095760.1717514638.git.jani.nikula@intel.com>
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
explicitly to the TRANS_VSYNC register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c           | 3 ++-
 drivers/gpu/drm/i915/display/intel_crt.c         | 3 ++-
 drivers/gpu/drm/i915/display/intel_display.c     | 6 +++---
 drivers/gpu/drm/i915/display/intel_pch_display.c | 2 +-
 drivers/gpu/drm/i915/i915_reg.h                  | 2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c      | 8 ++++----
 6 files changed, 13 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 0ee42954054f..b267099fde8a 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -967,7 +967,8 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 	if (is_vid_mode(intel_dsi)) {
 		for_each_dsi_port(port, intel_dsi->ports) {
 			dsi_trans = dsi_port_to_transcoder(port);
-			intel_de_write(dev_priv, TRANS_VSYNC(dsi_trans),
+			intel_de_write(dev_priv,
+				       TRANS_VSYNC(dev_priv, dsi_trans),
 				       VSYNC_START(vsync_start - 1) | VSYNC_END(vsync_end - 1));
 		}
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 54549d2cfcff..15569cf96c9c 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -746,7 +746,8 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 		* Yes, this will flicker
 		*/
 		if (vblank_start <= vactive && vblank_end >= vtotal) {
-			u32 vsync = intel_de_read(dev_priv, TRANS_VSYNC(cpu_transcoder));
+			u32 vsync = intel_de_read(dev_priv,
+						  TRANS_VSYNC(dev_priv, cpu_transcoder));
 			u32 vsync_start = REG_FIELD_GET(VSYNC_START_MASK, vsync) + 1;
 
 			vblank_start = vsync_start;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 87a690cf5808..776e4450e4af 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2726,7 +2726,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	intel_de_write(dev_priv, TRANS_VBLANK(dev_priv, cpu_transcoder),
 		       VBLANK_START(crtc_vblank_start - 1) |
 		       VBLANK_END(crtc_vblank_end - 1));
-	intel_de_write(dev_priv, TRANS_VSYNC(cpu_transcoder),
+	intel_de_write(dev_priv, TRANS_VSYNC(dev_priv, cpu_transcoder),
 		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
 		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
 
@@ -2837,7 +2837,7 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 		adjusted_mode->crtc_vblank_start = REG_FIELD_GET(VBLANK_START_MASK, tmp) + 1;
 		adjusted_mode->crtc_vblank_end = REG_FIELD_GET(VBLANK_END_MASK, tmp) + 1;
 	}
-	tmp = intel_de_read(dev_priv, TRANS_VSYNC(cpu_transcoder));
+	tmp = intel_de_read(dev_priv, TRANS_VSYNC(dev_priv, cpu_transcoder));
 	adjusted_mode->crtc_vsync_start = REG_FIELD_GET(VSYNC_START_MASK, tmp) + 1;
 	adjusted_mode->crtc_vsync_end = REG_FIELD_GET(VSYNC_END_MASK, tmp) + 1;
 
@@ -8201,7 +8201,7 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 		       VACTIVE(480 - 1) | VTOTAL(525 - 1));
 	intel_de_write(dev_priv, TRANS_VBLANK(dev_priv, cpu_transcoder),
 		       VBLANK_START(480 - 1) | VBLANK_END(525 - 1));
-	intel_de_write(dev_priv, TRANS_VSYNC(cpu_transcoder),
+	intel_de_write(dev_priv, TRANS_VSYNC(dev_priv, cpu_transcoder),
 		       VSYNC_START(490 - 1) | VSYNC_END(492 - 1));
 	intel_de_write(dev_priv, PIPESRC(pipe),
 		       PIPESRC_WIDTH(640 - 1) | PIPESRC_HEIGHT(480 - 1));
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 03a33ff2653a..9f8269705171 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -235,7 +235,7 @@ static void ilk_pch_transcoder_set_timings(const struct intel_crtc_state *crtc_s
 	intel_de_write(dev_priv, PCH_TRANS_VBLANK(pch_transcoder),
 		       intel_de_read(dev_priv, TRANS_VBLANK(dev_priv, cpu_transcoder)));
 	intel_de_write(dev_priv, PCH_TRANS_VSYNC(pch_transcoder),
-		       intel_de_read(dev_priv, TRANS_VSYNC(cpu_transcoder)));
+		       intel_de_read(dev_priv, TRANS_VSYNC(dev_priv, cpu_transcoder)));
 	intel_de_write(dev_priv, PCH_TRANS_VSYNCSHIFT(pch_transcoder),
 		       intel_de_read(dev_priv, TRANS_VSYNCSHIFT(cpu_transcoder)));
 }
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 155259c11c88..c47aae3f70cd 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1222,7 +1222,7 @@
 #define TRANS_HSYNC(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HSYNC_A)
 #define TRANS_VTOTAL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VTOTAL_A)
 #define TRANS_VBLANK(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VBLANK_A)
-#define TRANS_VSYNC(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNC_A)
+#define TRANS_VSYNC(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNC_A)
 #define BCLRPAT(trans)		_MMIO_TRANS2(dev_priv, (trans), _BCLRPAT_A)
 #define TRANS_VSYNCSHIFT(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNCSHIFT_A)
 #define PIPESRC(pipe)		_MMIO_TRANS2(dev_priv, (pipe), _PIPEASRC)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index baeedcdfdcab..e618a16eafac 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -236,7 +236,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_A));
 	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_A));
 	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_A));
-	MMIO_D(TRANS_VSYNC(TRANSCODER_A));
+	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_A));
 	MMIO_D(BCLRPAT(TRANSCODER_A));
 	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_A));
 	MMIO_D(PIPESRC(TRANSCODER_A));
@@ -245,7 +245,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_B));
 	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_B));
 	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_B));
-	MMIO_D(TRANS_VSYNC(TRANSCODER_B));
+	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_B));
 	MMIO_D(BCLRPAT(TRANSCODER_B));
 	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_B));
 	MMIO_D(PIPESRC(TRANSCODER_B));
@@ -254,7 +254,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_C));
 	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_C));
 	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_C));
-	MMIO_D(TRANS_VSYNC(TRANSCODER_C));
+	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_C));
 	MMIO_D(BCLRPAT(TRANSCODER_C));
 	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_C));
 	MMIO_D(PIPESRC(TRANSCODER_C));
@@ -263,7 +263,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_EDP));
 	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_EDP));
 	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_EDP));
-	MMIO_D(TRANS_VSYNC(TRANSCODER_EDP));
+	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_EDP));
 	MMIO_D(BCLRPAT(TRANSCODER_EDP));
 	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_EDP));
 	MMIO_D(PIPE_DATA_M1(TRANSCODER_A));
-- 
2.39.2

