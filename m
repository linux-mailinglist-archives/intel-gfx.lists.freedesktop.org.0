Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0EF060A9C0
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 15:24:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D465510E6EF;
	Mon, 24 Oct 2022 13:23:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com
 [IPv6:2607:f8b0:4864:20::434])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1214510E3AE
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 11:37:56 +0000 (UTC)
Received: by mail-pf1-x434.google.com with SMTP id g16so3287224pfr.12
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 04:37:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=s3OBF2k1WWtiu/9/W0b3fBEExfrwFAb3nrGZKspwFWo=;
 b=ytZxwj2KO7mqmejMHz4K1suZIYKgKIzkLd7EE+hEIaFueculEZeXax0rPFi0rtL4lr
 7+UX9MXWjbBbOQgBjauyeX2QMEOfr0yZCF6Yw3NwAEtLYr/AzMr4Ggz7FIpB/9yGq8Ci
 CeNajiFIEw4FF3iTA4CXFtGn9bA7DoprnQKeIA0r/AGyzUh0lUH+M9A0yNAdx4uOwaCJ
 5pnLw55cfyxjSf2H2FfT7iT6gF3REqCaachB0bZ+Y5p8FvjdHYs2Vj4mZ7V1Pkvhp4jO
 2xvAEzb4JSHAaQiHka7I4JxM52qtVtkqOhQWV7jRFiYQ4mE4otcRDd17QUh9/ZoY/MYV
 r1bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=s3OBF2k1WWtiu/9/W0b3fBEExfrwFAb3nrGZKspwFWo=;
 b=2IIFuQ3MCzViwkikEtaIHtdxlmBfhdMMOMhxh72pyqE/Jw2Ut1M/ONDTGU6AXiFbJV
 yEYO1CGMMJIoil5Z0d+y7xprfjGnpTk3iE9994TXZt3OgbvMFEl4+Vamhc2G6v4w9K0Z
 rw5LiTIIuzEa3IZlaV1yKR+ygy9my5d/2YPAJurUvhz0hzYNFNtuLj5Obf+Dm8UAFtL2
 d+6wcGLCrVbKIFWxjLh3pcRnAf0AWSSLYPDBhUfg4ApDsSes9YRgkG5xw/MsMayJERiM
 sG4YmIKtvzcWpGgLWoVU1MFp8PjMsuU+tbBb/bCWWwJMtc/R5wEeKMFcGPkKlpC8c7oE
 Jalg==
X-Gm-Message-State: ACrzQf2+7VA2BhJVdZBWmjm3JkJTEav9mPMRSpz4yR3dWvdiELSkERSB
 0esvblrzBEjHS78LVnksts+1cQ==
X-Google-Smtp-Source: AMsMyM7gLd2Xh0sfa+tFaHscQUkpHnvkLJ1d0xqmrVl3HqwBIbYxynI67Kp0nGZCTrOWZta1N0QtUA==
X-Received: by 2002:a05:6a00:2288:b0:56b:fe9d:b4b7 with SMTP id
 f8-20020a056a00228800b0056bfe9db4b7mr1191782pfe.79.1666611475639; 
 Mon, 24 Oct 2022 04:37:55 -0700 (PDT)
Received: from fedora.flets-east.jp ([2400:4050:c360:8200:8ae8:3c4:c0da:7419])
 by smtp.gmail.com with ESMTPSA id
 b8-20020a170903228800b001830ed575c3sm19475075plh.117.2022.10.24.04.37.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Oct 2022 04:37:55 -0700 (PDT)
From: Akihiko Odaki <akihiko.odaki@daynix.com>
To: 
Date: Mon, 24 Oct 2022 20:35:07 +0900
Message-Id: <20221024113513.5205-17-akihiko.odaki@daynix.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221024113513.5205-1-akihiko.odaki@daynix.com>
References: <20221024113513.5205-1-akihiko.odaki@daynix.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 24 Oct 2022 13:23:26 +0000
Subject: [Intel-gfx] [PATCH 16/22] platform/x86: sony-laptop: Use
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
 drivers/platform/x86/sony-laptop.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/platform/x86/sony-laptop.c b/drivers/platform/x86/sony-laptop.c
index 765fcaba4d12..987942719ba6 100644
--- a/drivers/platform/x86/sony-laptop.c
+++ b/drivers/platform/x86/sony-laptop.c
@@ -3201,7 +3201,7 @@ static int sony_nc_add(struct acpi_device *device)
 			sony_nc_function_setup(device, sony_pf_device);
 	}
 
-	if (acpi_video_get_backlight_type() == acpi_backlight_vendor)
+	if ((acpi_video_get_backlight_types() & ACPI_BACKLIGHT_VENDOR))
 		sony_nc_backlight_setup();
 
 	/* create sony_pf sysfs attributes related to the SNC device */
-- 
2.37.3

