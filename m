Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59205120467
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 12:52:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4EEA6E4D7;
	Mon, 16 Dec 2019 11:52:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E12166E4D4
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 11:52:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576497137;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KqgwOZxmZWe8Zo2uQOFGhe/lEwldUgiZe7Trgj+Q8Zg=;
 b=VbXnk19YheGWVtu4FwzlzPOMLDH6G/y8voOVRGB58QAavlkw47a0nLQ34x2+Yo7dL+ghIp
 bOt/kqckTEjsCVLaG1B1594r4NBCYiwALgbFoPq6T4d41txiq0tCkIGRlWLR//zOSqKwPc
 ykGUZngNJ4L92kmC1k1wOaiEXssuCyM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-351-ku3NexLAMYe3f_YhMvca-A-1; Mon, 16 Dec 2019 06:52:16 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E5CC5800D48;
 Mon, 16 Dec 2019 11:52:14 +0000 (UTC)
Received: from shalem.localdomain.com (ovpn-116-96.ams2.redhat.com
 [10.36.116.96])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 127C310002A2;
 Mon, 16 Dec 2019 11:52:12 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 16 Dec 2019 12:51:57 +0100
Message-Id: <20191216115158.862404-2-hdegoede@redhat.com>
In-Reply-To: <20191216115158.862404-1-hdegoede@redhat.com>
References: <20191216115158.862404-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: ku3NexLAMYe3f_YhMvca-A-1
X-Mimecast-Spam-Score: 0
Subject: [Intel-gfx] [PATCH resend 1/2] drm/connector: Split out orientation
 quirk detection (v2)
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Derek Basehore <dbasehore@chromium.org>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Derek Basehore <dbasehore@chromium.org>

Not every platform needs quirk detection for panel orientation, so
split the drm_connector_init_panel_orientation_property into two
functions. One for platforms without the need for quirks, and the
other for platforms that need quirks.

Hans de Goede (changes in v2):

Rename the function from drm_connector_init_panel_orientation_property
to drm_connector_set_panel_orientation[_with_quirk] and pass in the
panel-orientation to set.

Beside the rename, also make the function set the passed in value
only once, if the value was set before (to a value other then
DRM_MODE_PANEL_ORIENTATION_UNKNOWN) make any further set calls a no-op.

This change is preparation for allowing the user to override the
panel-orientation for any connector from the kernel commandline.
When the panel-orientation is overridden this way, then we must ignore
the panel-orientation detection done by the driver.

Signed-off-by: Derek Basehore <dbasehore@chromium.org>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/gpu/drm/drm_connector.c         | 74 ++++++++++++++++++-------
 drivers/gpu/drm/i915/display/icl_dsi.c  |  5 +-
 drivers/gpu/drm/i915/display/intel_dp.c |  9 ++-
 drivers/gpu/drm/i915/display/vlv_dsi.c  |  5 +-
 include/drm/drm_connector.h             |  9 ++-
 5 files changed, 71 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index 0965632008a9..f4fa5c59717d 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -1139,7 +1139,8 @@ static const struct drm_prop_enum_list dp_colorspaces[] = {
  *	coordinates, so if userspace rotates the picture to adjust for
  *	the orientation it must also apply the same transformation to the
  *	touchscreen input coordinates. This property is initialized by calling
- *	drm_connector_init_panel_orientation_property().
+ *	drm_connector_set_panel_orientation() or
+ *	drm_connector_set_panel_orientation_with_quirk()
  *
  * scaling mode:
  *	This property defines how a non-native mode is upscaled to the native
@@ -2046,38 +2047,41 @@ void drm_connector_set_vrr_capable_property(
 EXPORT_SYMBOL(drm_connector_set_vrr_capable_property);
 
 /**
- * drm_connector_init_panel_orientation_property -
- *	initialize the connecters panel_orientation property
- * @connector: connector for which to init the panel-orientation property.
- * @width: width in pixels of the panel, used for panel quirk detection
- * @height: height in pixels of the panel, used for panel quirk detection
+ * drm_connector_set_panel_orientation - sets the connecter's panel_orientation
+ * @connector: connector for which to set the panel-orientation property.
+ * @panel_orientation: drm_panel_orientation value to set
+ *
+ * This function sets the connector's panel_orientation and attaches
+ * a "panel orientation" property to the connector.
  *
- * This function should only be called for built-in panels, after setting
- * connector->display_info.panel_orientation first (if known).
+ * Calling this function on a connector where the panel_orientation has
+ * already been set is a no-op (e.g. the orientation has been overridden with
+ * a kernel commandline option).
  *
- * This function will check for platform specific (e.g. DMI based) quirks
- * overriding display_info.panel_orientation first, then if panel_orientation
- * is not DRM_MODE_PANEL_ORIENTATION_UNKNOWN it will attach the
- * "panel orientation" property to the connector.
+ * It is allowed to call this function with a panel_orientation of
+ * DRM_MODE_PANEL_ORIENTATION_UNKNOWN, in which case it is a no-op.
  *
  * Returns:
  * Zero on success, negative errno on failure.
  */
-int drm_connector_init_panel_orientation_property(
-	struct drm_connector *connector, int width, int height)
+int drm_connector_set_panel_orientation(
+	struct drm_connector *connector,
+	enum drm_panel_orientation panel_orientation)
 {
 	struct drm_device *dev = connector->dev;
 	struct drm_display_info *info = &connector->display_info;
 	struct drm_property *prop;
-	int orientation_quirk;
 
-	orientation_quirk = drm_get_panel_orientation_quirk(width, height);
-	if (orientation_quirk != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
-		info->panel_orientation = orientation_quirk;
+	/* Already set? */
+	if (info->panel_orientation != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
+		return 0;
 
-	if (info->panel_orientation == DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
+	/* Don't attach the property if the orientation is unknown */
+	if (panel_orientation == DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
 		return 0;
 
+	info->panel_orientation = panel_orientation;
+
 	prop = dev->mode_config.panel_orientation_property;
 	if (!prop) {
 		prop = drm_property_create_enum(dev, DRM_MODE_PROP_IMMUTABLE,
@@ -2094,7 +2098,37 @@ int drm_connector_init_panel_orientation_property(
 				   info->panel_orientation);
 	return 0;
 }
-EXPORT_SYMBOL(drm_connector_init_panel_orientation_property);
+EXPORT_SYMBOL(drm_connector_set_panel_orientation);
+
+/**
+ * drm_connector_set_panel_orientation_with_quirk -
+ *	set the connecter's panel_orientation after checking for quirks
+ * @connector: connector for which to init the panel-orientation property.
+ * @panel_orientation: drm_panel_orientation value to set
+ * @width: width in pixels of the panel, used for panel quirk detection
+ * @height: height in pixels of the panel, used for panel quirk detection
+ *
+ * Like drm_connector_set_panel_orientation(), but with a check for platform
+ * specific (e.g. DMI based) quirks overriding the passed in panel_orientation.
+ *
+ * Returns:
+ * Zero on success, negative errno on failure.
+ */
+int drm_connector_set_panel_orientation_with_quirk(
+	struct drm_connector *connector,
+	enum drm_panel_orientation panel_orientation,
+	int width, int height)
+{
+	int orientation_quirk;
+
+	orientation_quirk = drm_get_panel_orientation_quirk(width, height);
+	if (orientation_quirk != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
+		panel_orientation = orientation_quirk;
+
+	return drm_connector_set_panel_orientation(connector,
+						   panel_orientation);
+}
+EXPORT_SYMBOL(drm_connector_set_panel_orientation_with_quirk);
 
 int drm_connector_set_obj_prop(struct drm_mode_object *obj,
 				    struct drm_property *property,
diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 6e398c33a524..8cd51cf67d02 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1536,9 +1536,8 @@ static void icl_dsi_add_properties(struct intel_connector *connector)
 
 	connector->base.state->scaling_mode = DRM_MODE_SCALE_ASPECT;
 
-	connector->base.display_info.panel_orientation =
-			intel_dsi_get_panel_orientation(connector);
-	drm_connector_init_panel_orientation_property(&connector->base,
+	drm_connector_set_panel_orientation_with_quirk(&connector->base,
+				intel_dsi_get_panel_orientation(connector),
 				connector->panel.fixed_mode->hdisplay,
 				connector->panel.fixed_mode->vdisplay);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index aa515261cb9f..9f4425f8d0ac 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -7340,9 +7340,12 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	intel_connector->panel.backlight.power = intel_edp_backlight_power;
 	intel_panel_setup_backlight(connector, pipe);
 
-	if (fixed_mode)
-		drm_connector_init_panel_orientation_property(
-			connector, fixed_mode->hdisplay, fixed_mode->vdisplay);
+	if (fixed_mode) {
+		/* We do not know the orientation, but their might be a quirk */
+		drm_connector_set_panel_orientation_with_quirk(connector,
+				DRM_MODE_PANEL_ORIENTATION_UNKNOWN,
+				fixed_mode->hdisplay, fixed_mode->vdisplay);
+	}
 
 	return true;
 
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 50064cde0724..a0de8e70e426 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1632,10 +1632,9 @@ static void vlv_dsi_add_properties(struct intel_connector *connector)
 
 		connector->base.state->scaling_mode = DRM_MODE_SCALE_ASPECT;
 
-		connector->base.display_info.panel_orientation =
-			vlv_dsi_get_panel_orientation(connector);
-		drm_connector_init_panel_orientation_property(
+		drm_connector_set_panel_orientation_with_quirk(
 				&connector->base,
+				vlv_dsi_get_panel_orientation(connector),
 				connector->panel.fixed_mode->hdisplay,
 				connector->panel.fixed_mode->vdisplay);
 	}
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 221910948b37..2113500b4075 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1552,8 +1552,13 @@ void drm_connector_set_link_status_property(struct drm_connector *connector,
 					    uint64_t link_status);
 void drm_connector_set_vrr_capable_property(
 		struct drm_connector *connector, bool capable);
-int drm_connector_init_panel_orientation_property(
-	struct drm_connector *connector, int width, int height);
+int drm_connector_set_panel_orientation(
+	struct drm_connector *connector,
+	enum drm_panel_orientation panel_orientation);
+int drm_connector_set_panel_orientation_with_quirk(
+	struct drm_connector *connector,
+	enum drm_panel_orientation panel_orientation,
+	int width, int height);
 int drm_connector_attach_max_bpc_property(struct drm_connector *connector,
 					  int min, int max);
 
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
