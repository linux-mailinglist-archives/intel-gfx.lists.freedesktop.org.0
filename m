Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1214B6D1B57
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Mar 2023 11:07:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 604A310F15D;
	Fri, 31 Mar 2023 09:07:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 795E510F15D
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 09:07:32 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id r11so86993634edd.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 02:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680253651;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:from:to:cc:subject:date:message-id:reply-to;
 bh=zQmjReLMkxtS3Ylf9Gai6KIzJluY9/zyQyab67UImSw=;
 b=gjtrEhi/W8J+JZYgTktVJ7dKFeolVOm7bfKd+qO28xswzvHar6Z6BRSqU1V+olggzb
 JWNk1Wmff/9rFYKENU93b93mQPkWKWVgiQdIQ82BpNPPAPJDU18uh/sKfGNhF5DKMaxm
 m/S4ujzPr70xXZ60BUrB3mNdGAOU8JhmM7BE6Jek/H7OM9Gh3RXyJEGKd9hRM1aRX3Zq
 OHJAKAWNkzAn3fbLtK2ftWIp6gH+MiOrRYuysl7zBViPIwhBi1CAgy+iw2Tccxdml6EG
 M5XPxbG3athhB1Ps1LmCDLo/MZDByIw0ozZZB4ouUA1ZTAKyItmf4iXi3DzMQ8MtGphT
 pfYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680253651;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=zQmjReLMkxtS3Ylf9Gai6KIzJluY9/zyQyab67UImSw=;
 b=LqPstbK1zEdnAxZAP3yUpICV6hHSn5vp2og7z3FHnIPekvR1QUR7N9xUgRVVeA8Wtx
 aeMM+iYtfxz1OXPbB9RKTWP4SWbRJ8kKsKORgHmUSzT7PIiBwm2Nu4Rca/EdpniCt+el
 9nWwmJHU+73Iu0H2JOY0LBB8yR1XHDAGbL5GJRYefii3ARxjnygkazK+VF8APimYHPKU
 r2LdS3Zm5lpS2tLWvYuxZPqYX6pevG9HJrrUIELW4KlLiqKJ3KHs64XpEzakBj4faOcU
 1+j5P83SO5SItnrEA7H9pQFTBRDMH04IVZrMTItg5/5OQEW5J2CGk1oCGh9MEzrs4YSt
 CGgQ==
X-Gm-Message-State: AAQBX9ez9PlP2DsqRlfly2wsXgavPBAlR48kVVtWiz5UWVRRHiFitz1Z
 1DRfznvZsakrAHOkWjvgPXfodAsZDqyXtQ==
X-Google-Smtp-Source: AKy350YV4R3Cq45ZGklXHkeC8RvksrMPe1bWCaiSkpimIsuamf1oHi286LFEBTDmIDnEi+Hjy3tGNA==
X-Received: by 2002:a17:907:3f97:b0:93f:505b:9742 with SMTP id
 hr23-20020a1709073f9700b0093f505b9742mr26259541ejc.65.1680253650934; 
 Fri, 31 Mar 2023 02:07:30 -0700 (PDT)
Received: from able.fritz.box (p4fc2092b.dip0.t-ipconnect.de. [79.194.9.43])
 by smtp.gmail.com with ESMTPSA id
 r2-20020a170906a20200b009323f08827dsm779960ejy.13.2023.03.31.02.07.30
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Mar 2023 02:07:30 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Mar 2023 11:07:25 +0200
Message-Id: <20230331090729.2183-1-christian.koenig@amd.com>
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

