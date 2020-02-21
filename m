Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BDF31688A5
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 22:04:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E6056F533;
	Fri, 21 Feb 2020 21:03:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45E5A6F530
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 21:03:52 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id b17so3318099wmb.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 13:03:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FldPWxhzELhYbW6ZcVnvMkTgkkuNURV+FBfGKe9d6tY=;
 b=dRTc94HJcx06VO/1B0AiiT3c0eBlPmb5jYaOmB9r75ofFyC5uBsekwi+EVs0S/Q4vr
 LxsqAQ+uvmAqTShOKz0RC9H6nSStvxKZo3yYbn04Ovtw5/JLVzmy7Vx3/IJ8jOqlqCyg
 gvAKjgNWWtC96Nj32DtwNs6XTHtTJCngIaWVs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FldPWxhzELhYbW6ZcVnvMkTgkkuNURV+FBfGKe9d6tY=;
 b=SWQU5xvtByopOc7Ap1cjw+oj14u7Ai+pa/EITPMUenUIMPK/PpGabm12Uf32Jxr6/a
 IThXAdFx479s1Vkm+ojXDyzNyy/TdjrmZPkW2QNL86NQhGdWIxFfoMPzW0QWo7ZiFBaq
 mNSstzt+sbfpQkWbXmVyLayhU0TcXUosA2EXt1g1g8oDhJLppN9L9FScwPsun94S2Xw+
 BOpdTFB6vQpokHNY7QYE78DAyS/docGnTbwMVe/mWyfK/R2Tse7CvCrvDw+VtfnAMc3e
 4H0TDXqjfycqSJJFwv39OuxGTxDMlmrtzLLIaUf93n4AQoDQoEixhpXjngnrNruvIOvs
 gpUw==
X-Gm-Message-State: APjAAAU98gt/GZcZgZMalD2el8cfhsf1JvXmMLzOGefXV0DrWKKShnOm
 mw68j/VJwwvH25pngtlvIMClBQ==
X-Google-Smtp-Source: APXvYqygnySj5kmVWfPQnCI48ZKD/H7Nl1vuNha8EjgsJ147YMW+Lq6xsxAuJ5EugjE+kKTU2U+JHQ==
X-Received: by 2002:a1c:f60e:: with SMTP id w14mr5620572wmc.188.1582319030982; 
 Fri, 21 Feb 2020 13:03:50 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z6sm5483930wrw.36.2020.02.21.13.03.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 13:03:50 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 21 Feb 2020 22:02:45 +0100
Message-Id: <20200221210319.2245170-18-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 17/51] drm/gm12u320: Use drmm_add_final_kfree
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

With this we can drop the final kfree from the release function.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Hans de Goede <hdegoede@redhat.com>
---
 drivers/gpu/drm/tiny/gm12u320.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/tiny/gm12u320.c b/drivers/gpu/drm/tiny/gm12u320.c
index a48173441ae0..524ca0941cf9 100644
--- a/drivers/gpu/drm/tiny/gm12u320.c
+++ b/drivers/gpu/drm/tiny/gm12u320.c
@@ -19,6 +19,7 @@
 #include <drm/drm_gem_shmem_helper.h>
 #include <drm/drm_gem_framebuffer_helper.h>
 #include <drm/drm_ioctl.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_modeset_helper_vtables.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_simple_kms_helper.h>
@@ -637,7 +638,6 @@ static void gm12u320_driver_release(struct drm_device *dev)
 	gm12u320_usb_free(gm12u320);
 	drm_mode_config_cleanup(dev);
 	drm_dev_fini(dev);
-	kfree(gm12u320);
 }
 
 DEFINE_DRM_GEM_FOPS(gm12u320_fops);
@@ -692,6 +692,7 @@ static int gm12u320_usb_probe(struct usb_interface *interface,
 		return ret;
 	}
 	dev->dev_private = gm12u320;
+	drmm_add_final_kfree(dev, gm12u320);
 
 	drm_mode_config_init(dev);
 	dev->mode_config.min_width = GM12U320_USER_WIDTH;
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
