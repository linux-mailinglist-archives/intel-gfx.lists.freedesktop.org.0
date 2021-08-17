Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8193EF536
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Aug 2021 23:52:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 887786E288;
	Tue, 17 Aug 2021 21:52:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 286346E25B
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Aug 2021 21:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1629237136;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hMIZSKHqnO+ft8SBgSAEFW7BZk/zUj7slzj5966R+M4=;
 b=VV7Xv/y3ATRZcnX03Dti3OEVjO/UDI6Z3q4lK0WfimizQ5FXwrAWMzHZkedELlbFvzs892
 4M5YGPf6vI+8Tv0DTXbV+GZQdfY94ral9+F2agHHvraJ/ZtGHcqpoaHwW7wIKq4YHEJ4kS
 iyTSnD8StPyyH9fxxWqzW/cJTpDt9Rg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-306-DrMZTsi3MY-oWVrINufluw-1; Tue, 17 Aug 2021 17:52:14 -0400
X-MC-Unique: DrMZTsi3MY-oWVrINufluw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B70DD1008060;
 Tue, 17 Aug 2021 21:52:12 +0000 (UTC)
Received: from x1.localdomain (unknown [10.39.192.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D806710013D7;
 Tue, 17 Aug 2021 21:52:09 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Jani Nikula <jani.nikula@linux.intel.com>, Lyude <lyude@redhat.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Imre Deak <imre.deak@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: Hans de Goede <hdegoede@redhat.com>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org, linux-usb@vger.kernel.org
Date: Tue, 17 Aug 2021 23:51:55 +0200
Message-Id: <20210817215201.795062-3-hdegoede@redhat.com>
In-Reply-To: <20210817215201.795062-1-hdegoede@redhat.com>
References: <20210817215201.795062-1-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Subject: [Intel-gfx] [PATCH 2/8] drm/connector: Add a fwnode pointer to
 drm_connector and register with ACPI (v2)
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

Add a fwnode pointer to struct drm_connector and register an acpi_bus_type
for the connectors with the ACPI subsystem (when CONFIG_ACPI is enabled).

The adding of the fwnode pointer allows drivers to associate a fwnode
that represents a connector with that connector.

When the new fwnode pointer points to an ACPI-companion, then the new
acpi_bus_type will cause the ACPI subsys to bind the device instantiated
for the connector with the fwnode by calling acpi_bind_one(). This will
result in a firmware_node symlink under /sys/class/card#-<connecter-name>/
which helps to verify that the fwnode-s and connectors are properly
matched.

Changes in v2:
- Make drm_connector_cleanup() call fwnode_handle_put() on
  connector->fwnode and document this

Co-developed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Signed-off-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Tested-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/gpu/drm/drm_connector.c |  2 ++
 drivers/gpu/drm/drm_sysfs.c     | 37 +++++++++++++++++++++++++++++++++
 include/drm/drm_connector.h     |  8 +++++++
 3 files changed, 47 insertions(+)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index 2ba257b1ae20..3ad359a216ff 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -474,6 +474,8 @@ void drm_connector_cleanup(struct drm_connector *connector)
 	drm_mode_object_unregister(dev, &connector->base);
 	kfree(connector->name);
 	connector->name = NULL;
+	fwnode_handle_put(connector->fwnode);
+	connector->fwnode = NULL;
 	spin_lock_irq(&dev->mode_config.connector_list_lock);
 	list_del(&connector->head);
 	dev->mode_config.num_connector--;
diff --git a/drivers/gpu/drm/drm_sysfs.c b/drivers/gpu/drm/drm_sysfs.c
index f9d92bbb1f98..bf9edce8e2d1 100644
--- a/drivers/gpu/drm/drm_sysfs.c
+++ b/drivers/gpu/drm/drm_sysfs.c
@@ -10,6 +10,7 @@
  * Copyright (c) 2003-2004 IBM Corp.
  */
 
+#include <linux/acpi.h>
 #include <linux/device.h>
 #include <linux/err.h>
 #include <linux/export.h>
@@ -56,6 +57,39 @@ static struct device_type drm_sysfs_device_connector = {
 
 struct class *drm_class;
 
+#ifdef CONFIG_ACPI
+static bool drm_connector_acpi_bus_match(struct device *dev)
+{
+	return dev->type == &drm_sysfs_device_connector;
+}
+
+static struct acpi_device *drm_connector_acpi_find_companion(struct device *dev)
+{
+	struct drm_connector *connector = to_drm_connector(dev);
+
+	return to_acpi_device_node(connector->fwnode);
+}
+
+static struct acpi_bus_type drm_connector_acpi_bus = {
+	.name = "drm_connector",
+	.match = drm_connector_acpi_bus_match,
+	.find_companion = drm_connector_acpi_find_companion,
+};
+
+static void drm_sysfs_acpi_register(void)
+{
+	register_acpi_bus_type(&drm_connector_acpi_bus);
+}
+
+static void drm_sysfs_acpi_unregister(void)
+{
+	unregister_acpi_bus_type(&drm_connector_acpi_bus);
+}
+#else
+static void drm_sysfs_acpi_register(void) { }
+static void drm_sysfs_acpi_unregister(void) { }
+#endif
+
 static char *drm_devnode(struct device *dev, umode_t *mode)
 {
 	return kasprintf(GFP_KERNEL, "dri/%s", dev_name(dev));
@@ -89,6 +123,8 @@ int drm_sysfs_init(void)
 	}
 
 	drm_class->devnode = drm_devnode;
+
+	drm_sysfs_acpi_register();
 	return 0;
 }
 
@@ -101,6 +137,7 @@ void drm_sysfs_destroy(void)
 {
 	if (IS_ERR_OR_NULL(drm_class))
 		return;
+	drm_sysfs_acpi_unregister();
 	class_remove_file(drm_class, &class_attr_version.attr);
 	class_destroy(drm_class);
 	drm_class = NULL;
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 1647960c9e50..69dd488a2154 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1228,6 +1228,14 @@ struct drm_connector {
 	struct device *kdev;
 	/** @attr: sysfs attributes */
 	struct device_attribute *attr;
+	/**
+	 * @fwnode: associated fwnode supplied by platform firmware
+	 *
+	 * Drivers can set this to associate a fwnode with a connector, drivers
+	 * are expected to get a reference on the fwnode when setting this.
+	 * drm_connector_cleanup() will call fwnode_handle_put() on this.
+	 */
+	struct fwnode_handle *fwnode;
 
 	/**
 	 * @head:
-- 
2.31.1

