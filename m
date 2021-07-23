Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 735493D40D0
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 21:30:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8868A6FCFF;
	Fri, 23 Jul 2021 19:29:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9972D6FCF9
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 19:29:47 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id n21so1395050wmq.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 12:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5KPQdAtfUuAEZXdl1+FPSraE1XmWL2Gl8s1TvYt3hu8=;
 b=VsrD4GDEw74GSkXPag1dvThxvoaPzCMfrjjWKTcm1hvG6k/sH0f+tjKWi64+N7CmRH
 NMQ5voU1duzEoRBYPGBJq+r49nLTf9eKFVwG+cevhnIDvqIJjuYRTuIFC+9WtwFDDHdX
 ObJ+IEELOblcyuM9pWOTiC1y6aVuPXQvrsVj0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5KPQdAtfUuAEZXdl1+FPSraE1XmWL2Gl8s1TvYt3hu8=;
 b=eCDV6ynDjIbKAR4V8FAkEZVzvuTGzfggmNXMwoKdnQSpSzRIB3D31SphsG67Ya0Rzo
 Fsma9KpYb+IQ5p5oaovp9MGj6YFDFKNKiFprrMdTHNItO3H24Cx8kIMNa46OBvfaYj8/
 7gZoJvSGArxkO11KIiLVorIQI9qfxUZ3JDzMOngQeTcgwUy3HsS8yD3TyKEGvCerY1WM
 R4NArl3US+ceQB8yAmeYgE2ebpEmgKHZn3zx8+a0Zs78cx2d1TyY0cs2OSFNqCBWDaoa
 hL+LkDnN4+RA4r2d3t/8XIzWeMHgKHyCD0pOdrT3ikbknP/ToyN6vtYenhfMb0RE3WWG
 ed/g==
X-Gm-Message-State: AOAM5333qI/KvAAzOvXY3p9lHA40eM/O3gn9hfW50Qs7nKZ0s6vZ8fJ+
 LHCA9sYBwbyiuIqHG14dxBfI9DeWrIzfUg==
X-Google-Smtp-Source: ABdhPJxvHFhJF5sgcIePbTk3e9dTjZ5PM01QGTfOOEeTW5s8eVHlwdl3QlIHhJNHSAZGkZM6jS3hFQ==
X-Received: by 2002:a7b:c318:: with SMTP id k24mr6085109wmj.144.1627068586288; 
 Fri, 23 Jul 2021 12:29:46 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s14sm17609870wmc.25.2021.07.23.12.29.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Jul 2021 12:29:45 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 23 Jul 2021 21:29:33 +0200
Message-Id: <20210723192934.1004427-9-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210723192934.1004427-1-daniel.vetter@ffwll.ch>
References: <20210723192934.1004427-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/10] drm/i915: move vma slab to direct module
 init/exit
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With the global kmem_cache shrink infrastructure gone there's nothing
special and we can convert them over.

I'm doing this split up into each patch because there's quite a bit of
noise with removing the static global.slab_vmas to just a
slab_vmas.

We have to keep i915_drv.h include in i915_globals otherwise there's
nothing anymore that pulls in GEM_BUG_ON.

Cc: Jason Ekstrand <jason@jlekstrand.net>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/i915/i915_globals.c |  3 +--
 drivers/gpu/drm/i915/i915_globals.h |  3 ---
 drivers/gpu/drm/i915/i915_pci.c     |  2 ++
 drivers/gpu/drm/i915/i915_vma.c     | 25 ++++++++-----------------
 drivers/gpu/drm/i915/i915_vma.h     |  3 +++
 5 files changed, 14 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_globals.c b/drivers/gpu/drm/i915/i915_globals.c
index 8923589057ab..04979789e7be 100644
--- a/drivers/gpu/drm/i915/i915_globals.c
+++ b/drivers/gpu/drm/i915/i915_globals.c
@@ -8,7 +8,7 @@
 #include <linux/workqueue.h>
 
 #include "i915_globals.h"
-#include "i915_vma.h"
+#include "i915_drv.h"
 
 static LIST_HEAD(globals);
 
@@ -28,7 +28,6 @@ static void __i915_globals_cleanup(void)
 }
 
 static __initconst int (* const initfn[])(void) = {
-	i915_global_vma_init,
 };
 
 int __init i915_globals_init(void)
diff --git a/drivers/gpu/drm/i915/i915_globals.h b/drivers/gpu/drm/i915/i915_globals.h
index 7a57bce1da05..57d2998bba45 100644
--- a/drivers/gpu/drm/i915/i915_globals.h
+++ b/drivers/gpu/drm/i915/i915_globals.h
@@ -22,7 +22,4 @@ void i915_global_register(struct i915_global *global);
 int i915_globals_init(void);
 void i915_globals_exit(void);
 
-/* constructors */
-int i915_global_vma_init(void);
-
 #endif /* _I915_GLOBALS_H_ */
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index a44318519977..0affcf33a211 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -40,6 +40,7 @@
 #include "i915_globals.h"
 #include "i915_selftest.h"
 #include "i915_scheduler.h"
+#include "i915_vma.h"
 
 #define PLATFORM(x) .platform = (x)
 #define GEN(x) \
@@ -1306,6 +1307,7 @@ static const struct {
 	{ i915_objects_module_init, i915_objects_module_exit },
 	{ i915_request_module_init, i915_request_module_exit },
 	{ i915_scheduler_module_init, i915_scheduler_module_exit },
+	{ i915_vma_module_init, i915_vma_module_exit },
 	{ i915_globals_init, i915_globals_exit },
 	{ i915_mock_selftests, NULL },
 	{ i915_pmu_init, i915_pmu_exit },
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 09a7c47926f7..d094e2016b93 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -34,24 +34,20 @@
 #include "gt/intel_gt_requests.h"
 
 #include "i915_drv.h"
-#include "i915_globals.h"
 #include "i915_sw_fence_work.h"
 #include "i915_trace.h"
 #include "i915_vma.h"
 
-static struct i915_global_vma {
-	struct i915_global base;
-	struct kmem_cache *slab_vmas;
-} global;
+struct kmem_cache *slab_vmas;
 
 struct i915_vma *i915_vma_alloc(void)
 {
-	return kmem_cache_zalloc(global.slab_vmas, GFP_KERNEL);
+	return kmem_cache_zalloc(slab_vmas, GFP_KERNEL);
 }
 
 void i915_vma_free(struct i915_vma *vma)
 {
-	return kmem_cache_free(global.slab_vmas, vma);
+	return kmem_cache_free(slab_vmas, vma);
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_ERRLOG_GEM) && IS_ENABLED(CONFIG_DRM_DEBUG_MM)
@@ -1414,21 +1410,16 @@ void i915_vma_make_purgeable(struct i915_vma *vma)
 #include "selftests/i915_vma.c"
 #endif
 
-static void i915_global_vma_exit(void)
+void i915_vma_module_exit(void)
 {
-	kmem_cache_destroy(global.slab_vmas);
+	kmem_cache_destroy(slab_vmas);
 }
 
-static struct i915_global_vma global = { {
-	.exit = i915_global_vma_exit,
-} };
-
-int __init i915_global_vma_init(void)
+int __init i915_vma_module_init(void)
 {
-	global.slab_vmas = KMEM_CACHE(i915_vma, SLAB_HWCACHE_ALIGN);
-	if (!global.slab_vmas)
+	slab_vmas = KMEM_CACHE(i915_vma, SLAB_HWCACHE_ALIGN);
+	if (!slab_vmas)
 		return -ENOMEM;
 
-	i915_global_register(&global.base);
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index eca452a9851f..ed69f66c7ab0 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -426,4 +426,7 @@ static inline int i915_vma_sync(struct i915_vma *vma)
 	return i915_active_wait(&vma->active);
 }
 
+void i915_vma_module_exit(void);
+int i915_vma_module_init(void);
+
 #endif
-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
