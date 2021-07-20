Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9591C3D015D
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jul 2021 20:14:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 974C36E4CD;
	Tue, 20 Jul 2021 18:14:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com
 [IPv6:2607:f8b0:4864:20::432])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA4A86E4CD
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 18:14:14 +0000 (UTC)
Received: by mail-pf1-x432.google.com with SMTP id b12so212180pfv.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 11:14:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ReIHw+eskmExAvlnepg8gr2vNrQ8gC8vqz4lIfsdf9M=;
 b=Hz0cL33ubiHisyTzwjnlyjUxG46kLnOukqZ6f4kCsQaBFEU9mt7MUrMjpl3qlQiQrG
 HYFytFsxxewbXaYKno/TrWlhcBlcwsE7Rbk8h7x4F378nl7zsjzLHmtqqmDBn5TbsF/j
 esDi1udl3EN8K2guXz52hw5Lb+AgLuVVyYXaKDynZkDg08sfXNAftNhNZ+daQa+3qM4d
 N6hmFNFIjkt1jeoIKIb2Npk1DjLDoZaXXzHb2PliH+jjCpdq16f6QDx7vnGfgp1Oldqp
 gMMZqLfKWUW7TEbcXy7il9xxE1ObZTnzUo6IzbknUVa25d/XCr0YnQFGEzC9Y9xNwsWa
 +gTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ReIHw+eskmExAvlnepg8gr2vNrQ8gC8vqz4lIfsdf9M=;
 b=gdL4x5e4XEZNRTE+ZAUaP5u0JVACo1vq2WzLtNXYmcluUIrHpDPe11tYUW71vcSwuf
 YRPym+U2/cqK/97sCyWnAGigiXZkBEPvy81/TDTIH0Z0Mjz0RXl3pgcQnTnAL4Nb3aHN
 EuI4Mf6SfzcqXQEawF+g18KFVDgneqWt2YsDWcjFKN04ln3qBLjUT9Vzv8bFa8y9CBK2
 mnpA6rmH3jmOBEcaDVVN7tOSAGOorsR7ihkc6+zMViE5SG5Hwpw66xZG0Naz5Czcwlww
 JrTkt6beBp4aWcwmCLOfm0A/a8IMLRk0r/JtLQGataO9OILoyv8bYsHBdmWgwqmfkCDC
 jo7w==
X-Gm-Message-State: AOAM532qjHjFT4novXpL4OKm5Sts0ui3KpZXlIvAmdiMayBnaDd2fKaR
 uuYB8rHERvHavx/U4kWaXaxV0k3kZhqNKg==
X-Google-Smtp-Source: ABdhPJwZ4OwkDQv3h+FLciZIMUXZoQhY1KGMDFUV0VonL+NXfcJG1HlfU9yqK0jIv31w0uJKIBV0hQ==
X-Received: by 2002:a62:d108:0:b029:304:33e5:4dde with SMTP id
 z8-20020a62d1080000b029030433e54ddemr32926250pfg.74.1626804853725; 
 Tue, 20 Jul 2021 11:14:13 -0700 (PDT)
Received: from omlet.lan ([134.134.137.86])
 by smtp.gmail.com with ESMTPSA id c2sm26436573pgh.82.2021.07.20.11.14.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Jul 2021 11:14:13 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 20 Jul 2021 13:13:56 -0500
Message-Id: <20210720181357.2760720-6-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210720181357.2760720-1-jason@jlekstrand.net>
References: <20210720181357.2760720-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/6] drm/ttm: Initialize debugfs from
 ttm_global_init()
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We create a bunch of debugfs entries as a side-effect of
ttm_global_init() and then never clean them up.  This isn't usually a
problem because we free the whole debugfs directory on module unload.
However, if the global reference count ever goes to zero and then
ttm_global_init() is called again, we'll re-create those debugfs entries
and debugfs will complain in dmesg that we're creating entries that
already exist.  This patch fixes this problem by changing the lifetime
of the whole TTM debugfs directory to match that of the TTM global
state.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/ttm/ttm_device.c | 12 ++++++++++++
 drivers/gpu/drm/ttm/ttm_module.c | 16 ----------------
 2 files changed, 12 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/ttm/ttm_device.c b/drivers/gpu/drm/ttm/ttm_device.c
index 519deea8e39b7..74e3b460132b3 100644
--- a/drivers/gpu/drm/ttm/ttm_device.c
+++ b/drivers/gpu/drm/ttm/ttm_device.c
@@ -44,6 +44,8 @@ static unsigned ttm_glob_use_count;
 struct ttm_global ttm_glob;
 EXPORT_SYMBOL(ttm_glob);
 
+struct dentry *ttm_debugfs_root;
+
 static void ttm_global_release(void)
 {
 	struct ttm_global *glob = &ttm_glob;
@@ -53,6 +55,7 @@ static void ttm_global_release(void)
 		goto out;
 
 	ttm_pool_mgr_fini();
+	debugfs_remove(ttm_debugfs_root);
 
 	__free_page(glob->dummy_read_page);
 	memset(glob, 0, sizeof(*glob));
@@ -73,6 +76,13 @@ static int ttm_global_init(void)
 
 	si_meminfo(&si);
 
+	ttm_debugfs_root = debugfs_create_dir("ttm", NULL);
+	if (IS_ERR(ttm_debugfs_root)) {
+		ret = PTR_ERR(ttm_debugfs_root);
+		ttm_debugfs_root = NULL;
+		goto out;
+	}
+
 	/* Limit the number of pages in the pool to about 50% of the total
 	 * system memory.
 	 */
@@ -100,6 +110,8 @@ static int ttm_global_init(void)
 	debugfs_create_atomic_t("buffer_objects", 0444, ttm_debugfs_root,
 				&glob->bo_count);
 out:
+	if (ret && ttm_debugfs_root)
+		debugfs_remove(ttm_debugfs_root);
 	if (ret)
 		--ttm_glob_use_count;
 	mutex_unlock(&ttm_global_mutex);
diff --git a/drivers/gpu/drm/ttm/ttm_module.c b/drivers/gpu/drm/ttm/ttm_module.c
index 997c458f68a9a..7fcdef278c742 100644
--- a/drivers/gpu/drm/ttm/ttm_module.c
+++ b/drivers/gpu/drm/ttm/ttm_module.c
@@ -72,22 +72,6 @@ pgprot_t ttm_prot_from_caching(enum ttm_caching caching, pgprot_t tmp)
 	return tmp;
 }
 
-struct dentry *ttm_debugfs_root;
-
-static int __init ttm_init(void)
-{
-	ttm_debugfs_root = debugfs_create_dir("ttm", NULL);
-	return 0;
-}
-
-static void __exit ttm_exit(void)
-{
-	debugfs_remove(ttm_debugfs_root);
-}
-
-module_init(ttm_init);
-module_exit(ttm_exit);
-
 MODULE_AUTHOR("Thomas Hellstrom, Jerome Glisse");
 MODULE_DESCRIPTION("TTM memory manager subsystem (for DRM device)");
 MODULE_LICENSE("GPL and additional rights");
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
