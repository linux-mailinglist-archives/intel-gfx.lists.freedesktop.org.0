Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7C960A9C2
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 15:24:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCEB210E6F9;
	Mon, 24 Oct 2022 13:23:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9BA110E399
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 11:35:58 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id
 l22-20020a17090a3f1600b00212fbbcfb78so3133881pjc.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 04:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=XqmnVvhO9UyNXVHf0JsSwhtfQtP7FaZ6t+IS8pLhYe4=;
 b=s196kKLMLpzulXUS4BLxdjP3PZud7xTpKqpKruF8CPkUOnlKaR/90Xeg2YiBo1lxHt
 0phPGBaGv8xL/2sJqtVjolNPplrc2gMArMrd38Fp4QY7w8IhO1gtyxxMyGg93VGpm0MM
 j/H+7JqUU0uyU9EbCNWGW0hSXVYMoeFxaVahwQmC5a0ogDrEldzdfFhw1y5wfPbeoDyv
 hhwAFpQRAr0P5gUGNLn3NAYvFzK96KUpTxDG6A6mcGTvTgwIFrZjd1qq4rg87X1gcrgv
 qVb+qSNOeTlneVvekKPumnA2sWUZNn6pea2DrTamA/nt4dzQ8wvTNCAad1chJdFMPTZm
 71eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=XqmnVvhO9UyNXVHf0JsSwhtfQtP7FaZ6t+IS8pLhYe4=;
 b=JxLVYh/4jqBlKtzk0ONI8one9orY2npdAc4b2RKYmFwbmE/Q3RlPrVhxGEbkrGMDoy
 mdkeydw7kRZCkUtwaTjcft8628KbU2pRdbkvE9aBIN8TsJjEbUhN97IunlFUvV0GH6FQ
 On4oy5/8H9flZDgdU5dR4MGZVbtcTxd1RfOFXn72URcJBmC1XbopG+GtcavwWHpFgNDh
 LfAJV8mPeP1Sj+EjmKQJWB9oOb9gzvPjC6iqB8ipqNx0nN63FhfaIYYqOCdTlZZ0lUWG
 vKwFO7dJOC1VY6vN9YvMsSrVnIWE0GF44sGHGdvKPn9ORrGyOWoMcD43ENtEPYH7INpl
 qpkw==
X-Gm-Message-State: ACrzQf3dRxXwdH41F3ektt+z2MXinyDYa0bvPZqJvJRZAoniOl0SZe3x
 yRKC/Jxk7n1ZpRsFNcsFnO7jgw==
X-Google-Smtp-Source: AMsMyM4bQCnNONbcQRCLJnNp3+V9paAm7JCDcLdkyq7fRJSwz3Z4S1McoGfU9dqTYLitGtEw6cnCGg==
X-Received: by 2002:a17:903:2014:b0:186:8937:28a6 with SMTP id
 s20-20020a170903201400b00186893728a6mr11907681pla.39.1666611357909; 
 Mon, 24 Oct 2022 04:35:57 -0700 (PDT)
Received: from fedora.flets-east.jp ([2400:4050:c360:8200:8ae8:3c4:c0da:7419])
 by smtp.gmail.com with ESMTPSA id
 b8-20020a170903228800b001830ed575c3sm19475075plh.117.2022.10.24.04.35.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Oct 2022 04:35:57 -0700 (PDT)
From: Akihiko Odaki <akihiko.odaki@daynix.com>
To: 
Date: Mon, 24 Oct 2022 20:34:53 +0900
Message-Id: <20221024113513.5205-3-akihiko.odaki@daynix.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221024113513.5205-1-akihiko.odaki@daynix.com>
References: <20221024113513.5205-1-akihiko.odaki@daynix.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 24 Oct 2022 13:23:26 +0000
Subject: [Intel-gfx] [PATCH 02/22] ACPI: video: Introduce
 acpi_video_get_backlight_types()
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

This deprecates acpi_video_get_backlight_type().

Signed-off-by: Akihiko Odaki <akihiko.odaki@daynix.com>
---
 drivers/acpi/acpi_video.c   |  2 +-
 drivers/acpi/video_detect.c |  6 +++---
 include/acpi/video.h        | 12 ++++++++++++
 3 files changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/acpi/acpi_video.c b/drivers/acpi/acpi_video.c
index 32953646caeb..63e41aac71bd 100644
--- a/drivers/acpi/acpi_video.c
+++ b/drivers/acpi/acpi_video.c
@@ -1823,7 +1823,7 @@ static int acpi_video_bus_register_backlight(struct acpi_video_bus *video)
 	if (video->backlight_registered)
 		return 0;
 
-	if (acpi_video_get_backlight_type() != acpi_backlight_video)
+	if (!(acpi_video_get_backlight_types() & ACPI_BACKLIGHT_VIDEO))
 		return 0;
 
 	mutex_lock(&video->device_list_lock);
diff --git a/drivers/acpi/video_detect.c b/drivers/acpi/video_detect.c
index 0d9064a9804c..9cb12e4f06f7 100644
--- a/drivers/acpi/video_detect.c
+++ b/drivers/acpi/video_detect.c
@@ -17,13 +17,13 @@
  * Otherwise vendor specific drivers like thinkpad_acpi, asus-laptop,
  * sony_acpi,... can take care about backlight brightness.
  *
- * Backlight drivers can use acpi_video_get_backlight_type() to determine which
+ * Backlight drivers can use acpi_video_get_backlight_types() to determine which
  * driver should handle the backlight. RAW/GPU-driver backlight drivers must
  * use the acpi_video_backlight_use_native() helper for this.
  *
  * If CONFIG_ACPI_VIDEO is neither set as "compiled in" (y) nor as a module (m)
- * this file will not be compiled and acpi_video_get_backlight_type() will
- * always return acpi_backlight_vendor.
+ * this file will not be compiled and acpi_video_get_backlight_types() will
+ * always return ACPI_BACKLIGHT_VENDOR.
  */
 
 #include <linux/export.h>
diff --git a/include/acpi/video.h b/include/acpi/video.h
index a275c35e5249..a565ba27fae0 100644
--- a/include/acpi/video.h
+++ b/include/acpi/video.h
@@ -2,6 +2,7 @@
 #ifndef __ACPI_VIDEO_H
 #define __ACPI_VIDEO_H
 
+#include <linux/bits.h> /* for BIT */
 #include <linux/errno.h> /* for ENODEV */
 #include <linux/types.h> /* for bool */
 
@@ -52,6 +53,12 @@ enum acpi_backlight_type {
 	acpi_backlight_apple_gmux,
 };
 
+#define ACPI_BACKLIGHT_VIDEO BIT(acpi_backlight_video)
+#define ACPI_BACKLIGHT_VENDOR BIT(acpi_backlight_vendor)
+#define ACPI_BACKLIGHT_NATIVE BIT(acpi_backlight_native)
+#define ACPI_BACKLIGHT_NVIDIA_WMI_EC BIT(acpi_backlight_nvidia_wmi_ec)
+#define ACPI_BACKLIGHT_APPLE_GMUX BIT(acpi_backlight_apple_gmux)
+
 #if IS_ENABLED(CONFIG_ACPI_VIDEO)
 extern int acpi_video_register(void);
 extern void acpi_video_unregister(void);
@@ -97,4 +104,9 @@ static inline int acpi_video_get_levels(struct acpi_device *device,
 }
 #endif
 
+static inline int acpi_video_get_backlight_types(void)
+{
+	return BIT(acpi_video_get_backlight_type());
+}
+
 #endif
-- 
2.37.3

