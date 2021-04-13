Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A797935DBA8
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 11:49:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E56586E334;
	Tue, 13 Apr 2021 09:49:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBBD66E2E3
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 09:49:18 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id a6so15784628wrw.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 02:49:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KOCIo0GxcuBFJ7MAFxsDsYBoZyOhVlSKHbo+qwITV5Q=;
 b=adN7hP+T0iNVXfFXZvSvgr+93E9K98/BtliqF90MH8R8o5FKRtDJItG5KKbuc4MYMe
 qWK/ti+Hc73ReMOF1oIb5bn0cRI5vWpR+7N32rqQp4F42mweFWw9zjUMLl9kWoBC0RcG
 wxR9XZDiqN0RFaXyrUK1NIeHoIMwzwAMXoYoI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KOCIo0GxcuBFJ7MAFxsDsYBoZyOhVlSKHbo+qwITV5Q=;
 b=jz0LTOuhfQMuyX2zZQZBQmiTbMJp6d9LjUweOlNtjCITvbCQAjVlq48L0D06Iga2lx
 p9mV0InZbD04pf4h1Zu6SJ6bpWRioP+TTsr4WLyG6jC/EDKvjGPptFFbp5Ls0fsyrj+i
 DCKpKhdeymakx6hb8Uanb6/cU4o6iyjvGEFJwRcnfBhPJU1+b+bOCepQ08gBr6V39xlj
 I2UUHgynbJE+1X52BJufp3pdDa7EpO+6L+iD3KhzJ5Il/AjwWQaLVmkNW2IzwEHFrxdk
 /ABWe9sN9HYgyqQZVvxGx0bh1ze6FcVZoo7isLdfFMMBRZrPdezwKQhcr/9ZdZtjJLP3
 o+4w==
X-Gm-Message-State: AOAM533DQonM/57LuPAdmF351em0E9jukXSPxjfaGM484YJs0k6wfuz/
 8xHac6aZvZtzgJ7EA9bJpS/m/g==
X-Google-Smtp-Source: ABdhPJzuwM6zgnq1ioNXEfS/WwdqokduH0KbRvUyJrFDtNqmDFhRlSCyaOxnBcCKHkMTz2CRCLLbEg==
X-Received: by 2002:a05:6000:1004:: with SMTP id
 a4mr34540971wrx.202.1618307357555; 
 Tue, 13 Apr 2021 02:49:17 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 64sm1956458wmz.7.2021.04.13.02.49.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Apr 2021 02:49:17 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 13 Apr 2021 11:48:59 +0200
Message-Id: <20210413094904.3736372-8-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210413094904.3736372-1-daniel.vetter@ffwll.ch>
References: <20210413094904.3736372-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/12] drm/nouveau: Don't set allow_fb_modifiers
 explicitly
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
Cc: Pekka Paalanen <pekka.paalanen@collabora.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 stable@vger.kernel.org, Ben Skeggs <bskeggs@redhat.com>,
 nouveau@lists.freedesktop.org, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since

commit 890880ddfdbe256083170866e49c87618b706ac7
Author: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Date:   Fri Jan 4 09:56:10 2019 +0100

    drm: Auto-set allow_fb_modifiers when given modifiers at plane init

this is done automatically as part of plane init, if drivers set the
modifier list correctly. Which is the case here.

Note that this fixes an inconsistency: We've set the cap everywhere,
but only nv50+ supports modifiers. Hence cc stable, but not further
back then the patch from Paul.

Cc: stable@vger.kernel.org # v5.1 +
Cc: Pekka Paalanen <pekka.paalanen@collabora.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Ben Skeggs <bskeggs@redhat.com>
Cc: nouveau@lists.freedesktop.org
---
 drivers/gpu/drm/nouveau/nouveau_display.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/nouveau/nouveau_display.c b/drivers/gpu/drm/nouveau/nouveau_display.c
index 14101bd2a0ff..929de41c281f 100644
--- a/drivers/gpu/drm/nouveau/nouveau_display.c
+++ b/drivers/gpu/drm/nouveau/nouveau_display.c
@@ -697,7 +697,6 @@ nouveau_display_create(struct drm_device *dev)
 
 	dev->mode_config.preferred_depth = 24;
 	dev->mode_config.prefer_shadow = 1;
-	dev->mode_config.allow_fb_modifiers = true;
 
 	if (drm->client.device.info.chipset < 0x11)
 		dev->mode_config.async_page_flip = false;
-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
