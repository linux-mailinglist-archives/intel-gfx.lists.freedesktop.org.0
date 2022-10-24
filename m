Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC7160A9B7
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 15:24:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 603D210E6DC;
	Mon, 24 Oct 2022 13:23:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com
 [IPv6:2607:f8b0:4864:20::52d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70ED310E3AE
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 11:36:40 +0000 (UTC)
Received: by mail-pg1-x52d.google.com with SMTP id g129so6818992pgc.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 04:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=28wDlqMofB1pExK+J7NJqLJ5sSPJ8IDYDWuGoZcg4WU=;
 b=zPrE3Z79yDGzLtfx2QawETgF1lUMugvN0C6qQ0CWIaiD5/kUtQIJww0VDJMrkYc3N9
 elYuVucHc32XKow2YGLm3Vr08Z5vsbFCWlv4vq7Nx1QXhYg0jtjzlw0H9CXWI7Ta2vol
 6FUMEN9tnwiBaSCwpYfKwo7U/Mq0MJA9eOTbkI8+uvO7eXR9gmEds/Sy3ur7LFminYR1
 NVY1BZW0FhIWVkiQMHh5J542GVxkeRWv1QNvckPM+a6g8eqefXzkOAt0+7UqdUmERKZa
 J+mLK9mmXa4DfceGk2cEkxou1QrTtBSQu+UKjsPm36wMjvQrtPcLMKbyQMEJWea/JWpP
 WvvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=28wDlqMofB1pExK+J7NJqLJ5sSPJ8IDYDWuGoZcg4WU=;
 b=KXE6Qcl/vIsJG78C2D6mYUL4/PioDG6teW/wt/+A9q7IX49z+KoGToPKCuK4eSF0/+
 yhtTyf+vXP60mqgQOLKw9MtCtEUsyUK+DfC8BBtBZZOVGnV5dgimV2Ctz4d2La4WSa5N
 +iPlHTSWvPhENDPY0YXFBdplEjz8aULkwdl2Ij1DnczRrGK9rvMCAAl+N1l6bgTnvDUb
 hDzvhtCAHcf2wHRkYal6RaW602VZWMlmF/e0BWr2I+neeZ3wLEFSuGz0zXxOyF/Pte4y
 obQOfNsQEtYbxCwzDU5ziO8Tvez8mx7eAUVRWGWQ60s+wwJiPi3+CTtTU5Dr235gAbJW
 0CRA==
X-Gm-Message-State: ACrzQf22iCiQ6Rrpp7IcNYzUFcIOo0q6gPqyQgvim+bI5EBWnt3reGea
 p3iOhKbfs81Dar+DdySrpSUvxA==
X-Google-Smtp-Source: AMsMyM6SfjrakTfflVuQ8PwvI36ClP4mxWtm2JBvE32zMW6Lo2xtR9eBT667zzx11rUWR7R7KloyFA==
X-Received: by 2002:a63:5702:0:b0:44b:290:f24f with SMTP id
 l2-20020a635702000000b0044b0290f24fmr27871108pgb.558.1666611399944; 
 Mon, 24 Oct 2022 04:36:39 -0700 (PDT)
Received: from fedora.flets-east.jp ([2400:4050:c360:8200:8ae8:3c4:c0da:7419])
 by smtp.gmail.com with ESMTPSA id
 b8-20020a170903228800b001830ed575c3sm19475075plh.117.2022.10.24.04.36.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Oct 2022 04:36:39 -0700 (PDT)
From: Akihiko Odaki <akihiko.odaki@daynix.com>
To: 
Date: Mon, 24 Oct 2022 20:34:58 +0900
Message-Id: <20221024113513.5205-8-akihiko.odaki@daynix.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221024113513.5205-1-akihiko.odaki@daynix.com>
References: <20221024113513.5205-1-akihiko.odaki@daynix.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 24 Oct 2022 13:23:26 +0000
Subject: [Intel-gfx] [PATCH 07/22] platform/x86: compal-laptop: Use
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
 drivers/platform/x86/compal-laptop.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/platform/x86/compal-laptop.c b/drivers/platform/x86/compal-laptop.c
index e10d2f64dfad..16ced03fa1b7 100644
--- a/drivers/platform/x86/compal-laptop.c
+++ b/drivers/platform/x86/compal-laptop.c
@@ -1043,7 +1043,7 @@ static int __init compal_init(void)
 		return -ENODEV;
 	}
 
-	if (acpi_video_get_backlight_type() == acpi_backlight_vendor) {
+	if ((acpi_video_get_backlight_types() & ACPI_BACKLIGHT_VENDOR)) {
 		struct backlight_properties props;
 		memset(&props, 0, sizeof(struct backlight_properties));
 		props.type = BACKLIGHT_PLATFORM;
-- 
2.37.3

