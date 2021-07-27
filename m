Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 142F43D74D4
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 14:11:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 651AB6EA0A;
	Tue, 27 Jul 2021 12:10:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC7026E992
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 12:10:51 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id n12so11384553wrr.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 05:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Xj3UP63IRyaj+D/1PVk4ccyZVJg4VlH4yBD18mwyxOQ=;
 b=ElhEjd57frRM1j0D9qW9rYBnSebqr1c3LrpwmBHEU2H7LgZob+1MPWJsNEDDDuHnfc
 //o61az0phDjYid/7Ss25j0rzn8X0E/9xl9DZSRgoPy33VYe4t6G3I8ou38RnNjIwGF4
 kE0qH9Qp4ijO+WArkebgwrYbF+YJIsYYU5vuA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Xj3UP63IRyaj+D/1PVk4ccyZVJg4VlH4yBD18mwyxOQ=;
 b=goC6tTz0GV9YpR5sP5UPJCBjxRz6xREb+LQx2cCi13uxNeE1k4wGCwyHOA47NbaOVy
 nC37oJIhO5TJbvW1gfC1xzsjzpL93odwSwfdrEluHV6y6jA0Z2uGtLZpOuAtGxyARGQy
 vvt0/AbbiCPE2kupIuit6lFvUleiu8vBqkE3J7WlGBU46eRshBjcFiU4pC5yQ7/8JIps
 h8bnPXFDecbIvsFjuclexn9esckjypFs7WC/TPRxXXm9xA+4D7zJvUO9tgD49s3Ihsme
 h9oiHp1cQojQzDcE1D/f6fYdH0ohg4dXwLJQjj+DQiKaLfDm/z3rYfW+o8IUUUaK9uor
 YxYw==
X-Gm-Message-State: AOAM530qOQesOiHMdC8xSnElkOJzLmv5WfAA8g/y2kKj280wAeys0293
 vbk2xqKKIQ6i27Q4WPTa4qEMyQ==
X-Google-Smtp-Source: ABdhPJwsPpF79YrhDoodjHHWa5hDTxnd2J/nrJsCG1yr7up6jyjLUDeSONCZyDQvXvB3M22+UrB76w==
X-Received: by 2002:a5d:5305:: with SMTP id e5mr11606814wrv.243.1627387850023; 
 Tue, 27 Jul 2021 05:10:50 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id k186sm3010577wme.45.2021.07.27.05.10.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Jul 2021 05:10:49 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 27 Jul 2021 14:10:35 +0200
Message-Id: <20210727121037.2041102-9-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210727121037.2041102-1-daniel.vetter@ffwll.ch>
References: <20210727121037.2041102-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 09/11] drm/i915: move vma slab to direct
 module init/exit
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

v2: Make slab static (Jason, 0day)

Reviewed-by: Jason Ekstrand <jason@jlekstrand.net>
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
index 500897d0d4b5..14785d88dafb 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -40,6 +40,7 @@
 #include "i915_globals.h"
 #include "i915_selftest.h"
 #include "i915_scheduler.h"
+#include "i915_vma.h"
 
 #define PLATFORM(x) .platform = (x)
 #define GEN(x) \
@@ -1307,6 +1308,7 @@ static const struct {
 	{ i915_objects_module_init, i915_objects_module_exit },
 	{ i915_request_module_init, i915_request_module_exit },
 	{ i915_scheduler_module_init, i915_scheduler_module_exit },
+	{ i915_vma_module_init, i915_vma_module_exit },
 	{ i915_globals_init, i915_globals_exit },
 	{ i915_mock_selftests, NULL },
 	{ i915_pmu_init, i915_pmu_exit },
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 09a7c47926f7..4b7fc4647e46 100644
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
+static struct kmem_cache *slab_vmas;
 
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
