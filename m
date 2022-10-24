Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6505F60A9CE
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 15:24:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4CEC10E71E;
	Mon, 24 Oct 2022 13:23:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe2b.google.com (mail-vs1-xe2b.google.com
 [IPv6:2607:f8b0:4864:20::e2b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 722BC10E399
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 11:37:33 +0000 (UTC)
Received: by mail-vs1-xe2b.google.com with SMTP id 128so7567129vsz.12
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 04:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=XAyFJiVGXrC/KZsleNIpi2nk4bcxYAI8Wjviz1KFor4=;
 b=ZPJNNmG2CfyinfqrhsHlV+g/2spcGsRR6OA3gQWYXOOaD6Gsxx/0ZTZ/2WSEOwyYxr
 EDCpJh40XMtG2OTdgXJL02/X5omijLCV9JB2NHXHkDrLv9wNx5a9fXGjfKUy3F0lhTEe
 hmnXBdrKvxVeJ2M5hNGsU2bRRaZU/yeF/d2yhPBZ/vbo5qMU7Pf/Zeu4xzQd/tILMGUf
 9wVa7xUimRQsMhs8I2ooWhyIiW91jtGl8d73AU5DZCPbAW2aJV7S8knDGzccvSCFIAGK
 XYYnZNcK+zvSZs4S+oTEJp9GvLNjfNv3+EpEB1BBZw+e91dYFNlfBeXNg4N+ATQRyNH9
 j2NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=XAyFJiVGXrC/KZsleNIpi2nk4bcxYAI8Wjviz1KFor4=;
 b=JMJsniNvD1pMI1loGEJh/+2Rk5hbhRhkCinVET8b6JJWLG+YFSF+GHu6ZOK15gWAXq
 xkMKGYHnMrCl4PCCNFaXjkrjS9g3t+chT0eIbb2Hi4OCaEP4QCBPNH7Lga60iaHbds7G
 zPhwbRngxwp40/0baIFdrg+FY00e6A74QaGntIrfUT1AtEsTkijFPQXDiPyKCV+gTEst
 ZsN/L3pHIPZRWEhSzRq6SW9kgcDR6UP37/eiKhNibo33GjNUE7fefpjlc2DhBjKVR5HY
 EnoONmgmml92TLgQ02ypUGTZ/FEz1vXqphVTXtc3zhD7OiK9UJS/Arzz2bcEZvUJ4VPC
 SfgQ==
X-Gm-Message-State: ACrzQf3Igg4jmvAuHCsXfpFBobJB+qogO0aBi15A78cPPWEVTluMcfFj
 xZGs5QknwqiGdWaI1TzaOUXOibyzvhgzwGOi
X-Google-Smtp-Source: AMsMyM7j6rudLQ3oDGLiRJvO3ouLKzXkm11wgePZ/bzYxd0/dczcHVPABhvm+nv5ewjBPX37znVsPw==
X-Received: by 2002:a17:903:1c6:b0:185:47ce:f4f0 with SMTP id
 e6-20020a17090301c600b0018547cef4f0mr33699248plh.132.1666611442110; 
 Mon, 24 Oct 2022 04:37:22 -0700 (PDT)
Received: from fedora.flets-east.jp ([2400:4050:c360:8200:8ae8:3c4:c0da:7419])
 by smtp.gmail.com with ESMTPSA id
 b8-20020a170903228800b001830ed575c3sm19475075plh.117.2022.10.24.04.37.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Oct 2022 04:37:21 -0700 (PDT)
From: Akihiko Odaki <akihiko.odaki@daynix.com>
To: 
Date: Mon, 24 Oct 2022 20:35:03 +0900
Message-Id: <20221024113513.5205-13-akihiko.odaki@daynix.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221024113513.5205-1-akihiko.odaki@daynix.com>
References: <20221024113513.5205-1-akihiko.odaki@daynix.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 24 Oct 2022 13:23:26 +0000
Subject: [Intel-gfx] [PATCH 12/22] platform/x86: msi-wmi: Use
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
 drivers/platform/x86/msi-wmi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/platform/x86/msi-wmi.c b/drivers/platform/x86/msi-wmi.c
index fd318cdfe313..3a74f0135fae 100644
--- a/drivers/platform/x86/msi-wmi.c
+++ b/drivers/platform/x86/msi-wmi.c
@@ -309,7 +309,7 @@ static int __init msi_wmi_init(void)
 	}
 
 	if (wmi_has_guid(MSIWMI_BIOS_GUID) &&
-	    acpi_video_get_backlight_type() == acpi_backlight_vendor) {
+	    (acpi_video_get_backlight_types() & ACPI_BACKLIGHT_VENDOR)) {
 		err = msi_wmi_backlight_setup();
 		if (err) {
 			pr_err("Unable to setup backlight device\n");
-- 
2.37.3

