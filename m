Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9FA7546814
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 16:10:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CA2511274A;
	Fri, 10 Jun 2022 14:10:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBDA111274F
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 14:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654870254; x=1686406254;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pW9voeLxtnsrWl8iYksqFl2yFDHAl7vrf+CvcasO7H4=;
 b=FHShit/5bJbdfJgLvouDN9Wi5tYNpRmwg93iVIP8NMckbel9fd3g0dSh
 KvD9YeqHZWZQ2XV1NLEXfoKz45ZaMxxmpDeCS37PqWEY6VVeEs4GL4BVU
 HvUq8CCrbLLYWJs4MBoqp4x0AGsBOMNBLk1MOEeSZ/aUwc0kG0phWRgrM
 ngYL8axsbGnm+zXxBprRrSBQcEVG/aGWCAe/yI5a9Xnc9YLMUdeq86bey
 mynOiRkZOwGhtaWHZMipqmMacko5VQ5JBlzuVJtEByttItfRRW3jY9+ug
 ggHUdP04+Wg69OJ5uNcI97coQnT4VkQjMXfHZgaI1Ynd2X66evcUFXfMB g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="266406051"
X-IronPort-AV: E=Sophos;i="5.91,290,1647327600"; d="scan'208";a="266406051"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 07:10:43 -0700
X-IronPort-AV: E=Sophos;i="5.91,290,1647327600"; d="scan'208";a="638156753"
Received: from vrao2-mobl1.gar.corp.intel.com (HELO localhost) ([10.252.58.80])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 07:10:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jun 2022 17:10:27 +0300
Message-Id: <34e0dd92b7f7e9076df1f01b542347e599ec6653.1654870175.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1654870175.git.jani.nikula@intel.com>
References: <cover.1654870175.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/bios: split ddi port parsing and
 debug printing
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Split ddi port parsing and debug printing to clarify the functional
parts of parse_ddi_port(), which are quite small nowadays.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 65 +++++++++++++----------
 1 file changed, 37 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 59d55a99bc2e..fb5f8a9f5ab5 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2561,33 +2561,13 @@ static bool is_port_valid(struct drm_i915_private *i915, enum port port)
 	return true;
 }
 
-static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
+static void print_ddi_port(const struct intel_bios_encoder_data *devdata,
+			   enum port port)
 {
 	struct drm_i915_private *i915 = devdata->i915;
 	const struct child_device_config *child = &devdata->child;
 	bool is_dvi, is_hdmi, is_dp, is_edp, is_crt, supports_typec_usb, supports_tbt;
 	int dp_boost_level, dp_max_link_rate, hdmi_boost_level, hdmi_level_shift, max_tmds_clock;
-	enum port port;
-
-	port = dvo_port_to_port(i915, child->dvo_port);
-	if (port == PORT_NONE)
-		return;
-
-	if (!is_port_valid(i915, port)) {
-		drm_dbg_kms(&i915->drm,
-			    "VBT reports port %c as supported, but that can't be true: skipping\n",
-			    port_name(port));
-		return;
-	}
-
-	if (i915->vbt.ports[port]) {
-		drm_dbg_kms(&i915->drm,
-			    "More than one child device for port %c in VBT, using the first.\n",
-			    port_name(port));
-		return;
-	}
-
-	sanitize_device_type(devdata, port);
 
 	is_dvi = intel_bios_encoder_supports_dvi(devdata);
 	is_dp = intel_bios_encoder_supports_dp(devdata);
@@ -2605,12 +2585,6 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
 		    supports_typec_usb, supports_tbt,
 		    devdata->dsc != NULL);
 
-	if (is_dvi)
-		sanitize_ddc_pin(devdata, port);
-
-	if (is_dp)
-		sanitize_aux_ch(devdata, port);
-
 	hdmi_level_shift = _intel_bios_hdmi_level_shift(devdata);
 	if (hdmi_level_shift >= 0) {
 		drm_dbg_kms(&i915->drm,
@@ -2642,6 +2616,41 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
 		drm_dbg_kms(&i915->drm,
 			    "Port %c VBT DP max link rate: %d\n",
 			    port_name(port), dp_max_link_rate);
+}
+
+static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
+{
+	struct drm_i915_private *i915 = devdata->i915;
+	const struct child_device_config *child = &devdata->child;
+	enum port port;
+
+	port = dvo_port_to_port(i915, child->dvo_port);
+	if (port == PORT_NONE)
+		return;
+
+	if (!is_port_valid(i915, port)) {
+		drm_dbg_kms(&i915->drm,
+			    "VBT reports port %c as supported, but that can't be true: skipping\n",
+			    port_name(port));
+		return;
+	}
+
+	if (i915->vbt.ports[port]) {
+		drm_dbg_kms(&i915->drm,
+			    "More than one child device for port %c in VBT, using the first.\n",
+			    port_name(port));
+		return;
+	}
+
+	sanitize_device_type(devdata, port);
+
+	print_ddi_port(devdata, port);
+
+	if (intel_bios_encoder_supports_dvi(devdata))
+		sanitize_ddc_pin(devdata, port);
+
+	if (intel_bios_encoder_supports_dp(devdata))
+		sanitize_aux_ch(devdata, port);
 
 	i915->vbt.ports[port] = devdata;
 }
-- 
2.30.2

