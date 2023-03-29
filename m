Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87CDB6CDA91
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 15:21:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06CA910E172;
	Wed, 29 Mar 2023 13:21:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2691010E172
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 13:21:34 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id y4so63267345edo.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 06:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680096092;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:from:to:cc:subject:date:message-id:reply-to;
 bh=zQmjReLMkxtS3Ylf9Gai6KIzJluY9/zyQyab67UImSw=;
 b=ZtymoMvmFESDXenKaQlGB926Gj/dBEOgcxBDLclyOgb6ETiJYCLhoODbXmNH+2ZIvg
 7ZRL9NhoiCrmX7eGwWVDgDMOO7XQPIAAAX5ZXgLr0uw0ujcgxktzY5PSe2tE13dKah9u
 5HnLtn+ul4rvWtmjjJTFlw7LPoFSPxQXiw8p1KXtuGujdR7QnEjSL8GnMtv7YWT+eZho
 FwPfhID7HFKDZbBDBWYUEZJaN0uRkXp3I4NwXGZOLejbwlApPVvTYKlmPCy9vG/K+xXn
 +zliWwMds8pocOxzQgdwWAqbs2m/RhcCKMXbLLrzvVBXSE9cA5fCtJnWUwWF/mqh/C7/
 fBhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680096092;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=zQmjReLMkxtS3Ylf9Gai6KIzJluY9/zyQyab67UImSw=;
 b=vUXDY+GjQSRvGZuRCvRahxRujvIlxP0HATS+iCsFpYRtqe202qY1E+jMOa5zvMnww3
 UPFQ3G1UG9Qtrzn5w4SW4v3hFyCAoQh6Wgmj6OWOgDu5bR92i+7Vl6GdxJ5UyNyauNWK
 mr44JFiS2Fj1WwlRZHOn9R/j6sRRqnlf3BsA05cQ743bPhph5kEWCdIuuOSc5qFWaiBs
 tFL+6lT8EPICezxlm+/7IPlkLugOkRY090dlXy0d8xPyO515mTCnnsawT9ierEZ4KvLv
 /ZBMYHu4gDoKzk98ul+k8MfNZUYxev2IyAivzxzOStgGxQ5S81mr5hkX9X4tLDNE7LhC
 fyuw==
X-Gm-Message-State: AAQBX9d86sI8OE9OxMNqGzpPi7U8JSTw04F/uesDqbzZLb9YzNgcnBoC
 jHu76oeuX+hWTnowBxqDfEaQbAGxIl4=
X-Google-Smtp-Source: AKy350ZEye3Q7H0R1NQXilGbuAqR78/2DDhv9StGLPp+PVIrdVmuZiaWP1wgVFrHGKZC3HxZnHB7nA==
X-Received: by 2002:a17:906:2759:b0:931:ad32:79ed with SMTP id
 a25-20020a170906275900b00931ad3279edmr17728394ejd.12.1680096092633; 
 Wed, 29 Mar 2023 06:21:32 -0700 (PDT)
Received: from able.fritz.box (p4fc2092b.dip0.t-ipconnect.de. [79.194.9.43])
 by smtp.gmail.com with ESMTPSA id
 sc36-20020a1709078a2400b0093e39b921c8sm7029723ejc.164.2023.03.29.06.21.31
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Mar 2023 06:21:32 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 15:21:26 +0200
Message-Id: <20230329132130.105355-1-christian.koenig@amd.com>
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

