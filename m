Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D5044D695E
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 21:22:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A11710EA76;
	Fri, 11 Mar 2022 20:22:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BF5010EA76
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 20:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647030139; x=1678566139;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Ch32yY4SpE3vnkfGuXNQKiF4InroG5V5QqNsb1S6Qss=;
 b=fsrjfG+FhHv2w3EZcfYQRvg29jjAj0nUX6vc1+KZVvflCoVVYRjdcrYx
 d8/dTXTkigRGckMfNPOopTaJ4mbG7EWQgCpOkmJO/kVE5/vTgIITfZppw
 gWryQb8jeRC214MbTCJ5pmlTt42XiG8w8FvqcB9Y6NBdBzvVtpl5KREAK
 XQRf3U9Hd3PQFry/RdlEe/4ShZfUqb9eLrzVs3X3Rypbtx/HOUFBByrX4
 4WqMGVOzoQEWdO6LyilL16QEWGJlchWehKghfaL4AL0aeUIwRDd1f6w3c
 Mdeizb4bMBfptKvHgiueIKgMESnl6OsDIYd7sw9UoEZktHBcalcAHIs3U Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="255836725"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="255836725"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 12:22:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="511496006"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga002.jf.intel.com with SMTP; 11 Mar 2022 12:22:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Mar 2022 22:22:15 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Mar 2022 22:22:15 +0200
Message-Id: <20220311202215.20991-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220311172428.14685-17-ville.syrjala@linux.intel.com>
References: <20220311172428.14685-17-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 16/16] drm/i915: Convert
 fixed_mode/downclock_mode into a list
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

Store the fixed_mode and downclock_mode as a real list,
in preparation for exposing other supported modes as well.

v2: Init the list in intel_sdvo_connector_alloc() too

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_connector.c    |  2 +
 .../drm/i915/display/intel_display_debugfs.c  |  9 +-
 .../drm/i915/display/intel_display_types.h    |  3 +-
 drivers/gpu/drm/i915/display/intel_panel.c    | 82 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  2 +
 5 files changed, 53 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index c65f95a9a1ec..a5f5dd55b0cb 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -54,6 +54,8 @@ int intel_connector_init(struct intel_connector *connector)
 	__drm_atomic_helper_connector_reset(&connector->base,
 					    &conn_state->base);
 
+	INIT_LIST_HEAD(&connector->panel.fixed_modes);
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 35c27d67d584..b3d426cc3266 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -548,12 +548,15 @@ static void intel_encoder_info(struct seq_file *m,
 static void intel_panel_info(struct seq_file *m,
 			     struct intel_connector *connector)
 {
-	const struct drm_display_mode *fixed_mode = connector->panel.fixed_mode;
+	const struct drm_display_mode *fixed_mode;
 
-	if (!fixed_mode)
+	if (list_empty(&connector->panel.fixed_modes))
 		return;
 
-	seq_printf(m, "\tfixed mode: " DRM_MODE_FMT "\n", DRM_MODE_ARG(fixed_mode));
+	seq_puts(m, "\tfixed modes:\n");
+
+	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head)
+		intel_seq_print_mode(m, 2, fixed_mode);
 }
 
 static void intel_hdcp_info(struct seq_file *m,
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e34800ab6924..d84e82f3eab9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -280,8 +280,7 @@ struct intel_panel_bl_funcs {
 };
 
 struct intel_panel {
-	struct drm_display_mode *fixed_mode;
-	struct drm_display_mode *downclock_mode;
+	struct list_head fixed_modes;
 
 	/* backlight */
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 08a0612edd60..2d5c09b1ab72 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -48,59 +48,59 @@ bool intel_panel_use_ssc(struct drm_i915_private *i915)
 const struct drm_display_mode *
 intel_panel_preferred_fixed_mode(struct intel_connector *connector)
 {
-	return connector->panel.fixed_mode;
+	const struct drm_display_mode *fixed_mode;
+
+	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head)
+		return fixed_mode;
+
+	return NULL;
 }
 
 const struct drm_display_mode *
 intel_panel_fixed_mode(struct intel_connector *connector,
 		       const struct drm_display_mode *mode)
 {
-	const struct drm_display_mode *fixed_mode = connector->panel.fixed_mode;
-	const struct drm_display_mode *downclock_mode = connector->panel.downclock_mode;
+	const struct drm_display_mode *fixed_mode, *best_mode = NULL;
+	int vrefresh = drm_mode_vrefresh(mode);
 
-	/* pick the one that is closer in terms of vrefresh */
-	/* FIXME make this a a list of modes so we can have more than two */
-	if (fixed_mode && downclock_mode &&
-	    abs(drm_mode_vrefresh(downclock_mode) - drm_mode_vrefresh(mode)) <
-	    abs(drm_mode_vrefresh(fixed_mode) - drm_mode_vrefresh(mode)))
-		return downclock_mode;
-	else
-		return fixed_mode;
+	/* pick the fixed_mode that is closest in terms of vrefresh */
+	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
+		if (!best_mode ||
+		    abs(drm_mode_vrefresh(fixed_mode) - vrefresh) <
+		    abs(drm_mode_vrefresh(best_mode) - vrefresh))
+			best_mode = fixed_mode;
+	}
+
+	return best_mode;
 }
 
 const struct drm_display_mode *
 intel_panel_downclock_mode(struct intel_connector *connector,
 			   const struct drm_display_mode *adjusted_mode)
 {
-	const struct drm_display_mode *downclock_mode = connector->panel.downclock_mode;
+	const struct drm_display_mode *fixed_mode, *best_mode = NULL;
+	int vrefresh = drm_mode_vrefresh(adjusted_mode);
 
-	if (downclock_mode &&
-	    drm_mode_vrefresh(downclock_mode) < drm_mode_vrefresh(adjusted_mode))
-		return downclock_mode;
-	else
-		return NULL;
+	/* pick the fixed_mode with the lowest refresh rate */
+	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
+		if (drm_mode_vrefresh(fixed_mode) < vrefresh) {
+			vrefresh = drm_mode_vrefresh(fixed_mode);
+			best_mode = fixed_mode;
+		}
+	}
+
+	return best_mode;
 }
 
 int intel_panel_get_modes(struct intel_connector *connector)
 {
+	const struct drm_display_mode *fixed_mode;
 	int num_modes = 0;
 
-	if (connector->panel.fixed_mode) {
+	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
 		struct drm_display_mode *mode;
 
-		mode = drm_mode_duplicate(connector->base.dev,
-					  connector->panel.fixed_mode);
-		if (mode) {
-			drm_mode_probed_add(&connector->base, mode);
-			num_modes++;
-		}
-	}
-
-	if (connector->panel.downclock_mode) {
-		struct drm_display_mode *mode;
-
-		mode = drm_mode_duplicate(connector->base.dev,
-					  connector->panel.downclock_mode);
+		mode = drm_mode_duplicate(connector->base.dev, fixed_mode);
 		if (mode) {
 			drm_mode_probed_add(&connector->base, mode);
 			num_modes++;
@@ -114,7 +114,8 @@ enum drrs_type intel_panel_drrs_type(struct intel_connector *connector)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
-	if (!connector->panel.downclock_mode)
+	if (list_empty(&connector->panel.fixed_modes) ||
+	    list_is_singular(&connector->panel.fixed_modes))
 		return DRRS_TYPE_NONE;
 
 	return i915->vbt.drrs_type;
@@ -608,8 +609,10 @@ int intel_panel_init(struct intel_panel *panel,
 {
 	intel_backlight_init_funcs(panel);
 
-	panel->fixed_mode = fixed_mode;
-	panel->downclock_mode = downclock_mode;
+	if (fixed_mode)
+		list_add_tail(&fixed_mode->head, &panel->fixed_modes);
+	if (downclock_mode)
+		list_add_tail(&downclock_mode->head, &panel->fixed_modes);
 
 	return 0;
 }
@@ -618,13 +621,12 @@ void intel_panel_fini(struct intel_panel *panel)
 {
 	struct intel_connector *intel_connector =
 		container_of(panel, struct intel_connector, panel);
+	struct drm_display_mode *fixed_mode, *next;
 
 	intel_backlight_destroy(panel);
 
-	if (panel->fixed_mode)
-		drm_mode_destroy(intel_connector->base.dev, panel->fixed_mode);
-
-	if (panel->downclock_mode)
-		drm_mode_destroy(intel_connector->base.dev,
-				panel->downclock_mode);
+	list_for_each_entry_safe(fixed_mode, next, &panel->fixed_modes, head) {
+		list_del(&fixed_mode->head);
+		drm_mode_destroy(intel_connector->base.dev, fixed_mode);
+	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 6e0a4f48d84d..158e750e5b4d 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2747,6 +2747,8 @@ static struct intel_sdvo_connector *intel_sdvo_connector_alloc(void)
 	__drm_atomic_helper_connector_reset(&sdvo_connector->base.base,
 					    &conn_state->base.base);
 
+	INIT_LIST_HEAD(&sdvo_connector->base.panel.fixed_modes);
+
 	return sdvo_connector;
 }
 
-- 
2.34.1

