Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5CC3577BA0
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jul 2022 08:41:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2DC4A9D9E;
	Mon, 18 Jul 2022 06:39:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com
 [IPv6:2607:f8b0:4864:20::134])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48436A9D68;
 Mon, 18 Jul 2022 06:39:19 +0000 (UTC)
Received: by mail-il1-x134.google.com with SMTP id m20so5551323ili.3;
 Sun, 17 Jul 2022 23:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HN3qot2GrUhrFIok0Aix4opho8tmQ6OyHPXteIcerns=;
 b=iDY1x9PFXtc0IfsqusncY72pB5BCEWQtFMDabspfCxLbbgs6uG5YGFNSiTFRDA8UXM
 Z31/EMmFit/WmqHaMchTZcxuQBckGhvqiTHvAwqtERF4rfaH0aoqGlfbGtgWQECg12+L
 zx852lQh3Gx5MqMAf4Q9rplfi5wmGxEWQSSkYAmdV783tM64aGPtb0JB5iLubBxhIoQK
 yp5DGwRCFYQRfUM5q/c7UTThuX6GHhxS2DssyXMjipfxe+dEJQntj0zOQVl8d7lauu3E
 533ukJwi8aIM81yBsJ3sPVjCffvpi+nD+z5KnRdxcnTDPPcJcTHt2py1A3ReYnBMvON4
 jYLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HN3qot2GrUhrFIok0Aix4opho8tmQ6OyHPXteIcerns=;
 b=NCo09gmWCIn7ib3nncEvkxjRGrG1q35E+Njq6RxFv30iO/9cNYpOXkN+i1BiinSWqr
 Di+Y74iC0Wq+NZlrZ6sKD+bpF9R+iLgbm/9GHA/Jlvmc8n1Eo54fsYGr//nYELoZG/3F
 Q0ozyj/YrmnmzCtVqEFEoyDkdXEAWOAdgVlCxyIJqlm7lKxsO3du2E5qp7M6zxy4KeeA
 A8+gVg1+JVQ7LRTgsyaWKzsSXE/JXLUpJ84XHkqeThlL9PMSc6E7w26J2QxeRmo58GfT
 m4b1gXlGwN76EOueU0AnRzNIaaAHA2zaukwR+ktsMfGVsSzsEA0NuXpigf9+tfOHcSuT
 Aqsw==
X-Gm-Message-State: AJIora83aUOL4TijSKH839+N8G7vLiTGRd95G4w5zd7xU3yjw+IQ+vBa
 u4L+Yc+F5YOSNzoq8+QSQyc=
X-Google-Smtp-Source: AGRyM1sAq21zu2nhOv/kKuAFSZme1RSBi1Ns4uWhQXEY4SARxMQTfZ88PxAHFF34nlnu60JCgsvWcw==
X-Received: by 2002:a92:7f04:0:b0:2dc:d2:692 with SMTP id
 a4-20020a927f04000000b002dc00d20692mr12586875ild.87.1658126358559; 
 Sun, 17 Jul 2022 23:39:18 -0700 (PDT)
Received: from frodo.. (c-73-78-62-130.hsd1.co.comcast.net. [73.78.62.130])
 by smtp.googlemail.com with ESMTPSA id
 o12-20020a92a80c000000b002dcd35bb030sm2342604ilh.74.2022.07.17.23.39.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Jul 2022 23:39:18 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: jbaron@akamai.com
Date: Mon, 18 Jul 2022 00:36:31 -0600
Message-Id: <20220718063641.9179-48-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220718063641.9179-1-jim.cromie@gmail.com>
References: <20220718063641.9179-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 35/39] nouveau: adapt NV_DEBUG,
 NV_ATOMIC to use DRM.debug
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
Cc: Jim Cromie <jim.cromie@gmail.com>, nouveau@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

These 2 macros used drm_debug_enabled() on DRM_UT_{DRIVER,ATOMIC}
respectively, replace those with drm_dbg_##cat invocations.

this results in new class'd prdbg callsites:

:#> grep nouveau /proc/dynamic_debug/control | grep class | wc
    116    1130   15584
:#> grep nouveau /proc/dynamic_debug/control | grep class | grep DRIVER | wc
     74     704    9709
:#> grep nouveau /proc/dynamic_debug/control | grep class | grep ATOMIC | wc
     31     307    4237
:#> grep nouveau /proc/dynamic_debug/control | grep class | grep KMS | wc
     11     119    1638

the KMS entries are due to existing uses of drm_dbg_kms().

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/gpu/drm/nouveau/nouveau_drv.h | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/nouveau/nouveau_drv.h b/drivers/gpu/drm/nouveau/nouveau_drv.h
index b2a970aa9bf4..f266cd6b0405 100644
--- a/drivers/gpu/drm/nouveau/nouveau_drv.h
+++ b/drivers/gpu/drm/nouveau/nouveau_drv.h
@@ -39,6 +39,7 @@
  */
 
 #include <linux/notifier.h>
+#include <linux/dynamic_debug.h>
 
 #include <nvif/client.h>
 #include <nvif/device.h>
@@ -264,13 +265,16 @@ void nouveau_drm_device_remove(struct drm_device *dev);
 #define NV_WARN(drm,f,a...) NV_PRINTK(warn, &(drm)->client, f, ##a)
 #define NV_INFO(drm,f,a...) NV_PRINTK(info, &(drm)->client, f, ##a)
 
-#define NV_DEBUG(drm,f,a...) do {                                              \
-	if (drm_debug_enabled(DRM_UT_DRIVER))                                  \
-		NV_PRINTK(info, &(drm)->client, f, ##a);                       \
+#define NV_DRMDBG(cat,c,f,a...) do {				\
+	struct nouveau_cli *_cli = (c);				\
+	drm_dbg_##cat(_cli->drm->dev, "%s: "f, _cli->name, ##a); \
 } while(0)
-#define NV_ATOMIC(drm,f,a...) do {                                             \
-	if (drm_debug_enabled(DRM_UT_ATOMIC))                                  \
-		NV_PRINTK(info, &(drm)->client, f, ##a);                       \
+
+#define NV_DEBUG(drm,f,a...) do {					\
+	NV_DRMDBG(driver, &(drm)->client, f, ##a);			\
+} while(0)
+#define NV_ATOMIC(drm,f,a...) do {					\
+	NV_DRMDBG(atomic, &(drm)->client, f, ##a);			\
 } while(0)
 
 #define NV_PRINTK_ONCE(l,c,f,a...) NV_PRINTK(l##_once,c,f, ##a)
-- 
2.36.1

