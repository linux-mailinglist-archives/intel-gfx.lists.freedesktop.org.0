Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5297A3EA54F
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 15:14:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED0A06E417;
	Thu, 12 Aug 2021 13:14:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7491B6E3F7
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 13:14:22 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 c129-20020a1c35870000b02902e6b6135279so3081451wma.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 06:14:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WxqUpVFpx2tiFToGJLko2apqstRuiXrL5jy/Fl17hvI=;
 b=PlLaXI3ND8nW43bceBMwMvlYbhBhEF1SoTtkk5pIrNpEgvHRDRbYlYRTAF3pahlszw
 0/FkP2ZKRotvKEKzaXdFvarjGHqGmx/b9+qaowMeR9TkWYbpwYSSU8aVfsc9rO/hJNt9
 s/m6/ObymMJOOiv3/w6g1fqfflZhYB9AzT7Bw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WxqUpVFpx2tiFToGJLko2apqstRuiXrL5jy/Fl17hvI=;
 b=RNCUCpxXMiT2+V+M7FCUfBEIUzvHRLbbA84xlGH2N3lTItfxz/iDpOOab67VXbnK/L
 S2NkOALLwrXoFoC6XG6HQanKZgVOUh/Bd7krY/wGn21pA2mt0wTYyTJJrZCU4I1v/Trs
 lgTbreZcZM+wuCVbY0uOYHbzwHl0PBAkFWhrD6liFOaI5rf/VQ3j8fJrI2800WFJOXhQ
 dXJXnW+Z9zUZOXheJ21637F4xQMoyUQjiLe8fCMMswpeiAE8d3MEzf00dJNCz97RDsYj
 wWQ0P6OSDorvH6trlMNPaWxh3fz15JsJFuC6PZrcL2X2d+ede4oIOE7UGx6mkpVZtpSu
 RZYA==
X-Gm-Message-State: AOAM531X9fepahggBHAzSmilqY6O3T61W/F25BKvh6cDXUrxGUdnTCb+
 vbxz3SHJS/fc3zOaCz5mcArInnnpar9kcw==
X-Google-Smtp-Source: ABdhPJyKABZ+o5rsWzQn2DkQs6m58wjIVDRUiiRy0So84dzGVWpV2plsPptbDJFvO+0KTeeVQh8Beg==
X-Received: by 2002:a05:600c:35cb:: with SMTP id
 r11mr15666347wmq.31.1628774060926; 
 Thu, 12 Aug 2021 06:14:20 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id h4sm2914957wru.2.2021.08.12.06.14.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Aug 2021 06:14:20 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 12 Aug 2021 15:14:11 +0200
Message-Id: <20210812131412.2487363-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210812131412.2487363-1-daniel.vetter@ffwll.ch>
References: <20210812131412.2487363-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/shmem-helpers: Allocate wc pages on x86
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

intel-gfx-ci realized that something is not quite coherent anymore on
some platforms for our i915+vgem tests, when I tried to switch vgem
over to shmem helpers.

After lots of head-scratching I realized that I've removed calls to
drm_clflush. And we need those. To make this a bit cleaner use the
same page allocation tooling as ttm, which does internally clflush
(and more, as neeeded on any platform instead of just the intel x86
cpus i915 can be combined with).

Unfortunately this doesn't exist on arm, or as a generic feature. For
that I think only the dma-api can get at wc memory reliably, so maybe
we'd need some kind of GFP_WC flag to do this properly.

v2: Add a TODO comment about what should be done to support this in
other places (Thomas)

Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Christian König <christian.koenig@amd.com>
Cc: "Thomas Hellström" <thomas.hellstrom@linux.intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
---
 drivers/gpu/drm/drm_gem_shmem_helper.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/drm/drm_gem_shmem_helper.c
index cc96d1c3570e..0e0986dfbe0c 100644
--- a/drivers/gpu/drm/drm_gem_shmem_helper.c
+++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
@@ -10,6 +10,10 @@
 #include <linux/slab.h>
 #include <linux/vmalloc.h>
 
+#ifdef CONFIG_X86
+#include <asm/set_memory.h>
+#endif
+
 #include <drm/drm.h>
 #include <drm/drm_device.h>
 #include <drm/drm_drv.h>
@@ -162,6 +166,16 @@ static int drm_gem_shmem_get_pages_locked(struct drm_gem_shmem_object *shmem)
 		return PTR_ERR(pages);
 	}
 
+	/*
+	 * TODO: Allocating WC pages which are correctly flushed is only
+	 * supported on x86. Ideal solution would be a GFP_WC flag, which also
+	 * ttm_pool.c could use.
+	 */
+#ifdef CONFIG_X86
+	if (shmem->map_wc)
+		set_pages_array_wc(pages, obj->size >> PAGE_SHIFT);
+#endif
+
 	shmem->pages = pages;
 
 	return 0;
@@ -203,6 +217,11 @@ static void drm_gem_shmem_put_pages_locked(struct drm_gem_shmem_object *shmem)
 	if (--shmem->pages_use_count > 0)
 		return;
 
+#ifdef CONFIG_X86
+	if (shmem->map_wc)
+		set_pages_array_wb(shmem->pages, obj->size >> PAGE_SHIFT);
+#endif
+
 	drm_gem_put_pages(obj, shmem->pages,
 			  shmem->pages_mark_dirty_on_put,
 			  shmem->pages_mark_accessed_on_put);
-- 
2.32.0

