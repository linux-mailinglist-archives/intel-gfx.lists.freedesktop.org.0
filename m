Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 778AF68CFA8
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 07:43:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A62210E450;
	Tue,  7 Feb 2023 06:43:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69F0210E446
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 06:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675752227; x=1707288227;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=cLvZoIfli5c2ILmeCzMkkaWdDTQE7eyGniVGiBeW4nk=;
 b=TWVuR2eVeuCfV+mI4Fk9RyLe3AcZVjeHLbV0PsVvnZGd9BOo7+jBCl6e
 nvfxFtqmEt+RscAWXnSAlPZFaxiEjXUoFne4JkHuPykBwLKTQUWU24L2R
 apndzTx4/vOj00QlFhcd6Fw3zRooNNUdCVqil6ozKc6gayFNDSyENTHzd
 BQJEfiaCFsXBfCGY3XzYOjAJ04CaiOP9fhCvRYPwZ0v7NCTcmppqFxfrV
 j95LrUm1r8K0lJ7x6pE4prN9OuLhLTdfUMjAtNTVT+qDBtC9Rz+Jzx2h2
 aL6n8p7KVWYpKdxSikcAvsVy7rFCda9Kjf7unRo6WYD67j46+V1IPAcW7 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="309067911"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="309067911"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 22:43:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="660107546"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="660107546"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga007.jf.intel.com with SMTP; 06 Feb 2023 22:43:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 07 Feb 2023 08:43:44 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Feb 2023 08:43:36 +0200
Message-Id: <20230207064337.18697-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230207064337.18697-1-ville.syrjala@linux.intel.com>
References: <20230207064337.18697-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Populate encoder->devdata for DSI
 on icl+
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

We now have some eDP+DSI dual panel systems floating around
where the DSI panel is the secondary LFP and thus needs to
consult "panel type 2" in VBT in order to locate all the
other panel type dependante stuff correctly.

To that end we need to pass in the devdata to
intel_bios_init_panel_late(), otherwise it'll just assume
we want the primary panel type. So let's try to just populate
the vbt.ports[] stuff and encoder->devdata for icl+ DSI
panels as well.

We can't do this on older platforms as there we risk a DSI
port aliasing with a HDMI/DP port, which is a totally legal
thing as the DSI ports live in their own little parallel
universe.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8016
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c    |  3 ++-
 drivers/gpu/drm/i915/display/intel_bios.c | 15 ++++++++++++---
 2 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 003cac918228..05e749861658 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1951,7 +1951,8 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 	/* attach connector to encoder */
 	intel_connector_attach_encoder(intel_connector, encoder);
 
-	intel_bios_init_panel_late(dev_priv, &intel_connector->panel, NULL, NULL);
+	encoder->devdata = intel_bios_encoder_data_lookup(dev_priv, port);
+	intel_bios_init_panel_late(dev_priv, &intel_connector->panel, encoder->devdata, NULL);
 
 	mutex_lock(&dev_priv->drm.mode_config.mutex);
 	intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 06a2d98d2277..1cd8af88ce50 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2593,6 +2593,12 @@ intel_bios_encoder_supports_edp(const struct intel_bios_encoder_data *devdata)
 		devdata->child.device_type & DEVICE_TYPE_INTERNAL_CONNECTOR;
 }
 
+static bool
+intel_bios_encoder_supports_dsi(const struct intel_bios_encoder_data *devdata)
+{
+	return devdata->child.device_type & DEVICE_TYPE_MIPI_OUTPUT;
+}
+
 static int _intel_bios_hdmi_level_shift(const struct intel_bios_encoder_data *devdata)
 {
 	if (!devdata || devdata->i915->display.vbt.version < 158)
@@ -2643,7 +2649,7 @@ static void print_ddi_port(const struct intel_bios_encoder_data *devdata,
 {
 	struct drm_i915_private *i915 = devdata->i915;
 	const struct child_device_config *child = &devdata->child;
-	bool is_dvi, is_hdmi, is_dp, is_edp, is_crt, supports_typec_usb, supports_tbt;
+	bool is_dvi, is_hdmi, is_dp, is_edp, is_dsi, is_crt, supports_typec_usb, supports_tbt;
 	int dp_boost_level, dp_max_link_rate, hdmi_boost_level, hdmi_level_shift, max_tmds_clock;
 
 	is_dvi = intel_bios_encoder_supports_dvi(devdata);
@@ -2651,13 +2657,14 @@ static void print_ddi_port(const struct intel_bios_encoder_data *devdata,
 	is_crt = intel_bios_encoder_supports_crt(devdata);
 	is_hdmi = intel_bios_encoder_supports_hdmi(devdata);
 	is_edp = intel_bios_encoder_supports_edp(devdata);
+	is_dsi = intel_bios_encoder_supports_dsi(devdata);
 
 	supports_typec_usb = intel_bios_encoder_supports_typec_usb(devdata);
 	supports_tbt = intel_bios_encoder_supports_tbt(devdata);
 
 	drm_dbg_kms(&i915->drm,
-		    "Port %c VBT info: CRT:%d DVI:%d HDMI:%d DP:%d eDP:%d LSPCON:%d USB-Type-C:%d TBT:%d DSC:%d\n",
-		    port_name(port), is_crt, is_dvi, is_hdmi, is_dp, is_edp,
+		    "Port %c VBT info: CRT:%d DVI:%d HDMI:%d DP:%d eDP:%d DSI:%d LSPCON:%d USB-Type-C:%d TBT:%d DSC:%d\n",
+		    port_name(port), is_crt, is_dvi, is_hdmi, is_dp, is_edp, is_dsi,
 		    HAS_LSPCON(i915) && child->lspcon,
 		    supports_typec_usb, supports_tbt,
 		    devdata->dsc != NULL);
@@ -2710,6 +2717,8 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
 	enum port port;
 
 	port = dvo_port_to_port(i915, child->dvo_port);
+	if (port == PORT_NONE && DISPLAY_VER(i915) >= 11)
+		port = dsi_dvo_port_to_port(i915, child->dvo_port);
 	if (port == PORT_NONE)
 		return;
 
-- 
2.39.1

