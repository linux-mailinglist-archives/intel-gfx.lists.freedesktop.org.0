Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3BD2E7352
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 21:07:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A69CF89216;
	Tue, 29 Dec 2020 20:07:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DDDD89216;
 Tue, 29 Dec 2020 20:07:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23459120-1500050 
 for multiple; Tue, 29 Dec 2020 20:06:47 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Dec 2020 20:06:47 +0000
Message-Id: <20201229200647.629624-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.30.0.rc2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_engine: Check idempotency by
 passing all known engines
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
Cc: igt-dev@lists.freedesktop.org, "Melkaveri,
 Arjun" <arjun.melkaveri@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Don't rely on just rcs0 being well defined, check that we return a list
of each engine when asked.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: "Melkaveri, Arjun" <arjun.melkaveri@intel.com>
---
 tests/i915/gem_ctx_engines.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/tests/i915/gem_ctx_engines.c b/tests/i915/gem_ctx_engines.c
index be7d5733f..12c6b84ca 100644
--- a/tests/i915/gem_ctx_engines.c
+++ b/tests/i915/gem_ctx_engines.c
@@ -230,15 +230,21 @@ static void idempotent(int i915)
 	igt_assert_eq(p.size, base + idx);
 	igt_assert(!memcmp(&expected, &engines, idx));
 
-	memset(&engines, 0, sizeof(engines));
 	p.size = sizeof(engines);
-	gem_context_set_param(i915, &p);
+	__for_each_physical_engine(i915, e) {
+		memset(&engines, 0, sizeof(engines));
+		for (int n = 0; n < I915_EXEC_RING_MASK + 1; n++) {
+			engine_class(&engines, n) = e->class;
+			engine_instance(&engines, n) = e->instance;
+		}
+		gem_context_set_param(i915, &p);
 
-	memcpy(&expected, &engines, sizeof(expected));
+		memcpy(&expected, &engines, sizeof(expected));
 
-	gem_context_get_param(i915, &p);
-	igt_assert_eq(p.size, sizeof(engines));
-	igt_assert(!memcmp(&expected, &engines, idx));
+		gem_context_get_param(i915, &p);
+		igt_assert_eq(p.size, sizeof(engines));
+		igt_assert(!memcmp(&expected, &engines, p.size));
+	}
 
 	gem_context_destroy(i915, p.ctx_id);
 }
-- 
2.30.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
