Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5BB60A9A1
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 15:23:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D93110E6A1;
	Mon, 24 Oct 2022 13:23:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E772710E3A9
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 11:36:31 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id
 l22-20020a17090a3f1600b00212fbbcfb78so3135043pjc.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 04:36:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gF1+dr0UmSLKg5C/+t+S2XzPWm1zDrjsbQX8+igR+aM=;
 b=TUaer4HdAj1V1/KvIiqeuDXfW6xDWwEMoGs5n4ogyUIGkys9QMhjDQ+bVY0ELC/Zv7
 bWVD8iLyFzbkfcDLx8DVuEuAt6agWLfXnGroETWUA/WUAxEudlmKwVrZP9YEJ60SqpQO
 uEgVtlcZHMdUxEmxBez2o4LXL4xr7pLMNs2npVpTCCV+56sUo0X53wm7kZWeulN1UxgY
 mJboZRkxMVHWvPMsPje9/uDltkPOywQSfMmTJicM2HoXPo4wyYb1scm4m6G+r2+bzHd8
 Sbxk521dG9VmXqWc9Od5r0OBVoSlAsHO2hUBuwny+NvTx3MjpnZ1sqjNKvam6yq5PSwk
 iKPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=gF1+dr0UmSLKg5C/+t+S2XzPWm1zDrjsbQX8+igR+aM=;
 b=SLN8LwSW3ljjZq+TLti7bWMGeYvErHX4kqjYtogSlkSkMmuMGqVC7eE29KSHD0KUqu
 f+R0sB7CxXZvq2yoH10koj9n8t2p8fMce6l1basrsR8tAWFDYVNYHEB0O4C7wg9ViDfw
 R3mMycyedG6a9FGASvfhxUUwka89v4XAhS+wcUmQ5PSM6AFojUqSU2WfiIyYPftttkr/
 QRY1Ab5jIpNyj4Sx6r8EDEztARwpbnqlUNZHnzBt9HbP+Ua04RTZyz4ZiYDQsh6+avzp
 Nf/APpX0remcEAthLz4sYyHTt7GwV1q0Kudox0U/VJXD9orIq1dsQT7pRSSd/tkIZ1qH
 u46w==
X-Gm-Message-State: ACrzQf2gB6WkOsM+spRzLUD5m3EL2BdEL+sukhXETvEhO/et0WXf1vLc
 +1uKvoA5TbIxpfyhYm263gZxjg==
X-Google-Smtp-Source: AMsMyM4Z73PEbmFjby7RYhtWBADc72izt8nSu6NGLKgrb37LXlsr13MXJ1blMej/gKuQKEFJb7DSAA==
X-Received: by 2002:a17:90a:29e4:b0:20a:f9d5:c10e with SMTP id
 h91-20020a17090a29e400b0020af9d5c10emr75009289pjd.132.1666611391524; 
 Mon, 24 Oct 2022 04:36:31 -0700 (PDT)
Received: from fedora.flets-east.jp ([2400:4050:c360:8200:8ae8:3c4:c0da:7419])
 by smtp.gmail.com with ESMTPSA id
 b8-20020a170903228800b001830ed575c3sm19475075plh.117.2022.10.24.04.36.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Oct 2022 04:36:30 -0700 (PDT)
From: Akihiko Odaki <akihiko.odaki@daynix.com>
To: 
Date: Mon, 24 Oct 2022 20:34:57 +0900
Message-Id: <20221024113513.5205-7-akihiko.odaki@daynix.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221024113513.5205-1-akihiko.odaki@daynix.com>
References: <20221024113513.5205-1-akihiko.odaki@daynix.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 24 Oct 2022 13:23:26 +0000
Subject: [Intel-gfx] [PATCH 06/22] platform/x86: asus-wmi: Use
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

acpi_video_get_backlight_type() is now deprecated.

Signed-off-by: Akihiko Odaki <akihiko.odaki@daynix.com>
---
 drivers/platform/x86/asus-wmi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/platform/x86/asus-wmi.c b/drivers/platform/x86/asus-wmi.c
index 6e8e093f96b3..55cca068f783 100644
--- a/drivers/platform/x86/asus-wmi.c
+++ b/drivers/platform/x86/asus-wmi.c
@@ -3259,7 +3259,7 @@ static void asus_wmi_handle_event_code(int code, struct asus_wmi *asus)
 		code = ASUS_WMI_BRN_DOWN;
 
 	if (code == ASUS_WMI_BRN_DOWN || code == ASUS_WMI_BRN_UP) {
-		if (acpi_video_get_backlight_type() == acpi_backlight_vendor) {
+		if ((acpi_video_get_backlight_types() & ACPI_BACKLIGHT_VENDOR)) {
 			asus_wmi_backlight_notify(asus, orig_code);
 			return;
 		}
@@ -3802,7 +3802,7 @@ static int asus_wmi_add(struct platform_device *pdev)
 	if (asus->driver->quirks->xusb2pr)
 		asus_wmi_set_xusb2pr(asus);
 
-	if (acpi_video_get_backlight_type() == acpi_backlight_vendor) {
+	if ((acpi_video_get_backlight_types() & ACPI_BACKLIGHT_VENDOR)) {
 		err = asus_wmi_backlight_init(asus);
 		if (err && err != -ENODEV)
 			goto fail_backlight;
-- 
2.37.3

