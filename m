Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33329178D6C
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 10:29:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDDF56EAF8;
	Wed,  4 Mar 2020 09:29:13 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A89246EAF8;
 Wed,  4 Mar 2020 09:29:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 01:29:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,513,1574150400"; d="scan'208";a="240402481"
Received: from srware-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.25.112])
 by orsmga003.jf.intel.com with ESMTP; 04 Mar 2020 01:29:10 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed,  4 Mar 2020 09:29:01 +0000
Message-Id: <20200304092901.2347-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] tests/i915/query: Do not assert engine
 info rsvd being zero
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

These are not input fields and i915 currently leaves them untouched.

In the spirit of trusting the query as the authoritative source of
information, stop asserting these output only reserved fields are zero.

This should prevent the test from auto-failing if we extend the data in
the future.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Brian Welty <brian.welty@intel.com>
---
 tests/i915/i915_query.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/tests/i915/i915_query.c b/tests/i915/i915_query.c
index 71807425fbc4..e7c6fc91e32b 100644
--- a/tests/i915/i915_query.c
+++ b/tests/i915/i915_query.c
@@ -690,11 +690,6 @@ static void engines(int fd)
 			  engine->flags,
 			  engine->capabilities);
 
-		/* MBZ fields. */
-		igt_assert_eq(engine->rsvd0, 0);
-		igt_assert_eq(engine->rsvd1[0], 0);
-		igt_assert_eq(engine->rsvd1[1], 0);
-
 		switch (engine->engine.engine_class) {
 		case I915_ENGINE_CLASS_RENDER:
 			/* Will be tested later. */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
