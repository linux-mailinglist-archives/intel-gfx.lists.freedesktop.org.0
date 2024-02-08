Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFB884E3D5
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Feb 2024 16:17:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6529A10E8B2;
	Thu,  8 Feb 2024 15:17:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XBurfvNu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6453510E8B2
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Feb 2024 15:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707405474; x=1738941474;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qa12uHmLscWyxFGY76XqaQ+yLh5GrjufUC7YpeQHG0g=;
 b=XBurfvNul/BgxX/QbQ1dDNU3WmhJ0nKptKJDT8nCOHnjvY0gC6wglXOp
 xrEK0d4Mi8XxtAvlg8d9Diw1JqlDmm1r7f4egrYshRzweWxQQ4M9xsW57
 D3KraUfw2nvS2aFRhLCg1l1KTZ/wbQ1Up4tZ6MOw6H8Pj7dtj7vqXGnGL
 kaCh8m24N4HiE6e/KM+uNER3T/2ImBB8yr2DgWECaAy47IbvoYotwsvGV
 z05NVEVWw10j65DsIMp61uxLL2TDWjYb/YK+44DI3iBK5LCHKSzCaqdoL
 oRPcsWUJTla+UiZag5TcqUpMw/Q4DELeM5DBCUQJMAcxpFYhexXiza+AO A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="4219266"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; 
   d="scan'208";a="4219266"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 07:17:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="824863667"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; d="scan'208";a="824863667"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 08 Feb 2024 07:17:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Feb 2024 17:17:51 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 10/13] drm/i915/wm: Use per-device debugs in pre-ilk wm code
Date: Thu,  8 Feb 2024 17:17:17 +0200
Message-ID: <20240208151720.7866-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
References: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Switch to drm_dbg_kms() in the pre-ilk wm code so we see which
device generated the debugs. Need to plumb i915 a bit deeper
to make that happen.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c | 28 ++++++++++++++++----------
 1 file changed, 17 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index e6275ab14320..46877fd260d5 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -88,7 +88,7 @@ static const struct cxsr_latency *intel_get_cxsr_latency(struct drm_i915_private
 			return latency;
 	}
 
-	DRM_DEBUG_KMS("Unknown FSB/MEM found, disable CxSR\n");
+	drm_dbg_kms(&i915->drm, "Unknown FSB/MEM found, disable CxSR\n");
 
 	return NULL;
 }
@@ -524,6 +524,7 @@ static unsigned int intel_wm_method2(unsigned int pixel_rate,
 
 /**
  * intel_calculate_wm - calculate watermark level
+ * @i915: the device
  * @pixel_rate: pixel clock
  * @wm: chip FIFO params
  * @fifo_size: size of the FIFO buffer
@@ -541,7 +542,8 @@ static unsigned int intel_wm_method2(unsigned int pixel_rate,
  * past the watermark point.  If the FIFO drains completely, a FIFO underrun
  * will occur, and a display engine hang could result.
  */
-static unsigned int intel_calculate_wm(int pixel_rate,
+static unsigned int intel_calculate_wm(struct drm_i915_private *i915,
+				       int pixel_rate,
 				       const struct intel_watermark_params *wm,
 				       int fifo_size, int cpp,
 				       unsigned int latency_ns)
@@ -558,10 +560,10 @@ static unsigned int intel_calculate_wm(int pixel_rate,
 				   latency_ns / 100);
 	entries = DIV_ROUND_UP(entries, wm->cacheline_size) +
 		wm->guard_size;
-	DRM_DEBUG_KMS("FIFO entries required for mode: %d\n", entries);
+	drm_dbg_kms(&i915->drm, "FIFO entries required for mode: %d\n", entries);
 
 	wm_size = fifo_size - entries;
-	DRM_DEBUG_KMS("FIFO watermark level: %d\n", wm_size);
+	drm_dbg_kms(&i915->drm, "FIFO watermark level: %d\n", wm_size);
 
 	/* Don't promote wm_size to unsigned... */
 	if (wm_size > wm->max_wm)
@@ -649,7 +651,8 @@ static void pnv_update_wm(struct drm_i915_private *dev_priv)
 		int cpp = fb->format->cpp[0];
 
 		/* Display SR */
-		wm = intel_calculate_wm(pixel_rate, &pnv_display_wm,
+		wm = intel_calculate_wm(dev_priv, pixel_rate,
+					&pnv_display_wm,
 					pnv_display_wm.fifo_size,
 					cpp, latency->display_sr);
 		reg = intel_uncore_read(&dev_priv->uncore, DSPFW1);
@@ -659,20 +662,23 @@ static void pnv_update_wm(struct drm_i915_private *dev_priv)
 		drm_dbg_kms(&dev_priv->drm, "DSPFW1 register is %x\n", reg);
 
 		/* cursor SR */
-		wm = intel_calculate_wm(pixel_rate, &pnv_cursor_wm,
+		wm = intel_calculate_wm(dev_priv, pixel_rate,
+					&pnv_cursor_wm,
 					pnv_display_wm.fifo_size,
 					4, latency->cursor_sr);
 		intel_uncore_rmw(&dev_priv->uncore, DSPFW3, DSPFW_CURSOR_SR_MASK,
 				 FW_WM(wm, CURSOR_SR));
 
 		/* Display HPLL off SR */
-		wm = intel_calculate_wm(pixel_rate, &pnv_display_hplloff_wm,
+		wm = intel_calculate_wm(dev_priv, pixel_rate,
+					&pnv_display_hplloff_wm,
 					pnv_display_hplloff_wm.fifo_size,
 					cpp, latency->display_hpll_disable);
 		intel_uncore_rmw(&dev_priv->uncore, DSPFW3, DSPFW_HPLL_SR_MASK, FW_WM(wm, HPLL_SR));
 
 		/* cursor HPLL off SR */
-		wm = intel_calculate_wm(pixel_rate, &pnv_cursor_hplloff_wm,
+		wm = intel_calculate_wm(dev_priv, pixel_rate,
+					&pnv_cursor_hplloff_wm,
 					pnv_display_hplloff_wm.fifo_size,
 					4, latency->cursor_hpll_disable);
 		reg = intel_uncore_read(&dev_priv->uncore, DSPFW3);
@@ -2120,7 +2126,7 @@ static void i9xx_update_wm(struct drm_i915_private *dev_priv)
 		else
 			cpp = fb->format->cpp[0];
 
-		planea_wm = intel_calculate_wm(crtc->config->pixel_rate,
+		planea_wm = intel_calculate_wm(dev_priv, crtc->config->pixel_rate,
 					       wm_info, fifo_size, cpp,
 					       pessimal_latency_ns);
 	} else {
@@ -2147,7 +2153,7 @@ static void i9xx_update_wm(struct drm_i915_private *dev_priv)
 		else
 			cpp = fb->format->cpp[0];
 
-		planeb_wm = intel_calculate_wm(crtc->config->pixel_rate,
+		planeb_wm = intel_calculate_wm(dev_priv, crtc->config->pixel_rate,
 					       wm_info, fifo_size, cpp,
 					       pessimal_latency_ns);
 	} else {
@@ -2241,7 +2247,7 @@ static void i845_update_wm(struct drm_i915_private *dev_priv)
 	if (crtc == NULL)
 		return;
 
-	planea_wm = intel_calculate_wm(crtc->config->pixel_rate,
+	planea_wm = intel_calculate_wm(dev_priv, crtc->config->pixel_rate,
 				       &i845_wm_info,
 				       i845_get_fifo_size(dev_priv, PLANE_A),
 				       4, pessimal_latency_ns);
-- 
2.43.0

