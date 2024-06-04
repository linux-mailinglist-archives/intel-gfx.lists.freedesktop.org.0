Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5AE8FB6F9
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:27:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AB0410E4C6;
	Tue,  4 Jun 2024 15:27:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YoOaFmV0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6FCD10E4DD
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514817; x=1749050817;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sLt61hnxisvGs+G4IEp9wE1mFj8N63ZsFQ8re1F3Hxw=;
 b=YoOaFmV0D6caHO9/P6I1fdIjGWtfn99QoATVBcb690hHAyT7rBFYTuKQ
 O4NaQOX5vTeNGtI0TjB+SrGdQBHxUWaIp1/3Ra5gApIIPMbpmWIRArN2Q
 3/6lM8vRBpZMFh5llDwB6Vq/KibC/D2gOAomcfNmTRehxB4t/Z+f7oiba
 Bto6Gu6+jF6sO2OJ99SZIRSWwDEubfMrFA30yc8mySHvj7gg9aWdeX+aE
 BytoI6hV/HkEGh6qHbwc+vk6HjQrsYEyn2igzZzzgE2+MsHh3DXnnNDeh
 D2UrZu5TaBeM7bY5zdTxkAEQoYFKdvOFiQSi9KOFe8K53G7DZd1f+SuCd w==;
X-CSE-ConnectionGUID: 6UQPDKZAQjWDhZ9SOfqGXA==
X-CSE-MsgGUID: AoSTk6NNRqGpw1YsgI6Obg==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14225488"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="14225488"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:26:56 -0700
X-CSE-ConnectionGUID: NlvHtJvVQrimrDxrw0HPtw==
X-CSE-MsgGUID: LS3nRWh5QXmpJsJThFTaSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37382084"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:26:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 05/65] drm/i915: pass dev_priv explicitly to TRANS_HSYNC
Date: Tue,  4 Jun 2024 18:25:23 +0300
Message-Id: <d387281470c9b677adb659b80fa3385df2faca99.1717514638.git.jani.nikula@intel.com>
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
explicitly to the TRANS_HSYNC register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c           | 3 ++-
 drivers/gpu/drm/i915/display/intel_display.c     | 6 +++---
 drivers/gpu/drm/i915/display/intel_pch_display.c | 2 +-
 drivers/gpu/drm/i915/i915_reg.h                  | 2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c      | 8 ++++----
 5 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index af0d3159369e..f87a2170ac91 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -938,7 +938,8 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 
 		for_each_dsi_port(port, intel_dsi->ports) {
 			dsi_trans = dsi_port_to_transcoder(port);
-			intel_de_write(dev_priv, TRANS_HSYNC(dsi_trans),
+			intel_de_write(dev_priv,
+				       TRANS_HSYNC(dev_priv, dsi_trans),
 				       HSYNC_START(hsync_start - 1) | HSYNC_END(hsync_end - 1));
 		}
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 997418fb7310..111f2c400ecd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2716,7 +2716,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	intel_de_write(dev_priv, TRANS_HBLANK(dev_priv, cpu_transcoder),
 		       HBLANK_START(adjusted_mode->crtc_hblank_start - 1) |
 		       HBLANK_END(adjusted_mode->crtc_hblank_end - 1));
-	intel_de_write(dev_priv, TRANS_HSYNC(cpu_transcoder),
+	intel_de_write(dev_priv, TRANS_HSYNC(dev_priv, cpu_transcoder),
 		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
 		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
 
@@ -2822,7 +2822,7 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 		adjusted_mode->crtc_hblank_end = REG_FIELD_GET(HBLANK_END_MASK, tmp) + 1;
 	}
 
-	tmp = intel_de_read(dev_priv, TRANS_HSYNC(cpu_transcoder));
+	tmp = intel_de_read(dev_priv, TRANS_HSYNC(dev_priv, cpu_transcoder));
 	adjusted_mode->crtc_hsync_start = REG_FIELD_GET(HSYNC_START_MASK, tmp) + 1;
 	adjusted_mode->crtc_hsync_end = REG_FIELD_GET(HSYNC_END_MASK, tmp) + 1;
 
@@ -8194,7 +8194,7 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 		       HACTIVE(640 - 1) | HTOTAL(800 - 1));
 	intel_de_write(dev_priv, TRANS_HBLANK(dev_priv, cpu_transcoder),
 		       HBLANK_START(640 - 1) | HBLANK_END(800 - 1));
-	intel_de_write(dev_priv, TRANS_HSYNC(cpu_transcoder),
+	intel_de_write(dev_priv, TRANS_HSYNC(dev_priv, cpu_transcoder),
 		       HSYNC_START(656 - 1) | HSYNC_END(752 - 1));
 	intel_de_write(dev_priv, TRANS_VTOTAL(cpu_transcoder),
 		       VACTIVE(480 - 1) | VTOTAL(525 - 1));
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 625b1fedd54c..480c0e09434d 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -228,7 +228,7 @@ static void ilk_pch_transcoder_set_timings(const struct intel_crtc_state *crtc_s
 	intel_de_write(dev_priv, PCH_TRANS_HBLANK(pch_transcoder),
 		       intel_de_read(dev_priv, TRANS_HBLANK(dev_priv, cpu_transcoder)));
 	intel_de_write(dev_priv, PCH_TRANS_HSYNC(pch_transcoder),
-		       intel_de_read(dev_priv, TRANS_HSYNC(cpu_transcoder)));
+		       intel_de_read(dev_priv, TRANS_HSYNC(dev_priv, cpu_transcoder)));
 
 	intel_de_write(dev_priv, PCH_TRANS_VTOTAL(pch_transcoder),
 		       intel_de_read(dev_priv, TRANS_VTOTAL(cpu_transcoder)));
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 66e652119a7e..0d33815b91a4 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1219,7 +1219,7 @@
 
 #define TRANS_HTOTAL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HTOTAL_A)
 #define TRANS_HBLANK(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HBLANK_A)
-#define TRANS_HSYNC(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HSYNC_A)
+#define TRANS_HSYNC(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HSYNC_A)
 #define TRANS_VTOTAL(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VTOTAL_A)
 #define TRANS_VBLANK(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VBLANK_A)
 #define TRANS_VSYNC(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNC_A)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 47681fa69020..09d8960f7398 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -233,7 +233,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(REG_50080(PIPE_C, PLANE_SPRITE0));
 	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_A));
 	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_A));
-	MMIO_D(TRANS_HSYNC(TRANSCODER_A));
+	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_A));
 	MMIO_D(TRANS_VTOTAL(TRANSCODER_A));
 	MMIO_D(TRANS_VBLANK(TRANSCODER_A));
 	MMIO_D(TRANS_VSYNC(TRANSCODER_A));
@@ -242,7 +242,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPESRC(TRANSCODER_A));
 	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_B));
 	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_B));
-	MMIO_D(TRANS_HSYNC(TRANSCODER_B));
+	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_B));
 	MMIO_D(TRANS_VTOTAL(TRANSCODER_B));
 	MMIO_D(TRANS_VBLANK(TRANSCODER_B));
 	MMIO_D(TRANS_VSYNC(TRANSCODER_B));
@@ -251,7 +251,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPESRC(TRANSCODER_B));
 	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_C));
 	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_C));
-	MMIO_D(TRANS_HSYNC(TRANSCODER_C));
+	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_C));
 	MMIO_D(TRANS_VTOTAL(TRANSCODER_C));
 	MMIO_D(TRANS_VBLANK(TRANSCODER_C));
 	MMIO_D(TRANS_VSYNC(TRANSCODER_C));
@@ -260,7 +260,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPESRC(TRANSCODER_C));
 	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_EDP));
 	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_EDP));
-	MMIO_D(TRANS_HSYNC(TRANSCODER_EDP));
+	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_EDP));
 	MMIO_D(TRANS_VTOTAL(TRANSCODER_EDP));
 	MMIO_D(TRANS_VBLANK(TRANSCODER_EDP));
 	MMIO_D(TRANS_VSYNC(TRANSCODER_EDP));
-- 
2.39.2

