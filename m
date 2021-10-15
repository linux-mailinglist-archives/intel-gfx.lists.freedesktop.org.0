Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3507C42F3F8
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 15:40:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BD666E323;
	Fri, 15 Oct 2021 13:40:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B12B6E2EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Oct 2021 13:40:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="228194613"
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="228194613"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 06:40:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="525436158"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 15 Oct 2021 06:40:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Oct 2021 16:40:08 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Oct 2021 16:39:17 +0300
Message-Id: <20211015133921.4609-17-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
References: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 16/20] drm/i915/dp: Rework HDMI DFP TMDS clock
 handling
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

Rework the HDMI DFP TMDS clock checks to also check at 8bpc.
Previously we only checked the deep color cases. But I suppose
a sink could potentially declare "4:2:0 also" modes that only
actually fit within its own limits when using 4:2:0. Even if
that is too nuts to be real there is no real harm in running
through the full checks for everything.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 35 ++++++++++++++++++-------
 1 file changed, 25 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ff2dc22966fa..08aab7856f99 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1090,16 +1090,28 @@ static bool intel_dp_is_ycbcr420(struct intel_dp *intel_dp,
 		 intel_dp->dfp.ycbcr_444_to_420);
 }
 
-static bool intel_dp_hdmi_bpc_possible(struct intel_dp *intel_dp,
-				       const struct intel_crtc_state *crtc_state,
-				       int bpc)
+static int intel_dp_hdmi_compute_bpc(struct intel_dp *intel_dp,
+				     const struct intel_crtc_state *crtc_state,
+				     int bpc)
 {
 	bool ycbcr420_output = intel_dp_is_ycbcr420(intel_dp, crtc_state);
 	int clock = crtc_state->hw.adjusted_mode.crtc_clock;
 
-	return intel_hdmi_bpc_possible(crtc_state, bpc,
-				       intel_dp->has_hdmi_sink, ycbcr420_output) &&
-		intel_dp_tmds_clock_valid(intel_dp, clock, bpc, ycbcr420_output) == MODE_OK;
+	/*
+	 * Current bpc could already be below 8bpc due to
+	 * FDI bandwidth constraints or other limits.
+	 * HDMI minimum is 8bpc however.
+	 */
+	bpc = max(bpc, 8);
+
+	for (; bpc >= 8; bpc -= 2) {
+		if (intel_hdmi_bpc_possible(crtc_state, bpc,
+					    intel_dp->has_hdmi_sink, ycbcr420_output) &&
+		    intel_dp_tmds_clock_valid(intel_dp, clock, bpc, ycbcr420_output) == MODE_OK)
+			return bpc;
+	}
+
+	return -EINVAL;
 }
 
 static int intel_dp_max_bpp(struct intel_dp *intel_dp,
@@ -1115,10 +1127,13 @@ static int intel_dp_max_bpp(struct intel_dp *intel_dp,
 		bpc = min_t(int, bpc, intel_dp->dfp.max_bpc);
 
 	if (intel_dp->dfp.min_tmds_clock) {
-		for (; bpc >= 10; bpc -= 2) {
-			if (intel_dp_hdmi_bpc_possible(intel_dp, crtc_state, bpc))
-				break;
-		}
+		int max_hdmi_bpc;
+
+		max_hdmi_bpc = intel_dp_hdmi_compute_bpc(intel_dp, crtc_state, bpc);
+		if (max_hdmi_bpc < 0)
+			return 0;
+
+		bpc = min(bpc, max_hdmi_bpc);
 	}
 
 	bpp = bpc * 3;
-- 
2.32.0

