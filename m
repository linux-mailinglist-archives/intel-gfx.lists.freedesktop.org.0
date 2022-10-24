Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F06860A9B3
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 15:23:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63DA410E6CE;
	Mon, 24 Oct 2022 13:23:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com
 [IPv6:2607:f8b0:4864:20::529])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A78610E3A9
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 11:36:23 +0000 (UTC)
Received: by mail-pg1-x529.google.com with SMTP id e129so8437896pgc.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 04:36:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=FzYckbVTu84cFuvQYLHBAleZORC/YQBRLh0kCNSwM7o=;
 b=iBmB5k8OKAjf/Xfxgs/hagECXPJWV1vTEOyWaHgXEXGGuvWdPS3TIcFuqN2vljOt/3
 nNxtvkj18I0SllZUWw1t8qqvPmaaAP/Ih4C/z6eW1oEg/YHBwNE/UBrQc6mXtkTAyvYj
 FRBgnjpPaQlPvG+Y3I8gbe9DDVTlZH0hAaXfoiGfSlX3bhk3XTqmJy1s3Zn6Jxm7ASHo
 5qpBijR2lRjm+mURr8kmnNH7SvMPVVmMWVtI9kd+jgDbk3k+yebqsm9WcqXOGkuW8EHo
 ONz+AiYuv6fxJZh8VBFUV+IvV75FH4hihqZWU8KhCWTYY3SL2W8//2gxAwO5cZ7vPvF7
 RcQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=FzYckbVTu84cFuvQYLHBAleZORC/YQBRLh0kCNSwM7o=;
 b=3GM4b+5eTUlEUQrrXpBarbcrMUDRkhfzfuwiBRJcUmfmKzxEirMMQG9qFMOqoNp43U
 ILvHt9zlkXiX6xH5aUOMWbb/0QO0ECMpde4XnwhDVOz46vmIl17aBmfwqWQodpz+Mn+6
 IWSG+pgzYVcOz2GLvSabV/lHBNMXIFdjppKg4atMvJbesqaXSnyJLC41WR8FZpxCijDT
 YqW8+vVNmZTBcW8/aIdxQrOCijyy1SfsWevfbzEI6sQgjatmO+lay+INAC0/X6bkLMxs
 UuzlwQVgZaktt9ot6hfg3362eA5epvyrHKWtHPJiiPquLq5hRdEB63yFcp9fG5hFW2Sn
 AksQ==
X-Gm-Message-State: ACrzQf0Lu5GzyZyPyRfGCABc34hq3UkUBJy+NMreVK9YJaA3ZACZsTnm
 Evz2dAASJCDW38PU7bpvIBxgaw==
X-Google-Smtp-Source: AMsMyM7eq4O5TcwFPN0I0cjYrONCrFe9kecGGggyXcsgPXfbT+UNin9IKo2yeDqy+SAw/EfdKKa+7Q==
X-Received: by 2002:a63:2a86:0:b0:46a:eaba:f1f3 with SMTP id
 q128-20020a632a86000000b0046aeabaf1f3mr27591150pgq.79.1666611383075; 
 Mon, 24 Oct 2022 04:36:23 -0700 (PDT)
Received: from fedora.flets-east.jp ([2400:4050:c360:8200:8ae8:3c4:c0da:7419])
 by smtp.gmail.com with ESMTPSA id
 b8-20020a170903228800b001830ed575c3sm19475075plh.117.2022.10.24.04.36.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Oct 2022 04:36:22 -0700 (PDT)
From: Akihiko Odaki <akihiko.odaki@daynix.com>
To: 
Date: Mon, 24 Oct 2022 20:34:56 +0900
Message-Id: <20221024113513.5205-6-akihiko.odaki@daynix.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221024113513.5205-1-akihiko.odaki@daynix.com>
References: <20221024113513.5205-1-akihiko.odaki@daynix.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 24 Oct 2022 13:23:26 +0000
Subject: [Intel-gfx] [PATCH 05/22] platform/x86: asus-laptop: Use
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
 drivers/platform/x86/asus-laptop.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/platform/x86/asus-laptop.c b/drivers/platform/x86/asus-laptop.c
index 47b2f8bb6fb5..fb7f9e8ca6c4 100644
--- a/drivers/platform/x86/asus-laptop.c
+++ b/drivers/platform/x86/asus-laptop.c
@@ -1854,7 +1854,7 @@ static int asus_acpi_add(struct acpi_device *device)
 	if (result)
 		goto fail_platform;
 
-	if (acpi_video_get_backlight_type() == acpi_backlight_vendor) {
+	if ((acpi_video_get_backlight_types() & ACPI_BACKLIGHT_VENDOR)) {
 		result = asus_backlight_init(asus);
 		if (result)
 			goto fail_backlight;
-- 
2.37.3

