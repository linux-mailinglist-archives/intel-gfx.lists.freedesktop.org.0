Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A42D251D92B
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 15:29:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1C2010E1F4;
	Fri,  6 May 2022 13:29:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 302 seconds by postgrey-1.36 at gabe;
 Fri, 06 May 2022 13:29:04 UTC
Received: from us-smtp-delivery-74.mimecast.com
 (us-smtp-delivery-74.mimecast.com [170.10.129.74])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95F9B10E1F4
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 May 2022 13:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1651843743;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=ntfBkmjNjhrxvA8xhvwrtXUPZhy6WpJ5yDdT5A+/C00=;
 b=XqVvx7YxZ5KWHjIhtbqWKDZBIJBAFVrhNSM8FQ0EETDnPpOZLPPOyy/11ALgJoD8jFlFMp
 Zsrx+n1Bho1CJlycKL0w7EUWX5/DaKedRgVJgR7SHntqWeRw6djFYQnklJMp/D9lRvciEL
 u4oGH1dGN+e0mB7RlTnvDAJFVPiPINM=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-298-YOfUYrRKOgyzwR8QWrZ2Ig-1; Fri, 06 May 2022 09:22:43 -0400
X-MC-Unique: YOfUYrRKOgyzwR8QWrZ2Ig-1
Received: by mail-wr1-f69.google.com with SMTP id
 l7-20020adfbd87000000b0020ac0a4d23dso2598628wrh.17
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 May 2022 06:22:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ntfBkmjNjhrxvA8xhvwrtXUPZhy6WpJ5yDdT5A+/C00=;
 b=iPBrs33nUM19t1FDipF4UgZO/Zar4xnLOXmMm+cCWLwdcRStx64cT2dULYwPlg/Foo
 lVpfjfql1u32PzDBdUne5lATmLYDGQ6O2XdoWXUEMdgnljeiSKyu6diP7TlJ39CTNW2y
 GvN8zVzgXsExmhYyW6tWiKjE8ptFEo8Ugh/PMpzQTCHyrMWnOgRzVD0UzLKoBG0RPLTc
 b7u0EPsSTqJd3mNsIoiR9bI8pM7o1IsgRYEw8+T0tY4PMYSx0RKCgK7aJsgJnhKps2GC
 NbgKHcWYyrj9X5//DmrhrOiu6FINgZRAWaqsxPaRXYaBtZ1vGmeyQ8aIPcegtXeFx5gL
 64LA==
X-Gm-Message-State: AOAM533pBRX6GvhCwkRnjOF7eHr25xKjshYELh9cMftMbqCBnST6ksZV
 YezYp4nVByewGeLaPOBP+3UtDjt8fMUp6/HSFMRyaRexoWatFkuWAh6v2xR7M1aY7yQcLN0WnYV
 9oPhfnEt/pc9mvfQ613JpbT/J3OJC
X-Received: by 2002:a05:600c:20e:b0:394:2985:6d0c with SMTP id
 14-20020a05600c020e00b0039429856d0cmr9784119wmi.106.1651843362186; 
 Fri, 06 May 2022 06:22:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxoBGIqiXlxsybVbyUOYtj+ac6M3xoMutesjNKS5Waxldl///9zmVAj4E/EHzyx2X+CmF9+Qw==
X-Received: by 2002:a05:600c:20e:b0:394:2985:6d0c with SMTP id
 14-20020a05600c020e00b0039429856d0cmr9784085wmi.106.1651843361915; 
 Fri, 06 May 2022 06:22:41 -0700 (PDT)
Received: from minerva.home (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 l16-20020a7bcf10000000b003942a244f54sm10378255wmg.45.2022.05.06.06.22.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 May 2022 06:22:41 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Date: Fri,  6 May 2022 15:22:25 +0200
Message-Id: <20220506132225.588379-1-javierm@redhat.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] fbdev: efifb: Fix a use-after-free due early
 fb_info cleanup
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
Cc: linux-fbdev@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 Javier Martinez Canillas <javierm@redhat.com>, dri-devel@lists.freedesktop.org,
 Peter Jones <pjones@redhat.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Commit d258d00fb9c7 ("fbdev: efifb: Cleanup fb_info in .fb_destroy rather
than .remove") attempted to fix a use-after-free error due driver freeing
the fb_info in the .remove handler instead of doing it in .fb_destroy.

But ironically that change introduced yet another use-after-free since the
fb_info was still used after the free.

This should fix for good by freeing the fb_info at the end of the handler.

Fixes: d258d00fb9c7 ("fbdev: efifb: Cleanup fb_info in .fb_destroy rather than .remove")
Reported-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reported-by: Andrzej Hajda <andrzej.hajda@intel.com>
Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
---

 drivers/video/fbdev/efifb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/video/fbdev/efifb.c b/drivers/video/fbdev/efifb.c
index cfa3dc0b4eee..b3d5f884c544 100644
--- a/drivers/video/fbdev/efifb.c
+++ b/drivers/video/fbdev/efifb.c
@@ -259,12 +259,12 @@ static void efifb_destroy(struct fb_info *info)
 			memunmap(info->screen_base);
 	}
 
-	framebuffer_release(info);
-
 	if (request_mem_succeeded)
 		release_mem_region(info->apertures->ranges[0].base,
 				   info->apertures->ranges[0].size);
 	fb_dealloc_cmap(&info->cmap);
+
+	framebuffer_release(info);
 }
 
 static const struct fb_ops efifb_ops = {
-- 
2.35.1

