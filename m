Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FFFA3D34E8
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 08:58:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 469B06F8C5;
	Fri, 23 Jul 2021 06:58:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC0706FA4C
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 06:58:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10053"; a="211829772"
X-IronPort-AV: E=Sophos;i="5.84,263,1620716400"; d="scan'208";a="211829772"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 23:58:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,263,1620716400"; d="scan'208";a="502405603"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.12])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Jul 2021 23:58:38 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Jul 2021 15:05:46 +0800
Message-Id: <20210723070548.29315-6-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210723070548.29315-1-shawn.c.lee@intel.com>
References: <20210723070548.29315-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [V3 5/7] drm/i915: Get proper min cdclk if vDSC enabled
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
Cc: cooper.chiou@intel.com, william.tseng@intel.com, jani.nikula@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 71067a62264d..3e09f6370d27 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2159,6 +2159,16 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
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

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
