Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A601E52A654
	for <lists+intel-gfx@lfdr.de>; Tue, 17 May 2022 17:24:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95BA0112ECF;
	Tue, 17 May 2022 15:24:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4644112EB9
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 May 2022 15:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1652801059;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=y7NMi9rGzupw/DaXCv2ZYgf5sdG15RaSwe0EI6gC8cg=;
 b=Y2TpDigEywTMbIol9SK4gBNl8vyjZTfUi1yTHDDDgSGx3ZOiu+D1hyJK7nDyB7h0Qf6Khr
 KuYyfFJRwTqq7/SflngdcAHglLvLFbGgHMq1DxA3igj8x0Mohb80NwgGa23ZbFDccQpGAs
 PQ2C8AJXbsTM0RXQM9VkS/wCe6LP6tM=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-329-CuiyoXurOeeipAj7rgNWdg-1; Tue, 17 May 2022 11:24:15 -0400
X-MC-Unique: CuiyoXurOeeipAj7rgNWdg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C4A5B1C05EA6;
 Tue, 17 May 2022 15:24:13 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.39.192.162])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 47AB3C15D5C;
 Tue, 17 May 2022 15:24:10 +0000 (UTC)
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
	Mark Gross <markgross@kernel.org>, Andy Shevchenko <andy@kernel.org>
Date: Tue, 17 May 2022 17:23:26 +0200
Message-Id: <20220517152331.16217-10-hdegoede@redhat.com>
In-Reply-To: <20220517152331.16217-1-hdegoede@redhat.com>
References: <20220517152331.16217-1-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Subject: [Intel-gfx] [PATCH 09/14] ACPI: video: Make backlight class device
 registration a separate step
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
 dri-devel@lists.freedesktop.org, platform-driver-x86@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, Len Brown <lenb@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On x86/ACPI boards the acpi_video driver will usually initializing before
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

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/acpi/acpi_video.c | 45 ++++++++++++++++++++++++++++++++++++---
 include/acpi/video.h      |  2 ++
 2 files changed, 44 insertions(+), 3 deletions(-)

diff --git a/drivers/acpi/acpi_video.c b/drivers/acpi/acpi_video.c
index 95d4868f6a8c..79e75dc86243 100644
--- a/drivers/acpi/acpi_video.c
+++ b/drivers/acpi/acpi_video.c
@@ -31,6 +31,12 @@
 #define ACPI_VIDEO_BUS_NAME		"Video Bus"
 #define ACPI_VIDEO_DEVICE_NAME		"Video Device"
 
+/*
+ * Display probing is known to take up to 5 seconds, so delay the fallback
+ * backlight registration by 5 seconds + 3 seconds for some extra margin.
+ */
+#define ACPI_VIDEO_REGISTER_BACKLIGHT_DELAY	(8 * HZ)
+
 #define MAX_NAME_LEN	20
 
 MODULE_AUTHOR("Bruno Ducrot");
@@ -80,6 +86,9 @@ static LIST_HEAD(video_bus_head);
 static int acpi_video_bus_add(struct acpi_device *device);
 static int acpi_video_bus_remove(struct acpi_device *device);
 static void acpi_video_bus_notify(struct acpi_device *device, u32 event);
+static void acpi_video_bus_register_backlight_work(struct work_struct *ignored);
+static DECLARE_DELAYED_WORK(video_bus_register_backlight_work,
+			    acpi_video_bus_register_backlight_work);
 void acpi_video_detect_exit(void);
 
 /*
@@ -1862,8 +1871,6 @@ static int acpi_video_bus_register_backlight(struct acpi_video_bus *video)
 	if (video->backlight_registered)
 		return 0;
 
-	acpi_video_run_bcl_for_osi(video);
-
 	if (acpi_video_get_backlight_type(false) != acpi_backlight_video)
 		return 0;
 
@@ -2089,7 +2096,11 @@ static int acpi_video_bus_add(struct acpi_device *device)
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
@@ -2128,6 +2139,11 @@ static int acpi_video_bus_remove(struct acpi_device *device)
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
@@ -2238,6 +2254,17 @@ int acpi_video_register(void)
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
+	schedule_delayed_work(&video_bus_register_backlight_work,
+			      ACPI_VIDEO_REGISTER_BACKLIGHT_DELAY);
+
 leave:
 	mutex_unlock(&register_count_mutex);
 	return ret;
@@ -2248,6 +2275,7 @@ void acpi_video_unregister(void)
 {
 	mutex_lock(&register_count_mutex);
 	if (register_count) {
+		cancel_delayed_work_sync(&video_bus_register_backlight_work);
 		acpi_bus_unregister_driver(&acpi_video_bus);
 		register_count = 0;
 	}
@@ -2255,6 +2283,17 @@ void acpi_video_unregister(void)
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
index e31afb93379a..b2f7dc1f354a 100644
--- a/include/acpi/video.h
+++ b/include/acpi/video.h
@@ -53,6 +53,7 @@ enum acpi_backlight_type {
 #if IS_ENABLED(CONFIG_ACPI_VIDEO)
 extern int acpi_video_register(void);
 extern void acpi_video_unregister(void);
+extern void acpi_video_register_backlight(void);
 extern int acpi_video_get_edid(struct acpi_device *device, int type,
 			       int device_id, void **edid);
 extern enum acpi_backlight_type acpi_video_get_backlight_type(bool native);
@@ -68,6 +69,7 @@ extern int acpi_video_get_levels(struct acpi_device *device,
 #else
 static inline int acpi_video_register(void) { return -ENODEV; }
 static inline void acpi_video_unregister(void) { return; }
+static inline void acpi_video_register_backlight(void) { return; }
 static inline int acpi_video_get_edid(struct acpi_device *device, int type,
 				      int device_id, void **edid)
 {
-- 
2.36.0

