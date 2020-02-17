Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 577B5160F65
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2020 10:58:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADB9D6E32D;
	Mon, 17 Feb 2020 09:58:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36BEC6E32D
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Feb 2020 09:58:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20249714-1500050 
 for multiple; Mon, 17 Feb 2020 09:58:37 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Feb 2020 09:58:35 +0000
Message-Id: <20200217095835.599827-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Rearrange code to silence compiler
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Without selftests enabled, I915_SELFTEST_ONLY becomes a dummy,
generating a bare '0'. This causes the compiler to complain about a
useless line, and while we could use I915_SELFTEST_DECLARE instead, it
is a bit messier. Move the selftest-only code to a helper and make that
conditional on having selftests enabled.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 78e854440949..ba31cbe8c68e 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1206,6 +1206,14 @@ static u32 intel_context_get_runtime(const struct intel_context *ce)
 	return READ_ONCE(ce->lrc_reg_state[CTX_TIMESTAMP]);
 }
 
+static void st_update_runtime_underflow(struct intel_context *ce, s32 dt)
+{
+#if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
+	ce->runtime.num_underflow += dt < 0;
+	ce->runtime.max_underflow = max_t(u32, ce->runtime.max_underflow, -dt);
+#endif
+}
+
 static void intel_context_update_runtime(struct intel_context *ce)
 {
 	u32 old;
@@ -1221,9 +1229,7 @@ static void intel_context_update_runtime(struct intel_context *ce)
 	if (unlikely(dt <= 0)) {
 		CE_TRACE(ce, "runtime underflow: last=%u, new=%u, delta=%d\n",
 			 old, ce->runtime.last, dt);
-		I915_SELFTEST_ONLY(ce->runtime.num_underflow += dt < 0);
-		I915_SELFTEST_ONLY(ce->runtime.max_underflow =
-				   max_t(u32, ce->runtime.max_underflow, -dt));
+		st_update_runtime_underflow(ce, dt);
 		return;
 	}
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
