Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9092A590E81
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 11:54:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3118DAB509;
	Fri, 12 Aug 2022 09:54:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C0DB95B02;
 Fri, 12 Aug 2022 09:54:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660298051; x=1691834051;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vZiKSmzL434Dq7bbCKIN8+f6ZG4pGpEwmsK7TsYvirs=;
 b=Y3YNb9sqT0Bufl2l4rLgHkEpiJk27qoDMlct3EGgS/+StlbAf0ka0Mzw
 qSX4hjfwLfbX2oY3dpqzSzeBaG8LQCYtGk8oPh5S+nxy6wGIh1V96pZKd
 lxISNrCzjbEnxL3eA8/AMj71Cx24z2vU5Ytg7vjQuqg+7+1mwk3C1D7+1
 RCrcXyLpmRDBBI1E/4GvKkvhMiFdf7NZiEhcyVxc8bGDVhCQwMGuy5DkB
 62ImjUCObjB73O7MEMuM1hoj1gkxjB7Iqcfe89AV2yGzOJQrP/r/Y/PR1
 0/XjCwbpOAYjKhm7T7OEuWAPDhoweNRK1wJbG/akBHLR1pnHlwQldQilS Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="292359360"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="292359360"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2022 02:54:11 -0700
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="634588874"
Received: from jkrzyszt-mobl1.ger.corp.intel.com (HELO jkrzyszt-mobl1.lan)
 ([10.213.22.182])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2022 02:54:07 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 12 Aug 2022 11:53:46 +0200
Message-Id: <20220812095346.45379-3-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220812095346.45379-1-janusz.krzysztofik@linux.intel.com>
References: <20220812095346.45379-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v3 3/3] tests/gem_exec_fence: Restore
 pre-hang checks in *await-hang scenarios
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Mauro Carvalho Chehab <mauro.carvalho.chehab@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Commit c8f6aaf32d83 "tests/gem_exec_fence: Check stored values only for
valid workloads" resolved an issue, observed in *await-hang scenarios,
where a fence exposed by an invalid spin batch was signaled asynchronously
to pending checks for depended test batches still waiting for that fence.
Those checks have been disabled, weakening those scenarios.

This change restores the pre-hang checks to the extent possible when the
invalid spin batch may trigger an immediate reset.  If we are lucky enough
to take a snapshot of the object supposed to be still not modified by
store batches after we confirm that the spin batch has started and before
the fence is signaled, we use that copy to verify if the fence dependent
batches are still blocked.  Running the *await-hang subtests multiple
times in CI should build our confidence in their results.

v2: preserve checking the pipeline runs ahead of the hang (Chris)
v3: use a more simple 'best effort' approach suggested by Chris

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mauro Carvalho Chehab <mauro.carvalho.chehab@intel.com>
---
 tests/i915/gem_exec_fence.c | 22 ++++++++++++++++------
 1 file changed, 16 insertions(+), 6 deletions(-)

diff --git a/tests/i915/gem_exec_fence.c b/tests/i915/gem_exec_fence.c
index 78d83460f7..f24bebdb7d 100644
--- a/tests/i915/gem_exec_fence.c
+++ b/tests/i915/gem_exec_fence.c
@@ -21,6 +21,7 @@
  * IN THE SOFTWARE.
  */
 
+#include <string.h>
 #include <sys/ioctl.h>
 #include <sys/poll.h>
 #include <sys/signal.h>
@@ -307,12 +308,12 @@ static void test_fence_await(int fd, const intel_ctx_t *ctx,
 			     const struct intel_execution_engine2 *e,
 			     unsigned flags)
 {
+	uint64_t scratch_offset, ahnd = get_reloc_ahnd(fd, ctx->id);
 	const struct intel_execution_engine2 *e2;
 	uint32_t scratch = gem_create(fd, 4096);
+	uint32_t *out, tmp[4096 / sizeof(*out)];
 	igt_spin_t *spin;
-	uint32_t *out;
-	uint64_t scratch_offset, ahnd = get_reloc_ahnd(fd, ctx->id);
-	int i;
+	int i, n;
 
 	scratch_offset = get_offset(ahnd, scratch, 4096, 0);
 
@@ -353,11 +354,20 @@ static void test_fence_await(int fd, const intel_ctx_t *ctx,
 	/* Long, but not too long to anger preemption disable checks */
 	usleep(50 * 1000); /* 50 ms, typical preempt reset is 150+ms */
 
+	/*
+	 * Check for invalidly completing the task early.
+	 * In -hang variants, invalid spin batch may trigger an immediate reset,
+	 * then we are able to verify if store batches haven't been started yet
+	 * only if the fence of the spin batch is still busy.
+	 * Just run *await-hang subtest multiple times to build confidence.
+	 */
+	memcpy(tmp, out, (i + 1) * sizeof(*out));
+	if (fence_busy(spin->out_fence)) {
+		for (n = 0; n <= i; n++)
+			igt_assert_eq_u32(tmp[n], 0);
+	}
 	if ((flags & HANG) == 0) {
-		/* Check for invalidly completing the task early */
 		igt_assert(fence_busy(spin->out_fence));
-		for (int n = 0; n <= i; n++)
-			igt_assert_eq_u32(out[n], 0);
 
 		igt_spin_end(spin);
 	}
-- 
2.25.1

