Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFAF93A1EE3
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 23:23:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 183BF6EB1C;
	Wed,  9 Jun 2021 21:23:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-41104.protonmail.ch (mail-41104.protonmail.ch
 [185.70.41.104])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2101C6EADC
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 21:23:44 +0000 (UTC)
Received: from mail-03.mail-europe.com (mail-0301.mail-europe.com
 [188.165.51.139])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits))
 (No client certificate requested)
 by mail-41104.protonmail.ch (Postfix) with ESMTPS id 4G0g8G49hzz4xn82
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 21:23:42 +0000 (UTC)
Authentication-Results: mail-41104.protonmail.ch;
 dkim=pass (2048-bit key) header.d=emersion.fr header.i=@emersion.fr
 header.b="rX1ijadZ"
Date: Wed, 09 Jun 2021 21:23:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail3; t=1623273816;
 bh=j7yl/H4BsB2mwIG4O6/p7uSwpgKfk2MFhmwLPFq+47s=;
 h=Date:To:From:Cc:Reply-To:Subject:From;
 b=rX1ijadZy8Lww5AY0ExdAaYWP3OQlwJ8dgM2kwx4xRn71DjEA6+a4BJeBjd43W3VK
 qducW8A6a56paBQyyzllWY6rbYXLOzlsEH2OsI/Iak1kMAoy5BUpj9a1dirQTr/JxO
 +L+5CgAFZnMZXnIYQj2OFj44BATx2/bf0vjo1eyOFKDt7eSqIlN1khpte41cFUJROh
 dAsULH3eIQX3ym3QaslsU5MA4HV5c/vwpcbnVJeXRi+tQyAo03/8KaRqMSRF/Xa6x/
 21LSxyPhVls4wCMcLopsAE4gPTF8zcmEEfaU7j8jeU1pyaQtgMu0bnyED286DWsH0L
 WIWed0BYiGULg==
To: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
From: Simon Ser <contact@emersion.fr>
Message-ID: <I7ivMNimkOH0GJ5SVonqiNBfYEunXBeQpK7ehs64Bk@cp4-web-028.plabs.ch>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
 mailout.protonmail.ch
Subject: [Intel-gfx] [PATCH v2 1/7] drm/sysfs: introduce
 drm_sysfs_connector_hotplug_event
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
Reply-To: Simon Ser <contact@emersion.fr>
Cc: pekka.paalanen@collabora.com, michel@daenzer.net, alexander.deucher@amd.com,
 harry.wentland@amd.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This function sends a hotplug uevent with a CONNECTOR property.

Signed-off-by: Simon Ser <contact@emersion.fr>
---
 drivers/gpu/drm/drm_sysfs.c | 25 +++++++++++++++++++++++++
 include/drm/drm_sysfs.h     |  1 +
 2 files changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/drm_sysfs.c b/drivers/gpu/drm/drm_sysfs.c
index 968a9560b4aa..8423e44c3035 100644
--- a/drivers/gpu/drm/drm_sysfs.c
+++ b/drivers/gpu/drm/drm_sysfs.c
@@ -343,6 +343,31 @@ void drm_sysfs_hotplug_event(struct drm_device *dev)
 }
 EXPORT_SYMBOL(drm_sysfs_hotplug_event);
 
+/**
+ * drm_sysfs_connector_hotplug_event - generate a DRM uevent for any connector
+ * change
+ * @connector: connector which has changed
+ *
+ * Send a uevent for the DRM connector specified by @connector. This will send
+ * a uevent with the properties HOTPLUG=1 and CONNECTOR.
+ */
+void drm_sysfs_connector_hotplug_event(struct drm_connector *connector)
+{
+	struct drm_device *dev = connector->dev;
+	char hotplug_str[] = "HOTPLUG=1", conn_id[21];
+	char *envp[] = { hotplug_str, conn_id, NULL };
+
+	snprintf(conn_id, sizeof(conn_id),
+		 "CONNECTOR=%u", connector->base.id);
+
+	drm_dbg_kms(connector->dev,
+		    "[CONNECTOR:%d:%s] generating connector hotplug event\n",
+		    connector->base.id, connector->name);
+
+	kobject_uevent_env(&dev->primary->kdev->kobj, KOBJ_CHANGE, envp);
+}
+EXPORT_SYMBOL(drm_sysfs_connector_hotplug_event);
+
 /**
  * drm_sysfs_connector_status_event - generate a DRM uevent for connector
  * property status change
diff --git a/include/drm/drm_sysfs.h b/include/drm/drm_sysfs.h
index d454ef617b2c..6273cac44e47 100644
--- a/include/drm/drm_sysfs.h
+++ b/include/drm/drm_sysfs.h
@@ -11,6 +11,7 @@ int drm_class_device_register(struct device *dev);
 void drm_class_device_unregister(struct device *dev);
 
 void drm_sysfs_hotplug_event(struct drm_device *dev);
+void drm_sysfs_connector_hotplug_event(struct drm_connector *connector);
 void drm_sysfs_connector_status_event(struct drm_connector *connector,
 				      struct drm_property *property);
 #endif
-- 
2.31.1


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
