Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BCB186FCC
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 17:15:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6680B6E471;
	Mon, 16 Mar 2020 16:15:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C09C6E471
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 16:15:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20578378-1500050 
 for multiple; Mon, 16 Mar 2020 16:14:44 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Mar 2020 16:14:47 +0000
Message-Id: <20200316161447.18410-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Check for a closed context when
 looking up an engine
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

Beware that the context may already be closed as we try to lookup an
engine.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/1389
Fixes: 130a95e9098e ("drm/i915/gem: Consolidate ctx->engines[] release")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.h | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
index 57b7ae2893e1..a09fd67fed1d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
@@ -192,12 +192,16 @@ i915_gem_context_unlock_engines(struct i915_gem_context *ctx)
 static inline struct intel_context *
 i915_gem_context_get_engine(struct i915_gem_context *ctx, unsigned int idx)
 {
-	struct intel_context *ce = ERR_PTR(-EINVAL);
+	struct intel_context *ce;
 
 	rcu_read_lock(); {
 		struct i915_gem_engines *e = rcu_dereference(ctx->engines);
-		if (likely(idx < e->num_engines && e->engines[idx]))
+		if (unlikely(e == NULL)) /* context was closed! */
+			ce = ERR_PTR(-ENOENT);
+		else if (likely(idx < e->num_engines && e->engines[idx]))
 			ce = intel_context_get(e->engines[idx]);
+		else
+			ce = ERR_PTR(-EINVAL);
 	} rcu_read_unlock();
 
 	return ce;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
