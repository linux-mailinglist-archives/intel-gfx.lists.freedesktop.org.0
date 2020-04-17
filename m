Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 180FA1ADE47
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 15:28:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CA7D6E3FB;
	Fri, 17 Apr 2020 13:28:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E31EF6E3FB
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 13:28:28 +0000 (UTC)
IronPort-SDR: kWbMiBAgplp4T7B0xYR8t24/NU9yN1T/OMQeXIkfpACJEAuvkHY5E9t2CPsbVPTTkSZ17RRfj8
 F2BdOpYwbZcg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 06:28:20 -0700
IronPort-SDR: 22jU3///z9N0xXljN7ybo+eR+6IddLQ4SDNB0driYuOk0+/AEJY9yDLIsoz8oqYhKf15PU/sAe
 lZQmZsxS81kQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,395,1580803200"; d="scan'208";a="299613752"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.9])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Apr 2020 06:28:18 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Apr 2020 05:24:08 +0800
Message-Id: <20200417212408.19649-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/mst: filter out the display mode
 exceed sink's capability
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
Cc: Cooper Chiou <cooper.chiou@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

So far, max dot clock rate for MST mode rely on physcial
bandwidth limitation. It would caused compatibility issue
if source display resolution exceed MST hub output ability.

For example, source DUT had DP 1.2 output capability.
And MST docking just support HDMI 1.4 spec. When a HDMI 2.0
monitor connected. Source would retrieve EDID from external
and get max resolution 4k@60fps. DP 1.2 can support 4K@60fps
because it did not surpass DP physical bandwidth limitation.
Do modeset to 4k@60fps, source output display data but MST
docking can't output HDMI properly due to this resolution
already over HDMI 1.4 spec.

Refer to commit <fcf463807596> ("drm/dp_mst: Use full_pbn
instead of available_pbn for bandwidth checks").
Source driver should refer to full_pbn to evaluate sink
output capability. And filter out the resolution surpass
sink output limitation.

Cc: Manasi Navare <manasi.d.navare@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Cc: Lyude Paul <lyude@redhat.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 24 ++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 61605eb8c2af..68697f463dab 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -609,6 +609,26 @@ static int intel_dp_mst_get_modes(struct drm_connector *connector)
 	return intel_dp_mst_get_ddc_modes(connector);
 }
 
+static bool
+intel_dp_mst_mode_clock_exceed_pbn_bandwidth(struct drm_connector *connector, int clock, int bpp)
+{
+	struct intel_connector *intel_connector = to_intel_connector(connector);
+	struct intel_dp *intel_dp = intel_connector->mst_port;
+	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst_mgr;
+	struct drm_dp_mst_port *port = (to_intel_connector(connector))->port;
+	bool ret = false;
+
+	if (!mgr)
+		return ret;
+
+	mutex_lock(&mgr->lock);
+	if (port->full_pbn)
+		ret = (drm_dp_calc_pbn_mode(clock, bpp, false) > port->full_pbn);
+	mutex_unlock(&mgr->lock);
+
+	return ret;
+}
+
 static enum drm_mode_status
 intel_dp_mst_mode_valid(struct drm_connector *connector,
 			struct drm_display_mode *mode)
@@ -631,7 +651,9 @@ intel_dp_mst_mode_valid(struct drm_connector *connector,
 	max_rate = intel_dp_max_data_rate(max_link_clock, max_lanes);
 	mode_rate = intel_dp_link_required(mode->clock, 18);
 
-	/* TODO - validate mode against available PBN for link */
+	if (intel_dp_mst_mode_clock_exceed_pbn_bandwidth(connector, mode->clock, 24))
+		return MODE_CLOCK_HIGH;
+
 	if (mode->clock < 10000)
 		return MODE_CLOCK_LOW;
 
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
