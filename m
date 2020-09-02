Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4411225AA60
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Sep 2020 13:32:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6EA76E48B;
	Wed,  2 Sep 2020 11:32:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CABF6E48B
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Sep 2020 11:32:30 +0000 (UTC)
IronPort-SDR: U7a956lxMdAo+ouLURcdMqC2msUUcxcHDhPg5u7qtrnAjPbubkkFAL2RImCDj0uAS40nN7UAT1
 bszI7UAqbdow==
X-IronPort-AV: E=McAfee;i="6000,8403,9731"; a="137415011"
X-IronPort-AV: E=Sophos;i="5.76,381,1592895600"; d="scan'208";a="137415011"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2020 04:32:28 -0700
IronPort-SDR: KJBrqag4hYxfKoSdF7tK5Gd9Y3Ig66I3vo5MdO14bezuUt1zBuiGWvJABPM9LzKL31IxrBZL1N
 rfZkVUcsIoOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,381,1592895600"; d="scan'208";a="334082913"
Received: from khajapasha-nuc7i7bnh.iind.intel.com ([10.145.162.107])
 by fmsmga002.fm.intel.com with ESMTP; 02 Sep 2020 04:32:27 -0700
From: Mohammed Khajapasha <mohammed.khajapasha@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Sep 2020 17:01:39 +0530
Message-Id: <20200902113139.17929-1-mohammed.khajapasha@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] [RFC] drm/kms: Add separate hotplug event call
 for drm connector
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

Add separate hotplug event call for drm connector.
Currently from uevent, user space doesn't know
which connector got disconnected when multiple
connectors are connected to DRM.

Signed-off-by: Mohammed Khajapasha <mohammed.khajapasha@intel.com>
---
 drivers/gpu/drm/drm_probe_helper.c | 30 ++++++++++++++++++++++++++++++
 drivers/gpu/drm/drm_sysfs.c        | 24 ++++++++++++++++++++++++
 include/drm/drm_probe_helper.h     |  2 ++
 include/drm/drm_sysfs.h            |  2 ++
 4 files changed, 58 insertions(+)

diff --git a/drivers/gpu/drm/drm_probe_helper.c b/drivers/gpu/drm/drm_probe_helper.c
index d6017726cc2a..d9a38569cfe1 100644
--- a/drivers/gpu/drm/drm_probe_helper.c
+++ b/drivers/gpu/drm/drm_probe_helper.c
@@ -588,6 +588,36 @@ int drm_helper_probe_single_connector_modes(struct drm_connector *connector,
 }
 EXPORT_SYMBOL(drm_helper_probe_single_connector_modes);
 
+/**
+ * drm_kms_connector_hotplug_helper - fire off KMS connector hotplug event
+ * @dev: drm_device whose connector state changed
+ * @connector: drm_connector which connected/disconnected
+ *
+ * This function fires off the uevent for userspace and also calls the
+ * output_poll_changed function, which is most commonly used to inform the fbdev
+ * emulation code and allow it to update the fbcon output configuration.
+ *
+ * Drivers should call this from their hotplug handling code when a change is
+ * detected. Note that this function does not do any output detection of its
+ * own, like drm_helper_hpd_irq_event() does - this is assumed to be done by the
+ * driver already.
+ *
+ * This function must be called from process context with no mode
+ * setting locks held.
+ *
+ */
+void drm_kms_connector_hotplug_helper(struct drm_device *dev,
+		struct drm_connector *connector)
+{
+	drm_sysfs_connector_hotplug_event(dev, connector);
+
+	if (dev->mode_config.funcs->output_poll_changed)
+		dev->mode_config.funcs->output_poll_changed(dev);
+
+	drm_client_dev_hotplug(dev);
+}
+EXPORT_SYMBOL(drm_kms_connector_hotplug_helper);
+
 /**
  * drm_kms_helper_hotplug_event - fire off KMS hotplug events
  * @dev: drm_device whose connector state changed
diff --git a/drivers/gpu/drm/drm_sysfs.c b/drivers/gpu/drm/drm_sysfs.c
index f0336c804639..10016a61d468 100644
--- a/drivers/gpu/drm/drm_sysfs.c
+++ b/drivers/gpu/drm/drm_sysfs.c
@@ -344,6 +344,30 @@ void drm_sysfs_hotplug_event(struct drm_device *dev)
 }
 EXPORT_SYMBOL(drm_sysfs_hotplug_event);
 
+/**
+ * drm_sysfs_connector_hotplug_event - generate a connector hotplug uevent
+ * @dev: DRM device
+ * @connector: drm_connector which connect/disconnected for hotplug
+ *
+ * Send a uevent for the DRM device specified by @dev. Currently we only
+ * set HOTPLUG=1 and connector id in the uevent environment, but this could be
+ * expanded to deal with other types of events.
+ */
+void drm_sysfs_connector_hotplug_event(struct drm_device *dev,
+		struct drm_connector *connector)
+{
+	char hotplug_str[] = "HOTPLUG=1", conn_id[21];
+	char *envp[] = { hotplug_str, conn_id, NULL };
+
+	snprintf(conn_id, ARRAY_SIZE(conn_id),
+			"CONNECTOR=%u", connector->base.id);
+
+	DRM_DEBUG("generating connector hotplug event\n");
+
+	kobject_uevent_env(&dev->primary->kdev->kobj, KOBJ_CHANGE, envp);
+}
+EXPORT_SYMBOL(drm_sysfs_connector_hotplug_event);
+
 /**
  * drm_sysfs_connector_status_event - generate a DRM uevent for connector
  * property status change
diff --git a/include/drm/drm_probe_helper.h b/include/drm/drm_probe_helper.h
index 8d3ed2834d34..813475adaf01 100644
--- a/include/drm/drm_probe_helper.h
+++ b/include/drm/drm_probe_helper.h
@@ -19,6 +19,8 @@ void drm_kms_helper_poll_init(struct drm_device *dev);
 void drm_kms_helper_poll_fini(struct drm_device *dev);
 bool drm_helper_hpd_irq_event(struct drm_device *dev);
 void drm_kms_helper_hotplug_event(struct drm_device *dev);
+void drm_kms_connector_hotplug_helper(struct drm_device *dev,
+		struct drm_connector *connector);
 
 void drm_kms_helper_poll_disable(struct drm_device *dev);
 void drm_kms_helper_poll_enable(struct drm_device *dev);
diff --git a/include/drm/drm_sysfs.h b/include/drm/drm_sysfs.h
index d454ef617b2c..1be92541df84 100644
--- a/include/drm/drm_sysfs.h
+++ b/include/drm/drm_sysfs.h
@@ -11,6 +11,8 @@ int drm_class_device_register(struct device *dev);
 void drm_class_device_unregister(struct device *dev);
 
 void drm_sysfs_hotplug_event(struct drm_device *dev);
+void drm_sysfs_connector_hotplug_event(struct drm_device *dev,
+		struct drm_connector *connector);
 void drm_sysfs_connector_status_event(struct drm_connector *connector,
 				      struct drm_property *property);
 #endif
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
