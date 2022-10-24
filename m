Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EBE460A9D0
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 15:24:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AF9810E6FF;
	Mon, 24 Oct 2022 13:23:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09FF310E399
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 11:38:38 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id
 z5-20020a17090a8b8500b00210a3a2364fso8868024pjn.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 04:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=KbqonL6UPx/BgRTH41ccNpqLV1dBbzKless8fMVmEfU=;
 b=MHRUNtmu2bH7itJpyD63dUo0Q4dAeka1jBDdBQwUZ46L2hC+5C3pV19AGUh2yem6BA
 Aox5GrL2l4ZqarXcjL7UuZADrEnI+vX23xzpAk3ap+KEjjko3B1qwsiz3zwNkeq8wHvQ
 fajz9N6SRidlKuqi7F8UUPfGYGUnQLvBa+vPlzN1KGzSeulYFZ+p5TSnOa6m66VtgdXg
 p5QIR3d/Uqoe8wL8tF8u9h5RGFSalS4e8/GHkYA/e++G+454hg6bwulubJihe3MrArBF
 3kAAPdSFP0h1ZDk44C89iP616NgBd/NPxYuDLqwxHKvVPr9IykzR6Ta+FQqWrt7TEJuf
 fViA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=KbqonL6UPx/BgRTH41ccNpqLV1dBbzKless8fMVmEfU=;
 b=M+CntsOXRXRdMBZdLrkJB5iWOZKziIpx6TPmJ9YCnd/tzzWlb0tK0WtbkzVNJMOKus
 45/LU6DFoBS3OTjh5iRq1I1WB0nVZzyDp74EmurtjDP1SfapxqtXmsJyMCDk1PfZO3ic
 vTg7kGeUbhurbcLKsvnulOdX4O6sS9CMkb1iFwk102vIQWKz1Pfw1H8J+57GUrIXe70n
 TK5uPxnNDbpp7zk9amkZ0mIbsC/70Pp0AN6dJ6dDI2bQMFNBoxFClRZVpJma8tBv1Qby
 EdChTXiVF5VAWkhdc56xNCVup1Iv3u8THJ82D80dbqLLhgcpp2kr0ai854YiNr0D+jmS
 Y0kQ==
X-Gm-Message-State: ACrzQf05pWplIoM3rRP9DAv2FNb4pgEaPhJoX10r+Hg3hx3xJVq14y4p
 BX22dpQPxVbHZzPEui8mJnqrcw==
X-Google-Smtp-Source: AMsMyM7atKAS6Y/8LFmnWncoMM8zZUNzHVrglSR0fG3EM+hND7a88LYrk4FvnqEjUJwtq1jKX5wlaA==
X-Received: by 2002:a17:902:8e84:b0:178:71f2:113c with SMTP id
 bg4-20020a1709028e8400b0017871f2113cmr32724371plb.79.1666611517605; 
 Mon, 24 Oct 2022 04:38:37 -0700 (PDT)
Received: from fedora.flets-east.jp ([2400:4050:c360:8200:8ae8:3c4:c0da:7419])
 by smtp.gmail.com with ESMTPSA id
 b8-20020a170903228800b001830ed575c3sm19475075plh.117.2022.10.24.04.38.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Oct 2022 04:38:36 -0700 (PDT)
From: Akihiko Odaki <akihiko.odaki@daynix.com>
To: 
Date: Mon, 24 Oct 2022 20:35:12 +0900
Message-Id: <20221024113513.5205-22-akihiko.odaki@daynix.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221024113513.5205-1-akihiko.odaki@daynix.com>
References: <20221024113513.5205-1-akihiko.odaki@daynix.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 24 Oct 2022 13:23:26 +0000
Subject: [Intel-gfx] [PATCH 21/22] ACPI: video: Remove
 acpi_video_get_backlight_type()
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
Cc: linux-fbdev@vger.kernel.org, Ike Panhc <ike.pan@canonical.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, dri-devel@lists.freedesktop.org,
 Azael Avalos <coproscefalo@gmail.com>, Mattia Dongili <malattia@linux.it>,
 Daniel Dadap <ddadap@nvidia.com>, Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Akihiko Odaki <akihiko.odaki@daynix.com>, David Airlie <airlied@gmail.com>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Jonathan Woithe <jwoithe@just42.net>, Jonathan Corbet <corbet@lwn.net>, "Lee,
 Chun-Yi" <jlee@suse.com>, Helge Deller <deller@gmx.de>,
 Lee Jones <lee@kernel.org>, Robert Moore <robert.moore@intel.com>,
 linux-acpi@vger.kernel.org, Cezary Jackiewicz <cezary.jackiewicz@gmail.com>,
 Len Brown <lenb@kernel.org>, Kenneth Chan <kenneth.t.chan@gmail.com>,
 Corentin Chary <corentin.chary@gmail.com>, intel-gfx@lists.freedesktop.org,
 acpi4asus-user@lists.sourceforge.net, Maxime Ripard <mripard@kernel.org>,
 Mark Gross <markgross@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 platform-driver-x86@vger.kernel.org, devel@acpica.org,
 ibm-acpi-devel@lists.sourceforge.net, Jingoo Han <jingoohan1@gmail.com>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Thomas Zimmermann <tzimmermann@suse.de>,
 =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

acpi_video_get_backlight_type() is deprecated and now there is
no user of it.

Signed-off-by: Akihiko Odaki <akihiko.odaki@daynix.com>
---
 Documentation/gpu/todo.rst  |  8 +++----
 drivers/acpi/video_detect.c | 46 +++++++++++++++++++------------------
 include/acpi/video.h        | 31 +++++++------------------
 3 files changed, 36 insertions(+), 49 deletions(-)

diff --git a/Documentation/gpu/todo.rst b/Documentation/gpu/todo.rst
index 393d218e4a0c..39e2ff2beb29 100644
--- a/Documentation/gpu/todo.rst
+++ b/Documentation/gpu/todo.rst
@@ -687,7 +687,7 @@ On x86/ACPI devices there can be multiple backlight firmware interfaces:
 register programming by the KMS driver.
 
 To deal with this backlight drivers used on x86/ACPI call
-acpi_video_get_backlight_type() which has heuristics (+quirks) to select
+acpi_video_get_backlight_types() which has heuristics (+quirks) to select
 which backlight interface to use; and backlight drivers which do not match
 the returned type will not register themselves, so that only one backlight
 device gets registered (in a single GPU setup, see below).
@@ -696,7 +696,7 @@ At the moment this more or less assumes that there will only
 be 1 (internal) panel on a system.
 
 On systems with 2 panels this may be a problem, depending on
-what interface acpi_video_get_backlight_type() selects:
+what interface acpi_video_get_backlight_types() selects:
 
 1. native: in this case the KMS driver is expected to know which backlight
    device belongs to which output so everything should just work.
@@ -708,11 +708,11 @@ Things will break on systems with multiple panels where the 2 panels need
 a different type of control. E.g. one panel needs ACPI video backlight control,
 where as the other is using native backlight control. Currently in this case
 only one of the 2 required backlight devices will get registered, based on
-the acpi_video_get_backlight_type() return value.
+the acpi_video_get_backlight_types() return value.
 
 If this (theoretical) case ever shows up, then supporting this will need some
 work. A possible solution here would be to pass a device and connector-name
-to acpi_video_get_backlight_type() so that it can deal with this.
+to acpi_video_get_backlight_types() so that it can deal with this.
 
 Note in a way we already have a case where userspace sees 2 panels,
 in dual GPU laptop setups with a mux. On those systems we may see
diff --git a/drivers/acpi/video_detect.c b/drivers/acpi/video_detect.c
index 9cb12e4f06f7..88462f2fb8cc 100644
--- a/drivers/acpi/video_detect.c
+++ b/drivers/acpi/video_detect.c
@@ -38,19 +38,21 @@
 #include <linux/workqueue.h>
 #include <acpi/video.h>
 
-static enum acpi_backlight_type acpi_backlight_cmdline = acpi_backlight_undef;
-static enum acpi_backlight_type acpi_backlight_dmi = acpi_backlight_undef;
+#define ACPI_BACKLIGHT_UNDEF (-1)
+
+static int acpi_backlight_cmdline = ACPI_BACKLIGHT_UNDEF;
+static int acpi_backlight_dmi = ACPI_BACKLIGHT_UNDEF;
 
 static void acpi_video_parse_cmdline(void)
 {
 	if (!strcmp("vendor", acpi_video_backlight_string))
-		acpi_backlight_cmdline = acpi_backlight_vendor;
+		acpi_backlight_cmdline = ACPI_BACKLIGHT_VENDOR;
 	if (!strcmp("video", acpi_video_backlight_string))
-		acpi_backlight_cmdline = acpi_backlight_video;
+		acpi_backlight_cmdline = ACPI_BACKLIGHT_VIDEO;
 	if (!strcmp("native", acpi_video_backlight_string))
-		acpi_backlight_cmdline = acpi_backlight_native;
+		acpi_backlight_cmdline = ACPI_BACKLIGHT_NATIVE;
 	if (!strcmp("none", acpi_video_backlight_string))
-		acpi_backlight_cmdline = acpi_backlight_none;
+		acpi_backlight_cmdline = 0;
 }
 
 static acpi_status
@@ -109,25 +111,25 @@ static bool nvidia_wmi_ec_supported(void)
  * buggy */
 static int video_detect_force_vendor(const struct dmi_system_id *d)
 {
-	acpi_backlight_dmi = acpi_backlight_vendor;
+	acpi_backlight_dmi = ACPI_BACKLIGHT_VENDOR;
 	return 0;
 }
 
 static int video_detect_force_video(const struct dmi_system_id *d)
 {
-	acpi_backlight_dmi = acpi_backlight_video;
+	acpi_backlight_dmi = ACPI_BACKLIGHT_VIDEO;
 	return 0;
 }
 
 static int video_detect_force_native(const struct dmi_system_id *d)
 {
-	acpi_backlight_dmi = acpi_backlight_native;
+	acpi_backlight_dmi = ACPI_BACKLIGHT_NATIVE;
 	return 0;
 }
 
 static int video_detect_force_none(const struct dmi_system_id *d)
 {
-	acpi_backlight_dmi = acpi_backlight_none;
+	acpi_backlight_dmi = 0;
 	return 0;
 }
 
@@ -672,7 +674,7 @@ static const struct dmi_system_id video_detect_dmi_table[] = {
  * Determine which type of backlight interface to use on this system,
  * First check cmdline, then dmi quirks, then do autodetect.
  */
-static enum acpi_backlight_type __acpi_video_get_backlight_type(bool native)
+static int __acpi_video_get_backlight_types(bool native)
 {
 	static DEFINE_MUTEX(init_mutex);
 	static bool nvidia_wmi_ec_present;
@@ -699,19 +701,19 @@ static enum acpi_backlight_type __acpi_video_get_backlight_type(bool native)
 	 * The below heuristics / detection steps are in order of descending
 	 * presedence. The commandline takes presedence over anything else.
 	 */
-	if (acpi_backlight_cmdline != acpi_backlight_undef)
+	if (acpi_backlight_cmdline != ACPI_BACKLIGHT_UNDEF)
 		return acpi_backlight_cmdline;
 
 	/* DMI quirks override any autodetection. */
-	if (acpi_backlight_dmi != acpi_backlight_undef)
+	if (acpi_backlight_dmi != ACPI_BACKLIGHT_UNDEF)
 		return acpi_backlight_dmi;
 
 	/* Special cases such as nvidia_wmi_ec and apple gmux. */
 	if (nvidia_wmi_ec_present)
-		return acpi_backlight_nvidia_wmi_ec;
+		return ACPI_BACKLIGHT_NVIDIA_WMI_EC;
 
 	if (apple_gmux_present())
-		return acpi_backlight_apple_gmux;
+		return ACPI_BACKLIGHT_APPLE_GMUX;
 
 	/* On systems with ACPI video use either native or ACPI video. */
 	if (video_caps & ACPI_VIDEO_BACKLIGHT) {
@@ -725,23 +727,23 @@ static enum acpi_backlight_type __acpi_video_get_backlight_type(bool native)
 		 * is usually not the best choice.
 		 */
 		if (acpi_osi_is_win8() && native_available)
-			return acpi_backlight_native;
+			return ACPI_BACKLIGHT_NATIVE;
 		else
-			return acpi_backlight_video;
+			return ACPI_BACKLIGHT_VIDEO;
 	}
 
 	/* No ACPI video (old hw), use vendor specific fw methods. */
-	return acpi_backlight_vendor;
+	return ACPI_BACKLIGHT_VENDOR;
 }
 
-enum acpi_backlight_type acpi_video_get_backlight_type(void)
+int acpi_video_get_backlight_types(void)
 {
-	return __acpi_video_get_backlight_type(false);
+	return __acpi_video_get_backlight_types(false);
 }
-EXPORT_SYMBOL(acpi_video_get_backlight_type);
+EXPORT_SYMBOL(acpi_video_get_backlight_types);
 
 bool acpi_video_backlight_use_native(void)
 {
-	return __acpi_video_get_backlight_type(true) == acpi_backlight_native;
+	return !!(__acpi_video_get_backlight_types(true) & ACPI_BACKLIGHT_NATIVE);
 }
 EXPORT_SYMBOL(acpi_video_backlight_use_native);
diff --git a/include/acpi/video.h b/include/acpi/video.h
index a565ba27fae0..5b748fdb606e 100644
--- a/include/acpi/video.h
+++ b/include/acpi/video.h
@@ -43,21 +43,11 @@ struct acpi_device;
 #define ACPI_VIDEO_NOTIFY_ZERO_BRIGHTNESS	0x88
 #define ACPI_VIDEO_NOTIFY_DISPLAY_OFF		0x89
 
-enum acpi_backlight_type {
-	acpi_backlight_undef = -1,
-	acpi_backlight_none = 0,
-	acpi_backlight_video,
-	acpi_backlight_vendor,
-	acpi_backlight_native,
-	acpi_backlight_nvidia_wmi_ec,
-	acpi_backlight_apple_gmux,
-};
-
-#define ACPI_BACKLIGHT_VIDEO BIT(acpi_backlight_video)
-#define ACPI_BACKLIGHT_VENDOR BIT(acpi_backlight_vendor)
-#define ACPI_BACKLIGHT_NATIVE BIT(acpi_backlight_native)
-#define ACPI_BACKLIGHT_NVIDIA_WMI_EC BIT(acpi_backlight_nvidia_wmi_ec)
-#define ACPI_BACKLIGHT_APPLE_GMUX BIT(acpi_backlight_apple_gmux)
+#define ACPI_BACKLIGHT_VIDEO BIT(0)
+#define ACPI_BACKLIGHT_VENDOR BIT(1)
+#define ACPI_BACKLIGHT_NATIVE BIT(2)
+#define ACPI_BACKLIGHT_NVIDIA_WMI_EC BIT(3)
+#define ACPI_BACKLIGHT_APPLE_GMUX BIT(4)
 
 #if IS_ENABLED(CONFIG_ACPI_VIDEO)
 extern int acpi_video_register(void);
@@ -65,7 +55,7 @@ extern void acpi_video_unregister(void);
 extern void acpi_video_register_backlight(void);
 extern int acpi_video_get_edid(struct acpi_device *device, int type,
 			       int device_id, void **edid);
-extern enum acpi_backlight_type acpi_video_get_backlight_type(void);
+extern int acpi_video_get_backlight_types(void);
 extern bool acpi_video_backlight_use_native(void);
 /*
  * Note: The value returned by acpi_video_handles_brightness_key_presses()
@@ -84,9 +74,9 @@ static inline int acpi_video_get_edid(struct acpi_device *device, int type,
 {
 	return -ENODEV;
 }
-static inline enum acpi_backlight_type acpi_video_get_backlight_type(void)
+static inline int acpi_video_get_backlight_types(void)
 {
-	return acpi_backlight_vendor;
+	return ACPI_BACKLIGHT_VENDOR;
 }
 static inline bool acpi_video_backlight_use_native(void)
 {
@@ -104,9 +94,4 @@ static inline int acpi_video_get_levels(struct acpi_device *device,
 }
 #endif
 
-static inline int acpi_video_get_backlight_types(void)
-{
-	return BIT(acpi_video_get_backlight_type());
-}
-
 #endif
-- 
2.37.3

