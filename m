Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5005B592D
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 13:19:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36A5A10E3A7;
	Mon, 12 Sep 2022 11:19:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1A2610E3BE
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 11:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662981529; x=1694517529;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=uCQtEIulLGSHAq5vBvDwsJglzj6lv48j6d+QuuVkqrg=;
 b=UrstTDSO/oeGR0srInoDZuI3S8M1l+h3TEoY2/6aL+BWxu5pqF5mFJYZ
 JPpeWOeFHR+86duo/3hB/lLu9C7xRihmxGTDBRzdmiknf7qOsl0XpBe5e
 78pWXKZOCiQ5is1lwd6jEstvHbg7TnlwWj4nenmETdmEuUEaNjpiVEGRz
 1WLVpIVvkDDaPRzCWfeMNV0RzfbxHCvzc33xvK6uisAT5q4AczZc+9E93
 IAoz9GOLU+CRSVIyqKkY9+9BB9Dfcu85YxcOzh6FHcc7VcpVPcI7Qdt8d
 yWuBvNQwQDPYfLrZUuQsKzDqvQj/cdCWLuQmUQBuMxGz1nKA9qj4xliP/ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="296575666"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="296575666"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:18:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="705115852"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by FMSMGA003.fm.intel.com with SMTP; 12 Sep 2022 04:18:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 Sep 2022 14:18:34 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 14:18:06 +0300
Message-Id: <20220912111814.17466-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
References: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/15] drm/i915: Extract
 intel_tv_add_properties()
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

Pull all the TV connector property setup into its own neat function.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_tv.c | 80 +++++++++++++------------
 1 file changed, 43 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index 9379f3463344..306d08482855 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -1869,6 +1869,48 @@ static const struct drm_encoder_funcs intel_tv_enc_funcs = {
 	.destroy = intel_encoder_destroy,
 };
 
+static void intel_tv_add_properties(struct drm_connector *connector)
+{
+	struct drm_i915_private *i915 = to_i915(connector->dev);
+	struct drm_connector_state *conn_state = connector->state;
+	const char *tv_format_names[ARRAY_SIZE(tv_modes)];
+	int i;
+
+	/* BIOS margin values */
+	conn_state->tv.margins.left = 54;
+	conn_state->tv.margins.top = 36;
+	conn_state->tv.margins.right = 46;
+	conn_state->tv.margins.bottom = 37;
+
+	conn_state->tv.mode = 0;
+
+	/* Create TV properties then attach current values */
+	for (i = 0; i < ARRAY_SIZE(tv_modes); i++) {
+		/* 1080p50/1080p60 not supported on gen3 */
+		if (DISPLAY_VER(i915) == 3 && tv_modes[i].oversample == 1)
+			break;
+
+		tv_format_names[i] = tv_modes[i].name;
+	}
+	drm_mode_create_tv_properties(&i915->drm, i, tv_format_names);
+
+	drm_object_attach_property(&connector->base,
+				   i915->drm.mode_config.tv_mode_property,
+				   conn_state->tv.mode);
+	drm_object_attach_property(&connector->base,
+				   i915->drm.mode_config.tv_left_margin_property,
+				   conn_state->tv.margins.left);
+	drm_object_attach_property(&connector->base,
+				   i915->drm.mode_config.tv_top_margin_property,
+				   conn_state->tv.margins.top);
+	drm_object_attach_property(&connector->base,
+				   i915->drm.mode_config.tv_right_margin_property,
+				   conn_state->tv.margins.right);
+	drm_object_attach_property(&connector->base,
+				   i915->drm.mode_config.tv_bottom_margin_property,
+				   conn_state->tv.margins.bottom);
+}
+
 void
 intel_tv_init(struct drm_i915_private *dev_priv)
 {
@@ -1878,9 +1920,6 @@ intel_tv_init(struct drm_i915_private *dev_priv)
 	struct intel_encoder *intel_encoder;
 	struct intel_connector *intel_connector;
 	u32 tv_dac_on, tv_dac_off, save_tv_dac;
-	const char *tv_format_names[ARRAY_SIZE(tv_modes)];
-	int i, initial_mode = 0;
-	struct drm_connector_state *state;
 
 	if ((intel_de_read(dev_priv, TV_CTL) & TV_FUSE_STATE_MASK) == TV_FUSE_STATE_DISABLED)
 		return;
@@ -1926,7 +1965,6 @@ intel_tv_init(struct drm_i915_private *dev_priv)
 
 	intel_encoder = &intel_tv->base;
 	connector = &intel_connector->base;
-	state = connector->state;
 
 	/*
 	 * The documentation, for the older chipsets at least, recommend
@@ -1963,41 +2001,9 @@ intel_tv_init(struct drm_i915_private *dev_priv)
 	intel_encoder->cloneable = 0;
 	intel_tv->type = DRM_MODE_CONNECTOR_Unknown;
 
-	/* BIOS margin values */
-	state->tv.margins.left = 54;
-	state->tv.margins.top = 36;
-	state->tv.margins.right = 46;
-	state->tv.margins.bottom = 37;
-
-	state->tv.mode = initial_mode;
-
 	drm_connector_helper_add(connector, &intel_tv_connector_helper_funcs);
 	connector->interlace_allowed = false;
 	connector->doublescan_allowed = false;
 
-	/* Create TV properties then attach current values */
-	for (i = 0; i < ARRAY_SIZE(tv_modes); i++) {
-		/* 1080p50/1080p60 not supported on gen3 */
-		if (DISPLAY_VER(dev_priv) == 3 &&
-		    tv_modes[i].oversample == 1)
-			break;
-
-		tv_format_names[i] = tv_modes[i].name;
-	}
-	drm_mode_create_tv_properties(dev, i, tv_format_names);
-
-	drm_object_attach_property(&connector->base, dev->mode_config.tv_mode_property,
-				   state->tv.mode);
-	drm_object_attach_property(&connector->base,
-				   dev->mode_config.tv_left_margin_property,
-				   state->tv.margins.left);
-	drm_object_attach_property(&connector->base,
-				   dev->mode_config.tv_top_margin_property,
-				   state->tv.margins.top);
-	drm_object_attach_property(&connector->base,
-				   dev->mode_config.tv_right_margin_property,
-				   state->tv.margins.right);
-	drm_object_attach_property(&connector->base,
-				   dev->mode_config.tv_bottom_margin_property,
-				   state->tv.margins.bottom);
+	intel_tv_add_properties(connector);
 }
-- 
2.35.1

