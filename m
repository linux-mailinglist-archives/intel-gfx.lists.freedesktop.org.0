Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BD960A9BD
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 15:24:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CD8F10E6EE;
	Mon, 24 Oct 2022 13:23:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CD9210E3A9
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 11:38:21 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id jo13so4603824plb.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 04:38:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=UAzZQL5seIJutOYUjJgcTz5SIcJNiVaULVY/vxMxJ7M=;
 b=bWAkfym/IuAYQQDsk1OCfdE9w9yWPE3crZCufatlU3uyFhSD2FLPPyi4EZX0XKPNNN
 TsT1Mn93d8yM/JN1r6KstPaSr0v2lhHNLAttfYUvsrYDknwH7khxwfUrEhoUBDF6QNvT
 2AoTMSr1l1S7qOR5wF4oY1dCDKpWYBJ8RPjoWCYtuPhEghyQHHePilHd/NADV54vZIGq
 6rdvlz9HJM3z9wu+pJUiXEGORc6v7pwvQYHXmPP9HS48eXejuQAX3z/RDPWeO6o44bSX
 c9msf1NsRp6QE7dLwlbW0UvYtPhluL4+JoPCees4u24dLHSpN6Uh4AbxJOiXkAJfcDlq
 GsGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=UAzZQL5seIJutOYUjJgcTz5SIcJNiVaULVY/vxMxJ7M=;
 b=z3oyUi9eKEM7muI1sUGvKAqMYl/T21bRCtaa1vwOGitaRtwdRIXNHeZ1pO+SulrsTA
 JJ7dEQBHUmIpktfIbybzcWfVbnhltUHTBku+JkiiCYjJUL1XdZSPUGO4Kt8lHzpKylUl
 Rba82ijuj+evauLi2pqXUC0gFbGMVLJwAu+tBVWKFnMkvSH0VZLLIyNq5iTDe1AyFGFC
 BOIB2ZXFVHRJ9sgkz44xuzjK8Trb0/NEHMWIqVCu7shl1vZ6NznX6NuATEpQG/0wHmgw
 rG+GwnTB0zpBYrx/U6lo1NewJgdyay77yc5ClE4MJQ3QolPqxkS+BNi+PlKlE58by4FN
 04NA==
X-Gm-Message-State: ACrzQf0O8q8YaHFWJ3Y5Qz8ou22461LngOxWAOdoef+qGmQJVM6CcKyg
 k96KrkfrM436RciE1gBwdrVC/Q==
X-Google-Smtp-Source: AMsMyM518/+LX9D2Z710rX+ZGWrNfx22tav+R9okHqn5RhyI0izm5Jqv1jyaCGbAfBxBtougO+lAKQ==
X-Received: by 2002:a17:90b:4b8f:b0:213:95f:9515 with SMTP id
 lr15-20020a17090b4b8f00b00213095f9515mr6350162pjb.82.1666611500759; 
 Mon, 24 Oct 2022 04:38:20 -0700 (PDT)
Received: from fedora.flets-east.jp ([2400:4050:c360:8200:8ae8:3c4:c0da:7419])
 by smtp.gmail.com with ESMTPSA id
 b8-20020a170903228800b001830ed575c3sm19475075plh.117.2022.10.24.04.38.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Oct 2022 04:38:20 -0700 (PDT)
From: Akihiko Odaki <akihiko.odaki@daynix.com>
To: 
Date: Mon, 24 Oct 2022 20:35:10 +0900
Message-Id: <20221024113513.5205-20-akihiko.odaki@daynix.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221024113513.5205-1-akihiko.odaki@daynix.com>
References: <20221024113513.5205-1-akihiko.odaki@daynix.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 24 Oct 2022 13:23:26 +0000
Subject: [Intel-gfx] [PATCH 19/22] platform/x86: dell-laptop: Use
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
 drivers/platform/x86/dell/dell-laptop.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/platform/x86/dell/dell-laptop.c b/drivers/platform/x86/dell/dell-laptop.c
index e92c3ad06d69..9cfffbe2bd95 100644
--- a/drivers/platform/x86/dell/dell-laptop.c
+++ b/drivers/platform/x86/dell/dell-laptop.c
@@ -2230,7 +2230,7 @@ static int __init dell_init(void)
 		micmute_led_registered = true;
 	}
 
-	if (acpi_video_get_backlight_type() != acpi_backlight_vendor)
+	if (!(acpi_video_get_backlight_types() & ACPI_BACKLIGHT_VENDOR))
 		return 0;
 
 	token = dell_smbios_find_token(BRIGHTNESS_TOKEN);
-- 
2.37.3

