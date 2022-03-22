Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A04D4E3DFB
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 13:00:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57CE510E56F;
	Tue, 22 Mar 2022 12:00:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA1F910E56E
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 12:00:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647950442; x=1679486442;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hEXXnNGygOQnIyp8YM+6RZNLNoHne4Gah74m176PEA0=;
 b=iTqnCHDpbHg2gcGF24AzG7hS/5b1PFmPxtaF2nVNhTfRxxqaSJ+v7wlp
 zqM2eAnSMMDWkFIuHJ68K+u2sC22cHHDaP1OUuikvaMScFbt4k0l47CcI
 ktSi3Kppqv24QcG7OiyjewDZdSCCIKFHYLl6Nvycng2wTppvkZkSCJLlL
 EMu8lIXHOCSz2tASIbjQkhmoPGteG6ZKZnh99pMhhg4YTvsszm49X8xqE
 Whc6BvVFxIdy5r2hP4nOLPPxnG/c1GZAGwCI4+197yFKfC183v488bqr5
 rj4NC2w9+Gpgn855ruB+skgONDKYZDn2rSSkna0q/G1LrQc59SemPpdfD A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="257748275"
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="257748275"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 05:00:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="646997357"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga002.fm.intel.com with SMTP; 22 Mar 2022 05:00:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Mar 2022 14:00:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Mar 2022 14:00:11 +0200
Message-Id: <20220322120015.28074-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
References: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 08/12] drm/i915/dp: Rework HDMI DFP TMDS
 clock handling
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
index a78522dc9b3c..436d0b0f0b76 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1163,16 +1163,28 @@ static bool intel_dp_is_ycbcr420(struct intel_dp *intel_dp,
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
@@ -1188,10 +1200,13 @@ static int intel_dp_max_bpp(struct intel_dp *intel_dp,
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
2.34.1

