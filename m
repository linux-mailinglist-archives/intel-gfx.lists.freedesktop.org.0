Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBAC8FB6F5
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:26:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DDDD10E4CD;
	Tue,  4 Jun 2024 15:26:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tq5hRofl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B99210E4BB
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514804; x=1749050804;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pMRrBahucYl8T3XNlqhPL8XfU3IDad7IW8hiYUe+SOY=;
 b=Tq5hRofl6kRfS7Mt7IL96xnhqHO5FhmREaK9Pm59cav/Oos4ocruvdob
 sGnCDTFPrpwj4tQG0xnCpoxCNJt0GUsCxA3JxMwAQSJcXYiEALzURR5vP
 Sr0ZSfVVlGcjYuz7SPzdH2qoNMIrs5FvWcC48pfdCNZca/t2msCmJsmDm
 uTNMc42K778A9uvE0bfrzURf/bn+xW1CMYb109kLbk0unSUZjp8Rlh3DY
 MhVf1PZK5ZEqeLM/LRqwlQykP6hfRrnqzuheOU9x9zhP4lraXK9k11usZ
 uaUip8ZAk4RKidaEBYZmX1xMWDcjjVyOB6dRK1cmNqwZyqi5biPV8QkBB g==;
X-CSE-ConnectionGUID: 7thMWsYAQ9+yPvPDFLkQQA==
X-CSE-MsgGUID: v4AwlQF3TfWhQAZJCrnLZw==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="13949216"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="13949216"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:26:44 -0700
X-CSE-ConnectionGUID: BUY58L+TSPaB1jv7IyvOkQ==
X-CSE-MsgGUID: jFaElfCdQ92uFgpO0Yj+qA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="60464454"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:26:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 03/65] drm/i915: pass dev_priv explicitly to TRANS_HTOTAL
Date: Tue,  4 Jun 2024 18:25:21 +0300
Message-Id: <4bdba7417341782b74b89753b7db7fdc3edf932c.1717514638.git.jani.nikula@intel.com>
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
explicitly to the TRANS_HTOTAL register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c           | 2 +-
 drivers/gpu/drm/i915/display/intel_display.c     | 6 +++---
 drivers/gpu/drm/i915/display/intel_pch_display.c | 2 +-
 drivers/gpu/drm/i915/gvt/handlers.c              | 2 +-
 drivers/gpu/drm/i915/i915_reg.h                  | 2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c      | 8 ++++----
 6 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 79ecfc339430..af0d3159369e 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -915,7 +915,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 	/* program TRANS_HTOTAL register */
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
-		intel_de_write(dev_priv, TRANS_HTOTAL(dsi_trans),
+		intel_de_write(dev_priv, TRANS_HTOTAL(dev_priv, dsi_trans),
 			       HACTIVE(hactive - 1) | HTOTAL(htotal - 1));
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 42e2d884c98e..481e076b17e6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2710,7 +2710,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 		intel_de_write(dev_priv, TRANS_VSYNCSHIFT(cpu_transcoder),
 			       vsyncshift);
 
-	intel_de_write(dev_priv, TRANS_HTOTAL(cpu_transcoder),
+	intel_de_write(dev_priv, TRANS_HTOTAL(dev_priv, cpu_transcoder),
 		       HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
 		       HTOTAL(adjusted_mode->crtc_htotal - 1));
 	intel_de_write(dev_priv, TRANS_HBLANK(cpu_transcoder),
@@ -2811,7 +2811,7 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	u32 tmp;
 
-	tmp = intel_de_read(dev_priv, TRANS_HTOTAL(cpu_transcoder));
+	tmp = intel_de_read(dev_priv, TRANS_HTOTAL(dev_priv, cpu_transcoder));
 	adjusted_mode->crtc_hdisplay = REG_FIELD_GET(HACTIVE_MASK, tmp) + 1;
 	adjusted_mode->crtc_htotal = REG_FIELD_GET(HTOTAL_MASK, tmp) + 1;
 
@@ -8189,7 +8189,7 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 		PLL_REF_INPUT_DREFCLK |
 		DPLL_VCO_ENABLE;
 
-	intel_de_write(dev_priv, TRANS_HTOTAL(cpu_transcoder),
+	intel_de_write(dev_priv, TRANS_HTOTAL(dev_priv, cpu_transcoder),
 		       HACTIVE(640 - 1) | HTOTAL(800 - 1));
 	intel_de_write(dev_priv, TRANS_HBLANK(cpu_transcoder),
 		       HBLANK_START(640 - 1) | HBLANK_END(800 - 1));
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 826e38a9e6a4..2bf00d5336e3 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -224,7 +224,7 @@ static void ilk_pch_transcoder_set_timings(const struct intel_crtc_state *crtc_s
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
 	intel_de_write(dev_priv, PCH_TRANS_HTOTAL(pch_transcoder),
-		       intel_de_read(dev_priv, TRANS_HTOTAL(cpu_transcoder)));
+		       intel_de_read(dev_priv, TRANS_HTOTAL(dev_priv, cpu_transcoder)));
 	intel_de_write(dev_priv, PCH_TRANS_HBLANK(pch_transcoder),
 		       intel_de_read(dev_priv, TRANS_HBLANK(cpu_transcoder)));
 	intel_de_write(dev_priv, PCH_TRANS_HSYNC(pch_transcoder),
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 708b99be02ac..06ba39b2b103 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -677,7 +677,7 @@ static void vgpu_update_refresh_rate(struct intel_vgpu *vgpu)
 	link_n = vgpu_vreg_t(vgpu, PIPE_LINK_N1(TRANSCODER_A));
 
 	/* Get H/V total from transcoder timing */
-	htotal = (vgpu_vreg_t(vgpu, TRANS_HTOTAL(TRANSCODER_A)) >> TRANS_HTOTAL_SHIFT);
+	htotal = (vgpu_vreg_t(vgpu, TRANS_HTOTAL(dev_priv, TRANSCODER_A)) >> TRANS_HTOTAL_SHIFT);
 	vtotal = (vgpu_vreg_t(vgpu, TRANS_VTOTAL(TRANSCODER_A)) >> TRANS_VTOTAL_SHIFT);
 
 	if (dp_br && link_n && htotal && vtotal) {
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index ea8181abf7fd..8398826e9c2d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1217,7 +1217,7 @@
 #define _TRANS_VSYNC_DSI1	0x6b814
 #define _TRANS_VSYNCSHIFT_DSI1	0x6b828
 
-#define TRANS_HTOTAL(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HTOTAL_A)
+#define TRANS_HTOTAL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HTOTAL_A)
 #define TRANS_HBLANK(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HBLANK_A)
 #define TRANS_HSYNC(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HSYNC_A)
 #define TRANS_VTOTAL(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VTOTAL_A)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index f5c4e4e2f11f..2bc90909d980 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -231,7 +231,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(SPRSCALE(PIPE_C));
 	MMIO_D(SPRSURFLIVE(PIPE_C));
 	MMIO_D(REG_50080(PIPE_C, PLANE_SPRITE0));
-	MMIO_D(TRANS_HTOTAL(TRANSCODER_A));
+	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_A));
 	MMIO_D(TRANS_HBLANK(TRANSCODER_A));
 	MMIO_D(TRANS_HSYNC(TRANSCODER_A));
 	MMIO_D(TRANS_VTOTAL(TRANSCODER_A));
@@ -240,7 +240,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(BCLRPAT(TRANSCODER_A));
 	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_A));
 	MMIO_D(PIPESRC(TRANSCODER_A));
-	MMIO_D(TRANS_HTOTAL(TRANSCODER_B));
+	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_B));
 	MMIO_D(TRANS_HBLANK(TRANSCODER_B));
 	MMIO_D(TRANS_HSYNC(TRANSCODER_B));
 	MMIO_D(TRANS_VTOTAL(TRANSCODER_B));
@@ -249,7 +249,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(BCLRPAT(TRANSCODER_B));
 	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_B));
 	MMIO_D(PIPESRC(TRANSCODER_B));
-	MMIO_D(TRANS_HTOTAL(TRANSCODER_C));
+	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_C));
 	MMIO_D(TRANS_HBLANK(TRANSCODER_C));
 	MMIO_D(TRANS_HSYNC(TRANSCODER_C));
 	MMIO_D(TRANS_VTOTAL(TRANSCODER_C));
@@ -258,7 +258,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(BCLRPAT(TRANSCODER_C));
 	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_C));
 	MMIO_D(PIPESRC(TRANSCODER_C));
-	MMIO_D(TRANS_HTOTAL(TRANSCODER_EDP));
+	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_EDP));
 	MMIO_D(TRANS_HBLANK(TRANSCODER_EDP));
 	MMIO_D(TRANS_HSYNC(TRANSCODER_EDP));
 	MMIO_D(TRANS_VTOTAL(TRANSCODER_EDP));
-- 
2.39.2

