Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DEE40BF64
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 07:43:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AF546E8CE;
	Wed, 15 Sep 2021 05:43:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3BF66E8CE
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 05:43:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10107"; a="202391104"
X-IronPort-AV: E=Sophos;i="5.85,294,1624345200"; d="scan'208";a="202391104"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 22:43:19 -0700
X-IronPort-AV: E=Sophos;i="5.85,294,1624345200"; d="scan'208";a="698123592"
Received: from unknown (HELO vandita-Z390-AORUS-ULTRA.iind.intel.com)
 ([10.190.238.8])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 22:43:18 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Vandita Kulkarni <vandita.kulkarni@intel.com>
Date: Wed, 15 Sep 2021 11:13:38 +0530
Message-Id: <20210915054338.29869-1-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Fix the dsc check while
 selecting min_cdclk
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

The right parameter that selects second dsc engine is dsc_split.
Hence use dsc_split instead of slice_count while selecting the
cdclk in order to accommodate 1ppc limitaion of vdsc.

Fixes: fe01883fdcef ("drm/i915: Get proper min cdclk if vDSC enabled")
Suggested-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 9aec17b33819..3a1cdb3937aa 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2140,13 +2140,11 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 	min_cdclk = max(intel_planes_min_cdclk(crtc_state), min_cdclk);
 
 	/*
-	 * VDSC engine can process only 1 pixel per Cd clock.
-	 * In case VDSC is used and max slice count == 1,
-	 * max supported pixel clock should be 100% of CD clock.
-	 * Then do min_cdclk and pixel clock comparison to get cdclk.
+	 * When we decide to use only one VDSC engine, since
+	 * each VDSC operates with 1 ppc throughput, pixel clock
+	 * cannot be higher than the VDSC clock (cdclk)
 	 */
-	if (crtc_state->dsc.compression_enable &&
-	    crtc_state->dsc.slice_count == 1)
+	if (crtc_state->dsc.compression_enable && !crtc_state->dsc.dsc_split)
 		min_cdclk = max(min_cdclk, (int)crtc_state->pixel_rate);
 
 	/*
-- 
2.32.0

