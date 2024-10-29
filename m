Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 750299B5550
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 22:52:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A07F10E71C;
	Tue, 29 Oct 2024 21:52:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="byAEYKLG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6340610E718
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 21:52:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730238769; x=1761774769;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=yFNP9oQltpJzafW/3YssQi3VTYnt2BImKMiH1e8aJJM=;
 b=byAEYKLGlwBFK5B8wQ7LnFJeAbStfoYOBBooK7TncB8N5kuCwwN/bfrW
 UZKKG8d0bLRLptOzcOKWOZHIOgD9fxH4QDJCmIJTqHfKyC4yZoRrwY05o
 yqLQ6D3GCAyYRDpjpLgu4yZ7vYLYyemu/+OlAAncO2PtJdsLYGK7/CHv0
 S5DjTF9+6kvdja7t1VfuR6h70eTEOlvYqDgXnIdv5axWpXqgw2/Fd+gNP
 ZbprtXAFwW0IznpIS0DbVjIpl4xTIYWECA7kdCndbFnb8yMUxu4LmGZAW
 A3I6NCJvi5v1VUpjfWE7qXq18JjCkleFQWNcyMTMAhmOWe6hEi6BzIYbH w==;
X-CSE-ConnectionGUID: Y/1+GCjDS9GZ7VuFfF4q0g==
X-CSE-MsgGUID: fryqv+EdTSqBWdhE0IAPXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="41275196"
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="41275196"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 14:52:48 -0700
X-CSE-ConnectionGUID: EPEAfe+sTISZcarNmT0Pww==
X-CSE-MsgGUID: 0RWHDRAMRmaqtuA/YjLFDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="82200261"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 29 Oct 2024 14:52:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Oct 2024 23:52:45 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 10/11] drm/i915/cdclk: Relocate intel_vdsc_min_cdclk()
Date: Tue, 29 Oct 2024 23:52:16 +0200
Message-ID: <20241029215217.3697-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241029215217.3697-1-ville.syrjala@linux.intel.com>
References: <20241029215217.3697-1-ville.syrjala@linux.intel.com>
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

Move intel_vdsc_min_cdclk() into intel_vdsc.c from intel_cdclk.c
so that details about DSC are better contained.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 46 ----------------------
 drivers/gpu/drm/i915/display/intel_vdsc.c  | 46 ++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vdsc.h  |  1 +
 3 files changed, 47 insertions(+), 46 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index d376f7bccf21..9f38dd14b2d8 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -37,7 +37,6 @@
 #include "intel_cdclk.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
-#include "intel_dp.h"
 #include "intel_display_types.h"
 #include "intel_mchbar_regs.h"
 #include "intel_pci_config.h"
@@ -2805,51 +2804,6 @@ static int intel_planes_min_cdclk(const struct intel_crtc_state *crtc_state)
 	return min_cdclk;
 }
 
-static int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct intel_display *display = to_intel_display(crtc);
-	int num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
-	int min_cdclk;
-
-	if (!crtc_state->dsc.compression_enable)
-		return 0;
-
-	/*
-	 * When we decide to use only one VDSC engine, since
-	 * each VDSC operates with 1 ppc throughput, pixel clock
-	 * cannot be higher than the VDSC clock (cdclk)
-	 * If there 2 VDSC engines, then pixel clock can't be higher than
-	 * VDSC clock(cdclk) * 2 and so on.
-	 */
-	min_cdclk = DIV_ROUND_UP(crtc_state->pixel_rate, num_vdsc_instances);
-
-	if (crtc_state->joiner_pipes) {
-		int pixel_clock = intel_dp_mode_to_fec_clock(crtc_state->hw.adjusted_mode.clock);
-
-		/*
-		 * According to Bigjoiner bw check:
-		 * compressed_bpp <= PPC * CDCLK * Big joiner Interface bits / Pixel clock
-		 *
-		 * We have already computed compressed_bpp, so now compute the min CDCLK that
-		 * is required to support this compressed_bpp.
-		 *
-		 * => CDCLK >= compressed_bpp * Pixel clock / (PPC * Bigjoiner Interface bits)
-		 *
-		 * Since PPC = 2 with bigjoiner
-		 * => CDCLK >= compressed_bpp * Pixel clock  / 2 * Bigjoiner Interface bits
-		 */
-		int bigjoiner_interface_bits = DISPLAY_VER(display) >= 14 ? 36 : 24;
-		int min_cdclk_bj =
-			(fxp_q4_to_int_roundup(crtc_state->dsc.compressed_bpp_x16) *
-			 pixel_clock) / (2 * bigjoiner_interface_bits);
-
-		min_cdclk = max(min_cdclk, min_cdclk_bj);
-	}
-
-	return min_cdclk;
-}
-
 int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 {
 	int min_cdclk;
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 40525f5c4c42..e6cb712373a9 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -14,6 +14,7 @@
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_dp.h"
 #include "intel_dsi.h"
 #include "intel_qp_tables.h"
 #include "intel_vdsc.h"
@@ -1003,3 +1004,48 @@ void intel_vdsc_state_dump(struct drm_printer *p, int indent,
 	intel_vdsc_dump_state(p, indent, crtc_state);
 	drm_dsc_dump_config(p, indent, &crtc_state->dsc.config);
 }
+
+int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_display *display = to_intel_display(crtc);
+	int num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
+	int min_cdclk;
+
+	if (!crtc_state->dsc.compression_enable)
+		return 0;
+
+	/*
+	 * When we decide to use only one VDSC engine, since
+	 * each VDSC operates with 1 ppc throughput, pixel clock
+	 * cannot be higher than the VDSC clock (cdclk)
+	 * If there 2 VDSC engines, then pixel clock can't be higher than
+	 * VDSC clock(cdclk) * 2 and so on.
+	 */
+	min_cdclk = DIV_ROUND_UP(crtc_state->pixel_rate, num_vdsc_instances);
+
+	if (crtc_state->joiner_pipes) {
+		int pixel_clock = intel_dp_mode_to_fec_clock(crtc_state->hw.adjusted_mode.clock);
+
+		/*
+		 * According to Bigjoiner bw check:
+		 * compressed_bpp <= PPC * CDCLK * Big joiner Interface bits / Pixel clock
+		 *
+		 * We have already computed compressed_bpp, so now compute the min CDCLK that
+		 * is required to support this compressed_bpp.
+		 *
+		 * => CDCLK >= compressed_bpp * Pixel clock / (PPC * Bigjoiner Interface bits)
+		 *
+		 * Since PPC = 2 with bigjoiner
+		 * => CDCLK >= compressed_bpp * Pixel clock  / 2 * Bigjoiner Interface bits
+		 */
+		int bigjoiner_interface_bits = DISPLAY_VER(display) >= 14 ? 36 : 24;
+		int min_cdclk_bj =
+			(fxp_q4_to_int_roundup(crtc_state->dsc.compressed_bpp_x16) *
+			 pixel_clock) / (2 * bigjoiner_interface_bits);
+
+		min_cdclk = max(min_cdclk, min_cdclk_bj);
+	}
+
+	return min_cdclk;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
index 290b2e9b3482..9e2812f99dd7 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
@@ -31,5 +31,6 @@ void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state);
 void intel_vdsc_state_dump(struct drm_printer *p, int indent,
 			   const struct intel_crtc_state *crtc_state);
+int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_VDSC_H__ */
-- 
2.45.2

