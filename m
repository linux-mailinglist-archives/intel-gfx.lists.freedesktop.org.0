Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6861925A82D
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Sep 2020 11:01:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1FE16E13C;
	Wed,  2 Sep 2020 09:01:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5371D6E13C
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Sep 2020 09:01:46 +0000 (UTC)
IronPort-SDR: SUg2BVYM7hirjqJt7pvbIUOG+3ba5vQ3r9Ilc0k+HKkfO8AS5l5YSxSrIZ59CBimcc40p5ztyA
 qhrVw/vX7MMw==
X-IronPort-AV: E=McAfee;i="6000,8403,9731"; a="157354860"
X-IronPort-AV: E=Sophos;i="5.76,381,1592895600"; d="scan'208";a="157354860"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2020 02:01:41 -0700
IronPort-SDR: CQm1qar+E93CXH7XfBUMeiYP/nX2vX2afYxFcpOu/ZUt4IXwv2DU6MviOjcCspCZPplq3LEDuz
 urdLbdmB+ODA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,381,1592895600"; d="scan'208";a="283668568"
Received: from khajapasha-nuc7i7bnh.iind.intel.com ([10.145.162.107])
 by fmsmga008.fm.intel.com with ESMTP; 02 Sep 2020 02:01:39 -0700
From: Mohammed Khajapasha <mohammed.khajapasha@intel.com>
To: intel-gfx@lists.freedesktop.org,
	kishore.kunche@intel.com
Date: Wed,  2 Sep 2020 14:30:52 +0530
Message-Id: <20200902090052.7649-1-mohammed.khajapasha@intel.com>
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
 drivers/gpu/drm/drm_sysfs.c        | 26 ++++++++++++++++++++++++++
 2 files changed, 56 insertions(+)

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
index f0336c804639..31bd08e1f77d 100644
--- a/drivers/gpu/drm/drm_sysfs.c
+++ b/drivers/gpu/drm/drm_sysfs.c
@@ -344,6 +344,32 @@ void drm_sysfs_hotplug_event(struct drm_device *dev)
 }
 EXPORT_SYMBOL(drm_sysfs_hotplug_event);
 
+/**
+ * drm_sysfs_connector_hotplug_event - generate a connector hotplug uevent
+ * @dev: DRM device
+ *
+ * Send a uevent for the DRM device specified by @dev. Currently we only
+ * set HOTPLUG=1 and connector id in the uevent environment, but this could be
+ * expanded to deal with other types of events.
+ *
+ * Any new uapi should be using the drm_sysfs_connector_status_event()
+ * for uevents on connector status change.
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
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
