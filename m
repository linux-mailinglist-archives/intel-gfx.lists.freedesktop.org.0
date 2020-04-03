Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 692F919D84B
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 15:59:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 810CC6EBD6;
	Fri,  3 Apr 2020 13:59:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C49F6EBD2
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 13:59:04 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id m17so8610465wrw.11
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 06:59:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FPN50dZaM17ZJWb1kfenSEp3QCWr5XpoArRP6/Y1sQY=;
 b=jFJ0vF8lIWyEQNWiZm3HWP0eofsW+UAjWuR2Ty3jTmZG2e8wUmhXj2xSAHYTFuHpaS
 dhK8bfxGSX3e6ZqMk3SZKfJ4ltjk5lWDMAy2jbTCGowjYG5tg7V2UYtZHeMaJzo8Ax8+
 ZrV9AQd/gyRcPNFNwNowdtfy8i4vsjmSyYKnU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FPN50dZaM17ZJWb1kfenSEp3QCWr5XpoArRP6/Y1sQY=;
 b=ZpRmmi04k+Pp94dF05GN1xkHahg8QYjyxHGWAxgbcTUXUm3NWyxrCVvaS4KjHCY7XM
 n1hcXJ22B6euTEgX8kEJykSYIICcmSo8VhDmnPJAqdoP/Gly9RgUVb2zp/++iZtAQye5
 ttoCfgYzfszVWB1RJmkRL1enDPwgz8Q9ztxC9yWKlt1EHUsb6Hsf3B9KVW0gczq62Emt
 xgzTPFc/G/mlX3pXj+qIHkMr1/nkK6irERZQ61j8+4S+Kwkz0KDuf8/Q4VjgNStuDWZj
 RrHDzHRy5YrsYaX4yoeb+caHz2tfHcl3uokJYfZTdXJ8TQDXddNCxmv15XNsSgJzctLs
 AoQg==
X-Gm-Message-State: AGi0PuZ+r3bQvNpxqY9dkfR3S77gWxmU9YKJ53kEFdGwMJUskAd85zbh
 9YtUQtKlWQvSOzRkiF8MTPD1KQ==
X-Google-Smtp-Source: APiQypLvsqUpN/mdzUdoXdQ1bkXae6tyvE2zXi+0VTvkDm07g8Uc2f011KFTHFwAWpZy/TDUpwjjRg==
X-Received: by 2002:adf:e747:: with SMTP id c7mr1942114wrn.29.1585922343354;
 Fri, 03 Apr 2020 06:59:03 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f141sm11783919wmf.3.2020.04.03.06.59.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 06:59:02 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  3 Apr 2020 15:58:09 +0200
Message-Id: <20200403135828.2542770-26-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 25/44] drm/gm12u320: Use devm_drm_dev_alloc
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Already using devm_drm_dev_init, so very simple replacment.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Hans de Goede <hdegoede@redhat.com>
---
 drivers/gpu/drm/tiny/gm12u320.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/tiny/gm12u320.c b/drivers/gpu/drm/tiny/gm12u320.c
index 6f0ea2827d62..907739a67bf6 100644
--- a/drivers/gpu/drm/tiny/gm12u320.c
+++ b/drivers/gpu/drm/tiny/gm12u320.c
@@ -631,22 +631,17 @@ static int gm12u320_usb_probe(struct usb_interface *interface,
 	if (interface->cur_altsetting->desc.bInterfaceNumber != 0)
 		return -ENODEV;
 
-	gm12u320 = kzalloc(sizeof(*gm12u320), GFP_KERNEL);
-	if (gm12u320 == NULL)
-		return -ENOMEM;
+	gm12u320 = devm_drm_dev_alloc(&interface->dev, &gm12u320_drm_driver,
+				      struct gm12u320_device, dev);
+	if (IS_ERR(gm12u320))
+		return PTR_ERR(gm12u320);
 
 	gm12u320->udev = interface_to_usbdev(interface);
 	INIT_DELAYED_WORK(&gm12u320->fb_update.work, gm12u320_fb_update_work);
 	mutex_init(&gm12u320->fb_update.lock);
 
 	dev = &gm12u320->dev;
-	ret = devm_drm_dev_init(&interface->dev, dev, &gm12u320_drm_driver);
-	if (ret) {
-		kfree(gm12u320);
-		return ret;
-	}
 	dev->dev_private = gm12u320;
-	drmm_add_final_kfree(dev, gm12u320);
 
 	ret = drmm_mode_config_init(dev);
 	if (ret)
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
