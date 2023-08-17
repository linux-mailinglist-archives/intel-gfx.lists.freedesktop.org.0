Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22AA177F8FF
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 16:31:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4CCC10E4BD;
	Thu, 17 Aug 2023 14:30:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 802F210E4A8;
 Thu, 17 Aug 2023 14:30:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692282643; x=1723818643;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=azoWLgEt04k6/NiQNfKAm2lE6MUeIzGgzzcG4X/RoC4=;
 b=H5EhmNBtPpOJKjMFlcbwWEl2z+wR/A2WpzBta5eBqbU7SQgo/d5G/5O7
 6nB5a4WLG+3AkagB6aCRQu/rTsvTJqavSw0nG41anyrjA7yw/SmyzlHo9
 FR6ciXMVprIiORWlsGXyyvXMPJCKeZ2Dw5S2ijbaz84kutXrX05I33SyQ
 HCob09f98P1MON6Kvia0PebUKnYWoV2ex73Fw/a7IBeyw/LS4Hg8aSG0B
 afzmrd5wHFweDgm7I6ZeKiETnYE6Wm3G4X1I3gcnqs9JZT34h4BqAD+qS
 EgLYsk+WQCUOI7xTry3CxOksXMWxeMT12RHk/ST220POgYeZF6r6DuZTj A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="376581669"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="376581669"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 07:28:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="858244076"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="858244076"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 07:28:32 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 17 Aug 2023 19:54:47 +0530
Message-Id: <20230817142459.89764-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230817142459.89764-1-ankit.k.nautiyal@intel.com>
References: <20230817142459.89764-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/18] drm/i915/intel_cdclk: Add vdsc with
 bigjoiner constraints on min_cdlck
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

As per Bsepc:49259, Bigjoiner BW check puts restriction on the
compressed bpp for a given CDCLK, pixelclock in cases where
Bigjoiner + DSC are used.

Currently compressed bpp is computed first, and it is ensured that
the bpp will work at least with the max CDCLK freq.

Since the CDCLK is computed later, lets account for Bigjoiner BW
check while calculating Min CDCLK.

v2: Use pixel clock in the bw calculations. (Ville)

v3: Use helper to account for FEC overhead. (Stan)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 59 +++++++++++++++++-----
 1 file changed, 45 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 2fb030b1ff1d..de04a6fe54f3 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -32,6 +32,7 @@
 #include "intel_cdclk.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
+#include "intel_dp.h"
 #include "intel_display_types.h"
 #include "intel_mchbar_regs.h"
 #include "intel_pci_config.h"
@@ -2533,6 +2534,48 @@ static int intel_planes_min_cdclk(const struct intel_crtc_state *crtc_state)
 	return min_cdclk;
 }
 
+static int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	int num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
+	int min_cdclk = 0;
+
+	/*
+	 * When we decide to use only one VDSC engine, since
+	 * each VDSC operates with 1 ppc throughput, pixel clock
+	 * cannot be higher than the VDSC clock (cdclk)
+	 * If there 2 VDSC engines, then pixel clock can't be higher than
+	 * VDSC clock(cdclk) * 2 and so on.
+	 */
+	min_cdclk = max_t(int, min_cdclk,
+			  DIV_ROUND_UP(crtc_state->pixel_rate, num_vdsc_instances));
+
+	if (crtc_state->bigjoiner_pipes) {
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
+		int bigjoiner_interface_bits = DISPLAY_VER(i915) > 13 ? 36 : 24;
+		int min_cdclk_bj = (crtc_state->dsc.compressed_bpp * pixel_clock) /
+				   (2 * bigjoiner_interface_bits);
+
+		min_cdclk = max(min_cdclk, min_cdclk_bj);
+	}
+
+	return min_cdclk;
+}
+
 int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv =
@@ -2604,20 +2647,8 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 	/* Account for additional needs from the planes */
 	min_cdclk = max(intel_planes_min_cdclk(crtc_state), min_cdclk);
 
-	/*
-	 * When we decide to use only one VDSC engine, since
-	 * each VDSC operates with 1 ppc throughput, pixel clock
-	 * cannot be higher than the VDSC clock (cdclk)
-	 * If there 2 VDSC engines, then pixel clock can't be higher than
-	 * VDSC clock(cdclk) * 2 and so on.
-	 */
-	if (crtc_state->dsc.compression_enable) {
-		int num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
-
-		min_cdclk = max_t(int, min_cdclk,
-				  DIV_ROUND_UP(crtc_state->pixel_rate,
-					       num_vdsc_instances));
-	}
+	if (crtc_state->dsc.compression_enable)
+		min_cdclk = max(min_cdclk, intel_vdsc_min_cdclk(crtc_state));
 
 	/*
 	 * HACK. Currently for TGL/DG2 platforms we calculate
-- 
2.40.1

