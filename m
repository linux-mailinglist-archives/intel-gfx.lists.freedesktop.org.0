Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6ABE12B3E7
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Dec 2019 11:31:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03187891C2;
	Fri, 27 Dec 2019 10:31:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C90E891C2
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Dec 2019 10:30:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19703677-1500050 
 for multiple; Fri, 27 Dec 2019 10:30:50 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Dec 2019 10:30:50 +0000
Message-Id: <20191227103050.2715402-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Err out on coherency if
 initialisation failed
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

If gt initialisation failed, we are left with no engines to use for
coherency testing. Currently we bug out, which makes the actual error,
so fail more gracefully instead.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/896
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/selftests/i915_gem_coherency.c  | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
index 49edc51111d5..3f6079e1dfb6 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
@@ -325,7 +325,10 @@ static int igt_gem_coherency(void *arg)
 	values = offsets + ncachelines;
 
 	ctx.engine = random_engine(i915, &prng);
-	GEM_BUG_ON(!ctx.engine);
+	if (!ctx.engine) {
+		err = -ENODEV;
+		goto out_free;
+	}
 	pr_info("%s: using %s\n", __func__, ctx.engine->name);
 	intel_engine_pm_get(ctx.engine);
 
@@ -354,7 +357,7 @@ static int igt_gem_coherency(void *arg)
 					ctx.obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
 					if (IS_ERR(ctx.obj)) {
 						err = PTR_ERR(ctx.obj);
-						goto free;
+						goto out_pm;
 					}
 
 					i915_random_reorder(offsets, ncachelines, &prng);
@@ -405,14 +408,15 @@ static int igt_gem_coherency(void *arg)
 			}
 		}
 	}
-free:
+out_pm:
 	intel_engine_pm_put(ctx.engine);
+out_free:
 	kfree(offsets);
 	return err;
 
 put_object:
 	i915_gem_object_put(ctx.obj);
-	goto free;
+	goto out_pm;
 }
 
 int i915_gem_coherency_live_selftests(struct drm_i915_private *i915)
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
