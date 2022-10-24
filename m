Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13AD960A9C9
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 15:24:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5829110E716;
	Mon, 24 Oct 2022 13:23:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com
 [IPv6:2607:f8b0:4864:20::52b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D567D10E399
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 11:36:48 +0000 (UTC)
Received: by mail-pg1-x52b.google.com with SMTP id s196so8466641pgs.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 04:36:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=aTWnIAAWrGsxFWyDKsfKu5xKbLpsLEHl3kQR801HKCo=;
 b=MRe/lYU3QcRg+eNbrdoMjeONSL07r0OuDkWzCVk6tpzA20LxxB9dtVNP6GAZVtqzIg
 /Ydi6DIu3Wy5fZXEZmacOcz+NqXiSg1SXC5+xE40BzARxzxxK4lzIbVbKWJmk00nhUWL
 J95wLECXE4yV76gl9zFLYhn0sUtCfGQd7MZ3fPt+5gVvmN0pleQRDgrqZg3vefZrijSa
 Yr0OxSWw7RuG0IesV0KfRF12UlNsEctSBC+ObKy3MmlA9Ekq0p3IRfhEG3FwtLPaqAOb
 tgPmTvcjcO2SHlUmacRidezoVVwplJ41JEut0A62tZuMt+eaVkdbww0tkfz+m4Yo8zhg
 FlhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=aTWnIAAWrGsxFWyDKsfKu5xKbLpsLEHl3kQR801HKCo=;
 b=h3X8v2hgy+zg9W3D4Y2MTr4OZcAkPSomRjZzdrGDSOemYfJYfPEOadTT40P75BBDkP
 VM7fPcr4vK4xlW7EQGOQ0X6+YOhrj++DGrqp1Qqxue8QX5tWYvvbCCuYVsa4XWmUfdBg
 PWKfx2QiRc843vPLBzIbJDSgZVh1mb7/x1Y6xqjGjic6yHy472kJlSsyQvj+q/Ulvmse
 GwZg3oKqWLEc1OuDmTeaPKRe5fF/4AO6idkOuqxMN8c5NRlLEmtRLs4TR1GqBSeKZCRM
 IdYUxZSVP+15ncScNLQOyQQZzMVVtyJr8VdLVyK5M4QLHjKc3sutz2PPlhcj2A2Nxz3z
 6jqg==
X-Gm-Message-State: ACrzQf0rJVVg6oXPDevlliAhDRxqgpqPX84YHNHiFhB5rdgNISYmFKfC
 lYER+OXw14JnifHBSVAE9Y343A==
X-Google-Smtp-Source: AMsMyM4YJ5urGf6JLjky27R9T5sFwrnmf9RBCYrtUNpAE3TI6fc6EtzOOV4rZk9R6ICHsHu1MQHt3A==
X-Received: by 2002:a63:64d:0:b0:46b:158f:102e with SMTP id
 74-20020a63064d000000b0046b158f102emr28740541pgg.150.1666611408492; 
 Mon, 24 Oct 2022 04:36:48 -0700 (PDT)
Received: from fedora.flets-east.jp ([2400:4050:c360:8200:8ae8:3c4:c0da:7419])
 by smtp.gmail.com with ESMTPSA id
 b8-20020a170903228800b001830ed575c3sm19475075plh.117.2022.10.24.04.36.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Oct 2022 04:36:47 -0700 (PDT)
From: Akihiko Odaki <akihiko.odaki@daynix.com>
To: 
Date: Mon, 24 Oct 2022 20:34:59 +0900
Message-Id: <20221024113513.5205-9-akihiko.odaki@daynix.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221024113513.5205-1-akihiko.odaki@daynix.com>
References: <20221024113513.5205-1-akihiko.odaki@daynix.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 24 Oct 2022 13:23:26 +0000
Subject: [Intel-gfx] [PATCH 08/22] platform/x86: eeepc-laptop: Use
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
 drivers/platform/x86/eeepc-laptop.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/platform/x86/eeepc-laptop.c b/drivers/platform/x86/eeepc-laptop.c
index a388a28b6f2a..91dea49f7c3d 100644
--- a/drivers/platform/x86/eeepc-laptop.c
+++ b/drivers/platform/x86/eeepc-laptop.c
@@ -1400,7 +1400,7 @@ static int eeepc_acpi_add(struct acpi_device *device)
 	if (result)
 		goto fail_platform;
 
-	if (acpi_video_get_backlight_type() == acpi_backlight_vendor) {
+	if ((acpi_video_get_backlight_types() & ACPI_BACKLIGHT_VENDOR)) {
 		result = eeepc_backlight_init(eeepc);
 		if (result)
 			goto fail_backlight;
-- 
2.37.3

