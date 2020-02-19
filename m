Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3129C1643FC
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 13:13:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 547A56E459;
	Wed, 19 Feb 2020 12:13:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0AFA6E459;
 Wed, 19 Feb 2020 12:13:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20275167-1500050 
 for multiple; Wed, 19 Feb 2020 12:13:12 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Feb 2020 12:13:12 +0000
Message-Id: <20200219121312.1428041-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_vm_create: Call set-domain
 manually
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since we are secretly using execbuf to write into an object's location,
then read back from the object we must manually handle the domain
changes.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/314
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_vm_create.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/tests/i915/gem_vm_create.c b/tests/i915/gem_vm_create.c
index cbd273d9d..e14b07b5f 100644
--- a/tests/i915/gem_vm_create.c
+++ b/tests/i915/gem_vm_create.c
@@ -324,11 +324,15 @@ static void isolation(int i915)
 	gem_execbuf(i915, &eb); /* bind object into vm[0] */
 
 	/* Verify the trick with the assumed target address works */
+	gem_set_domain(i915, obj[0].handle,
+		       I915_GEM_DOMAIN_GTT, I915_GEM_DOMAIN_GTT);
 	write_to_address(i915, ctx[0], obj[0].offset, 1);
 	gem_read(i915, obj[0].handle, 0, &result, sizeof(result));
 	igt_assert_eq(result, 1);
 
 	/* Now check that we can't write to vm[0] from second fd/vm */
+	gem_set_domain(i915, obj[0].handle,
+		       I915_GEM_DOMAIN_GTT, I915_GEM_DOMAIN_GTT);
 	write_to_address(other, ctx[1], obj[0].offset, 2);
 	gem_read(i915, obj[0].handle, 0, &result, sizeof(result));
 	igt_assert_eq(result, 1);
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
