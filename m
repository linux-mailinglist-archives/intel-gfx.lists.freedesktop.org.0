Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 624B259F9C9
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 14:21:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E34F196DD1;
	Wed, 24 Aug 2022 12:18:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 517F591EE8
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 12:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1661343444;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Y5AZRbtcocPlhsNgcUoq7owlZ1xT0HJ1/3Jh71n9qKs=;
 b=PTWEMIKD/UGQSP2y0Q9Y9h3gTWkhgEcwY0PHVGLC7drQL9SaXMnHkQuPVAk7+GH7jEYRLB
 vT807YJJp8VxGqODI03OEHtUxVFox0BrsWbUuxVc2LVTOq0V10zHrCGOIUuu9iX5VWnZYE
 iKeyFDJ+Cf3rrA6o2P2JymJOFjBA2Uo=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-592-7D4FmgYvPuqBJ2Iuv-cMkg-1; Wed, 24 Aug 2022 08:17:21 -0400
X-MC-Unique: 7D4FmgYvPuqBJ2Iuv-cMkg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4D3091C0512B;
 Wed, 24 Aug 2022 12:17:20 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.39.193.103])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 78444C15BB3;
 Wed, 24 Aug 2022 12:17:16 +0000 (UTC)
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
Date: Wed, 24 Aug 2022 14:15:17 +0200
Message-Id: <20220824121523.1291269-26-hdegoede@redhat.com>
In-Reply-To: <20220824121523.1291269-1-hdegoede@redhat.com>
References: <20220824121523.1291269-1-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Subject: [Intel-gfx] [PATCH v4 25/31] platform/x86: asus-wmi: Move
 acpi_backlight=native quirks to ACPI video_detect.c
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

Remove the asus-wmi quirk_entry.wmi_backlight_native quirk-flag, which
called acpi_video_set_dmi_backlight_type(acpi_backlight_native) and replace
it with acpi/video_detect.c video_detect_dmi_table[] entries using the
video_detect_force_native callback.

acpi_video_set_dmi_backlight_type() is troublesome because it may end up
getting called after other backlight drivers have already called
acpi_video_get_backlight_type() resulting in the other drivers
already being registered even though they should not.

Acked-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/acpi/video_detect.c        |  8 ++++++++
 drivers/platform/x86/asus-nb-wmi.c | 14 --------------
 drivers/platform/x86/asus-wmi.c    |  3 ---
 drivers/platform/x86/asus-wmi.h    |  1 -
 4 files changed, 8 insertions(+), 18 deletions(-)

diff --git a/drivers/acpi/video_detect.c b/drivers/acpi/video_detect.c
index d893313fe1a0..a09089e7fada 100644
--- a/drivers/acpi/video_detect.c
+++ b/drivers/acpi/video_detect.c
@@ -564,6 +564,14 @@ static const struct dmi_system_id video_detect_dmi_table[] = {
 		DMI_MATCH(DMI_PRODUCT_NAME, "GA503"),
 		},
 	},
+	{
+	 .callback = video_detect_force_native,
+	 /* Asus UX303UB */
+	 .matches = {
+		DMI_MATCH(DMI_SYS_VENDOR, "ASUSTeK COMPUTER INC."),
+		DMI_MATCH(DMI_PRODUCT_NAME, "UX303UB"),
+		},
+	},
 	/*
 	 * Clevo NL5xRU and NL5xNU/TUXEDO Aura 15 Gen1 and Gen2 have both a
 	 * working native and video interface. However the default detection
diff --git a/drivers/platform/x86/asus-nb-wmi.c b/drivers/platform/x86/asus-nb-wmi.c
index 810a94557a85..bbfed85051ee 100644
--- a/drivers/platform/x86/asus-nb-wmi.c
+++ b/drivers/platform/x86/asus-nb-wmi.c
@@ -97,11 +97,6 @@ static struct quirk_entry quirk_asus_x200ca = {
 	.wmi_backlight_set_devstate = true,
 };
 
-static struct quirk_entry quirk_asus_ux303ub = {
-	.wmi_backlight_native = true,
-	.wmi_backlight_set_devstate = true,
-};
-
 static struct quirk_entry quirk_asus_x550lb = {
 	.wmi_backlight_set_devstate = true,
 	.xusb2pr = 0x01D9,
@@ -372,15 +367,6 @@ static const struct dmi_system_id asus_quirks[] = {
 		},
 		.driver_data = &quirk_asus_x200ca,
 	},
-	{
-		.callback = dmi_matched,
-		.ident = "ASUSTeK COMPUTER INC. UX303UB",
-		.matches = {
-			DMI_MATCH(DMI_SYS_VENDOR, "ASUSTeK COMPUTER INC."),
-			DMI_MATCH(DMI_PRODUCT_NAME, "UX303UB"),
-		},
-		.driver_data = &quirk_asus_ux303ub,
-	},
 	{
 		.callback = dmi_matched,
 		.ident = "ASUSTeK COMPUTER INC. UX330UAK",
diff --git a/drivers/platform/x86/asus-wmi.c b/drivers/platform/x86/asus-wmi.c
index 5cf9d9aff164..434249ac47a5 100644
--- a/drivers/platform/x86/asus-wmi.c
+++ b/drivers/platform/x86/asus-wmi.c
@@ -3634,9 +3634,6 @@ static int asus_wmi_add(struct platform_device *pdev)
 	if (asus->driver->quirks->wmi_force_als_set)
 		asus_wmi_set_als();
 
-	if (asus->driver->quirks->wmi_backlight_native)
-		acpi_video_set_dmi_backlight_type(acpi_backlight_native);
-
 	if (asus->driver->quirks->xusb2pr)
 		asus_wmi_set_xusb2pr(asus);
 
diff --git a/drivers/platform/x86/asus-wmi.h b/drivers/platform/x86/asus-wmi.h
index 30770e411301..f30252efe1db 100644
--- a/drivers/platform/x86/asus-wmi.h
+++ b/drivers/platform/x86/asus-wmi.h
@@ -29,7 +29,6 @@ struct quirk_entry {
 	bool hotplug_wireless;
 	bool scalar_panel_brightness;
 	bool store_backlight_power;
-	bool wmi_backlight_native;
 	bool wmi_backlight_set_devstate;
 	bool wmi_force_als_set;
 	bool use_kbd_dock_devid;
-- 
2.37.2

