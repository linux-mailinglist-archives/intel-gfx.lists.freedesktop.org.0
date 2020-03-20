Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBB618CE63
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 14:02:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9017C6EB2F;
	Fri, 20 Mar 2020 13:02:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D329E6EB2F
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 13:02:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20630754-1500050 
 for multiple; Fri, 20 Mar 2020 13:02:00 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Mar 2020 13:01:56 +0000
Message-Id: <20200320130159.3922-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/gt: Report context-is-closed prior
 to pinning
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

Our assertion caught that we do try to pin a closed context if userspace
is viciously racing context-closure with execbuf, so make it fail
gracefully.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/1492
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index aea992e46c42..7132bf616cc4 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -97,8 +97,6 @@ int __intel_context_do_pin(struct intel_context *ce)
 {
 	int err;
 
-	GEM_BUG_ON(intel_context_is_closed(ce));
-
 	if (unlikely(!test_bit(CONTEXT_ALLOC_BIT, &ce->flags))) {
 		err = intel_context_alloc_state(ce);
 		if (err)
@@ -114,6 +112,11 @@ int __intel_context_do_pin(struct intel_context *ce)
 		goto out_release;
 	}
 
+	if (unlikely(intel_context_is_closed(ce))) {
+		err = -ENOENT;
+		goto out_release;
+	}
+
 	if (likely(!atomic_add_unless(&ce->pin_count, 1, 0))) {
 		err = intel_context_active_acquire(ce);
 		if (unlikely(err))
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
