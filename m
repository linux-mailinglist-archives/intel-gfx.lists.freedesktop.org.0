Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5398E3D74D1
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 14:11:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FFB16E9D8;
	Tue, 27 Jul 2021 12:10:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 868896E4AB
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 12:10:47 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id b128so7421761wmb.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 05:10:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=b4BwgseNz9tJsNOjDw1A2uU3vIb1IHlokt9Elg8K+yQ=;
 b=IHVMAc4S24tVJ4JIp0FPvfq8qvGZYmhH/g0xVdxjMYWJ099WlxpXfqlaCe/Ik/lUku
 9DHT+/4DMOh1j0npWX8nDANvoblAc0DMp0VdsMS/Szj/tzEJUvvclknCsLgK/hhT4DLM
 7ev8AQJYwfQ8rAT6CENXMcA95TnHNS1DbnUY0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=b4BwgseNz9tJsNOjDw1A2uU3vIb1IHlokt9Elg8K+yQ=;
 b=qsrnvFm5luYj/noDVQWvqoL6hqc2QJncXNRBuG9oAAwp2PROF8eebAVHMIh80ym18M
 9vae3SgeWqIxrhNul2JublJdmlk6zbB3QhN2vj8BrpD7KuCBvjqlpnzCpTRchJaMOfYc
 uCCYKUISH4hcUoVE2aXlpsidBpqMOfvoei07hfIJ1Be+sy4Sq1xk6jvn7zZQvR+xDRkt
 j2ap1+iYJrQSD8pCgXWw/w7GZPKPYXW1hROaFLSvTyDUksxvzPsgmYteiWsrCKc08AGl
 Ez46OkwJfz7PruMnK8VNC02gxECVenWKcRwREIGb9t87s4CnkfhfuyHMh4W15E7JL2u+
 bftA==
X-Gm-Message-State: AOAM533GOOsSE4N0XJklJ2tncVRmd7py75Ok7yinHtuBRsLsilk+gu/e
 7hwDhPcUWsnbv1Hl7xSfNIILfQ==
X-Google-Smtp-Source: ABdhPJysM+TotvnCKn5Ve7JdXjzsRWD/SmaR3SKti4oXk/OjRtkeuyPmNzFlYhSI2WFRIqBHO1yS+g==
X-Received: by 2002:a7b:cb92:: with SMTP id m18mr21857468wmi.29.1627387846091; 
 Tue, 27 Jul 2021 05:10:46 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id k186sm3010577wme.45.2021.07.27.05.10.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Jul 2021 05:10:45 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 27 Jul 2021 14:10:30 +0200
Message-Id: <20210727121037.2041102-4-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210727121037.2041102-1-daniel.vetter@ffwll.ch>
References: <20210727121037.2041102-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 04/11] drm/i915: move intel_context slab to
 direct module init/exit
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
noise with removing the static global.slab_ce to just a
slab_ce.

v2: Make slab static (Jason, 0day)

Reviewed-by: Jason Ekstrand <jason@jlekstrand.net>
Cc: Jason Ekstrand <jason@jlekstrand.net>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c | 25 ++++++++-----------------
 drivers/gpu/drm/i915/gt/intel_context.h |  3 +++
 drivers/gpu/drm/i915/i915_globals.c     |  2 --
 drivers/gpu/drm/i915/i915_globals.h     |  1 -
 drivers/gpu/drm/i915/i915_pci.c         |  2 ++
 5 files changed, 13 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index baa05fddd690..0ba49d74f94d 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -7,7 +7,6 @@
 #include "gem/i915_gem_pm.h"
 
 #include "i915_drv.h"
-#include "i915_globals.h"
 #include "i915_trace.h"
 
 #include "intel_context.h"
@@ -15,14 +14,11 @@
 #include "intel_engine_pm.h"
 #include "intel_ring.h"
 
-static struct i915_global_context {
-	struct i915_global base;
-	struct kmem_cache *slab_ce;
-} global;
+static struct kmem_cache *slab_ce;
 
 static struct intel_context *intel_context_alloc(void)
 {
-	return kmem_cache_zalloc(global.slab_ce, GFP_KERNEL);
+	return kmem_cache_zalloc(slab_ce, GFP_KERNEL);
 }
 
 static void rcu_context_free(struct rcu_head *rcu)
@@ -30,7 +26,7 @@ static void rcu_context_free(struct rcu_head *rcu)
 	struct intel_context *ce = container_of(rcu, typeof(*ce), rcu);
 
 	trace_intel_context_free(ce);
-	kmem_cache_free(global.slab_ce, ce);
+	kmem_cache_free(slab_ce, ce);
 }
 
 void intel_context_free(struct intel_context *ce)
@@ -410,22 +406,17 @@ void intel_context_fini(struct intel_context *ce)
 	i915_active_fini(&ce->active);
 }
 
-static void i915_global_context_exit(void)
+void i915_context_module_exit(void)
 {
-	kmem_cache_destroy(global.slab_ce);
+	kmem_cache_destroy(slab_ce);
 }
 
-static struct i915_global_context global = { {
-	.exit = i915_global_context_exit,
-} };
-
-int __init i915_global_context_init(void)
+int __init i915_context_module_init(void)
 {
-	global.slab_ce = KMEM_CACHE(intel_context, SLAB_HWCACHE_ALIGN);
-	if (!global.slab_ce)
+	slab_ce = KMEM_CACHE(intel_context, SLAB_HWCACHE_ALIGN);
+	if (!slab_ce)
 		return -ENOMEM;
 
-	i915_global_register(&global.base);
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index 974ef85320c2..a0ca82e3c40d 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -30,6 +30,9 @@ void intel_context_init(struct intel_context *ce,
 			struct intel_engine_cs *engine);
 void intel_context_fini(struct intel_context *ce);
 
+void i915_context_module_exit(void);
+int i915_context_module_init(void);
+
 struct intel_context *
 intel_context_create(struct intel_engine_cs *engine);
 
diff --git a/drivers/gpu/drm/i915/i915_globals.c b/drivers/gpu/drm/i915/i915_globals.c
index 3de7cf22ec76..d36eb7dc40aa 100644
--- a/drivers/gpu/drm/i915/i915_globals.c
+++ b/drivers/gpu/drm/i915/i915_globals.c
@@ -7,7 +7,6 @@
 #include <linux/slab.h>
 #include <linux/workqueue.h>
 
-#include "gem/i915_gem_context.h"
 #include "gem/i915_gem_object.h"
 #include "i915_globals.h"
 #include "i915_request.h"
@@ -32,7 +31,6 @@ static void __i915_globals_cleanup(void)
 }
 
 static __initconst int (* const initfn[])(void) = {
-	i915_global_context_init,
 	i915_global_gem_context_init,
 	i915_global_objects_init,
 	i915_global_request_init,
diff --git a/drivers/gpu/drm/i915/i915_globals.h b/drivers/gpu/drm/i915/i915_globals.h
index d80901ba75e3..60daa738a188 100644
--- a/drivers/gpu/drm/i915/i915_globals.h
+++ b/drivers/gpu/drm/i915/i915_globals.h
@@ -23,7 +23,6 @@ int i915_globals_init(void);
 void i915_globals_exit(void);
 
 /* constructors */
-int i915_global_context_init(void);
 int i915_global_gem_context_init(void);
 int i915_global_objects_init(void);
 int i915_global_request_init(void);
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 22d9e769ec74..8a9b0daef029 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -33,6 +33,7 @@
 #include "i915_active.h"
 #include "i915_buddy.h"
 #include "i915_drv.h"
+#include "gem/i915_gem_context.h"
 #include "i915_perf.h"
 #include "i915_globals.h"
 #include "i915_selftest.h"
@@ -1298,6 +1299,7 @@ static const struct {
 	{ i915_check_nomodeset, NULL },
 	{ i915_active_module_init, i915_active_module_exit },
 	{ i915_buddy_module_init, i915_buddy_module_exit },
+	{ i915_context_module_init, i915_context_module_exit },
 	{ i915_globals_init, i915_globals_exit },
 	{ i915_mock_selftests, NULL },
 	{ i915_pmu_init, i915_pmu_exit },
-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
