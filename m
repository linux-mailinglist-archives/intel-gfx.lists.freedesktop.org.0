Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB1E1289BE
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Dec 2019 16:03:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 142CD6E479;
	Sat, 21 Dec 2019 15:03:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B92566E479
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Dec 2019 15:03:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19656728-1500050 
 for multiple; Sat, 21 Dec 2019 15:03:44 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 21 Dec 2019 15:03:43 +0000
Message-Id: <20191221150343.1067855-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Only retire requests when eviction is
 allowed to blocked
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

We want to keep the PIN_NONBLOCK search quick, avoiding evicting
recently active nodes. To that end, skip performing the more laborious
retirement prior to beginning the fast search.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_gem_evict.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gem_evict.c b/drivers/gpu/drm/i915/i915_gem_evict.c
index 0697bedebeef..5f8b6cc55195 100644
--- a/drivers/gpu/drm/i915/i915_gem_evict.c
+++ b/drivers/gpu/drm/i915/i915_gem_evict.c
@@ -124,7 +124,8 @@ i915_gem_evict_something(struct i915_address_space *vm,
 				    min_size, alignment, color,
 				    start, end, mode);
 
-	intel_gt_retire_requests(vm->gt);
+	if (!(flags & PIN_NONBLOCK))
+		intel_gt_retire_requests(vm->gt);
 
 search_again:
 	active = NULL;
@@ -270,7 +271,8 @@ int i915_gem_evict_for_node(struct i915_address_space *vm,
 	 * a stray pin (preventing eviction) that can only be resolved by
 	 * retiring.
 	 */
-	intel_gt_retire_requests(vm->gt);
+	if (!(flags & PIN_NONBLOCK))
+		intel_gt_retire_requests(vm->gt);
 
 	if (i915_vm_has_cache_coloring(vm)) {
 		/* Expand search to cover neighbouring guard pages (or lack!) */
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
