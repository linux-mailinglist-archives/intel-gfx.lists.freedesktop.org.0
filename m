Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6B88FB70B
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:28:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA64110E4CC;
	Tue,  4 Jun 2024 15:28:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fvNVdQtJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D61F610E4E5
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:28:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514882; x=1749050882;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S4hWnFkviDwd3Nhh9k2ytguF1ujxK0H6IezfMtH98os=;
 b=fvNVdQtJboFLgpXAqxf929LQKs/STV9eTeh1jKIw27g38n4+2QPU1y2v
 uWaGqDxTj8idaarp9YBJJQC+/IZcCssd0E1c1a9WWLYSSNVeGyJ3wCrNB
 t1owILG5QVlPiynC5+DGTPKNIxULHKERdr4/yAlYR4z7e8/+EN3MnBp+2
 34Ob0ksMTa7QcQL/yx04tETX8HlQa3Lgio7NkdgiUxf7IVmGl3egssqL0
 OguUVPCTsdNUqMjpmla8ZNIJyh/Wb6MApltI8HyH8TdU3WDxnzFsf8FnJ
 ce3bBML7ECq5St7Dxgoa33mQ4tfZkZ2XD/3ZhSrsSkzTvwbZAeYtIh8A4 A==;
X-CSE-ConnectionGUID: oRXTD/FJSZe+u5arzc1qqQ==
X-CSE-MsgGUID: sfZtkwkHR3S4moFFSAUP1w==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14225600"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="14225600"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:28:01 -0700
X-CSE-ConnectionGUID: d1FnHkrYQbOR1ZV4DfhYNg==
X-CSE-MsgGUID: BEEH+QTySam7ovTqrinDmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37277928"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:28:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 19/65] drm/i915: pass dev_priv explicitly to PIPEDSL
Date: Tue,  4 Jun 2024 18:25:37 +0300
Message-Id: <53b751f5a883318d44b690284d2e9d5a43fba860.1717514638.git.jani.nikula@intel.com>
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
explicitly to the PIPEDSL register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c    | 6 +++---
 drivers/gpu/drm/i915/display/intel_hdmi.c   | 3 ++-
 drivers/gpu/drm/i915/display/intel_vblank.c | 7 ++++---
 drivers/gpu/drm/i915/i915_reg.h             | 2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c | 8 ++++----
 5 files changed, 14 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index d4f16d894eda..835c8b844494 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -771,9 +771,9 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 		/*
 		 * Wait for the border to be displayed
 		 */
-		while (intel_de_read(dev_priv, PIPEDSL(pipe)) >= vactive)
+		while (intel_de_read(dev_priv, PIPEDSL(dev_priv, pipe)) >= vactive)
 			;
-		while ((dsl = intel_de_read(dev_priv, PIPEDSL(pipe))) <= vsample)
+		while ((dsl = intel_de_read(dev_priv, PIPEDSL(dev_priv, pipe))) <= vsample)
 			;
 		/*
 		 * Watch ST00 for an entire scanline
@@ -786,7 +786,7 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 			st00 = intel_de_read8(dev_priv, _VGA_MSR_WRITE);
 			if (st00 & (1 << 4))
 				detect++;
-		} while ((intel_de_read(dev_priv, PIPEDSL(pipe)) == dsl));
+		} while ((intel_de_read(dev_priv, PIPEDSL(dev_priv, pipe)) == dsl));
 
 		/* restore vblank if necessary */
 		if (restore_vblank)
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 06ec9ce7fe1c..7704ead5002d 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1476,7 +1476,8 @@ static int kbl_repositioning_enc_en_signal(struct intel_connector *connector,
 	int ret;
 
 	for (;;) {
-		scanline = intel_de_read(dev_priv, PIPEDSL(crtc->pipe));
+		scanline = intel_de_read(dev_priv,
+					 PIPEDSL(dev_priv, crtc->pipe));
 		if (scanline > 100 && scanline < 200)
 			break;
 		usleep_range(25, 50);
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index eb80952b0cfd..e2d20064e68d 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -247,7 +247,7 @@ static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
 
 	vtotal = intel_mode_vtotal(mode);
 
-	position = intel_de_read_fw(dev_priv, PIPEDSL(pipe)) & PIPEDSL_LINE_MASK;
+	position = intel_de_read_fw(dev_priv, PIPEDSL(dev_priv, pipe)) & PIPEDSL_LINE_MASK;
 
 	/*
 	 * On HSW, the DSL reg (0x70000) appears to return 0 if we
@@ -266,7 +266,8 @@ static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
 
 		for (i = 0; i < 100; i++) {
 			udelay(1);
-			temp = intel_de_read_fw(dev_priv, PIPEDSL(pipe)) & PIPEDSL_LINE_MASK;
+			temp = intel_de_read_fw(dev_priv,
+						PIPEDSL(dev_priv, pipe)) & PIPEDSL_LINE_MASK;
 			if (temp != position) {
 				position = temp;
 				break;
@@ -473,7 +474,7 @@ int intel_get_crtc_scanline(struct intel_crtc *crtc)
 static bool pipe_scanline_is_moving(struct drm_i915_private *dev_priv,
 				    enum pipe pipe)
 {
-	i915_reg_t reg = PIPEDSL(pipe);
+	i915_reg_t reg = PIPEDSL(dev_priv, pipe);
 	u32 line1, line2;
 
 	line1 = intel_de_read(dev_priv, reg) & PIPEDSL_LINE_MASK;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 72f5140cf109..fbd004bd1992 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1877,7 +1877,7 @@
 #define PIPESTAT_INT_STATUS_MASK		0x0000ffff
 
 #define TRANSCONF(dev_priv, trans)	_MMIO_PIPE2(dev_priv, (trans), _TRANSACONF)
-#define PIPEDSL(pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEADSL)
+#define PIPEDSL(dev_priv, pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEADSL)
 #define PIPEFRAME(pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEHIGH)
 #define PIPEFRAMEPIXEL(pipe)	_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEPIXEL)
 #define PIPESTAT(pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEASTAT)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 436d4a2eccd7..6a37f790c753 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -126,10 +126,10 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(_MMIO(0x650b4));
 	MMIO_D(_MMIO(0xc4040));
 	MMIO_D(DERRMR);
-	MMIO_D(PIPEDSL(PIPE_A));
-	MMIO_D(PIPEDSL(PIPE_B));
-	MMIO_D(PIPEDSL(PIPE_C));
-	MMIO_D(PIPEDSL(_PIPE_EDP));
+	MMIO_D(PIPEDSL(dev_priv, PIPE_A));
+	MMIO_D(PIPEDSL(dev_priv, PIPE_B));
+	MMIO_D(PIPEDSL(dev_priv, PIPE_C));
+	MMIO_D(PIPEDSL(dev_priv, _PIPE_EDP));
 	MMIO_D(TRANSCONF(dev_priv, TRANSCODER_A));
 	MMIO_D(TRANSCONF(dev_priv, TRANSCODER_B));
 	MMIO_D(TRANSCONF(dev_priv, TRANSCODER_C));
-- 
2.39.2

