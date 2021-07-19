Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D50C43CEB08
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jul 2021 20:31:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 205EF6E156;
	Mon, 19 Jul 2021 18:31:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D8C66E07B
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jul 2021 18:30:59 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id n11so10038031plc.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jul 2021 11:30:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fjh1pne4zBZdNoYmMIDQC5NmO7Tt9dtvXTfBxijHdaA=;
 b=Qilqv6QP1cdeOlIti9RbVVaBJ/uxXtRDdPIjyRDQgre0cy+2ROOwXQWmuCBEHucCDL
 GvmSzr+hO2UAW/GolXhdYS9EvGQMYya9dDdYkVYthuxMnGx8g7J8Ybnfm9nMtUh049l7
 ZUXFFZWMYKvPV4sg3g+uCwCi2pSM/fduJTI7c0uLH/oVwv8Dnxa3CJZy5uHfzoRvBbQJ
 0Y6XHWdeV+ougBrWuqktdRmuKecGL9RNnhLpkA0B4946nJ2eBXkLvP4IwpOoZCJYCKGT
 4Y4PD252flQ/pTYYQPbdXwnZGBUQAf5GkERh4WklbHU7NqxwQXcr6l3wX/GvdZ8P6Qm7
 dSMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fjh1pne4zBZdNoYmMIDQC5NmO7Tt9dtvXTfBxijHdaA=;
 b=nNNrbqoT0+/P9T0wxc6QRhC3HVdLxb2vpPjaWbd3NmrZu91X7pd7R3Z6YX2LGVI6+5
 paNibkoGkyrWIhyDpkTjZrqS+Js7mN1FNOJd1SrZBSOobc4rpZrRgm1r0NZjPHmsLCjm
 uPzAbNNdno9j6UmFA9Lno0FSQdf24yYm9tp54ekVWgnW2oTzV5G69HYjoUYjUeIh65vN
 gA3L/Ojjwup/Qo7PHnbCFajAaHb7iQVQ8yV4XhsycBP+yXv+mEUcQBDtMJBrKokdJ94Y
 nBAlV3+Yp7sib+wKXo7f4pTf5kjNXvUftVYeMju0kZk5QMAJ6p2Cxq2ucP30ZAzBVaPh
 cEzA==
X-Gm-Message-State: AOAM531e8gkoYOiEWuO/6H04kaS4aEt1GkdU71qV6GOknOpH2OdNNU3s
 hruFcubZweWcs7eyw93wgZcOqEySMy+clA==
X-Google-Smtp-Source: ABdhPJwPlYCjNkH/FRdImJ2TGC5LdYeERjFmInkHZt8xqBITt87+foH0grdPX6FonxhKSDXzbJc+4Q==
X-Received: by 2002:a17:90a:d244:: with SMTP id
 o4mr32444217pjw.71.1626719458817; 
 Mon, 19 Jul 2021 11:30:58 -0700 (PDT)
Received: from omlet.com ([134.134.137.83])
 by smtp.gmail.com with ESMTPSA id w23sm6961555pfc.60.2021.07.19.11.30.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Jul 2021 11:30:58 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 19 Jul 2021 13:30:46 -0500
Message-Id: <20210719183047.2624569-6-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210719183047.2624569-1-jason@jlekstrand.net>
References: <20210719183047.2624569-1-jason@jlekstrand.net>
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
---
 drivers/gpu/drm/ttm/ttm_device.c | 12 ++++++++++++
 drivers/gpu/drm/ttm/ttm_module.c |  4 ----
 2 files changed, 12 insertions(+), 4 deletions(-)

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
index 997c458f68a9a..88554f2db11fe 100644
--- a/drivers/gpu/drm/ttm/ttm_module.c
+++ b/drivers/gpu/drm/ttm/ttm_module.c
@@ -72,17 +72,13 @@ pgprot_t ttm_prot_from_caching(enum ttm_caching caching, pgprot_t tmp)
 	return tmp;
 }
 
-struct dentry *ttm_debugfs_root;
-
 static int __init ttm_init(void)
 {
-	ttm_debugfs_root = debugfs_create_dir("ttm", NULL);
 	return 0;
 }
 
 static void __exit ttm_exit(void)
 {
-	debugfs_remove(ttm_debugfs_root);
 }
 
 module_init(ttm_init);
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
