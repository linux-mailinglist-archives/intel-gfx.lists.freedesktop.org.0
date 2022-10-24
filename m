Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C78960A9BF
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 15:24:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FBE510E6F0;
	Mon, 24 Oct 2022 13:23:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com
 [IPv6:2607:f8b0:4864:20::1035])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E66E10E3DD
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 11:37:39 +0000 (UTC)
Received: by mail-pj1-x1035.google.com with SMTP id b11so1812363pjp.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 04:37:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=H9DD2Qn9ukDVbti7MaHb2ytvRgr63Gh+pODc8Oxcvp0=;
 b=mRQRZRI1N0fXR6ZhdjhBkiy9z0C8EnLK6gYwGYjqDkMwRaxlGNaP5gg/S/OvakJsTG
 j3MIV/2byA9qIHOxO3TCYFuxurjFmMwHfitpAimtA/68MM/VooXLqLsYsaKwrvgYMTyB
 6Z4pVEOBs5IqlX0BIZsa0XK+RYo2qG4L7wS6XkghOIRzy97bYyCuS6T2RVuWBkoNAZsp
 5OAXJzzDB82KI6oAxhG3ADEUNMHcMWzihVTgmK2hw0ruNAkoMfJvZ4SJ61OJTiGkE4ET
 XCl94Jv3FdldMl8SzpJhvBf/CL22EaB8WxpQl53oozj1okCtaLCSvY5Rm5InOnDmci1D
 XpzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=H9DD2Qn9ukDVbti7MaHb2ytvRgr63Gh+pODc8Oxcvp0=;
 b=miNz4TxAW0anNGm+lTxaTq4Ya3HwRhAHjrc/QOZGP3uI7YJkipECuOFXqR7ccz6Qcq
 vLc28H02y+qgGydizcnbvFtFGkUgDQWApHsGhOlY9gDF2644a3XXvlvZIx3mWF+iUU2P
 20rpfyvzrDfj2rObpkY2KETv3ZDHe9h1EUvYK1CzvkvlpiDUDyPUv7iNj39iRrasxuIG
 mXD+0ceH4sgEc1emG7sSBwN4QBXnECUe3by8LuqSgx8GkGDKdTGIB9Bi/y0nJ3z3VL+t
 K5P2ZkupvtE/lSAI8hDPKh2Zb4rbQwd05h4V/8YOMm11BnYZTvaeqQXciqMqZvvkbsyr
 Lpbw==
X-Gm-Message-State: ACrzQf2Pq/jiNInkEnCdbadT5r8RlVDAvy+/D6KhZBBj6iew11dV5Jwn
 N4WV9MkC8JY6fJ0ITBV840CT7w==
X-Google-Smtp-Source: AMsMyM4qEtYfk/brrspCDfsAk/ohN0i2+YSG3igNC8b1bqKv4WrKEdbaz330QILDZfX2MHi6JDfWfw==
X-Received: by 2002:a17:90b:3912:b0:20d:4151:1b65 with SMTP id
 ob18-20020a17090b391200b0020d41511b65mr74871319pjb.233.1666611458874; 
 Mon, 24 Oct 2022 04:37:38 -0700 (PDT)
Received: from fedora.flets-east.jp ([2400:4050:c360:8200:8ae8:3c4:c0da:7419])
 by smtp.gmail.com with ESMTPSA id
 b8-20020a170903228800b001830ed575c3sm19475075plh.117.2022.10.24.04.37.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Oct 2022 04:37:38 -0700 (PDT)
From: Akihiko Odaki <akihiko.odaki@daynix.com>
To: 
Date: Mon, 24 Oct 2022 20:35:05 +0900
Message-Id: <20221024113513.5205-15-akihiko.odaki@daynix.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221024113513.5205-1-akihiko.odaki@daynix.com>
References: <20221024113513.5205-1-akihiko.odaki@daynix.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 24 Oct 2022 13:23:26 +0000
Subject: [Intel-gfx] [PATCH 14/22] platform/x86: panasonic-laptop: Use
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
 drivers/platform/x86/panasonic-laptop.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/platform/x86/panasonic-laptop.c b/drivers/platform/x86/panasonic-laptop.c
index ad3083f9946d..eaf9469fabb3 100644
--- a/drivers/platform/x86/panasonic-laptop.c
+++ b/drivers/platform/x86/panasonic-laptop.c
@@ -999,7 +999,7 @@ static int acpi_pcc_hotkey_add(struct acpi_device *device)
 		goto out_input;
 	}
 
-	if (acpi_video_get_backlight_type() == acpi_backlight_vendor) {
+	if ((acpi_video_get_backlight_types() & ACPI_BACKLIGHT_VENDOR)) {
 		/* initialize backlight */
 		memset(&props, 0, sizeof(struct backlight_properties));
 		props.type = BACKLIGHT_PLATFORM;
-- 
2.37.3

