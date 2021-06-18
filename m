Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5224B3AC6E1
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jun 2021 11:11:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64FD26E9BA;
	Fri, 18 Jun 2021 09:11:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from srv6.fidu.org (srv6.fidu.org [159.69.62.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F38BA6E9BD;
 Fri, 18 Jun 2021 09:11:34 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by srv6.fidu.org (Postfix) with ESMTP id 8D964C800BA;
 Fri, 18 Jun 2021 11:11:33 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at srv6.fidu.org
Received: from srv6.fidu.org ([127.0.0.1])
 by localhost (srv6.fidu.org [127.0.0.1]) (amavisd-new, port 10026)
 with LMTP id 4EeHljhAh0k4; Fri, 18 Jun 2021 11:11:33 +0200 (CEST)
Received: from wsembach-tuxedo.fritz.box
 (p200300e37f3949001760E5710682cA7E.dip0.t-ipconnect.de
 [IPv6:2003:e3:7f39:4900:1760:e571:682:ca7e])
 (Authenticated sender: wse@tuxedocomputers.com)
 by srv6.fidu.org (Postfix) with ESMTPA id 2B03BC800B3;
 Fri, 18 Jun 2021 11:11:33 +0200 (CEST)
From: Werner Sembach <wse@tuxedocomputers.com>
To: harry.wentland@amd.com, sunpeng.li@amd.com, alexander.deucher@amd.com,
 christian.koenig@amd.com, airlied@linux.ie, daniel@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Fri, 18 Jun 2021 11:11:02 +0200
Message-Id: <20210618091116.14428-4-wse@tuxedocomputers.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210618091116.14428-1-wse@tuxedocomputers.com>
References: <20210618091116.14428-1-wse@tuxedocomputers.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 03/17] drm/uAPI: Add "active bpc" as feedback
 channel for "max bpc" drm property
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a new general drm property "active bpc" which can be used by graphic
drivers to report the applied bit depth per pixel back to userspace.

While "max bpc" can be used to change the color depth, there was no way to
check which one actually got used. While in theory the driver chooses the
best/highest color depth within the max bpc setting a user might not be
fully aware what his hardware is or isn't capable off. This is meant as a
quick way to double check the setup.

In the future, automatic color calibration for screens might also depend on
this information being available.

Signed-off-by: Werner Sembach <wse@tuxedocomputers.com>
---
 drivers/gpu/drm/drm_connector.c | 51 +++++++++++++++++++++++++++++++++
 include/drm/drm_connector.h     |  8 ++++++
 2 files changed, 59 insertions(+)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index da39e7ff6965..943f6b61053b 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -1197,6 +1197,14 @@ static const struct drm_prop_enum_list dp_colorspaces[] = {
  *	drm_connector_attach_max_bpc_property() to create and attach the
  *	property to the connector during initialization.
  *
+ * active bpc:
+ *	This read-only range property tells userspace the pixel color bit depth
+ *	actually used by the hardware display engine on "the cable" on a
+ *	connector. The chosen value depends on hardware capabilities, both
+ *	display engine and connected monitor, and the "max bpc" property.
+ *	Drivers shall use drm_connector_attach_active_bpc_property() to install
+ *	this property.
+ *
  * Connectors also have one standardized atomic property:
  *
  * CRTC_ID:
@@ -2152,6 +2160,49 @@ int drm_connector_attach_max_bpc_property(struct drm_connector *connector,
 }
 EXPORT_SYMBOL(drm_connector_attach_max_bpc_property);
 
+/**
+ * drm_connector_attach_active_bpc_property - attach "active bpc" property
+ * @connector: connector to attach active bpc property on.
+ * @min: The minimum bit depth supported by the connector.
+ * @max: The maximum bit depth supported by the connector.
+ *
+ * This is used to check the applied bit depth on a connector.
+ *
+ * Returns:
+ * Zero on success, negative errno on failure.
+ */
+int drm_connector_attach_active_bpc_property(struct drm_connector *connector, int min, int max)
+{
+	struct drm_device *dev = connector->dev;
+	struct drm_property *prop;
+
+	if (!connector->active_bpc_property) {
+		prop = drm_property_create_range(dev, DRM_MODE_PROP_IMMUTABLE, "active bpc",
+						 min, max);
+		if (!prop)
+			return -ENOMEM;
+
+		connector->active_bpc_property = prop;
+		drm_object_attach_property(&connector->base, prop, 0);
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL(drm_connector_attach_active_bpc_property);
+
+/**
+ * drm_connector_set_active_bpc_property - sets the active bits per color property for a connector
+ * @connector: drm connector
+ * @active_bpc: bits per color for the connector currently active on "the cable"
+ *
+ * Should be used by atomic drivers to update the active bits per color over a connector.
+ */
+void drm_connector_set_active_bpc_property(struct drm_connector *connector, int active_bpc)
+{
+	drm_object_property_set_value(&connector->base, connector->active_bpc_property, active_bpc);
+}
+EXPORT_SYMBOL(drm_connector_set_active_bpc_property);
+
 /**
  * drm_connector_attach_hdr_output_metadata_property - attach "HDR_OUTPUT_METADA" property
  * @connector: connector to attach the property on.
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 714d1a01c065..eee86de62a5f 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1380,6 +1380,12 @@ struct drm_connector {
 	 */
 	struct drm_property *max_bpc_property;
 
+	/**
+	 * @active_bpc_property: Default connector property for the active bpc
+	 * to be driven out of the connector.
+	 */
+	struct drm_property *active_bpc_property;
+
 #define DRM_CONNECTOR_POLL_HPD (1 << 0)
 #define DRM_CONNECTOR_POLL_CONNECT (1 << 1)
 #define DRM_CONNECTOR_POLL_DISCONNECT (1 << 2)
@@ -1702,6 +1708,8 @@ int drm_connector_set_panel_orientation_with_quirk(
 	int width, int height);
 int drm_connector_attach_max_bpc_property(struct drm_connector *connector,
 					  int min, int max);
+int drm_connector_attach_active_bpc_property(struct drm_connector *connector, int min, int max);
+void drm_connector_set_active_bpc_property(struct drm_connector *connector, int active_bpc);
 
 /**
  * struct drm_tile_group - Tile group metadata
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
