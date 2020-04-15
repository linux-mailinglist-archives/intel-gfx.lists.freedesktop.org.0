Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 951F51A94A0
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 09:42:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB0D06E89D;
	Wed, 15 Apr 2020 07:41:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C5A66E890
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 07:41:04 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id a25so17884482wrd.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 00:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DeMO3vlmgxOJF9CNwpQjB+v8eWcJq3jGpnPcZIzXutE=;
 b=gjrx1chkYeUEcIaHdeH8s4z11nOP1syPUIkoVGO0e4XoRfV3w4XW38Wc0HV+5s1drJ
 NRp9L2mF3rpduiiJungyv24OrrR/qyciaFeQUOsin1Cs4UEJMkHObLggJ7LzO21Pc2WZ
 d50BPmBnVuGwYEzTcNoJfJDHS2jj6JwPVQjoc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DeMO3vlmgxOJF9CNwpQjB+v8eWcJq3jGpnPcZIzXutE=;
 b=Fl9b3DcqFIHL7ymsSZqilrOr8QelaiI/bS+UkZEra8zxWMaJD7soEDCNoF6eLCzqy1
 BWNsGQrnRDQfhcgY0fYGTeO3mToCaEZwcefLbzSPAK1IFVdPnG5ZPEtPwH6wTYnGUMJl
 sbK6mh1350iNZHIjAfGRzVtE6gnZcLzHnPRm78wOhrvs+caoyss0N50bUjG9LjI0kA02
 Sdn4c4FCIBavOZHIz26j6aHiXOqVVTVl/FC4reIyLvL2/xE1BAz72WS8TdkvV2I4KdlE
 6CHJncj8ZMVG54w26mX8wGIRXkaanxeFfmfBB6HenC6acDpDKMl/ySKNMxzVLIyqTZ2M
 eN0A==
X-Gm-Message-State: AGi0PuaMlmwDBdiQiTr8Nzsx810wNxXtBXQpZpwsGUJn77IABqEmwgzn
 gp2/EVvapS9h8RmtJfwYinB3ulvdPpA=
X-Google-Smtp-Source: APiQypKtihbjQqJm3Jnxso5irDArazHMZESwCu/Ssw6YteIUYK1yEIOc9VL4luAk7ORb88Bbrci98Q==
X-Received: by 2002:adf:fe03:: with SMTP id n3mr26844871wrr.315.1586936462938; 
 Wed, 15 Apr 2020 00:41:02 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.41.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:41:02 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 Apr 2020 09:39:56 +0200
Message-Id: <20200415074034.175360-22-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 21/59] drm/gm12u320: Use devm_drm_dev_alloc
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Already using devm_drm_dev_init, so very simple replacment.

Acked-by: Sam Ravnborg <sam@ravnborg.org>
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
