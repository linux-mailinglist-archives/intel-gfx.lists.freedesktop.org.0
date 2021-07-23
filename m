Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 908F03D40C1
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 21:29:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A9FD6FCF2;
	Fri, 23 Jul 2021 19:29:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AA596FCF2
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 19:29:44 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id h15so1421595wmq.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 12:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UbeSD4CHgeuUd9sMEjzapzpYd1krbZg7f7Tl2Qw4ziQ=;
 b=FKs65oGlP+itV3bGwiRPwNuWJd0HJovy3o4FzE6CHxvkmPOX+hqxpi1aODTyBstpRs
 xq3v6ttBBW5SqUAML6c4DByXz3rz8cAOWlIUPJi8i8D4cbR6WZSwTP5+tLuOvDzVocqf
 ybbjnt9r1hdgq+EBJa5XvFNDi68SWHp/1J0AQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UbeSD4CHgeuUd9sMEjzapzpYd1krbZg7f7Tl2Qw4ziQ=;
 b=ixIXN6z+qhYx0JG5FKfTPK6tdkKH6I0x6xrPEE/oh+uB3IE8BR9BTpseGJPuplcUb8
 md7zAC7dNjUvkqRzbXUfyc3aJyZ65Oj6GCGJYk+jFAoBRoLKMgjnm/obyAcB3XApHzlv
 EOGz7szG0wDj9H/FiD0WYWyQaH5eiqNlMbLQxrK2tU0nuXds6zdZfdRiCbgTS8NoUj+F
 3M2XVHJWSrJS4A9eFi12N7tQk0hr2dYHt5YW4UYORw0eJQamaH8/wLm2sG3qUHbPZUml
 OHSHjUfKSCXoD5yRbbkUDuZ4dA+/R8rGGWrXB0phXVpUgi2CFTPryLZ92BgXQ7JWv95c
 MB0A==
X-Gm-Message-State: AOAM532FmHDQtgKKHrkAxE3AmmN+RiJ8CNmuvuQaqJYerN/WpMgpF3m0
 5trBpyOZEuqHUbRnnUSBAM6ucw==
X-Google-Smtp-Source: ABdhPJz3qYADZpoez/GeOUFt1xpKmv+XzPlRsqfWeWvSQOuuyktKovsCLBNDO2YvionQRGMOldpqoA==
X-Received: by 2002:a05:600c:4788:: with SMTP id
 k8mr4920644wmo.75.1627068583333; 
 Fri, 23 Jul 2021 12:29:43 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s14sm17609870wmc.25.2021.07.23.12.29.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Jul 2021 12:29:42 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 23 Jul 2021 21:29:29 +0200
Message-Id: <20210723192934.1004427-5-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210723192934.1004427-1-daniel.vetter@ffwll.ch>
References: <20210723192934.1004427-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/10] drm/i915: move gem_context slab to direct
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
noise with removing the static global.slab_luts to just a
slab_luts.

Cc: Jason Ekstrand <jason@jlekstrand.net>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 25 +++++++--------------
 drivers/gpu/drm/i915/gem/i915_gem_context.h |  3 +++
 drivers/gpu/drm/i915/i915_globals.c         |  2 --
 drivers/gpu/drm/i915/i915_globals.h         |  1 -
 drivers/gpu/drm/i915/i915_pci.c             |  2 ++
 5 files changed, 13 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 89ca401bf9ae..c17c28af1e57 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -79,25 +79,21 @@
 #include "gt/intel_ring.h"
 
 #include "i915_gem_context.h"
-#include "i915_globals.h"
 #include "i915_trace.h"
 #include "i915_user_extensions.h"
 
 #define ALL_L3_SLICES(dev) (1 << NUM_L3_SLICES(dev)) - 1
 
-static struct i915_global_gem_context {
-	struct i915_global base;
-	struct kmem_cache *slab_luts;
-} global;
+struct kmem_cache *slab_luts;
 
 struct i915_lut_handle *i915_lut_handle_alloc(void)
 {
-	return kmem_cache_alloc(global.slab_luts, GFP_KERNEL);
+	return kmem_cache_alloc(slab_luts, GFP_KERNEL);
 }
 
 void i915_lut_handle_free(struct i915_lut_handle *lut)
 {
-	return kmem_cache_free(global.slab_luts, lut);
+	return kmem_cache_free(slab_luts, lut);
 }
 
 static void lut_close(struct i915_gem_context *ctx)
@@ -2282,21 +2278,16 @@ i915_gem_engines_iter_next(struct i915_gem_engines_iter *it)
 #include "selftests/i915_gem_context.c"
 #endif
 
-static void i915_global_gem_context_exit(void)
+void i915_gem_context_module_exit(void)
 {
-	kmem_cache_destroy(global.slab_luts);
+	kmem_cache_destroy(slab_luts);
 }
 
-static struct i915_global_gem_context global = { {
-	.exit = i915_global_gem_context_exit,
-} };
-
-int __init i915_global_gem_context_init(void)
+int __init i915_gem_context_module_init(void)
 {
-	global.slab_luts = KMEM_CACHE(i915_lut_handle, 0);
-	if (!global.slab_luts)
+	slab_luts = KMEM_CACHE(i915_lut_handle, 0);
+	if (!slab_luts)
 		return -ENOMEM;
 
-	i915_global_register(&global.base);
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
index 20411db84914..18060536b0c2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
@@ -224,6 +224,9 @@ i915_gem_engines_iter_next(struct i915_gem_engines_iter *it);
 	for (i915_gem_engines_iter_init(&(it), (engines)); \
 	     ((ce) = i915_gem_engines_iter_next(&(it)));)
 
+void i915_gem_context_module_exit(void);
+int i915_gem_context_module_init(void);
+
 struct i915_lut_handle *i915_lut_handle_alloc(void);
 void i915_lut_handle_free(struct i915_lut_handle *lut);
 
diff --git a/drivers/gpu/drm/i915/i915_globals.c b/drivers/gpu/drm/i915/i915_globals.c
index d36eb7dc40aa..dbb3d81eeea7 100644
--- a/drivers/gpu/drm/i915/i915_globals.c
+++ b/drivers/gpu/drm/i915/i915_globals.c
@@ -7,7 +7,6 @@
 #include <linux/slab.h>
 #include <linux/workqueue.h>
 
-#include "gem/i915_gem_object.h"
 #include "i915_globals.h"
 #include "i915_request.h"
 #include "i915_scheduler.h"
@@ -31,7 +30,6 @@ static void __i915_globals_cleanup(void)
 }
 
 static __initconst int (* const initfn[])(void) = {
-	i915_global_gem_context_init,
 	i915_global_objects_init,
 	i915_global_request_init,
 	i915_global_scheduler_init,
diff --git a/drivers/gpu/drm/i915/i915_globals.h b/drivers/gpu/drm/i915/i915_globals.h
index 60daa738a188..f16752dbbdbf 100644
--- a/drivers/gpu/drm/i915/i915_globals.h
+++ b/drivers/gpu/drm/i915/i915_globals.h
@@ -23,7 +23,6 @@ int i915_globals_init(void);
 void i915_globals_exit(void);
 
 /* constructors */
-int i915_global_gem_context_init(void);
 int i915_global_objects_init(void);
 int i915_global_request_init(void);
 int i915_global_scheduler_init(void);
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 266618157775..2b56e664d043 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -34,6 +34,7 @@
 #include "i915_buddy.h"
 #include "i915_drv.h"
 #include "gem/i915_gem_context.h"
+#include "gem/i915_gem_object.h"
 #include "i915_perf.h"
 #include "i915_globals.h"
 #include "i915_selftest.h"
@@ -1299,6 +1300,7 @@ static const struct {
 	{ i915_active_module_init, i915_active_module_exit },
 	{ i915_buddy_module_init, i915_buddy_module_exit },
 	{ i915_context_module_init, i915_context_module_exit },
+	{ i915_gem_context_module_init, i915_gem_context_module_exit },
 	{ i915_globals_init, i915_globals_exit },
 	{ i915_mock_selftests, NULL },
 	{ i915_pmu_init, i915_pmu_exit },
-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
