Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA99146CBE
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 16:26:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96E156FA2A;
	Thu, 23 Jan 2020 15:26:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B43F6FA2A
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 15:26:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19984253-1500050 
 for multiple; Thu, 23 Jan 2020 15:26:04 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jan 2020 15:26:02 +0000
Message-Id: <20200123152602.1432282-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200123151406.51679-1-colin.king@canonical.com>
References: <20200123151406.51679-1-colin.king@canonical.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Prevent NULL pointer dereference
 on missing ctx->vm
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
Cc: Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If the ctx->vm is freed before we can acquire a local reference to it,
we proceed to call i915_vm_put(NULL), which is invalid.

Reported-by: Colin Ian King <colin.king@canonical.com>
Fixes: 5dbd2b7be61e ("drm/i915/gem: Convert vm idr to xarray")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Colin Ian King <colin.king@canonical.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 5d4157e1ccf7..8873db5be123 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1002,13 +1002,14 @@ static int get_ppgtt(struct drm_i915_file_private *file_priv,
 	if (!rcu_access_pointer(ctx->vm))
 		return -ENODEV;
 
-	err = -ENODEV;
 	rcu_read_lock();
 	vm = context_get_vm_rcu(ctx);
-	if (vm)
-		err = xa_alloc(&file_priv->vm_xa, &id, vm,
-			       xa_limit_32b, GFP_KERNEL);
 	rcu_read_unlock();
+	if (!vm)
+		return -ENODEV;
+
+	err = xa_alloc(&file_priv->vm_xa, &id, vm,
+		       xa_limit_32b, GFP_KERNEL);
 	if (err)
 		goto err_put;
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
