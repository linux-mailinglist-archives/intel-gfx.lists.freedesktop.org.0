Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A48C4D678F
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 18:25:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C389410E783;
	Fri, 11 Mar 2022 17:25:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D489310E812
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 17:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647019525; x=1678555525;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=D/K7YKkRrPlhUi8aJVM4YKD41NqJ8jwWLD34RXwjaas=;
 b=DFsi9KSh6GdTrZWB4ib4E6ON33HQixwH2RDbwpDj2jX/dkuv37D/x2Kh
 tx620gm4REjLE7G6qVq+I4ZE/HbsDKtJLVEugsiSVTfmwDFyvSUT4ikRv
 6NqKwUaj8HcYBrh15GQ3I6UNJmBDQ3COUMZwrb+HqtsAYj9mkHrXx/Edm
 rVXF24WFJmoy4m76USFo73iXA0tVRj0yEtQF72P3OrYjxJHexhwDeOR5t
 +SA9y46PQCSh0wPcZcmouM6cqw8iAQxsOJ2RO3WtCl+YGvFVhYTEYZj9i
 KMAcEQZGl+/ATqHpzZto83n3/txE4BCgD6X0Y14tGtGR9eS5lE4zS/ajW w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="280360633"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="280360633"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 09:25:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="511444685"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga002.jf.intel.com with SMTP; 11 Mar 2022 09:25:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Mar 2022 19:25:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Mar 2022 19:24:28 +0200
Message-Id: <20220311172428.14685-17-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
References: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 16/16] drm/i915: Convert
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_connector.c    |  2 +
 .../drm/i915/display/intel_display_debugfs.c  |  9 +-
 .../drm/i915/display/intel_display_types.h    |  3 +-
 drivers/gpu/drm/i915/display/intel_panel.c    | 82 ++++++++++---------
 4 files changed, 51 insertions(+), 45 deletions(-)

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
-- 
2.34.1

