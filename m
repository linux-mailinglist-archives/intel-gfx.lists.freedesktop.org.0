Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2112054A1
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 16:29:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 890CD6E9AE;
	Tue, 23 Jun 2020 14:28:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3E626E45C
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 14:28:49 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Jun 2020 16:28:43 +0200
Message-Id: <20200623142843.423594-26-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200623142843.423594-1-maarten.lankhorst@linux.intel.com>
References: <20200623142843.423594-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 26/26] drm/i915: Kill context before taking
 ctx->mutex
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
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 24 ++++++++++-----------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index b9d38e8edb5b..3c89150f7262 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -623,6 +623,18 @@ static void context_close(struct i915_gem_context *ctx)
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
+	    !i915_modparams.enable_hangcheck)
+		kill_context(ctx);
+
+
 	mutex_lock(&ctx->mutex);
 
 	set_closed_name(ctx);
@@ -641,18 +653,6 @@ static void context_close(struct i915_gem_context *ctx)
 	lut_close(ctx);
 
 	mutex_unlock(&ctx->mutex);
-
-	/*
-	 * If the user has disabled hangchecking, we can not be sure that
-	 * the batches will ever complete after the context is closed,
-	 * keeping the context and all resources pinned forever. So in this
-	 * case we opt to forcibly kill off all remaining requests on
-	 * context close.
-	 */
-	if (!i915_gem_context_is_persistent(ctx) ||
-	    !i915_modparams.enable_hangcheck)
-		kill_context(ctx);
-
 	i915_gem_context_put(ctx);
 }
 
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
