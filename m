Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0782B2EA9C5
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 12:25:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 689886E0D9;
	Tue,  5 Jan 2021 11:25:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F87C89B29;
 Tue,  5 Jan 2021 11:25:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23506009-1500050 
 for multiple; Tue, 05 Jan 2021 11:25:35 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Jan 2021 11:25:35 +0000
Message-Id: <20210105112536.3284632-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/2] i915/gem_ctx_isolation: Protect
 inject_reset_context() from banning
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
Cc: igt-dev@lists.freedesktop.org,
 Venkata Ramana Nayana <venkata.ramana.nayana@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Disable banning as we deliberately inject GPU resets to test isolation.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Venkata Ramana Nayana <venkata.ramana.nayana@intel.com>
---
 tests/i915/gem_ctx_isolation.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/tests/i915/gem_ctx_isolation.c b/tests/i915/gem_ctx_isolation.c
index 58a35b487..4f1742685 100644
--- a/tests/i915/gem_ctx_isolation.c
+++ b/tests/i915/gem_ctx_isolation.c
@@ -762,10 +762,21 @@ static void isolation(int fd,
 #define S4 (4 << 8)
 #define SLEEP_MASK (0xf << 8)
 
+static uint32_t create_reset_context(int i915)
+{
+	struct drm_i915_gem_context_param param = {
+		.ctx_id = gem_context_clone_with_engines(i915, 0),
+		.param = I915_CONTEXT_PARAM_BANNABLE,
+	};
+
+	gem_context_set_param(i915, &param);
+	return param.ctx_id;
+}
+
 static void inject_reset_context(int fd, const struct intel_execution_engine2 *e)
 {
 	struct igt_spin_factory opts = {
-		.ctx = gem_context_clone_with_engines(fd, 0),
+		.ctx = create_reset_context(fd),
 		.engine = e->flags,
 		.flags = IGT_SPIN_FAST,
 	};
-- 
2.30.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
