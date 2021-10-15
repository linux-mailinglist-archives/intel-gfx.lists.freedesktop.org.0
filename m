Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF2E42F3E6
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 15:39:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 568086EDA0;
	Fri, 15 Oct 2021 13:39:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 282D56EDAA
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Oct 2021 13:39:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="226687013"
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="226687013"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 06:39:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="461567017"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 15 Oct 2021 06:39:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Oct 2021 16:39:42 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Oct 2021 16:39:08 +0300
Message-Id: <20211015133921.4609-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
References: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/20] drm/i915/hdmi: Simplify
 intel_hdmi_mode_clock_valid()
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

Just loop over the possible bpc values instead of
using an ugly if construct.

A slight change in behaviour is that we now call
intel_hdmi_{source,sink}_bpc_possible() even for 8bpc,
but that is fine since 8bpc is always supported.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 37 +++++++++++++----------
 1 file changed, 21 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index b5af986b2778..c6586d10a9d0 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1934,25 +1934,30 @@ intel_hdmi_mode_clock_valid(struct drm_connector *connector, int clock,
 {
 	struct drm_i915_private *i915 = to_i915(connector->dev);
 	struct intel_hdmi *hdmi = intel_attached_hdmi(to_intel_connector(connector));
-	enum drm_mode_status status;
+	enum drm_mode_status status = MODE_OK;
+	int bpc;
 
-	/* check if we can do 8bpc */
-	status = hdmi_port_clock_valid(hdmi, intel_hdmi_tmds_clock(clock, 8, ycbcr420_output),
-				       true, has_hdmi_sink);
+	/*
+	 * Try all color depths since valid port clock range
+	 * can have holes. Any mode that can be used with at
+	 * least one color depth is accepted.
+	 */
+	for (bpc = 12; bpc >= 8; bpc -= 2) {
+		int tmds_clock = intel_hdmi_tmds_clock(clock, bpc, ycbcr420_output);
 
-	/* if we can't do 8bpc we may still be able to do 12bpc */
-	if (status != MODE_OK &&
-	    intel_hdmi_source_bpc_possible(i915, 12) &&
-	    intel_hdmi_sink_bpc_possible(connector, 12, has_hdmi_sink, ycbcr420_output))
-		status = hdmi_port_clock_valid(hdmi, intel_hdmi_tmds_clock(clock, 12, ycbcr420_output),
-					       true, has_hdmi_sink);
+		if (!intel_hdmi_source_bpc_possible(i915, bpc))
+			continue;
 
-	/* if we can't do 8,12bpc we may still be able to do 10bpc */
-	if (status != MODE_OK &&
-	    intel_hdmi_source_bpc_possible(i915, 10) &&
-	    intel_hdmi_sink_bpc_possible(connector, 10, has_hdmi_sink, ycbcr420_output))
-		status = hdmi_port_clock_valid(hdmi, intel_hdmi_tmds_clock(clock, 10, ycbcr420_output),
-					       true, has_hdmi_sink);
+		if (!intel_hdmi_sink_bpc_possible(connector, bpc, has_hdmi_sink, ycbcr420_output))
+			continue;
+
+		status = hdmi_port_clock_valid(hdmi, tmds_clock, true, has_hdmi_sink);
+		if (status == MODE_OK)
+			return MODE_OK;
+	}
+
+	/* can never happen */
+	drm_WARN_ON(&i915->drm, status == MODE_OK);
 
 	return status;
 }
-- 
2.32.0

