Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C835979FDE
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 13:01:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C97F10E348;
	Mon, 16 Sep 2024 11:01:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="dAGpzON8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D64AA10E345
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 11:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1726484462;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=eEjIF7qtpeO5gdAg8m1MkAHfmOzMzhqhggl+Nd1IK9g=;
 b=dAGpzON8Q5kaPH8cE/rPoBS2sY72pwINs5CcovcngEJlYtnS/qU7H1DpdZ2DF5o/fkAtrW
 XZCQ/iAIkNtRbq/RtXNNfvcWVaq5TiImUWfvKesRVW8/sWe3FVm0gLzmkTRMd062JJ2ybX
 2iaHNRw83PkP19mCbxor63itQ2Yh/fQ=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-637-HUW-3V2GNlmddnOempCiug-1; Mon, 16 Sep 2024 07:00:59 -0400
X-MC-Unique: HUW-3V2GNlmddnOempCiug-1
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-42cb89fbb8cso27763785e9.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 04:00:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726484458; x=1727089258;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=eEjIF7qtpeO5gdAg8m1MkAHfmOzMzhqhggl+Nd1IK9g=;
 b=GKrn0ILeWCJ5D1DQ/xMP0pwAtIAdZdj6QqFDK3kuWNNgH3gb0YnYCI7Has1K4chX7j
 EerYDAYZPCdIdfrv6b0YOCLkkNjpE5Q66rKvyWRw7OOq0I+Uql8lhBVyV7SpaJEu1/8D
 NuA5nXFzhgxooiphLFPZ2dnqnnTrJ2ZW0fJNZrhucxrft4ZYxm7F54NPVYBrI1nJsCbm
 Ih8PXsS5qRj+cOYATSrj0y24pExnGkPRP5GqWwpTxoPc0GLni+7yzyUQu8BP9ooEpq4q
 0+fcOwH2+6twsBMe2A7iZfxXn+X9EcXC2g6vEbwijVIWLO6qG3H8iKrty1j/R0y+ZTW9
 yqSA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWYF/CVPwBZk90tg2wDC0s1dMVNM27zwquhSvD9uZNQZJ1TQ7tHS1lSAg63ckZk+b7meApyKNqiaUc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzIxlh7r2/IwanFD4xwJhcJjnG5wpRMmu3gs8hWL7zuAr3KEX4L
 7yVEv/zuTwmkGJHnzepeRwiB31PkpJLY2UHuXbl6GjvZWSR9LHB4BvjIP7IqjzZ43ksEEBDjmZg
 olLf5+AYeScw/gGrMyqLDzkEmSVuOYL/zscvuuGXwYzvSCoM61LccPdud2aqpSMRjlA==
X-Received: by 2002:a05:600c:21d1:b0:42c:de2f:da27 with SMTP id
 5b1f17b1804b1-42cde2fdb54mr105453565e9.2.1726484457615; 
 Mon, 16 Sep 2024 04:00:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGuoN48esuPwjXdzhGeiLsvhSvLtwnfWmyh0YiWdZ01XdL7xeFl8Crpz10A2XtyhhYWXONvEQ==
X-Received: by 2002:a05:600c:21d1:b0:42c:de2f:da27 with SMTP id
 5b1f17b1804b1-42cde2fdb54mr105453355e9.2.1726484457174; 
 Mon, 16 Sep 2024 04:00:57 -0700 (PDT)
Received: from localhost ([195.166.127.210]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42cc137556esm200901665e9.1.2024.09.16.04.00.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2024 04:00:56 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Brian Norris <briannorris@chromium.org>, dri-devel@lists.freedesktop.org,
 Borislav Petkov <bp@alien8.de>, Julius Werner <jwerner@chromium.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, chrome-platform@lists.linux.dev,
 intel-gfx@lists.freedesktop.org, Hugues Bruant <hugues.bruant@gmail.com>,
 Javier Martinez Canillas <javierm@redhat.com>,
 Tzung-Bi Shih <tzungbi@kernel.org>
Subject: [PATCH v4 2/2] firmware: coreboot: Don't register a pdev if
 screen_info data is present
Date: Mon, 16 Sep 2024 13:00:26 +0200
Message-ID: <20240916110040.1688511-3-javierm@redhat.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240916110040.1688511-1-javierm@redhat.com>
References: <20240916110040.1688511-1-javierm@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="US-ASCII"; x-default=true
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On coreboot platforms, a system framebuffer may be provided to the Linux
kernel by filling a LB_TAG_FRAMEBUFFER entry in the coreboot table. But
a coreboot payload (e.g: SeaBIOS) could also provide its own framebuffer
information to the Linux kernel.

If that's the case, arch x86 boot code will fill the global screen_info
data and this used by the Generic System Framebuffers (sysfb) framework,
to register a platform device with pdata about the system's framebuffer.

But later, the framebuffer_coreboot driver will try to do the same and
attempt to register a "simple-framebuffer" platform device (using the
information from the coreboot table), which will lead to an error due a
device with the same name already being registered:

    sysfs: cannot create duplicate filename '/bus/platform/devices/simple-framebuffer.0'
    ...
    coreboot: could not register framebuffer
    framebuffer coreboot8: probe with driver framebuffer failed with error -17

To prevent this issue, make the framebuffer_core driver to not register
a platform device if the global struct screen_info data has been filled.

Reported-by: Brian Norris <briannorris@chromium.org>
Closes: https://lore.kernel.org/all/ZuCG-DggNThuF4pj@b20ea791c01f/T/#ma7fb65acbc1a56042258adac910992bb225a20d2
Suggested-by: Julius Werner <jwerner@chromium.org>
Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>
Reviewed-by: Brian Norris <briannorris@chromium.org>
Reviewed-by: Julius Werner <jwerner@chromium.org>
---

Changes in v4:
- Use a sysfb_handles_screen_info() helper instead of screen_info_video_type()
  to fix build errors on platforms that don't define a struct screen_info
  (Thomas Zimmermann).

Changes in v3:
- Fix coreboot spelling to be all in lowercase (Julius Werner).

Changes in v2:
- Declare the struct screen_info as constant variable (Thomas Zimmermann).
- Use screen_info_video_type() instead of checking the screen_info video
  types directly (Thomas Zimmermann).
- Fix missing "device" word in a comment (Brian Norris).
- Fix some mispellings in a comment (Brian Norris).
- Change error code returned from -EINVAL to -ENODEV (Brian Norris).

 drivers/firmware/google/framebuffer-coreboot.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/firmware/google/framebuffer-coreboot.c b/drivers/firmware/google/framebuffer-coreboot.c
index daadd71d8ddd..c68c9f56370f 100644
--- a/drivers/firmware/google/framebuffer-coreboot.c
+++ b/drivers/firmware/google/framebuffer-coreboot.c
@@ -15,6 +15,7 @@
 #include <linux/module.h>
 #include <linux/platform_data/simplefb.h>
 #include <linux/platform_device.h>
+#include <linux/sysfb.h>
 
 #include "coreboot_table.h"
 
@@ -36,6 +37,19 @@ static int framebuffer_probe(struct coreboot_device *dev)
 		.format = NULL,
 	};
 
+	/*
+	 * On coreboot systems, the advertised LB_TAG_FRAMEBUFFER entry
+	 * in the coreboot table should only be used if the payload did
+	 * not pass a framebuffer information to the Linux kernel.
+	 *
+	 * If the global screen_info data has been filled, the Generic
+	 * System Framebuffers (sysfb) will already register a platform
+	 * device and pass that screen_info as platform_data to a driver
+	 * that can scan-out using the system provided framebuffer.
+	 */
+	if (sysfb_handles_screen_info())
+		return -ENODEV;
+
 	if (!fb->physical_address)
 		return -ENODEV;
 
-- 
2.46.0

