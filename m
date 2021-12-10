Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25865470B9D
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 21:11:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 784A810E580;
	Fri, 10 Dec 2021 20:11:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com
 [IPv6:2607:f8b0:4864:20::b49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BAF910E585
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Dec 2021 20:11:49 +0000 (UTC)
Received: by mail-yb1-xb49.google.com with SMTP id
 l75-20020a25254e000000b005f763be2fecso18332155ybl.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Dec 2021 12:11:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=mVZR4NW2NH5z/l+VDAPU353h9uYgJcW0LaZCIEsF1jk=;
 b=LtVI2zYkXnuBq/kjSog3krMAswj0f4DadCb+rkLJKX2utG6x1szOvIP9QzSDgzBIcm
 Ch9DMsrH6Rcsw1hhgTJJvkdAQyS5XdQv5yAOYwWWrno57zfqRVhqezFIG0GpapKcv+1e
 NTyp2pOey8lHPSth8GNQod2Tk228xjt+t/2Q8p9+OXIgFtLmEqL+P1VRGZ30IbGmQed8
 YeYEjX48RhmGDeB5lE3mpZP7hc9Hlr3SQJpYIuDRVe1C/EKfeY/RhQoCaTi3aqBoE/0B
 xXxRXxFjGfEDuaQD1EMT6T83miSczCmaNawkxX78nAA6PshO8FdEzPm3Ldj/2vbIxmbJ
 5C5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=mVZR4NW2NH5z/l+VDAPU353h9uYgJcW0LaZCIEsF1jk=;
 b=cb9JXQGyBt70/zTxYsk15kIrOuLt4rsO6oaWEHbJsJ9DT4kpyDT9VImEVgCp4nWrjF
 UaKl3CGNxckGqc154WfQ2tgfFO7PYwZCL7ZJ1ilSmSIbl6ttsx6k32DqEFBo3cqby0wh
 P5LmTp8wjNUO8szHHm2b1nSFFdYmOnhVMTQodg1ahG84vuGbbu6FZYlROCvZDISt/N1a
 wbpxkry+eSxrAKcSdScfKI9SJhAhHpnIlQIpcZC1Y22vE5YmHE5mxETVKxLi0DzU2PWU
 Ay9MnfrQ65IaMaeCC0grBXaVCn8wd1OLH7xTRPBF7KhYt0Q9xbtWoBuUmuAaYVWy4aDr
 aEuA==
X-Gm-Message-State: AOAM531+BRZ6Y35YhI+43dLvZcQ7p+ejv2Qof8NuREN6kiibYjYhPIbm
 q9zgm+Aj6NuOwK8TxyaN/hvHr8mbCZBe
X-Google-Smtp-Source: ABdhPJz1lgeFMYc85C/POqMgxCQmHqxO2zBUc3vvCO1jWDYUoNFx7IkHZAuGeq1O012657U4w+NRPMLP/hbZ
X-Received: from rajat2.mtv.corp.google.com
 ([2620:15c:202:201:9ecf:cc67:420b:ba67])
 (user=rajatja job=sendgmr) by 2002:a05:6902:114a:: with SMTP id
 p10mr16953372ybu.272.1639167108627; Fri, 10 Dec 2021 12:11:48 -0800 (PST)
Date: Fri, 10 Dec 2021 12:11:43 -0800
Message-Id: <20211210201144.1975655-1-rajatja@google.com>
Mime-Version: 1.0
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
Subject: [Intel-gfx] [PATCH 1/2] drm/privacy_screen_x86: Add entry for
 ChromeOS privacy-screen
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

Add a static entry in the x86 table, to detect and wait for
privacy-screen on some ChromeOS platforms.

Please note that this means that if CONFIG_CHROMEOS_PRIVACY_SCREEN is
enabled, and if "GOOG0010" device is found in ACPI, then the i915 probe
shall return EPROBE_DEFER until a platform driver actually registers the
privacy-screen: https://hansdegoede.livejournal.com/25948.html

Signed-off-by: Rajat Jain <rajatja@google.com>
---
This patch is rebased on top of linux-next/master

 drivers/gpu/drm/drm_privacy_screen_x86.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/drm_privacy_screen_x86.c b/drivers/gpu/drm/drm_privacy_screen_x86.c
index a2cafb294ca6..3728870a98e7 100644
--- a/drivers/gpu/drm/drm_privacy_screen_x86.c
+++ b/drivers/gpu/drm/drm_privacy_screen_x86.c
@@ -45,6 +45,17 @@ static bool __init detect_thinkpad_privacy_screen(void)
 
 	return (output & 0x10000) ? true : false;
 }
+#elif IS_ENABLED(CONFIG_CHROMEOS_PRIVACY_SCREEN)
+
+static bool __init detect_chromeos_privacy_screen(void)
+{
+	if (!acpi_dev_present("GOOG0010", NULL, -1))
+		return false;
+
+	pr_info("%s: Need to wait for ChromeOS privacy-screen", __func__);
+	return true;
+
+}
 #endif
 
 static const struct arch_init_data arch_init_data[] __initconst = {
@@ -57,6 +68,15 @@ static const struct arch_init_data arch_init_data[] __initconst = {
 		},
 		.detect = detect_thinkpad_privacy_screen,
 	},
+#elif IS_ENABLED(CONFIG_CHROMEOS_PRIVACY_SCREEN)
+	{
+		.lookup = {
+			.dev_id = NULL,
+			.con_id = NULL,
+			.provider = "privacy_screen-GOOG0010:00",
+		},
+		.detect = detect_chromeos_privacy_screen,
+	},
 #endif
 };
 
-- 
2.34.1.173.g76aa8bc2d0-goog

