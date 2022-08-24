Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E559F59F967
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 14:17:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 868D612A9E6;
	Wed, 24 Aug 2022 12:16:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C520518A97D
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 12:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1661343380;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Jpflnsf1s2EdItaJ8UhWHU/qVBOIocLHPCDePehRFbU=;
 b=f3p2Dz493MU3FqNZG+jf6GWKvpUKINr/fdfymWjbbcyq+WzQzs/850pwVCiJOsRkKXbwxM
 2F2lVrgmld2Gd5deJjVlFULuB72/HBFED1TVAOMHxN3Iq9Qf92EYw3NoxRmn047onBIkmx
 UkPefjFBDQkVkOwRWhziHncuOPuKi1U=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-403-FxIw9hxcM_eNafT-Lx606Q-1; Wed, 24 Aug 2022 08:16:14 -0400
X-MC-Unique: FxIw9hxcM_eNafT-Lx606Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7CD828032F6;
 Wed, 24 Aug 2022 12:16:13 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.39.193.103])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A7708C15BB3;
 Wed, 24 Aug 2022 12:16:09 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Ben Skeggs <bskeggs@redhat.com>,
	Karol Herbst <kherbst@redhat.com>, Lyude <lyude@redhat.com>,
	Daniel Dadap <ddadap@nvidia.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Pan@freedesktop.org, Xinhui <Xinhui.Pan@amd.com>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	Lukas Wunner <lukas@wunner.de>, Mark Gross <markgross@kernel.org>,
	Andy Shevchenko <andy@kernel.org>
Date: Wed, 24 Aug 2022 14:15:01 +0200
Message-Id: <20220824121523.1291269-10-hdegoede@redhat.com>
In-Reply-To: <20220824121523.1291269-1-hdegoede@redhat.com>
References: <20220824121523.1291269-1-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Subject: [Intel-gfx] [PATCH v4 09/31] ACPI: video: Make backlight class
 device registration a separate step (v2)
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
Cc: linux-acpi@vger.kernel.org, David Airlie <airlied@linux.ie>,
 nouveau@lists.freedesktop.org, intel-gfx <intel-gfx@lists.freedesktop.org>,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 dri-devel@lists.freedesktop.org, platform-driver-x86@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Len Brown <lenb@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On x86/ACPI boards the acpi_video driver will usually initialize before
the kms driver (except i915). This causes /sys/class/backlight/acpi_video0
to show up and then the kms driver registers its own native backlight
device after which the drivers/acpi/video_detect.c code unregisters
the acpi_video0 device (when acpi_video_get_backlight_type()==native).

This means that userspace briefly sees 2 devices and the disappearing of
acpi_video0 after a brief time confuses the systemd backlight level
save/restore code, see e.g.:
https://bbs.archlinux.org/viewtopic.php?id=269920

To fix this make backlight class device registration a separate step
done by a new acpi_video_register_backlight() function. The intend is for
this to be called by the drm/kms driver *after* it is done setting up its
own native backlight device. So that acpi_video_get_backlight_type() knows
if a native backlight will be available or not at acpi_video backlight
registration time, avoiding the add + remove dance.

Note the new acpi_video_register_backlight() function is also called from
a delayed work to ensure that the acpi_video backlight devices does get
registered if necessary even if there is no drm/kms driver or when it is
disabled.

Changes in v2:
- Make register_backlight_delay a module parameter, mainly so that it can
  be disabled by Nvidia binary driver users

Acked-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/acpi/acpi_video.c | 50 ++++++++++++++++++++++++++++++++++++---
 include/acpi/video.h      |  2 ++
 2 files changed, 49 insertions(+), 3 deletions(-)

diff --git a/drivers/acpi/acpi_video.c b/drivers/acpi/acpi_video.c
index 8545bf94866f..09dd86f86cf3 100644
--- a/drivers/acpi/acpi_video.c
+++ b/drivers/acpi/acpi_video.c
@@ -73,6 +73,16 @@ module_param(device_id_scheme, bool, 0444);
 static int only_lcd = -1;
 module_param(only_lcd, int, 0444);
 
+/*
+ * Display probing is known to take up to 5 seconds, so delay the fallback
+ * backlight registration by 5 seconds + 3 seconds for some extra margin.
+ */
+static int register_backlight_delay = 8;
+module_param(register_backlight_delay, int, 0444);
+MODULE_PARM_DESC(register_backlight_delay,
+	"Delay in seconds before doing fallback (non GPU driver triggered) "
+	"backlight registration, set to 0 to disable.");
+
 static bool may_report_brightness_keys;
 static int register_count;
 static DEFINE_MUTEX(register_count_mutex);
@@ -81,6 +91,9 @@ static LIST_HEAD(video_bus_head);
 static int acpi_video_bus_add(struct acpi_device *device);
 static int acpi_video_bus_remove(struct acpi_device *device);
 static void acpi_video_bus_notify(struct acpi_device *device, u32 event);
+static void acpi_video_bus_register_backlight_work(struct work_struct *ignored);
+static DECLARE_DELAYED_WORK(video_bus_register_backlight_work,
+			    acpi_video_bus_register_backlight_work);
 void acpi_video_detect_exit(void);
 
 /*
@@ -1859,8 +1872,6 @@ static int acpi_video_bus_register_backlight(struct acpi_video_bus *video)
 	if (video->backlight_registered)
 		return 0;
 
-	acpi_video_run_bcl_for_osi(video);
-
 	if (acpi_video_get_backlight_type() != acpi_backlight_video)
 		return 0;
 
@@ -2086,7 +2097,11 @@ static int acpi_video_bus_add(struct acpi_device *device)
 	list_add_tail(&video->entry, &video_bus_head);
 	mutex_unlock(&video_list_lock);
 
-	acpi_video_bus_register_backlight(video);
+	/*
+	 * The userspace visible backlight_device gets registered separately
+	 * from acpi_video_register_backlight().
+	 */
+	acpi_video_run_bcl_for_osi(video);
 	acpi_video_bus_add_notify_handler(video);
 
 	return 0;
@@ -2125,6 +2140,11 @@ static int acpi_video_bus_remove(struct acpi_device *device)
 	return 0;
 }
 
+static void acpi_video_bus_register_backlight_work(struct work_struct *ignored)
+{
+	acpi_video_register_backlight();
+}
+
 static int __init is_i740(struct pci_dev *dev)
 {
 	if (dev->device == 0x00D1)
@@ -2235,6 +2255,18 @@ int acpi_video_register(void)
 	 */
 	register_count = 1;
 
+	/*
+	 * acpi_video_bus_add() skips registering the userspace visible
+	 * backlight_device. The intend is for this to be registered by the
+	 * drm/kms driver calling acpi_video_register_backlight() *after* it is
+	 * done setting up its own native backlight device. The delayed work
+	 * ensures that acpi_video_register_backlight() always gets called
+	 * eventually, in case there is no drm/kms driver or it is disabled.
+	 */
+	if (register_backlight_delay)
+		schedule_delayed_work(&video_bus_register_backlight_work,
+				      register_backlight_delay * HZ);
+
 leave:
 	mutex_unlock(&register_count_mutex);
 	return ret;
@@ -2245,6 +2277,7 @@ void acpi_video_unregister(void)
 {
 	mutex_lock(&register_count_mutex);
 	if (register_count) {
+		cancel_delayed_work_sync(&video_bus_register_backlight_work);
 		acpi_bus_unregister_driver(&acpi_video_bus);
 		register_count = 0;
 		may_report_brightness_keys = false;
@@ -2253,6 +2286,17 @@ void acpi_video_unregister(void)
 }
 EXPORT_SYMBOL(acpi_video_unregister);
 
+void acpi_video_register_backlight(void)
+{
+	struct acpi_video_bus *video;
+
+	mutex_lock(&video_list_lock);
+	list_for_each_entry(video, &video_bus_head, entry)
+		acpi_video_bus_register_backlight(video);
+	mutex_unlock(&video_list_lock);
+}
+EXPORT_SYMBOL(acpi_video_register_backlight);
+
 void acpi_video_unregister_backlight(void)
 {
 	struct acpi_video_bus *video;
diff --git a/include/acpi/video.h b/include/acpi/video.h
index 4705e339c252..0625806d3bbd 100644
--- a/include/acpi/video.h
+++ b/include/acpi/video.h
@@ -53,6 +53,7 @@ enum acpi_backlight_type {
 #if IS_ENABLED(CONFIG_ACPI_VIDEO)
 extern int acpi_video_register(void);
 extern void acpi_video_unregister(void);
+extern void acpi_video_register_backlight(void);
 extern int acpi_video_get_edid(struct acpi_device *device, int type,
 			       int device_id, void **edid);
 extern enum acpi_backlight_type acpi_video_get_backlight_type(void);
@@ -69,6 +70,7 @@ extern int acpi_video_get_levels(struct acpi_device *device,
 #else
 static inline int acpi_video_register(void) { return -ENODEV; }
 static inline void acpi_video_unregister(void) { return; }
+static inline void acpi_video_register_backlight(void) { return; }
 static inline int acpi_video_get_edid(struct acpi_device *device, int type,
 				      int device_id, void **edid)
 {
-- 
2.37.2

