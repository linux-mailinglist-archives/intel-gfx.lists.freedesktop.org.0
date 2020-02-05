Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C19811525CF
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 06:20:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 512D46F482;
	Wed,  5 Feb 2020 05:20:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D44F6F482
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 05:20:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 21:20:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,404,1574150400"; d="scan'208";a="264101886"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.9])
 by fmsmga002.fm.intel.com with ESMTP; 04 Feb 2020 21:20:16 -0800
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Feb 2020 21:18:49 +0800
Message-Id: <20200205131849.14518-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200106174156.11081-1-shawn.c.lee@intel.com>
References: <20200106174156.11081-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [PATCH v2] drm/i915/dp/mst : Get clock rate from sink's
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

Test on several MST hubs. Available PBN value would be renew
if the connected sink (monitor) number was changed. At the same time,
MST hub would trigger HPD to source. Then source driver can refresh
mode list rely on the latest PBN value.

Apply this calculation, source calcualte max dot clock according
to the latest available PBN. Driver will ignore the mode that over
current clock rate. And external display can works normally.

Cc: Manasi Navare <manasi.d.navare@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>

v2: Add missing mutex lock.
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 35 +++++++++++++++++++--
 1 file changed, 32 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index ffa2aa2222bf..ba4b088e19a5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -555,6 +555,35 @@ static int intel_dp_mst_get_modes(struct drm_connector *connector)
 	return intel_dp_mst_get_ddc_modes(connector);
 }
 
+static int
+intel_dp_mst_downstream_max_dotclock(struct drm_connector *connector)
+{
+	struct intel_connector *intel_connector = to_intel_connector(connector);
+	struct intel_dp *intel_dp = intel_connector->mst_port;
+	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst_mgr;
+	struct drm_dp_mst_port *port;
+	u64 clock_rate = to_i915(connector->dev)->max_dotclk_freq;
+
+	if (!mgr)
+		return (int)clock_rate;
+
+	mutex_lock(&mgr->lock);
+	if (mgr->mst_primary) {
+		list_for_each_entry(port, &intel_dp->mst_mgr.mst_primary->ports, next) {
+			if (port->connector == connector) {
+				clock_rate = ((u64)port->available_pbn * (54 * 8 * 1000 * 1000)) / (64 * 1006);
+
+				// FIXME: We should used pipe bpp to do this calculation.
+				//        But can't retrieve bpp setting from drm_connector.
+				clock_rate /= 24;
+			}
+		}
+	}
+	mutex_unlock(&mgr->lock);
+
+	return (int)clock_rate;
+}
+
 static enum drm_mode_status
 intel_dp_mst_mode_valid(struct drm_connector *connector,
 			struct drm_display_mode *mode)
@@ -562,8 +591,7 @@ intel_dp_mst_mode_valid(struct drm_connector *connector,
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	struct intel_connector *intel_connector = to_intel_connector(connector);
 	struct intel_dp *intel_dp = intel_connector->mst_port;
-	int max_dotclk = to_i915(connector->dev)->max_dotclk_freq;
-	int max_rate, mode_rate, max_lanes, max_link_clock;
+	int max_rate, mode_rate, max_lanes, max_link_clock, max_dotclk;
 
 	if (drm_connector_is_unregistered(connector))
 		return MODE_ERROR;
@@ -577,7 +605,8 @@ intel_dp_mst_mode_valid(struct drm_connector *connector,
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
