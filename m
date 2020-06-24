Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 641952071BD
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2020 13:05:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A72616EAD0;
	Wed, 24 Jun 2020 11:05:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E9C56EAD0
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 11:05:20 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Jun 2020 13:05:15 +0200
Message-Id: <20200624110515.454665-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200623142843.423594-26-maarten.lankhorst@linux.intel.com>
References: <20200623142843.423594-26-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Kill context before taking ctx->mutex
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

Killing context before taking ctx->mutex fixes a hang in
gem_ctx_persistence.close-replace-race, where lut_close
takes obj->resv.lock which is already held by execbuf,
causing a stalling indefinitely.

[ 1904.342847] 2 locks held by gem_ctx_persist/11520:
[ 1904.342849]  #0: ffff8882188e4968 (&ctx->mutex){+.+.}-{3:3}, at: context_close+0xe6/0x850 [i915]
[ 1904.342941]  #1: ffff88821c58a5a8 (reservation_ww_class_mutex){+.+.}-{3:3}, at: lut_close+0x2c2/0xba0 [i915]
[ 1904.343033] 3 locks held by gem_ctx_persist/11521:
[ 1904.343035]  #0: ffffc900008ff938 (reservation_ww_class_acquire){+.+.}-{0:0}, at: i915_gem_do_execbuffer+0x103d/0x54c0 [i915]
[ 1904.343157]  #1: ffff88821c58a5a8 (reservation_ww_class_mutex){+.+.}-{3:3}, at: eb_validate_vmas+0x602/0x2010 [i915]
[ 1904.343267]  #2: ffff88820afd9200 (&vm->mutex/1){+.+.}-{3:3}, at: i915_vma_pin_ww+0x335/0x2300 [i915]

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 22 ++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index a3519d5ee5a3..6d25c9c2be1a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -623,6 +623,17 @@ static void context_close(struct i915_gem_context *ctx)
 	i915_gem_context_set_closed(ctx);
 	mutex_unlock(&ctx->engines_mutex);
 
+	/*
+	 * If the user has disabled hangchecking, we can not be sure that
+	 * the batches will ever complete after the context is closed,
+	 * keeping the context and all resources pinned forever. So in this
+	 * case we opt to forcibly kill off all remaining requests on
+	 * context close.
+	 */
+	if (!i915_gem_context_is_persistent(ctx) ||
+	    !ctx->i915->params.enable_hangcheck)
+		kill_context(ctx);
+
 	mutex_lock(&ctx->mutex);
 
 	set_closed_name(ctx);
@@ -642,17 +653,6 @@ static void context_close(struct i915_gem_context *ctx)
 
 	mutex_unlock(&ctx->mutex);
 
-	/*
-	 * If the user has disabled hangchecking, we can not be sure that
-	 * the batches will ever complete after the context is closed,
-	 * keeping the context and all resources pinned forever. So in this
-	 * case we opt to forcibly kill off all remaining requests on
-	 * context close.
-	 */
-	if (!i915_gem_context_is_persistent(ctx) ||
-	    !ctx->i915->params.enable_hangcheck)
-		kill_context(ctx);
-
 	i915_gem_context_put(ctx);
 }
 

base-commit: 64cab0b9f9bfeb14d3ec2452d76b56915cdeb09f
prerequisite-patch-id: e6315738715ac4ffccaeb4c4bf5a94651fb8da1d
prerequisite-patch-id: 7944bb01d1ec7530513eabddb9198275653cc451
prerequisite-patch-id: 052eda3b40906f0fbc16b4cc33dbcdce35e05441
prerequisite-patch-id: 35ff18a74e8bf9bfb0a517f69a98d0ec88bd3b51
prerequisite-patch-id: 7a34e785e951b1d3f4c0e20430c8111a15ddbe92
prerequisite-patch-id: 9b7faf3172e9f218a2589fcc96930af9ab05e70b
prerequisite-patch-id: 3ce7c5b4508018631673e62d8725f866988bd08d
prerequisite-patch-id: 5fd46caff26e53f9cb6df5f8490838b6ac15e015
prerequisite-patch-id: 41782208b1bc32e448ce29313112030c74bd8421
prerequisite-patch-id: b6c4d99cb554c0c2268cde5c43e878a48e005e45
prerequisite-patch-id: 418fdb031a232bba4056171917ee42e997991902
prerequisite-patch-id: ff5bf0dcdb9191761392b0707481aaf99396dbec
prerequisite-patch-id: c3dbcef2f1a68f88ae99acbd01ee56847fb3e2da
prerequisite-patch-id: 18c373676c9bbeb1c11fb2ba5bf4ad728cfea75d
prerequisite-patch-id: 5b9d8e4535096365d365fdd1ec00f844a4135208
prerequisite-patch-id: 63bac64548acd514c4a0cb5acb896c8217fb8201
prerequisite-patch-id: e93b855dd97b24799c59f059cc548f46807ab207
prerequisite-patch-id: 3d7dc6ecbc2279fb48f0972a911fbffd8d899faa
prerequisite-patch-id: f1d9e0b7165f80efe984dd0231d1dbd2a9a79950
prerequisite-patch-id: ed1a168ac98b81b8066f68a0738cfc44a79e8ef1
prerequisite-patch-id: f813cb8d4c2fe2c1d94b66c3f3fbb787ac241628
prerequisite-patch-id: 0f0f90eaa4a2e299adddfe1c7134af3810a8e9e2
prerequisite-patch-id: cb7ffeccd6429fc79aebffb84f62af5e78252461
prerequisite-patch-id: 78905449b46ad574757a7fb91f58847ea20e09cd
prerequisite-patch-id: 6d937a49f3c8cd380121f72610072aaaf8c274b1
prerequisite-patch-id: 0c8d2dee1592395780258488be0350755e7ffd7d
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
