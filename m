Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F1D1A9477
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 09:41:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E11B6E87D;
	Wed, 15 Apr 2020 07:40:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73B1B6E87B
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 07:40:48 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id f13so17849918wrm.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 00:40:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AIAWGjy7adEfvbHVf8mJB+3FeyoofuRNv3RhqXCMk90=;
 b=NHUC2yVE09Epf4634DPfPByR9OdrbSQ64EprfVdDSsnQ50wy8vpQNonAPnWcHIBx4/
 gUEmeyoVpLMx406DDZ/HMJ4kL70TnOtEASpO2vrGlIpvJTu+YB2aY/R3a/11dIsBE60t
 h2CffCrVAZ4z99S6sBRR6u4bTXe/pWw1Dop4Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AIAWGjy7adEfvbHVf8mJB+3FeyoofuRNv3RhqXCMk90=;
 b=WUpANfQBNZQttjIMxq4/RXAIfrd/wH9L2c2gnv+A1jI/Ofclry/2Qk43yAFA6Co9Xo
 wJxR3cshw1tHlrTTSvBtuLf9rjZVK6Stt+STmuN3m8hZSjiPdT6Yyh9DoZ+fsBtCclFH
 Z6FYEgX2CCB6EsHteq2lj0MQSp58xHVsuS3uafNGwsUs/4k8qCyNlZqhhcPRcK3ZvAI0
 /oaMr4TFbagwM6gdyL8me2X25hT62UZVX2LR+aG6EJXAtwceysXJ9KaeuxqTtu5RLWWQ
 LFX8K5N8ltIz6Nrld414ZKJ2ZtVkuCX98EHAc7JtexNMQLrRTbBOxdeqqretPBDVhZpZ
 XsUA==
X-Gm-Message-State: AGi0PuYPUOMpyOqUyuMBzwsCfdIRHemicR2OSpHrCmyA8/vBYXjbGVJa
 tCAkJMwPdW0HqWDKfOtcMOjBntMTJ8w=
X-Google-Smtp-Source: APiQypI3XQxHVEVJ19Iky4CZNAlWnoWQZ7RuqTcs4YwyBXCPx95zFDgXFnMY/oog6IyFvlXfVsUWfA==
X-Received: by 2002:adf:e742:: with SMTP id c2mr27574216wrn.293.1586936446842; 
 Wed, 15 Apr 2020 00:40:46 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.40.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:40:46 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 Apr 2020 09:39:41 +0200
Message-Id: <20200415074034.175360-7-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/59] drm/vboxvideo: Use devm_gen_pool_create
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

Aside from deleting all the cleanup code we're now also setting a name
for the pool

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Hans de Goede <hdegoede@redhat.com>
---
 drivers/gpu/drm/vboxvideo/vbox_main.c | 22 ++++++++--------------
 1 file changed, 8 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/vboxvideo/vbox_main.c b/drivers/gpu/drm/vboxvideo/vbox_main.c
index 1336ab9795fc..d68d9bad7674 100644
--- a/drivers/gpu/drm/vboxvideo/vbox_main.c
+++ b/drivers/gpu/drm/vboxvideo/vbox_main.c
@@ -121,7 +121,8 @@ int vbox_hw_init(struct vbox_private *vbox)
 		return -ENOMEM;
 
 	/* Create guest-heap mem-pool use 2^4 = 16 byte chunks */
-	vbox->guest_pool = gen_pool_create(4, -1);
+	vbox->guest_pool = devm_gen_pool_create(vbox->ddev.dev, 4, -1,
+						"vboxvideo-accel");
 	if (!vbox->guest_pool)
 		return -ENOMEM;
 
@@ -130,12 +131,12 @@ int vbox_hw_init(struct vbox_private *vbox)
 				GUEST_HEAP_OFFSET(vbox),
 				GUEST_HEAP_USABLE_SIZE, -1);
 	if (ret)
-		goto err_destroy_guest_pool;
+		return ret;
 
 	ret = hgsmi_test_query_conf(vbox->guest_pool);
 	if (ret) {
 		DRM_ERROR("vboxvideo: hgsmi_test_query_conf failed\n");
-		goto err_destroy_guest_pool;
+		return ret;
 	}
 
 	/* Reduce available VRAM size to reflect the guest heap. */
@@ -147,30 +148,23 @@ int vbox_hw_init(struct vbox_private *vbox)
 
 	if (!have_hgsmi_mode_hints(vbox)) {
 		ret = -ENOTSUPP;
-		goto err_destroy_guest_pool;
+		return ret;
 	}
 
 	vbox->last_mode_hints = devm_kcalloc(vbox->ddev.dev, vbox->num_crtcs,
 					     sizeof(struct vbva_modehint),
 					     GFP_KERNEL);
-	if (!vbox->last_mode_hints) {
-		ret = -ENOMEM;
-		goto err_destroy_guest_pool;
-	}
+	if (!vbox->last_mode_hints)
+		return -ENOMEM;
 
 	ret = vbox_accel_init(vbox);
 	if (ret)
-		goto err_destroy_guest_pool;
+		return ret;
 
 	return 0;
-
-err_destroy_guest_pool:
-	gen_pool_destroy(vbox->guest_pool);
-	return ret;
 }
 
 void vbox_hw_fini(struct vbox_private *vbox)
 {
 	vbox_accel_fini(vbox);
-	gen_pool_destroy(vbox->guest_pool);
 }
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
