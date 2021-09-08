Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 845FE40392E
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 13:52:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C1F56E197;
	Wed,  8 Sep 2021 11:52:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 295A56E197
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 11:52:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="242758084"
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="242758084"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 04:52:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="479135380"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.12])
 by orsmga008.jf.intel.com with ESMTP; 08 Sep 2021 04:52:34 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 vandita.kulkarni@intel.com, cooper.chiou@intel.com,
 william.tseng@intel.com, Lee Shawn C <shawn.c.lee@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Date: Wed,  8 Sep 2021 19:56:05 +0800
Message-Id: <20210908115607.9633-4-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210908115607.9633-1-shawn.c.lee@intel.com>
References: <20210908115607.9633-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [v4 3/5] drm/i915: Get proper min cdclk if vDSC enabled
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

VDSC engine can process only 1 pixel per Cd clock. In case
VDSC is used and max slice count == 1, max supported pixel
clock should be 100% of CD clock. Then do min_cdclk and
pixel clock comparison to get proper min cdclk.

v2:
- Check for dsc enable and slice count ==1 then allow to
  double confirm min cdclk value.

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Cc: William Tseng <william.tseng@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
Reviewed-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 34fa4130d5c4..9aec17b33819 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2139,6 +2139,16 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 	/* Account for additional needs from the planes */
 	min_cdclk = max(intel_planes_min_cdclk(crtc_state), min_cdclk);
 
+	/*
+	 * VDSC engine can process only 1 pixel per Cd clock.
+	 * In case VDSC is used and max slice count == 1,
+	 * max supported pixel clock should be 100% of CD clock.
+	 * Then do min_cdclk and pixel clock comparison to get cdclk.
+	 */
+	if (crtc_state->dsc.compression_enable &&
+	    crtc_state->dsc.slice_count == 1)
+		min_cdclk = max(min_cdclk, (int)crtc_state->pixel_rate);
+
 	/*
 	 * HACK. Currently for TGL platforms we calculate
 	 * min_cdclk initially based on pixel_rate divided
-- 
2.17.1

