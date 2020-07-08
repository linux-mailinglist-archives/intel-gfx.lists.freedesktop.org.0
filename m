Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39917218D4D
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 18:43:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6750F6E566;
	Wed,  8 Jul 2020 16:43:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DCE76E560
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 16:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594226631;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ygCdJQaXGhHrFHf5SNyYBzM8OC0LBQtQqQ22sswxAjE=;
 b=dXQBek5zcYsEG0CDP9lPmIPT7uTSWSQlFt8A0DXnaIaNMyp0U6qstE3y1lj4nUH6bgBwH/
 q7Xosu2xf2STQ1F18uG4Dzn5ThRUrNDj0PXuppV1GQxRwn6EJiCxLzAinS818PcfOGEKV/
 zeJdjn7uLFW0nIHukhHotgrXgyq4qMY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-393-3771w9D7OM20flhqJwwe-A-1; Wed, 08 Jul 2020 12:43:49 -0400
X-MC-Unique: 3771w9D7OM20flhqJwwe-A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 40E4E1005510;
 Wed,  8 Jul 2020 16:43:47 +0000 (UTC)
Received: from x1.localdomain.com (ovpn-112-5.ams2.redhat.com [10.36.112.5])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1724A5F7D8;
 Wed,  8 Jul 2020 16:43:43 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Wed,  8 Jul 2020 18:43:28 +0200
Message-Id: <20200708164335.25097-3-hdegoede@redhat.com>
In-Reply-To: <20200708164335.25097-1-hdegoede@redhat.com>
References: <20200708164335.25097-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Intel-gfx] [PATCH 2/9] drm/connector: Add support for
 privacy-screen properties (v4)
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
Cc: Marco Trevisan <marco.trevisan@canonical.com>,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Sebastien Bacher <seb128@ubuntu.com>,
 Mario Limonciello <Mario.limonciello@dell.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Rajat Jain <rajatja@google.com>

Add support for generic electronic privacy screen properties, that
can be added by systems that have an integrated EPS.

Changes in v2 (Hans de Goede)
- Create 2 properties, "privacy-screen sw-state" and
  "privacy-screen hw-state", to deal with devices where the OS might be
  locked out of making state changes
- Write kerneldoc explaining how the 2 properties work together, what
  happens when changes to the state are made outside of the DRM code's
  control, etc.

Changes in v3 (Hans de Goede)
- Some small tweaks to the kerneldoc describing the 2 properties

Changes in v4 (Hans de Goede)
- Change the "Enabled, locked" and "Disabled, locked" hw-state enum value
  names to "Enabled-locked" and "Disabled-locked". The xrandr command shows
  all possible enum values separated by commas in its output, so having a
  comma in an enum name is not a good idea.
- Do not add a privacy_screen_hw_state member to drm_connector_state
  since this property is immutable its value must be directly stored in the
  obj->properties->values array

Signed-off-by: Rajat Jain <rajatja@google.com>
Co-authored-by: Hans de Goede <hdegoede@redhat.com>
Acked-by: Pekka Paalanen <pekka.paalanen@collabora.com>
Reviewed-by: Mario Limonciello <Mario.limonciello@dell.com>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 Documentation/gpu/drm-kms.rst     |   2 +
 drivers/gpu/drm/drm_atomic_uapi.c |   4 ++
 drivers/gpu/drm/drm_connector.c   | 101 ++++++++++++++++++++++++++++++
 include/drm/drm_connector.h       |  44 +++++++++++++
 4 files changed, 151 insertions(+)

diff --git a/Documentation/gpu/drm-kms.rst b/Documentation/gpu/drm-kms.rst
index 397314d08f77..30d5781d99b1 100644
--- a/Documentation/gpu/drm-kms.rst
+++ b/Documentation/gpu/drm-kms.rst
@@ -448,6 +448,8 @@ Property Types and Blob Property Support
 .. kernel-doc:: drivers/gpu/drm/drm_property.c
    :export:
 
+.. _standard_connector_properties:
+
 Standard Connector Properties
 -----------------------------
 
diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atomic_uapi.c
index a1e5e262bae2..2bf2dbe3ea6f 100644
--- a/drivers/gpu/drm/drm_atomic_uapi.c
+++ b/drivers/gpu/drm/drm_atomic_uapi.c
@@ -766,6 +766,8 @@ static int drm_atomic_connector_set_property(struct drm_connector *connector,
 						   fence_ptr);
 	} else if (property == connector->max_bpc_property) {
 		state->max_requested_bpc = val;
+	} else if (property == connector->privacy_screen_sw_state_property) {
+		state->privacy_screen_sw_state = val;
 	} else if (connector->funcs->atomic_set_property) {
 		return connector->funcs->atomic_set_property(connector,
 				state, property, val);
@@ -842,6 +844,8 @@ drm_atomic_connector_get_property(struct drm_connector *connector,
 		*val = 0;
 	} else if (property == connector->max_bpc_property) {
 		*val = state->max_requested_bpc;
+	} else if (property == connector->privacy_screen_sw_state_property) {
+		*val = state->privacy_screen_sw_state;
 	} else if (connector->funcs->atomic_get_property) {
 		return connector->funcs->atomic_get_property(connector,
 				state, property, val);
diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index 543086533850..bce5e0cc5884 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -1191,6 +1191,46 @@ static const struct drm_prop_enum_list dp_colorspaces[] = {
  *	can also expose this property to external outputs, in which case they
  *	must support "None", which should be the default (since external screens
  *	have a built-in scaler).
+ *
+ * privacy-screen sw-state, privacy-screen hw-state:
+ *	These 2 optional properties can be used to query the state of the
+ *	electronic privacy screen that is available on some displays; and in
+ *	some cases also control the state. If a driver implements these
+ *	properties then both properties must be present.
+ *
+ *	"privacy-screen hw-state" is read-only and reflects the actual state
+ *	of the privacy-screen, possible values: "Enabled", "Disabled,
+ *	"Enabled, locked", "Disabled, locked". The locked states indicate
+ *	that the state cannot be changed through the DRM API. E.g. there
+ *	might be devices where the firmware-setup options, or a hardware
+ *	slider-switch, offer always on / off modes.
+ *
+ *	"privacy-screen sw-state" can be set to change the privacy-screen state
+ *	when not locked. In this case the driver must update the hw-state
+ *	property to reflect the new state on completion of the commit of the
+ *	sw-state property. Setting the sw-state property when the hw-state is
+ *	locked must be interpreted by the driver as a request to change the
+ *	state to the set state when the hw-state becomes unlocked. E.g. if
+ *	"privacy-screen hw-state" is "Enabled, locked" and the sw-state
+ *	gets set to "Disabled" followed by the user unlocking the state by
+ *	changing the slider-switch position, then the driver must set the
+ *	state to "Disabled" upon receiving the unlock event.
+ *
+ *	In some cases the privacy-screen's actual state might change outside of
+ *	control of the DRM code. E.g. there might be a firmware handled hotkey
+ *	which toggles the actual state, or the actual state might be changed
+ *	through another userspace API such as writing /proc/acpi/ibm/lcdshadow.
+ *	In this case the driver must update both the hw-state and the sw-state
+ *	to reflect the new value, overwriting any pending state requests in the
+ *	sw-state. Any pending sw-state requests are thus discarded.
+ *
+ *	Note that the ability for the state to change outside of control of
+ *	the DRM master process means that userspace must not cache the value
+ *	of the sw-state. Caching the sw-state value and including it in later
+ *	atomic commits may lead to overriding a state change done through e.g.
+ *	a firmware handled hotkey. Therefor userspace must not include the
+ *	privacy-screen sw-state in an atomic commit unless it wants to change
+ *	its value.
  */
 
 int drm_connector_create_standard_properties(struct drm_device *dev)
@@ -2159,6 +2199,67 @@ int drm_connector_set_panel_orientation_with_quirk(
 }
 EXPORT_SYMBOL(drm_connector_set_panel_orientation_with_quirk);
 
+static const struct drm_prop_enum_list privacy_screen_enum[] = {
+	{ PRIVACY_SCREEN_DISABLED,		"Disabled" },
+	{ PRIVACY_SCREEN_ENABLED,		"Enabled" },
+	{ PRIVACY_SCREEN_DISABLED_LOCKED,	"Disabled-locked" },
+	{ PRIVACY_SCREEN_ENABLED_LOCKED,	"Enabled-locked" },
+};
+
+/**
+ * drm_connector_create_privacy_screen_properties - create the drm connecter's
+ *    privacy-screen properties.
+ * @connector: connector for which to create the privacy-screen properties
+ *
+ * This function creates the "privacy-screen sw-state" and "privacy-screen
+ * hw-state" properties for the connector. They are not attached.
+ */
+void
+drm_connector_create_privacy_screen_properties(struct drm_connector *connector)
+{
+	if (connector->privacy_screen_sw_state_property)
+		return;
+
+	/* Note sw-state only supports the first 2 values of the enum */
+	connector->privacy_screen_sw_state_property =
+		drm_property_create_enum(connector->dev, DRM_MODE_PROP_ENUM,
+				"privacy-screen sw-state",
+				privacy_screen_enum, 2);
+
+	connector->privacy_screen_hw_state_property =
+		drm_property_create_enum(connector->dev,
+				DRM_MODE_PROP_IMMUTABLE | DRM_MODE_PROP_ENUM,
+				"privacy-screen hw-state",
+				privacy_screen_enum,
+				ARRAY_SIZE(privacy_screen_enum));
+}
+EXPORT_SYMBOL(drm_connector_create_privacy_screen_properties);
+
+/**
+ * drm_connector_attach_privacy_screen_properties - attach the drm connecter's
+ *    privacy-screen properties.
+ * @connector: connector on which to attach the privacy-screen properties
+ *
+ * This function attaches the "privacy-screen sw-state" and "privacy-screen
+ * hw-state" properties to the connector. The initial state of both is set
+ * to "Disabled".
+ */
+void
+drm_connector_attach_privacy_screen_properties(struct drm_connector *connector)
+{
+	if (!connector->privacy_screen_sw_state_property)
+		return;
+
+	drm_object_attach_property(&connector->base,
+				   connector->privacy_screen_sw_state_property,
+				   PRIVACY_SCREEN_DISABLED);
+
+	drm_object_attach_property(&connector->base,
+				   connector->privacy_screen_hw_state_property,
+				   PRIVACY_SCREEN_DISABLED);
+}
+EXPORT_SYMBOL(drm_connector_attach_privacy_screen_properties);
+
 int drm_connector_set_obj_prop(struct drm_mode_object *obj,
 				    struct drm_property *property,
 				    uint64_t value)
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index fd543d1db9b2..9c77865e4093 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -271,6 +271,30 @@ struct drm_monitor_range_info {
 	u8 max_vfreq;
 };
 
+/**
+ * enum drm_privacy_screen_status - privacy screen status
+ *
+ * This enum is used to track and control the state of the integrated privacy
+ * screen present on some display panels, via the "privacy-screen sw-state"
+ * and "privacy-screen hw-state" properties. Note the _LOCKED enum values
+ * are only valid for the "privacy-screen hw-state" property.
+ *
+ * @PRIVACY_SCREEN_DISABLED:
+ *  The privacy-screen on the panel is disabled
+ * @PRIVACY_SCREEN_ENABLED:
+ *  The privacy-screen on the panel is enabled
+ * @PRIVACY_SCREEN_DISABLED_LOCKED:
+ *  The privacy-screen on the panel is disabled and locked (cannot be changed)
+ * @PRIVACY_SCREEN_ENABLED_LOCKED:
+ *  The privacy-screen on the panel is enabled and locked (cannot be changed)
+ */
+enum drm_privacy_screen_status {
+	PRIVACY_SCREEN_DISABLED = 0,
+	PRIVACY_SCREEN_ENABLED,
+	PRIVACY_SCREEN_DISABLED_LOCKED,
+	PRIVACY_SCREEN_ENABLED_LOCKED,
+};
+
 /*
  * This is a consolidated colorimetry list supported by HDMI and
  * DP protocol standard. The respective connectors will register
@@ -686,6 +710,12 @@ struct drm_connector_state {
 	 */
 	u8 max_bpc;
 
+	/**
+	 * @privacy_screen_sw_state: See :ref:`Standard Connector
+	 * Properties<standard_connector_properties>`
+	 */
+	enum drm_privacy_screen_status privacy_screen_sw_state;
+
 	/**
 	 * @hdr_output_metadata:
 	 * DRM blob property for HDR output metadata
@@ -1285,6 +1315,18 @@ struct drm_connector {
 	 */
 	struct drm_property *max_bpc_property;
 
+	/**
+	 * @privacy_screen_sw_state_property: Optional atomic property for the
+	 * connector to control the integrated privacy screen.
+	 */
+	struct drm_property *privacy_screen_sw_state_property;
+
+	/**
+	 * @privacy_screen_hw_state_property: Optional atomic property for the
+	 * connector to report the actual integrated privacy screen state.
+	 */
+	struct drm_property *privacy_screen_hw_state_property;
+
 #define DRM_CONNECTOR_POLL_HPD (1 << 0)
 #define DRM_CONNECTOR_POLL_CONNECT (1 << 1)
 #define DRM_CONNECTOR_POLL_DISCONNECT (1 << 2)
@@ -1598,6 +1640,8 @@ int drm_connector_set_panel_orientation_with_quirk(
 	int width, int height);
 int drm_connector_attach_max_bpc_property(struct drm_connector *connector,
 					  int min, int max);
+void drm_connector_create_privacy_screen_properties(struct drm_connector *conn);
+void drm_connector_attach_privacy_screen_properties(struct drm_connector *conn);
 
 /**
  * struct drm_tile_group - Tile group metadata
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
