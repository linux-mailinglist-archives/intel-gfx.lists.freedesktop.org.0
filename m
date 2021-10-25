Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 454C7439864
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Oct 2021 16:21:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5802B89FE8;
	Mon, 25 Oct 2021 14:21:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8855D89FE8
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Oct 2021 14:21:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10147"; a="229521283"
X-IronPort-AV: E=Sophos;i="5.87,180,1631602800"; d="scan'208";a="229521283"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2021 07:21:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,180,1631602800"; d="scan'208";a="493740148"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 25 Oct 2021 07:21:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 25 Oct 2021 17:21:47 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: stable@vger.kernel.org,
	Randy Dunlap <rdunlap@infradead.org>
Date: Mon, 25 Oct 2021 17:21:47 +0300
Message-Id: <20211025142147.23897-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix type1 DVI DP dual mode adapter
 heuristic for modern platforms
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

Looks like we never updated intel_bios_is_port_dp_dual_mode() when
the VBT port mapping became erratic on modern platforms. This
is causing us to look up the wrong child device and thus throwing
the heuristic off (ie. we might end looking at a child device for
a genuine DP++ port when we were supposed to look at one for a
native HDMI port).

Fix it up by not using the outdated port_mapping[] in
intel_bios_is_port_dp_dual_mode() and rely on
intel_bios_encoder_data_lookup() instead.

Cc: stable@vger.kernel.org
Tested-by: Randy Dunlap <rdunlap@infradead.org>
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4138
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 85 +++++++++++++++++------
 1 file changed, 63 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index f9776ca85de3..2b1423a43437 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1707,6 +1707,39 @@ static void sanitize_aux_ch(struct intel_bios_encoder_data *devdata,
 	child->aux_channel = 0;
 }
 
+static u8 dvo_port_type(u8 dvo_port)
+{
+	switch (dvo_port) {
+	case DVO_PORT_HDMIA:
+	case DVO_PORT_HDMIB:
+	case DVO_PORT_HDMIC:
+	case DVO_PORT_HDMID:
+	case DVO_PORT_HDMIE:
+	case DVO_PORT_HDMIF:
+	case DVO_PORT_HDMIG:
+	case DVO_PORT_HDMIH:
+	case DVO_PORT_HDMII:
+		return DVO_PORT_HDMIA;
+	case DVO_PORT_DPA:
+	case DVO_PORT_DPB:
+	case DVO_PORT_DPC:
+	case DVO_PORT_DPD:
+	case DVO_PORT_DPE:
+	case DVO_PORT_DPF:
+	case DVO_PORT_DPG:
+	case DVO_PORT_DPH:
+	case DVO_PORT_DPI:
+		return DVO_PORT_DPA;
+	case DVO_PORT_MIPIA:
+	case DVO_PORT_MIPIB:
+	case DVO_PORT_MIPIC:
+	case DVO_PORT_MIPID:
+		return DVO_PORT_MIPIA;
+	default:
+		return dvo_port;
+	}
+}
+
 static enum port __dvo_port_to_port(int n_ports, int n_dvo,
 				    const int port_mapping[][3], u8 dvo_port)
 {
@@ -2623,35 +2656,17 @@ bool intel_bios_is_port_edp(struct drm_i915_private *i915, enum port port)
 	return false;
 }
 
-static bool child_dev_is_dp_dual_mode(const struct child_device_config *child,
-				      enum port port)
+static bool child_dev_is_dp_dual_mode(const struct child_device_config *child)
 {
-	static const struct {
-		u16 dp, hdmi;
-	} port_mapping[] = {
-		/*
-		 * Buggy VBTs may declare DP ports as having
-		 * HDMI type dvo_port :( So let's check both.
-		 */
-		[PORT_B] = { DVO_PORT_DPB, DVO_PORT_HDMIB, },
-		[PORT_C] = { DVO_PORT_DPC, DVO_PORT_HDMIC, },
-		[PORT_D] = { DVO_PORT_DPD, DVO_PORT_HDMID, },
-		[PORT_E] = { DVO_PORT_DPE, DVO_PORT_HDMIE, },
-		[PORT_F] = { DVO_PORT_DPF, DVO_PORT_HDMIF, },
-	};
-
-	if (port == PORT_A || port >= ARRAY_SIZE(port_mapping))
-		return false;
-
 	if ((child->device_type & DEVICE_TYPE_DP_DUAL_MODE_BITS) !=
 	    (DEVICE_TYPE_DP_DUAL_MODE & DEVICE_TYPE_DP_DUAL_MODE_BITS))
 		return false;
 
-	if (child->dvo_port == port_mapping[port].dp)
+	if (dvo_port_type(child->dvo_port) == DVO_PORT_DPA)
 		return true;
 
 	/* Only accept a HDMI dvo_port as DP++ if it has an AUX channel */
-	if (child->dvo_port == port_mapping[port].hdmi &&
+	if (dvo_port_type(child->dvo_port) == DVO_PORT_HDMIA &&
 	    child->aux_channel != 0)
 		return true;
 
@@ -2661,10 +2676,36 @@ static bool child_dev_is_dp_dual_mode(const struct child_device_config *child,
 bool intel_bios_is_port_dp_dual_mode(struct drm_i915_private *i915,
 				     enum port port)
 {
+	static const struct {
+		u16 dp, hdmi;
+	} port_mapping[] = {
+		/*
+		 * Buggy VBTs may declare DP ports as having
+		 * HDMI type dvo_port :( So let's check both.
+		 */
+		[PORT_B] = { DVO_PORT_DPB, DVO_PORT_HDMIB, },
+		[PORT_C] = { DVO_PORT_DPC, DVO_PORT_HDMIC, },
+		[PORT_D] = { DVO_PORT_DPD, DVO_PORT_HDMID, },
+		[PORT_E] = { DVO_PORT_DPE, DVO_PORT_HDMIE, },
+		[PORT_F] = { DVO_PORT_DPF, DVO_PORT_HDMIF, },
+	};
 	const struct intel_bios_encoder_data *devdata;
 
+	if (HAS_DDI(i915)) {
+		const struct intel_bios_encoder_data *devdata;
+
+		devdata = intel_bios_encoder_data_lookup(i915, port);
+
+		return devdata && child_dev_is_dp_dual_mode(&devdata->child);
+	}
+
+	if (port == PORT_A || port >= ARRAY_SIZE(port_mapping))
+		return false;
+
 	list_for_each_entry(devdata, &i915->vbt.display_devices, node) {
-		if (child_dev_is_dp_dual_mode(&devdata->child, port))
+		if ((devdata->child.dvo_port == port_mapping[port].dp ||
+		     devdata->child.dvo_port == port_mapping[port].hdmi) &&
+		    child_dev_is_dp_dual_mode(&devdata->child))
 			return true;
 	}
 
-- 
2.32.0

