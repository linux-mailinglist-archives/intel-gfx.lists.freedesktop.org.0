Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A222A42F3EC
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 15:39:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD2636EDAA;
	Fri, 15 Oct 2021 13:39:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 638996EDAA
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Oct 2021 13:39:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="314110953"
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="314110953"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 06:39:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="571765306"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 15 Oct 2021 06:39:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Oct 2021 16:39:51 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Oct 2021 16:39:11 +0300
Message-Id: <20211015133921.4609-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
References: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/20] drm/i915/dp: Respect the sink's max TMDS
 clock when dealing with DP->HDMI DFPs
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

Currently we only look at the DFPs max TMDS clock limit when
considering whether the mode is valid, or whether we can do
deep color. The sink's max TMDS clock limit may be lower than
the DFPs, so we need to account for it as well.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4095
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 24 +++++++++++++++++++-----
 1 file changed, 19 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b3b8e74fac9c..84270f9573ba 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -781,20 +781,34 @@ static bool intel_dp_hdisplay_bad(struct drm_i915_private *dev_priv,
 	return hdisplay == 4096 && !HAS_DDI(dev_priv);
 }
 
+static int intel_dp_max_tmds_clock(struct intel_dp *intel_dp)
+{
+	struct intel_connector *connector = intel_dp->attached_connector;
+	const struct drm_display_info *info = &connector->base.display_info;
+	int max_tmds_clock = intel_dp->dfp.max_tmds_clock;
+
+	/* Only consider the sink's max TMDS clock if we know this is a HDMI DFP */
+	if (max_tmds_clock && info->max_tmds_clock)
+		max_tmds_clock = min(max_tmds_clock, info->max_tmds_clock);
+
+	return max_tmds_clock;
+}
+
 static enum drm_mode_status
 intel_dp_tmds_clock_valid(struct intel_dp *intel_dp,
 			  int clock, int bpc, bool ycbcr420_output)
 {
-	int tmds_clock;
+	int tmds_clock, min_tmds_clock, max_tmds_clock;
 
 	tmds_clock = intel_hdmi_tmds_clock(clock, bpc, ycbcr420_output);
 
-	if (intel_dp->dfp.min_tmds_clock &&
-	    tmds_clock < intel_dp->dfp.min_tmds_clock)
+	min_tmds_clock = intel_dp->dfp.min_tmds_clock;
+	max_tmds_clock = intel_dp_max_tmds_clock(intel_dp);
+
+	if (min_tmds_clock && tmds_clock < min_tmds_clock)
 		return MODE_CLOCK_LOW;
 
-	if (intel_dp->dfp.max_tmds_clock &&
-	    tmds_clock > intel_dp->dfp.max_tmds_clock)
+	if (max_tmds_clock && tmds_clock > max_tmds_clock)
 		return MODE_CLOCK_HIGH;
 
 	return MODE_OK;
-- 
2.32.0

