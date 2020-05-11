Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8501CDEC6
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 17:23:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DA9F6E047;
	Mon, 11 May 2020 15:23:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D87E26E047
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 15:23:34 +0000 (UTC)
IronPort-SDR: L7NHv706LUX6w4OclUB13XzpfcCO6Iht6vFClAMX35pSJQx4FDzID7GfHadrdmP+M6vTmc/6ns
 pLUiRDYDLzmA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 08:23:34 -0700
IronPort-SDR: TquTcH2xrb2EL9EpPrQMDILfrNYkp5ffm39Vf0wt9K6SKYSoa17IefuIL5d7GwCGxgzT2UTcoY
 erM/NRNdAKyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,380,1583222400"; d="scan'208";a="436730420"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.9])
 by orsmga005.jf.intel.com with ESMTP; 11 May 2020 08:23:32 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 May 2020 07:19:15 +0800
Message-Id: <20200511231915.28069-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200417212408.19649-1-shawn.c.lee@intel.com>
References: <20200417212408.19649-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [PATCH v2] drm/i915/mst: filter out the display mode
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

v2: Using mgr->base.lock to protect full_pbn.

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
index 74559379384a..6b1864ce3771 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -611,6 +611,26 @@ static int intel_dp_mst_get_modes(struct drm_connector *connector)
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
+	drm_modeset_lock(&mgr->base.lock, NULL);
+	if (port->full_pbn)
+		ret = (drm_dp_calc_pbn_mode(clock, bpp, false) > port->full_pbn);
+	drm_modeset_unlock(&mgr->base.lock);
+
+	return ret;
+}
+
 static enum drm_mode_status
 intel_dp_mst_mode_valid(struct drm_connector *connector,
 			struct drm_display_mode *mode)
@@ -633,7 +653,9 @@ intel_dp_mst_mode_valid(struct drm_connector *connector,
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
