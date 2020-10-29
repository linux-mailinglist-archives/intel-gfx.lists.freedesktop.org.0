Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C821329ECF9
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Oct 2020 14:33:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C0A26ECD0;
	Thu, 29 Oct 2020 13:33:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2ACE6ECD0
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Oct 2020 13:33:56 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id y12so2790686wrp.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Oct 2020 06:33:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=okqbNzFdwZPuRMdjzbPQXLm8pTjJ9aJfiEX+wWumIls=;
 b=D2WwOWKrdQmWDWCUjvY9eaPf2zDAMYB8TdU/SSTxil33av6cJkfaWCZX2s581e6tNv
 Gi/x9Ygo45uTti508Wan9u5R+7NTaJ0/1nRb/nS5nk7gJFuoIhhw7sT4LwUYHF7ZHYYa
 FuyG8xrrbEkRPL76kkl3fEmX4Z5tMrJqhMU0w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=okqbNzFdwZPuRMdjzbPQXLm8pTjJ9aJfiEX+wWumIls=;
 b=V70w2dtU0BrbYKguXKlH2aAkputa8DwuYU4G0g9PgBMlDyN0DpyVpVQYztuoZXmpYx
 iyFqWhw6WrCDJ7KoFt/sysg5MMtgrDfNUGthXxr1W+JidgwXUTFw5mLMS+Dbdnbz+ANy
 RKFbH4AKuQ2wXvtuqiXKbj8oQUxiajpJFDKmJLREj0VCvJnmNQvJfjixnBzOrlUJkyVd
 V/iGBBZH3r4XY+TVklTHlUV45YbpUnnyKOvjEc3QcwYWIJS1/7ih0zpbw6aMFZMHWryX
 xa0gmH4knrG+LNqZIGvF7xYScJPNRCimOCddM2vOsMp0MM1jweV2l5vKnzAo7XrWNLEC
 ilMw==
X-Gm-Message-State: AOAM531/BnjhIj8CTYbq12knmrq5SJzm/JH8wtykW5Ao3+crgrOzEwt9
 MbMwrVovX0ULdG/Wu6dt6M4E0g==
X-Google-Smtp-Source: ABdhPJwECelWl0Q5uLtp0RD46KHIttYNX4xjJA8dHiXIyessUl0H/6RZq/tvKmoSh2GysP6jYNFH8w==
X-Received: by 2002:adf:db51:: with SMTP id f17mr5651935wrj.126.1603978435680; 
 Thu, 29 Oct 2020 06:33:55 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l3sm5576804wmg.32.2020.10.29.06.33.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Oct 2020 06:33:55 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu, 29 Oct 2020 14:33:47 +0100
Message-Id: <20201029133347.4088884-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201029101428.4058311-3-daniel.vetter@ffwll.ch>
References: <20201029101428.4058311-3-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/qxl: Remove fbcon acceleration leftovers
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
Cc: spice-devel@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 virtualization@lists.linux-foundation.org, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

These are leftovers from 13aff184ed9f ("drm/qxl: remove dead qxl fbdev
emulation code").

v2: Somehow these structs provided the struct qxl_device pre-decl,
reorder the header to not anger compilers.

Acked-by: Gerd Hoffmann <kraxel@redhat.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Dave Airlie <airlied@redhat.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: virtualization@lists.linux-foundation.org
Cc: spice-devel@lists.freedesktop.org
---
 drivers/gpu/drm/qxl/qxl_drv.h | 18 ++----------------
 1 file changed, 2 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/qxl/qxl_drv.h b/drivers/gpu/drm/qxl/qxl_drv.h
index 3602e8b34189..6239626503ef 100644
--- a/drivers/gpu/drm/qxl/qxl_drv.h
+++ b/drivers/gpu/drm/qxl/qxl_drv.h
@@ -166,20 +166,6 @@ struct qxl_drm_image {
 	struct list_head chunk_list;
 };
 
-struct qxl_fb_image {
-	struct qxl_device *qdev;
-	uint32_t pseudo_palette[16];
-	struct fb_image fb_image;
-	uint32_t visual;
-};
-
-struct qxl_draw_fill {
-	struct qxl_device *qdev;
-	struct qxl_rect rect;
-	uint32_t color;
-	uint16_t rop;
-};
-
 /*
  * Debugfs
  */
@@ -188,8 +174,6 @@ struct qxl_debugfs {
 	unsigned int num_files;
 };
 
-int qxl_debugfs_fence_init(struct qxl_device *rdev);
-
 struct qxl_device {
 	struct drm_device ddev;
 
@@ -271,6 +255,8 @@ struct qxl_device {
 
 #define to_qxl(dev) container_of(dev, struct qxl_device, ddev)
 
+int qxl_debugfs_fence_init(struct qxl_device *rdev);
+
 extern const struct drm_ioctl_desc qxl_ioctls[];
 extern int qxl_max_ioctl;
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
