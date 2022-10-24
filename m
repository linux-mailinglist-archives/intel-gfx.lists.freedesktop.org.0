Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D8860A9CC
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 15:24:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20A1510E706;
	Mon, 24 Oct 2022 13:23:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com
 [IPv6:2607:f8b0:4864:20::f2c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 908AD10E3FE
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 11:37:58 +0000 (UTC)
Received: by mail-qv1-xf2c.google.com with SMTP id j6so1849208qvn.12
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 04:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jiSdINSVFRYviECfxwDXkA1dnuYyyTGGZx7DJKOoYJs=;
 b=iGtXR8pxJeARtYM65YtWK/rMT1cGkHNCbn5om85YN4tLiOmmeq2/FBvx3pSpv/m1Sr
 Va9GHFdP0chf3eQTUSVDangVFZ/dqZDSfu19hibg9oS2kk/KlgfVT6JFeQ68GHunlhzC
 se1sWoi2z1fTcKdw8FOIcyCxwwKqRbZobTBVM7iGls36LCpZ3DZIX0Tfn7Kb0gOkShSW
 pNe8W3N4rMeldUr8oUAlIfVjHR6cNauEMm0EGdVKOdZI/PPmhyAtOJqcxE6jGzxL2wA6
 7MgNHiUTVhnxOnZse4TBGZUhOboi/UB4XI8imIbLRZSiYGhvYc8SoFkFpIFpQvLUOsh+
 Hp+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=jiSdINSVFRYviECfxwDXkA1dnuYyyTGGZx7DJKOoYJs=;
 b=2Fws0wHCRv83yvOVhT3ZtlkOSX4AKb4MOJ7tUe/VU39Foo+Brq+uKqAt+XZ/PXwTWl
 IWIpqUpQA/oW2T4DfD7nTbBQy1yoCxroQf4JlMW3W7wXaZnnDskPw0Ie2QTnKDyk5tiu
 yQbwkdrahA31Q/tGCFnMfz+37CqfUpNmyne7RVJjvF7BRI3NosXRreldg5CPJczvRDZg
 oBT79oGXDzRfv4o7AHHaNcMACafiHjWRaG1tPNzZCyisHzT6HNxu5WyDr8tQrz4wIEX9
 d8UfJg4ABf5VxD1XKJg1mDjfPbRURSgO2HgRtMeH0YJl3tl7sNvQE6yRp9IJp2bxkYBa
 mhcw==
X-Gm-Message-State: ACrzQf1SzIFnNAjHhWh1zqgNW3V7NEUMAz5J81Ar8FB7P8ZcrOhT+r5f
 CCmJfy0E/Cj2+sZLDtqbFlry69G3KRTEz+ZH
X-Google-Smtp-Source: AMsMyM7XYF0/Ljt4MGKz/TruSqF/tNgb9whiXQXnKj0J8NH8HwiMDdKOolztUet8v/T3k84ugzg6BQ==
X-Received: by 2002:a17:902:7297:b0:17f:93b5:5ecc with SMTP id
 d23-20020a170902729700b0017f93b55eccmr32624764pll.93.1666611467259; 
 Mon, 24 Oct 2022 04:37:47 -0700 (PDT)
Received: from fedora.flets-east.jp ([2400:4050:c360:8200:8ae8:3c4:c0da:7419])
 by smtp.gmail.com with ESMTPSA id
 b8-20020a170903228800b001830ed575c3sm19475075plh.117.2022.10.24.04.37.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Oct 2022 04:37:46 -0700 (PDT)
From: Akihiko Odaki <akihiko.odaki@daynix.com>
To: 
Date: Mon, 24 Oct 2022 20:35:06 +0900
Message-Id: <20221024113513.5205-16-akihiko.odaki@daynix.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221024113513.5205-1-akihiko.odaki@daynix.com>
References: <20221024113513.5205-1-akihiko.odaki@daynix.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 24 Oct 2022 13:23:26 +0000
Subject: [Intel-gfx] [PATCH 15/22] platform/x86: samsung-laptop: Use
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
 drivers/platform/x86/samsung-laptop.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/platform/x86/samsung-laptop.c b/drivers/platform/x86/samsung-laptop.c
index b4aa8ba35d2d..8ba377df73e8 100644
--- a/drivers/platform/x86/samsung-laptop.c
+++ b/drivers/platform/x86/samsung-laptop.c
@@ -1574,7 +1574,7 @@ static int __init samsung_init(void)
 	samsung->handle_backlight = true;
 	samsung->quirks = quirks;
 
-	if (acpi_video_get_backlight_type() != acpi_backlight_vendor)
+	if (!(acpi_video_get_backlight_types() & ACPI_BACKLIGHT_VENDOR))
 		samsung->handle_backlight = false;
 
 	ret = samsung_platform_init(samsung);
-- 
2.37.3

