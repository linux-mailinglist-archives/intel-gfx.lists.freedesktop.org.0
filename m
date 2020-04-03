Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15EBC19D826
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 15:59:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 304FB6EBAC;
	Fri,  3 Apr 2020 13:58:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 871896EBA5
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 13:58:48 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id t7so8609678wrw.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 06:58:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=T0NPd3SzuNReso4uwRwGCbVcCc2DoA/jfFyOSK8g0uQ=;
 b=SyctG0RrNPpin6d2cjD+pO6Tau9N10S8YUnDqjhexo1UoRPYqvFyrKQN7h/Q6xFFqX
 eyKkuq2+O3sqyaLVTylmASLcO2Rw9tnUy9Mhq069FcBEwC6zTNJ0wd9tW4W1aq1x/ZVJ
 x2gsmX6Q4gaPhT90HVr+6TyrT66XC1ZJ/36l4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=T0NPd3SzuNReso4uwRwGCbVcCc2DoA/jfFyOSK8g0uQ=;
 b=pRpkiG/FESX9iG9kd/1GUh7WOFxF51bpY5h/2KAtcgVezisS/RsG6dp4szL3aTd3kS
 Q3JQ/MozLjhpbpnVPWKDLXLN1dJ+ykXJfvveQ/DP4WRWhe8sVIO751zrsld4Mig+9irr
 S5C0w0Q3p299UDXHOgsPftlVC2dXC0u3NkHEgzV589L800Qbx/wMyQV8I54Y1v+DBkLZ
 1o7QqF0iNYqj2IyijO1o8J3FIsAI78DeVSs64tFfozAbp70Anat3UkOQKCf96bX6DZUq
 nalGF8gTQdkH+yGpP594FEvzcBM+lfvjoLHJQytlYxh6isjGflkEr3Coi3u3HgcpJNwm
 OW2A==
X-Gm-Message-State: AGi0PuZGPN48T6FHiTcP4vVUCfXSLX6sb117qlPQWR60D/53CVPp5tme
 6p2ZlH0NBJpqBgOntfmr8b+DSg==
X-Google-Smtp-Source: APiQypKDZU+w3+1PTup549ZefqFINetxcvhTGcvlsul/S/Ar0g1P3Hpvzgkl9oy4CA5OT7DurxzyEA==
X-Received: by 2002:adf:f58c:: with SMTP id f12mr9751975wro.207.1585922327239; 
 Fri, 03 Apr 2020 06:58:47 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f141sm11783919wmf.3.2020.04.03.06.58.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 06:58:46 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  3 Apr 2020 15:57:54 +0200
Message-Id: <20200403135828.2542770-11-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/44] drm/vboxvideo: Use devm_gen_pool_create
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

Aside from deleting all the cleanup code we're now also setting a name
for the pool

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
