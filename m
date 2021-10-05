Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD6E422F7B
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Oct 2021 19:56:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7862E6EC1F;
	Tue,  5 Oct 2021 17:56:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD4956EC17
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Oct 2021 17:56:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10128"; a="286693875"
X-IronPort-AV: E=Sophos;i="5.85,349,1624345200"; d="scan'208";a="286693875"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 10:56:46 -0700
X-IronPort-AV: E=Sophos;i="5.85,349,1624345200"; d="scan'208";a="488148314"
Received: from gionascu-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.40.237])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 10:56:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>,
 Uma Shankar <uma.shankar@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Swati Sharma <swati2.sharma@intel.com>
Date: Tue,  5 Oct 2021 20:56:36 +0300
Message-Id: <20211005175636.24669-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/bios: gracefully disable dual eDP for
 now
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

For the time being, neither the power sequencer nor the backlight code
properly support two eDP panels simultaneously. While the software
states will be independent, the same sets of registers will be used for
both eDP panels, clobbering the hardware state and leading to errors.

Gracefully disable dual eDP until proper support has been added.

Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Swati Sharma <swati2.sharma@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 47 +++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index f9776ca85de3..b99907c656bb 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1930,6 +1930,50 @@ static int _intel_bios_max_tmds_clock(const struct intel_bios_encoder_data *devd
 	}
 }
 
+static enum port get_edp_port(struct drm_i915_private *i915)
+{
+	const struct intel_bios_encoder_data *devdata;
+	enum port port;
+
+	for_each_port(port) {
+		devdata = i915->vbt.ports[port];
+
+		if (devdata && intel_bios_encoder_supports_edp(devdata))
+			return port;
+	}
+
+	return PORT_NONE;
+}
+
+/*
+ * FIXME: The power sequencer and backlight code currently do not support more
+ * than one set registers, at least not on anything other than VLV/CHV. It will
+ * clobber the registers. As a temporary workaround, gracefully prevent more
+ * than one eDP from being registered.
+ */
+static void sanitize_dual_edp(struct intel_bios_encoder_data *devdata,
+			      enum port port)
+{
+	struct drm_i915_private *i915 = devdata->i915;
+	struct child_device_config *child = &devdata->child;
+	enum port p;
+
+	/* CHV might not clobber PPS registers. */
+	if (IS_CHERRYVIEW(i915))
+		return;
+
+	p = get_edp_port(i915);
+	if (p == PORT_NONE)
+		return;
+
+	drm_dbg_kms(&i915->drm, "both ports %c and %c configured as eDP, "
+		    "disabling port %c eDP\n", port_name(p), port_name(port),
+		    port_name(port));
+
+	child->device_type &= ~DEVICE_TYPE_DISPLAYPORT_OUTPUT;
+	child->device_type &= ~DEVICE_TYPE_INTERNAL_CONNECTOR;
+}
+
 static bool is_port_valid(struct drm_i915_private *i915, enum port port)
 {
 	/*
@@ -1987,6 +2031,9 @@ static void parse_ddi_port(struct drm_i915_private *i915,
 		    supports_typec_usb, supports_tbt,
 		    devdata->dsc != NULL);
 
+	if (is_edp)
+		sanitize_dual_edp(devdata, port);
+
 	if (is_dvi)
 		sanitize_ddc_pin(devdata, port);
 
-- 
2.30.2

