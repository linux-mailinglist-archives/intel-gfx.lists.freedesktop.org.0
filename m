Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF411F6CFE
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 19:47:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 320D76E922;
	Thu, 11 Jun 2020 17:47:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E603F6E922
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2020 17:47:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21468119-1500050 
 for multiple; Thu, 11 Jun 2020 18:47:05 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jun 2020 18:47:04 +0100
Message-Id: <20200611174704.18430-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Only discard simple GGTT vma
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
Cc: Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Be careful that we do not discard the irregular information used for
remapping the planes, and when discarding preserve the partial offset so
that the existing users can continue to interpret the old vma correctly.

An underlying issue here is that we opting to discard a vma while it is
in the process of being bound, because at the time it is not known
whether it will be bound suitable for our use. If we didn't discard, we
would then try to unbind it even if it were suitable after serialising
with the binder.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2012
Fixes: 9bdcaa5e3a2f ("drm/i915: Discard a misplaced GGTT vma")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/i915_gem.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 41553e9e57a9..cd5aeeb96ca4 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -938,9 +938,13 @@ discard_ggtt_vma(struct i915_vma *vma, const struct i915_ggtt_view *view)
 {
 	const struct i915_ggtt_view discard = {
 		.type = I915_GGTT_VIEW_PARTIAL,
+		.partial.offset = view->partial.offset,
 	};
 	struct drm_i915_gem_object *obj = vma->obj;
 
+	if (view->type > I915_GGTT_VIEW_PARTIAL)
+		return false;
+
 	spin_lock(&obj->vma.lock);
 	if (i915_vma_compare(vma, vma->vm, &discard)) {
 		struct rb_node *rb, **p;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
