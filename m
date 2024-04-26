Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D892C8B37EE
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Apr 2024 15:04:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 281A21123A8;
	Fri, 26 Apr 2024 13:04:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WBIkLqoh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B3B11123AB;
 Fri, 26 Apr 2024 13:04:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714136684; x=1745672684;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H+MkMWh4MhJQJuZtE2cy5CYnEg/p5/fLmhRYiILaB5I=;
 b=WBIkLqohtyPpQG9gweQxDshOCG3YqOt0+DjyWsY4jyTyQjkowUKj89/K
 9xJSN+dkbaMbgWjDIXr985tp5bSDelFp03ZH2LccM9abCHZnmtZGbBCrU
 Vaj4EwM2M8Jqwe1wBGoTlHNOKfY/Dd8elgcxwohrNEsYpwojayJ1HM0KW
 /PYooEVjBq7h7H01p2FV1OozC0HfBeo0bNHJBHggLqRxvzVfBeCtMOPOm
 Z/00Wzh33ySVdd2rGKPw/RddTYbvOdRURQGMBEuj/QnDE1JuJBK14ABhp
 mSQfTbQ9g/XqtSUowY2UvzHSYUEeg0Ac0zZa3m0WEVLpMn17UdfIGQcOC Q==;
X-CSE-ConnectionGUID: sRwYLRN7QjKy2WSaMldHQw==
X-CSE-MsgGUID: 1zwJvp+IR9iO6ZCDA6s2bA==
X-IronPort-AV: E=McAfee;i="6600,9927,11056"; a="32368283"
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="32368283"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 06:04:44 -0700
X-CSE-ConnectionGUID: PpsAMpt+Sn28X/k+0n/MXA==
X-CSE-MsgGUID: oV0SIio7QhqXkXDA6itxfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="62889611"
Received: from dgarbuz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.145])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 06:04:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 015/123] drm/i915: pass dev_priv explicitly to TRANS_HTOTAL
Date: Fri, 26 Apr 2024 16:01:40 +0300
Message-Id: <13cd3a85ec0b32fa189b1bd142efdceff66194dd.1714136165.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1714136165.git.jani.nikula@intel.com>
References: <cover.1714136165.git.jani.nikula@intel.com>
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
index 5b6025e2f621..d84c5541f3ee 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2705,7 +2705,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 		intel_de_write(dev_priv, TRANS_VSYNCSHIFT(cpu_transcoder),
 			       vsyncshift);
 
-	intel_de_write(dev_priv, TRANS_HTOTAL(cpu_transcoder),
+	intel_de_write(dev_priv, TRANS_HTOTAL(dev_priv, cpu_transcoder),
 		       HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
 		       HTOTAL(adjusted_mode->crtc_htotal - 1));
 	intel_de_write(dev_priv, TRANS_HBLANK(cpu_transcoder),
@@ -2806,7 +2806,7 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	u32 tmp;
 
-	tmp = intel_de_read(dev_priv, TRANS_HTOTAL(cpu_transcoder));
+	tmp = intel_de_read(dev_priv, TRANS_HTOTAL(dev_priv, cpu_transcoder));
 	adjusted_mode->crtc_hdisplay = REG_FIELD_GET(HACTIVE_MASK, tmp) + 1;
 	adjusted_mode->crtc_htotal = REG_FIELD_GET(HTOTAL_MASK, tmp) + 1;
 
@@ -8162,7 +8162,7 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
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
index f85bf59cdeaf..63a8dfbe4cb3 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -672,7 +672,7 @@ static void vgpu_update_refresh_rate(struct intel_vgpu *vgpu)
 	link_n = vgpu_vreg_t(vgpu, PIPE_LINK_N1(TRANSCODER_A));
 
 	/* Get H/V total from transcoder timing */
-	htotal = (vgpu_vreg_t(vgpu, TRANS_HTOTAL(TRANSCODER_A)) >> TRANS_HTOTAL_SHIFT);
+	htotal = (vgpu_vreg_t(vgpu, TRANS_HTOTAL(dev_priv, TRANSCODER_A)) >> TRANS_HTOTAL_SHIFT);
 	vtotal = (vgpu_vreg_t(vgpu, TRANS_VTOTAL(TRANSCODER_A)) >> TRANS_VTOTAL_SHIFT);
 
 	if (dp_br && link_n && htotal && vtotal) {
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c9bd827eba60..3ab39bbd1d2d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1729,7 +1729,7 @@
 #define _TRANS_VSYNC_DSI1	0x6b814
 #define _TRANS_VSYNCSHIFT_DSI1	0x6b828
 
-#define TRANS_HTOTAL(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HTOTAL_A)
+#define TRANS_HTOTAL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HTOTAL_A)
 #define TRANS_HBLANK(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HBLANK_A)
 #define TRANS_HSYNC(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HSYNC_A)
 #define TRANS_VTOTAL(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VTOTAL_A)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index d0f111ff0ada..09db1d7a777d 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -226,7 +226,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(SPRSCALE(PIPE_C));
 	MMIO_D(SPRSURFLIVE(PIPE_C));
 	MMIO_D(REG_50080(PIPE_C, PLANE_SPRITE0));
-	MMIO_D(TRANS_HTOTAL(TRANSCODER_A));
+	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_A));
 	MMIO_D(TRANS_HBLANK(TRANSCODER_A));
 	MMIO_D(TRANS_HSYNC(TRANSCODER_A));
 	MMIO_D(TRANS_VTOTAL(TRANSCODER_A));
@@ -235,7 +235,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(BCLRPAT(TRANSCODER_A));
 	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_A));
 	MMIO_D(PIPESRC(TRANSCODER_A));
-	MMIO_D(TRANS_HTOTAL(TRANSCODER_B));
+	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_B));
 	MMIO_D(TRANS_HBLANK(TRANSCODER_B));
 	MMIO_D(TRANS_HSYNC(TRANSCODER_B));
 	MMIO_D(TRANS_VTOTAL(TRANSCODER_B));
@@ -244,7 +244,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(BCLRPAT(TRANSCODER_B));
 	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_B));
 	MMIO_D(PIPESRC(TRANSCODER_B));
-	MMIO_D(TRANS_HTOTAL(TRANSCODER_C));
+	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_C));
 	MMIO_D(TRANS_HBLANK(TRANSCODER_C));
 	MMIO_D(TRANS_HSYNC(TRANSCODER_C));
 	MMIO_D(TRANS_VTOTAL(TRANSCODER_C));
@@ -253,7 +253,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
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

