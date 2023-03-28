Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EAE66CC236
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 16:37:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D800C10E3DE;
	Tue, 28 Mar 2023 14:37:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7004A10E3DE
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 14:37:12 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id b20so50670808edd.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 07:37:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680014231;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:from:to:cc:subject:date:message-id:reply-to;
 bh=zQmjReLMkxtS3Ylf9Gai6KIzJluY9/zyQyab67UImSw=;
 b=lPk87j+/i6CMXSrxK9Obr+tt8lw7aoN147iXO4UxmNqJ2bRJPHkigQrg8Q2+KLEU3g
 HTYD9ba0FKFIGvr9c0D2CsZPaiMz9EGgoFchEjgyfHImeaCcJsSHYOo0/6XFyF4FPzqZ
 xgMv23Ahz5/9iEjzLDxu0YdH0qsdFh2oGkCU3sBaO8+eBvwuxTxCWJ67OzwKzLRyXGYc
 gFa7PldQdQ2D7eDsoOPRWDNOmRHo2DRwXjDIclsyiXGUL/YJgLCwSjbyHXvfGS3WJq9e
 rSyPJ20zuhjqMHhy3pllZ6ayOdWkdqIcGRDKXqG58eMXCpu3iNexe9rFQ/r4RniVvyrg
 bd7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680014231;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=zQmjReLMkxtS3Ylf9Gai6KIzJluY9/zyQyab67UImSw=;
 b=Brb+OFbgyVYtdmO6WzNRRxSX4+J60JvzOqUdTeUtdNf+q2i8VhmnDLXqRaY3kWrURX
 5Xn+5L3OYIVQXvvN0WEDpQtiGPU7NHbQ8ResuDQlArYohJztFVOUSDbEnMOPyEGfRzw8
 miBrteNvoVTUgMggNnikPDQPPdOsxhtznaO2MJNLgPqFAstt1d7BEr68s49+PfG2kE3R
 3iu0jqeE6kvXJw10yp+BcuLKcmuWNamMtzRoyq4d3xI9HlSNkTJVNVNAN1i+/4T0eoF+
 srO8xSPqD6eWOJ6DkZ9mWUga+jKNJu5iKC+RR3gly0TwFTxV8+xs9vl3L51/QId5i5Vo
 hO7Q==
X-Gm-Message-State: AAQBX9frCTimOtlf4L7wINsiabPrttvtzN18kM3DQ4Sx8Fi7Wq8GnyrF
 74QNAbxFCnzUmXzkJcGUr5gxN4p+ZQ0=
X-Google-Smtp-Source: AKy350YWzL6Fmo9NNjCtqJlWR3v4avwfybaQPL5LzKhrjHRhePKGXmy/ZFjh/0rr/yke5E+nwAxoRA==
X-Received: by 2002:a17:906:348a:b0:92e:d6e6:f3ad with SMTP id
 g10-20020a170906348a00b0092ed6e6f3admr17321996ejb.6.1680014230850; 
 Tue, 28 Mar 2023 07:37:10 -0700 (PDT)
Received: from able.fritz.box (p4fc2092b.dip0.t-ipconnect.de. [79.194.9.43])
 by smtp.gmail.com with ESMTPSA id
 jx3-20020a170907760300b00930876176e2sm15396215ejc.29.2023.03.28.07.37.09
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Mar 2023 07:37:10 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Mar 2023 16:37:05 +0200
Message-Id: <20230328143709.86644-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/debugfs: drop debugfs_init() for the
 render and accel node v2
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

We want to remove per minor debugfs directories. Start by stopping
drivers from adding anything inside of those in the mid layer callback.

v2: drop it for the accel node as well

Signed-off-by: Christian König <christian.koenig@amd.com>
---
 drivers/accel/drm_accel.c     | 3 ---
 drivers/gpu/drm/drm_debugfs.c | 2 +-
 2 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/accel/drm_accel.c b/drivers/accel/drm_accel.c
index 1b69824286fd..d473388ee807 100644
--- a/drivers/accel/drm_accel.c
+++ b/drivers/accel/drm_accel.c
@@ -99,9 +99,6 @@ void accel_debugfs_init(struct drm_minor *minor, int minor_id)
 
 	drm_debugfs_create_files(accel_debugfs_list, ACCEL_DEBUGFS_ENTRIES,
 				 minor->debugfs_root, minor);
-
-	if (dev->driver->debugfs_init)
-		dev->driver->debugfs_init(minor);
 }
 
 /**
diff --git a/drivers/gpu/drm/drm_debugfs.c b/drivers/gpu/drm/drm_debugfs.c
index 4855230ba2c6..54376e2400bb 100644
--- a/drivers/gpu/drm/drm_debugfs.c
+++ b/drivers/gpu/drm/drm_debugfs.c
@@ -242,7 +242,7 @@ int drm_debugfs_init(struct drm_minor *minor, int minor_id,
 		drm_client_debugfs_init(minor);
 	}
 
-	if (dev->driver->debugfs_init)
+	if (dev->driver->debugfs_init && dev->render != minor)
 		dev->driver->debugfs_init(minor);
 
 	list_for_each_entry_safe(entry, tmp, &dev->debugfs_list, list) {
-- 
2.34.1

