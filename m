Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B70682889
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 10:18:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6458C10E31A;
	Tue, 31 Jan 2023 09:18:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B703E10E32B;
 Tue, 31 Jan 2023 09:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675156678; x=1706692678;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tzciVk8LP4p/TqsIOEeeJ/RvfEhNpsVE6QdphgFsalc=;
 b=a3diXOs9fxKOd+E6iqPVvfrnbI0d+WeIiNvtpUrL94iyRCa0UoVC35Oy
 Xn4+na9vfoxxYrikqvz28QcGrze8Rf8NDwTpRqXE/0Zjr+Cr73QBzrY1L
 ijwlIUU43Ltz//q5ZZcfMpDNMxqkdakIbmC2YtkFaNo5HMvo3DjbWfTbk
 Uzo0QByCkn0eJ7efbb6rVViVx6EyEm/4gmVbojs+sMGaYXfKcnAAwB1Ll
 plyRpTHhbe7hSPCkh4QqBsbzoKBKH6uj17N0oIDNHJDJc9wJd85cflH1o
 FgAQpxqYiPU1WbJK8hEbDJICi5c3Hg+6yPhkM2Y6gjlAjm/MZSBqIDjvD w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="390154169"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="390154169"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 01:17:58 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="909837963"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="909837963"
Received: from khernet-mobl.ger.corp.intel.com (HELO
 jkrzyszt-mobl1.ger.corp.intel.com) ([10.213.18.238])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 01:17:55 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Petri Latvala <adrinael@adrinael.net>, Arkadiusz Hiler <arek@hiler.eu>,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>
Date: Tue, 31 Jan 2023 10:17:31 +0100
Message-Id: <20230131091731.5892-3-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230131091731.5892-1-janusz.krzysztofik@linux.intel.com>
References: <20230131091731.5892-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 2/2] tests/i915/perf: Exercise barrier race
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a new subtest focused on exercising interaction between perf open /
close operations, which replace active barriers with perf requests, and
concurrent barrier preallocate / acquire operations performed during
context first pin / last unpin.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/6333
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
---
 tests/i915/perf.c | 41 +++++++++++++++++++++++++++++++++++++++--
 1 file changed, 39 insertions(+), 2 deletions(-)

diff --git a/tests/i915/perf.c b/tests/i915/perf.c
index e33cacc443..11a3ec21ab 100644
--- a/tests/i915/perf.c
+++ b/tests/i915/perf.c
@@ -39,6 +39,7 @@
 #include <math.h>
 
 #include "i915/gem.h"
+#include "i915/gem_create.h"
 #include "i915/perf.h"
 #include "igt.h"
 #include "igt_perf.h"
@@ -4885,7 +4886,27 @@ test_whitelisted_registers_userspace_config(void)
 	i915_perf_remove_config(drm_fd, config_id);
 }
 
-static void test_open_race(const struct intel_execution_engine2 *e, int timeout)
+static void gem_exec_nop(int i915, const struct intel_execution_engine2 *e)
+{
+	const uint32_t bbe = MI_BATCH_BUFFER_END;
+	struct drm_i915_gem_exec_object2 obj = { };
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(&obj),
+		.buffer_count = 1,
+	};
+
+	obj.handle = gem_create(i915, 4096);
+	gem_write(i915, obj.handle, 0, &bbe, sizeof(bbe));
+
+	execbuf.flags = e->flags;
+	gem_execbuf(i915, &execbuf);
+
+	gem_sync(i915, obj.handle);
+	gem_close(i915, obj.handle);
+}
+
+static void test_open_race(const struct intel_execution_engine2 *e, int timeout,
+			   bool use_spin)
 {
 	int *done;
 
@@ -4926,6 +4947,12 @@ static void test_open_race(const struct intel_execution_engine2 *e, int timeout)
 				ctx = gem_context_create_for_engine(i915, e->class, e->instance);
 				gem_context_set_persistence(i915, ctx, persistence);
 
+				if (!use_spin) {
+					gem_exec_nop(i915, e);
+					gem_context_destroy(i915, ctx);
+					continue;
+				}
+
 				spin = __igt_spin_new(i915, ctx, .ahnd = ahnd);
 				for (int i = random() % 7; i--; ) {
 					if (random() & 1) {
@@ -5330,7 +5357,17 @@ igt_main
 		for_each_physical_engine(drm_fd, e)
 			if (e->class == I915_ENGINE_CLASS_RENDER)
 				igt_dynamic_f("%s", e->name)
-					test_open_race(e, 5);
+					test_open_race(e, 5, true);
+	}
+
+	igt_describe("Exercise perf open/close against intensive barrier preallocate/acquire");
+	igt_subtest_with_dynamic("barrier-race") {
+		const struct intel_execution_engine2 *e;
+
+		for_each_physical_engine(drm_fd, e)
+			if (e->class == I915_ENGINE_CLASS_RENDER)
+				igt_dynamic_f("%s", e->name)
+					test_open_race(e, 5, false);
 	}
 
 	igt_fixture {
-- 
2.25.1

