Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 022D7130FB1
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2020 10:43:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BCE36E215;
	Mon,  6 Jan 2020 09:43:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36EFE6E215
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jan 2020 09:43:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jan 2020 01:43:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,402,1571727600"; d="scan'208";a="210736545"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.9])
 by orsmga007.jf.intel.com with ESMTP; 06 Jan 2020 01:43:51 -0800
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Jan 2020 01:41:56 +0800
Message-Id: <20200106174156.11081-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/dp/mst : Get clock rate from sink's
 available PBN
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

Driver report physcial bandwidth for max dot clock rate.
It would caused compatibility issue sometimes when physical
bandwidth exceed MST hub output ability.

For example, here is a MST hub with HDMI 1.4 and DP 1.2 output.
And source have DP 1.2 output capability. Connect a HDMI 2.0
display then source will retrieve EDID from external monitor.
Driver got max resolution was 4k@60fps. DP 1.2 can support
this resolution because it did not surpass max physical bandwidth.
After modeset, source output display data but MST hub can't
output HDMI properly due to it already over HDMI 1.4 spec.

Apply this calculation, source calcualte max dot clock according
to available PBN. Driver will remove the mode that over current
clock rate. And external display can works normally.

Cc: Manasi Navare <manasi.d.navare@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>

Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 27 ++++++++++++++++++---
 1 file changed, 24 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 3b066c63816d..eaa440165ad2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -550,6 +550,27 @@ static int intel_dp_mst_get_modes(struct drm_connector *connector)
 	return intel_dp_mst_get_ddc_modes(connector);
 }
 
+static int
+intel_dp_mst_downstream_max_dotclock(struct drm_connector *connector)
+{
+	struct intel_connector *intel_connector = to_intel_connector(connector);
+	struct intel_dp *intel_dp = intel_connector->mst_port;
+	struct drm_dp_mst_port *port;
+	u64 clock_rate = 0;
+
+	if (intel_dp->mst_mgr.mst_primary)
+		list_for_each_entry(port, &intel_dp->mst_mgr.mst_primary->ports, next)
+			if (port->connector == connector) {
+				clock_rate = ((u64)port->available_pbn * (54 * 8 * 1000 * 1000)) / (64 * 1006);
+
+				// FIXME: We should used pipe bpp to do this calculation.
+				//        But can't retrieve bpp setting from drm_connector.
+				return (int)(clock_rate / 24);
+			}
+
+	return to_i915(connector->dev)->max_dotclk_freq;
+}
+
 static enum drm_mode_status
 intel_dp_mst_mode_valid(struct drm_connector *connector,
 			struct drm_display_mode *mode)
@@ -557,8 +578,7 @@ intel_dp_mst_mode_valid(struct drm_connector *connector,
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	struct intel_connector *intel_connector = to_intel_connector(connector);
 	struct intel_dp *intel_dp = intel_connector->mst_port;
-	int max_dotclk = to_i915(connector->dev)->max_dotclk_freq;
-	int max_rate, mode_rate, max_lanes, max_link_clock;
+	int max_rate, mode_rate, max_lanes, max_link_clock, max_dotclk;
 
 	if (drm_connector_is_unregistered(connector))
 		return MODE_ERROR;
@@ -572,7 +592,8 @@ intel_dp_mst_mode_valid(struct drm_connector *connector,
 	max_rate = intel_dp_max_data_rate(max_link_clock, max_lanes);
 	mode_rate = intel_dp_link_required(mode->clock, 18);
 
-	/* TODO - validate mode against available PBN for link */
+	max_dotclk = intel_dp_mst_downstream_max_dotclock(connector);
+
 	if (mode->clock < 10000)
 		return MODE_CLOCK_LOW;
 
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
