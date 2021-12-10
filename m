Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5677470BA2
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 21:12:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8AD310E591;
	Fri, 10 Dec 2021 20:11:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com
 [IPv6:2607:f8b0:4864:20::b4a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0375910ECCD
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Dec 2021 20:11:52 +0000 (UTC)
Received: by mail-yb1-xb4a.google.com with SMTP id
 t24-20020a252d18000000b005c225ae9e16so18209286ybt.15
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Dec 2021 12:11:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=+/ewQds5h7OnzHGFTqvUjCDZ2qDircY9tbfntQX0+Ts=;
 b=hWX3J2bH74KIGWu343IZylS3GtFFkrmoj3I7CA1JRMS6GSKnhrqiSgncCKw5XcjCr/
 DBIO80WvoSFM9Nh64rd9BsYNB8KAGe7MuMN+wboKYVh+jlzL9hLy/oGInvf47T8nOiGy
 n04MbddzFHwWOqVerdhi4pYDpW72GiGRrOR2cNOqLNtRASeEgPC4/xLIvOiO0XdK3uaZ
 Dc/KjNGDEmmRlbfadnbbzvjDdH8deoV6GUZF8Ytuy/HCaAtiC49GzOpKT6QYYuiyJQP0
 PcCRkobSdrXbkSyh6Tm1WzielMhUvaA0RjiS9lW7EqsgBQY2eHfwqtALDFWwMjkTL5p2
 /p3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=+/ewQds5h7OnzHGFTqvUjCDZ2qDircY9tbfntQX0+Ts=;
 b=7nI8ARxCZ6jnfmTnqCz29fVFVmVNTWhOG7kdopk3j7HfqNG/3u/ULZ0IcCaS91u8re
 YQKUR/sN2SrYa/4OrHn2upQcNiEx27J7LlvHDduPa5vc1ti2oGrSgRLQmnek17W1CMN9
 QAfOHmdVPkuMaHX0/4VNdjBY3BR36YoTD5mdQG85lSx82noTL28il4XJr28Ms4MHmMyq
 7jCmc+Hv8laTQH+EE0bOF2hQihLLFk1df+XTi3uJzI0wgr/AnACE62H+Tgj1LnM3oXsg
 ecCWW2/35YVaLOtvK/A3Z4WExwdnGKuwotSqMeqFv9Ri36ujfZYLwQMnPUW/l7OR+9Tu
 r7Nw==
X-Gm-Message-State: AOAM532T3/HwPofWGDIGBIZrcuGWKw18aJJwRLcArsBByzJje3IGqU2V
 uwBnKv5kKThYE2KgqI4L0aTBDYColjII
X-Google-Smtp-Source: ABdhPJxV7zNqwEaNp7ZzODRXm2Yf5mL/wh20wmQbqaBDOoP3UvOz2tXBUjNfoKhAxdS123uMWhGuLtKaLqB3
X-Received: from rajat2.mtv.corp.google.com
 ([2620:15c:202:201:9ecf:cc67:420b:ba67])
 (user=rajatja job=sendgmr) by 2002:a05:6902:1005:: with SMTP id
 w5mr16875156ybt.223.1639167111198; Fri, 10 Dec 2021 12:11:51 -0800 (PST)
Date: Fri, 10 Dec 2021 12:11:44 -0800
In-Reply-To: <20211210201144.1975655-1-rajatja@google.com>
Message-Id: <20211210201144.1975655-2-rajatja@google.com>
Mime-Version: 1.0
References: <20211210201144.1975655-1-rajatja@google.com>
X-Mailer: git-send-email 2.34.1.173.g76aa8bc2d0-goog
From: Rajat Jain <rajatja@google.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, Hans de Goede <hdegoede@redhat.com>, 
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Benson Leung <bleung@chromium.org>, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 gwendal@google.com, seanpaul@google.com, marcheau@google.com, 
 intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH 2/2] platform/chrome: Add driver for ChromeOS
 privacy-screen
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
Cc: Rajat Jain <rajatja@google.com>, rajatxjain@gmail.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This adds the ACPI driver for the ChromeOS privacy screen that is
present on some chromeos devices.

Note that I found that ACPI drivers are bound to their devices AFTER
the drm probe. So on chromebooks with privacy-screen, this causes a
probe deferral for i915 driver, which results in a delay of about 250ms
in my experiments. However, per my personal experience, it did not
result in any user perceived delay of splash screen
(https://hansdegoede.livejournal.com/25948.html)

In future if this probe deferral turns out to be an issue, we can
consider turning this ACPI driver into something that is probed earlier
than the drm drivers.

Signed-off-by: Rajat Jain <rajatja@google.com>
---
This patch is rebased on top of linux-next/master

 drivers/platform/chrome/Kconfig              |  10 ++
 drivers/platform/chrome/Makefile             |   1 +
 drivers/platform/chrome/chromeos_priv_scrn.c | 133 +++++++++++++++++++
 3 files changed, 144 insertions(+)
 create mode 100644 drivers/platform/chrome/chromeos_priv_scrn.c

diff --git a/drivers/platform/chrome/Kconfig b/drivers/platform/chrome/Kconfig
index ccc23d8686e8..3f874bbd3d03 100644
--- a/drivers/platform/chrome/Kconfig
+++ b/drivers/platform/chrome/Kconfig
@@ -243,6 +243,16 @@ config CROS_USBPD_NOTIFY
 	  To compile this driver as a module, choose M here: the
 	  module will be called cros_usbpd_notify.
 
+config CHROMEOS_PRIVACY_SCREEN
+	bool "ChromeOS Privacy Screen support"
+	depends on ACPI
+	depends on DRM
+	default n
+	select DRM_PRIVACY_SCREEN
+	help
+	  This driver provides the support needed for the in-built electronic
+	  privacy screen that is present on some ChromeOS devices.
+
 source "drivers/platform/chrome/wilco_ec/Kconfig"
 
 endif # CHROMEOS_PLATFORMS
diff --git a/drivers/platform/chrome/Makefile b/drivers/platform/chrome/Makefile
index f901d2e43166..cfa0bb4e9e34 100644
--- a/drivers/platform/chrome/Makefile
+++ b/drivers/platform/chrome/Makefile
@@ -4,6 +4,7 @@
 CFLAGS_cros_ec_trace.o:=		-I$(src)
 
 obj-$(CONFIG_CHROMEOS_LAPTOP)		+= chromeos_laptop.o
+obj-$(CONFIG_CHROMEOS_PRIVACY_SCREEN)	+= chromeos_priv_scrn.o
 obj-$(CONFIG_CHROMEOS_PSTORE)		+= chromeos_pstore.o
 obj-$(CONFIG_CHROMEOS_TBMC)		+= chromeos_tbmc.o
 obj-$(CONFIG_CROS_EC)			+= cros_ec.o
diff --git a/drivers/platform/chrome/chromeos_priv_scrn.c b/drivers/platform/chrome/chromeos_priv_scrn.c
new file mode 100644
index 000000000000..00536154acd6
--- /dev/null
+++ b/drivers/platform/chrome/chromeos_priv_scrn.c
@@ -0,0 +1,133 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/*
+ *  chromeos_priv_scrn.c - ChromeOS Privacy Screen support
+ *
+ * Copyright (C) 2022 The Chromium OS Authors
+ *
+ */
+
+#include <linux/acpi.h>
+#include <drm/drm_privacy_screen_driver.h>
+
+/*
+ * The DSM (Define Specific Method) constants below are the agreed API with
+ * the firmware team, on how to control privacy screen using ACPI methods.
+ */
+#define PRIV_SCRN_DSM_REVID		1	/* DSM version */
+#define PRIV_SCRN_DSM_FN_GET_STATUS	1	/* Get privacy screen status */
+#define PRIV_SCRN_DSM_FN_ENABLE		2	/* Enable privacy screen */
+#define PRIV_SCRN_DSM_FN_DISABLE	3	/* Disable privacy screen */
+
+static const guid_t chromeos_priv_scrn_dsm_guid =
+		    GUID_INIT(0xc7033113, 0x8720, 0x4ceb,
+			      0x90, 0x90, 0x9d, 0x52, 0xb3, 0xe5, 0x2d, 0x73);
+
+static void
+chromeos_priv_scrn_get_hw_state(struct drm_privacy_screen *drm_priv_scrn)
+{
+	union acpi_object *obj;
+	acpi_handle handle;
+	struct device *priv_scrn = drm_priv_scrn->dev.parent;
+
+	if (!priv_scrn)
+		return;
+
+	handle = acpi_device_handle(to_acpi_device(priv_scrn));
+	obj = acpi_evaluate_dsm(handle, &chromeos_priv_scrn_dsm_guid,
+				PRIV_SCRN_DSM_REVID,
+				PRIV_SCRN_DSM_FN_GET_STATUS, NULL);
+	if (!obj) {
+		dev_err(priv_scrn, "_DSM failed to get privacy-screen state\n");
+		return;
+	}
+
+	if (obj->type != ACPI_TYPE_INTEGER)
+		dev_err(priv_scrn, "Bad _DSM to get privacy-screen state\n");
+	else if (obj->integer.value == 1)
+		drm_priv_scrn->hw_state = drm_priv_scrn->sw_state =
+			PRIVACY_SCREEN_ENABLED;
+	else
+		drm_priv_scrn->hw_state = drm_priv_scrn->sw_state =
+			PRIVACY_SCREEN_DISABLED;
+
+	ACPI_FREE(obj);
+}
+
+static int
+chromeos_priv_scrn_set_sw_state(struct drm_privacy_screen *drm_priv_scrn,
+				enum drm_privacy_screen_status state)
+{
+	union acpi_object *obj = NULL;
+	acpi_handle handle;
+	struct device *priv_scrn = drm_priv_scrn->dev.parent;
+
+	if (!priv_scrn)
+		return -ENODEV;
+
+	handle = acpi_device_handle(to_acpi_device(priv_scrn));
+
+	if (state == PRIVACY_SCREEN_DISABLED) {
+		obj = acpi_evaluate_dsm(handle,	&chromeos_priv_scrn_dsm_guid,
+					PRIV_SCRN_DSM_REVID,
+					PRIV_SCRN_DSM_FN_DISABLE, NULL);
+	} else if (state == PRIVACY_SCREEN_ENABLED) {
+		obj = acpi_evaluate_dsm(handle,	&chromeos_priv_scrn_dsm_guid,
+					PRIV_SCRN_DSM_REVID,
+					PRIV_SCRN_DSM_FN_ENABLE, NULL);
+	} else {
+		dev_err(priv_scrn, "Bad attempt to set privacy-screen status\n");
+		return -EINVAL;
+	}
+
+	if (!obj) {
+		dev_err(priv_scrn, "_DSM failed to set privacy-screen state\n");
+		return -EIO;
+	}
+
+	drm_priv_scrn->hw_state = drm_priv_scrn->sw_state = state;
+	ACPI_FREE(obj);
+	return 0;
+}
+
+static const struct drm_privacy_screen_ops chromeos_priv_scrn_ops = {
+	.get_hw_state = chromeos_priv_scrn_get_hw_state,
+	.set_sw_state = chromeos_priv_scrn_set_sw_state,
+};
+
+static int chromeos_priv_scrn_add(struct acpi_device *adev)
+{
+	struct drm_privacy_screen *drm_priv_scrn =
+		drm_privacy_screen_register(&adev->dev, &chromeos_priv_scrn_ops);
+
+	if (IS_ERR(drm_priv_scrn)) {
+		dev_err(&adev->dev, "Error registering privacy-screen\n");
+		return PTR_ERR(drm_priv_scrn);
+	}
+
+	dev_info(&adev->dev, " registered privacy-screen '%s'\n",
+		 dev_name(&drm_priv_scrn->dev));
+
+	return 0;
+}
+
+static const struct acpi_device_id chromeos_priv_scrn_device_ids[] = {
+	{"GOOG0010", 0}, /* Google's electronic privacy screen for eDP-1 */
+	{}
+};
+MODULE_DEVICE_TABLE(acpi, chromeos_priv_scrn_device_ids);
+
+static struct acpi_driver chromeos_priv_scrn_driver = {
+	.name = "chromeos_priv_scrn_drvr",
+	.class = "ChromeOS",
+	.ids = chromeos_priv_scrn_device_ids,
+	.ops = {
+		.add = chromeos_priv_scrn_add,
+	},
+	.owner = THIS_MODULE,
+};
+
+module_acpi_driver(chromeos_priv_scrn_driver);
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("ChromeOS ACPI Privacy Screen driver");
+MODULE_AUTHOR("Rajat Jain <rajatja@google.com>");
-- 
2.34.1.173.g76aa8bc2d0-goog

