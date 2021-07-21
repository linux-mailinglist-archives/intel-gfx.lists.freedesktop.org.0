Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A9C3D1250
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 17:25:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 113416EB74;
	Wed, 21 Jul 2021 15:25:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAA646E9A4
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 15:25:06 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id b12so1110913plh.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 08:25:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ReIHw+eskmExAvlnepg8gr2vNrQ8gC8vqz4lIfsdf9M=;
 b=cx4NkDTXmjWRjxdpEmqXmgEoug9yEw1drICy1oEyxkj7s3kyeXv2ZOm+2RHy/a/uBF
 RBXW32jDAVcomik4Z5g4tl/GqoTcN5cagWxgGx6LaAp1ObAnCj+YWcl4H0iaRzQf5E0H
 IiO+0kkPNQ1Iyu1UQCfOOqnQl0f13KuTmxEOX0OXC2vDf/TujSwb2nq//dz+FpWFzKK0
 1okqYPZN4RPsoeCXEuHKVnuylFtKqmidnYZV4V3bRbX1umOx/cYCziCtxgu1YYO9TwXO
 wu7BmRFRgIIBr8dNiPVQvfHsAmg6QAmRU3bb7Njg7P8f9AMf9r9FZkzp63oVsBCls/4w
 bYUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ReIHw+eskmExAvlnepg8gr2vNrQ8gC8vqz4lIfsdf9M=;
 b=eVlf5Km6v8yTncU70lqk/Iwt4sTE/uCX54XzGs2zYWj941VaoeWFeRxY+YT561JdWM
 IudRnOBQ5ldWPpRCG1gSJO9YpVr1G7jPiYSVKASsd3LSS7SM/co+FqaPWtXeBYf+JJ3H
 aqUIxLsz1CPh2hw9K/23E7pcBI2Oj3KmiobyAif2EqG3XmCwCp1/bWtYJGlUYWPcb+IH
 b1SbcIkFKP9CVLJrehNBbzD5BTp8q+0ahoWkYO8QUuEyA07ymfRxGe+aUARpCZu+sRvh
 WEznMMF00WC7qmr0Kn/WtivYXDWMHHGJxWJrBXo2+lESjSYX5NfnKiTglHpAWRentKvZ
 uF0Q==
X-Gm-Message-State: AOAM530kCSaN5/9vq7yqirF9FHpBU8QPHiLTKJEbeLbEhfrwDCEawwHU
 Q8OlleMvPwyujq4lvbtmpcb8kVKNKwts9g==
X-Google-Smtp-Source: ABdhPJxuTUBirkIPqBQAE7yxteaKmjNJyniIHrCHUdGlRBJyQmVuAK/n8mvtAme6mXGeRhRjsJLhnA==
X-Received: by 2002:a17:902:e80b:b029:12b:56f4:dd1 with SMTP id
 u11-20020a170902e80bb029012b56f40dd1mr26223843plg.68.1626881106044; 
 Wed, 21 Jul 2021 08:25:06 -0700 (PDT)
Received: from omlet.com ([134.134.137.82])
 by smtp.gmail.com with ESMTPSA id e4sm32451034pgi.94.2021.07.21.08.25.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jul 2021 08:25:05 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 21 Jul 2021 10:23:57 -0500
Message-Id: <20210721152358.2893314-6-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721152358.2893314-1-jason@jlekstrand.net>
References: <20210721152358.2893314-1-jason@jlekstrand.net>
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
