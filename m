Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B65367463
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Apr 2021 22:48:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE1396E9F8;
	Wed, 21 Apr 2021 20:48:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B8436EA05
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Apr 2021 20:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1619038121;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VuaXmWwkJE/EfAhZHW/f4izimQIZOBZfBYvt3R1s1jQ=;
 b=JF5n/MALmE5m4NdO+4VtfLr1G7S/8eUcCLgM7gWWH2mqrEuVjpQi3P1e+r/9a2lIV3ut79
 N8xHQR516oLKRztHwHv3yB7dsVXoUBxgrzsO52RbXFHeQzOMh+1aQdonYOSKKGQI+fmftD
 aXnwaWeJKTvOT87FiuBhJv0Q8YDeZro=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-339-562PQEEfN9W7v0QuS-VN4w-1; Wed, 21 Apr 2021 16:48:30 -0400
X-MC-Unique: 562PQEEfN9W7v0QuS-VN4w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 063B31020C24;
 Wed, 21 Apr 2021 20:48:28 +0000 (UTC)
Received: from x1.localdomain (ovpn-112-17.ams2.redhat.com [10.36.112.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BAD445D769;
 Wed, 21 Apr 2021 20:48:24 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Rajat Jain <rajatja@google.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Mark Gross <mgross@linux.intel.com>,
 Andy Shevchenko <andy@infradead.org>
Date: Wed, 21 Apr 2021 22:48:00 +0200
Message-Id: <20210421204804.589962-6-hdegoede@redhat.com>
In-Reply-To: <20210421204804.589962-1-hdegoede@redhat.com>
References: <20210421204804.589962-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Subject: [Intel-gfx] [PATCH v2 5/9] drm/connector: Add a drm_connector
 privacy-screen helper functions
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
 intel-gfx <intel-gfx@lists.freedesktop.org>, dri-devel@lists.freedesktop.org,
 platform-driver-x86@vger.kernel.org, Mark Pearson <markpearson@lenovo.com>,
 Mario Limonciello <mario.limonciello@outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add 2 drm_connector privacy-screen helper functions:

1. drm_connector_attach_privacy_screen_provider(), this function creates
and attaches the standard privacy-screen properties and registers a
generic notifier for generating sysfs-connector-status-events on external
changes to the privacy-screen status.

2. drm_connector_update_privacy_screen(), Check if the passed in atomic
state contains a privacy-screen sw_state change for the connector and if
it does, call drm_privacy_screen_set_sw_state() with the new sw_state.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/gpu/drm/drm_connector.c | 113 ++++++++++++++++++++++++++++++++
 include/drm/drm_connector.h     |  12 ++++
 2 files changed, 125 insertions(+)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index ca8a76decd4c..958a332374af 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -20,6 +20,7 @@
  * OF THIS SOFTWARE.
  */
 
+#include <drm/drm_atomic.h>
 #include <drm/drm_connector.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_encoder.h>
@@ -27,6 +28,7 @@
 #include <drm/drm_print.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_file.h>
+#include <drm/drm_privacy_screen_consumer.h>
 #include <drm/drm_sysfs.h>
 
 #include <linux/uaccess.h>
@@ -451,6 +453,11 @@ void drm_connector_cleanup(struct drm_connector *connector)
 		    DRM_CONNECTOR_REGISTERED))
 		drm_connector_unregister(connector);
 
+	if (connector->privacy_screen) {
+		drm_privacy_screen_put(connector->privacy_screen);
+		connector->privacy_screen = NULL;
+	}
+
 	if (connector->tile_group) {
 		drm_mode_put_tile_group(dev, connector->tile_group);
 		connector->tile_group = NULL;
@@ -530,6 +537,10 @@ int drm_connector_register(struct drm_connector *connector)
 	/* Let userspace know we have a new connector */
 	drm_sysfs_hotplug_event(connector->dev);
 
+	if (connector->privacy_screen)
+		drm_privacy_screen_register_notifier(connector->privacy_screen,
+					   &connector->privacy_screen_notifier);
+
 	goto unlock;
 
 err_debugfs:
@@ -558,6 +569,11 @@ void drm_connector_unregister(struct drm_connector *connector)
 		return;
 	}
 
+	if (connector->privacy_screen)
+		drm_privacy_screen_unregister_notifier(
+					connector->privacy_screen,
+					&connector->privacy_screen_notifier);
+
 	if (connector->funcs->early_unregister)
 		connector->funcs->early_unregister(connector);
 
@@ -2353,6 +2369,103 @@ drm_connector_attach_privacy_screen_properties(struct drm_connector *connector)
 }
 EXPORT_SYMBOL(drm_connector_attach_privacy_screen_properties);
 
+static void drm_connector_update_privacy_screen_properties(
+	struct drm_connector *connector)
+{
+	enum drm_privacy_screen_status sw_state, hw_state;
+
+	drm_privacy_screen_get_state(connector->privacy_screen,
+				     &sw_state, &hw_state);
+
+	connector->state->privacy_screen_sw_state = sw_state;
+	drm_object_property_set_value(&connector->base,
+			connector->privacy_screen_hw_state_property, hw_state);
+}
+
+static int drm_connector_privacy_screen_notifier(
+	struct notifier_block *nb, unsigned long action, void *data)
+{
+	struct drm_connector *connector =
+		container_of(nb, struct drm_connector, privacy_screen_notifier);
+	struct drm_device *dev = connector->dev;
+
+	drm_modeset_lock(&dev->mode_config.connection_mutex, NULL);
+	drm_connector_update_privacy_screen_properties(connector);
+	drm_modeset_unlock(&dev->mode_config.connection_mutex);
+
+	drm_sysfs_connector_status_event(connector,
+				connector->privacy_screen_sw_state_property);
+	drm_sysfs_connector_status_event(connector,
+				connector->privacy_screen_hw_state_property);
+
+	return NOTIFY_DONE;
+}
+
+/**
+ * drm_connector_attach_privacy_screen_provider - attach a privacy-screen to
+ *    the connector
+ * @connector: connector to attach the privacy-screen to
+ * @priv: drm_privacy_screen to attach
+ *
+ * Create and attach the standard privacy-screen properties and register
+ * a generic notifier for generating sysfs-connector-status-events
+ * on external changes to the privacy-screen status.
+ * This function takes ownership of the passed in drm_privacy_screen and will
+ * call drm_privacy_screen_put() on it when the connector is destroyed.
+ */
+void drm_connector_attach_privacy_screen_provider(
+	struct drm_connector *connector, struct drm_privacy_screen *priv)
+{
+	connector->privacy_screen = priv;
+	connector->privacy_screen_notifier.notifier_call =
+		drm_connector_privacy_screen_notifier;
+
+	drm_connector_create_privacy_screen_properties(connector);
+	drm_connector_update_privacy_screen_properties(connector);
+	drm_connector_attach_privacy_screen_properties(connector);
+}
+EXPORT_SYMBOL(drm_connector_attach_privacy_screen_provider);
+
+/**
+ * drm_connector_update_privacy_screen - update connector's privacy-screen
+ *    state (if changed)
+ * @connector: connector to update the privacy-screen for
+ * @state: drm_atomic state describing the state change
+ *
+ * This function checks if the passed in connector has a privacy-screen
+ * attached and if it does, it checks if the
+ * drm_connector_state.privacy_screen_sw_state setting has changed.
+ * If both conditions are true it calls drm_privacy_screen_set_sw_state() on
+ * the connector's privacy-screen to update the privacy-screen's state.
+ */
+void drm_connector_update_privacy_screen(struct drm_connector *connector,
+					 struct drm_atomic_state *state)
+{
+	struct drm_connector_state *new_connector_state, *old_connector_state;
+	int ret;
+
+	if (!connector->privacy_screen)
+		return;
+
+	new_connector_state = drm_atomic_get_new_connector_state(state, connector);
+	old_connector_state = drm_atomic_get_old_connector_state(state, connector);
+
+	if (new_connector_state->privacy_screen_sw_state ==
+	    old_connector_state->privacy_screen_sw_state)
+		return;
+
+	ret = drm_privacy_screen_set_sw_state(connector->privacy_screen,
+				new_connector_state->privacy_screen_sw_state);
+	if (ret) {
+		drm_err(connector->dev, "Error updating privacy-screen sw_state\n");
+		return;
+	}
+
+	/* The hw_state property value may have changed, update the props. */
+	drm_connector_update_privacy_screen_properties(connector);
+}
+EXPORT_SYMBOL(drm_connector_update_privacy_screen);
+
 int drm_connector_set_obj_prop(struct drm_mode_object *obj,
 				    struct drm_property *property,
 				    uint64_t value)
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 067bb5b112db..4aece468a2db 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -27,6 +27,7 @@
 #include <linux/llist.h>
 #include <linux/ctype.h>
 #include <linux/hdmi.h>
+#include <linux/notifier.h>
 #include <drm/drm_mode_object.h>
 #include <drm/drm_util.h>
 
@@ -40,6 +41,7 @@ struct drm_encoder;
 struct drm_property;
 struct drm_property_blob;
 struct drm_printer;
+struct drm_privacy_screen;
 struct edid;
 struct i2c_adapter;
 
@@ -1410,6 +1412,12 @@ struct drm_connector {
 	 */
 	struct drm_property *max_bpc_property;
 
+	/** @privacy_screen: drm_privacy_screen for this connector, or NULL. */
+	struct drm_privacy_screen *privacy_screen;
+
+	/** @privacy_screen_notifier: privacy-screen notifier_block */
+	struct notifier_block privacy_screen_notifier;
+
 	/**
 	 * @privacy_screen_sw_state_property: Optional atomic property for the
 	 * connector to control the integrated privacy screen.
@@ -1742,6 +1750,10 @@ int drm_connector_attach_max_bpc_property(struct drm_connector *connector,
 					  int min, int max);
 void drm_connector_create_privacy_screen_properties(struct drm_connector *conn);
 void drm_connector_attach_privacy_screen_properties(struct drm_connector *conn);
+void drm_connector_attach_privacy_screen_provider(
+	struct drm_connector *connector, struct drm_privacy_screen *priv);
+void drm_connector_update_privacy_screen(struct drm_connector *connector,
+					 struct drm_atomic_state *state);
 
 /**
  * struct drm_tile_group - Tile group metadata
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
