Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C597B3275
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 14:25:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 330A810E6FE;
	Fri, 29 Sep 2023 12:25:30 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACB0D10E6FD;
 Fri, 29 Sep 2023 12:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695990327; x=1727526327;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3nWxMUgQDs+lJ2jqZ/3fRn69jkLn2xn7nq16lXtvZgI=;
 b=eNZYOj4mmKX86H84W/uo0aQnB+PeTsoimPppgKz6ZaA/5xxeHX4/sein
 VvJr7A6gXAxNDvPClWxPho+/gqRpIvrH+zNCXVx38hLEGVO8AK+mgeg35
 2hjEY/a9s2vXZgTOCHfq2hWxqGIqxJ4ox2ss6SOf0w+mhVSSURiQRZoID
 iKI4lPomufb1V76BgwhpW1jjGfDRyaMw9Yn8zmlWC/qurV/42cRwFkNId
 moYcuQj0GNlGjIVMgWDxrNvAl1VwTgpq50AcR9nQ8ItvJrBjOJ6VTI6ik
 DLOHzUHncsTrSbmaudiuVOqFiELyT1L2J+hqG7WcvgqlLaTA33H/L2LgT Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="446443761"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="446443761"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 05:25:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="726577138"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="726577138"
Received: from pbrady4x-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.203.84])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 05:25:26 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 29 Sep 2023 13:25:07 +0100
Message-Id: <20230929122517.349348-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230929122517.349348-1-tvrtko.ursulin@linux.intel.com>
References: <20230929122517.349348-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 02/12] tests/i915/drm_fdinfo: Stress test
 context close versus fdinfo reads
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

A short smoke tests to exercise fdinfo reads in parallel to contexts
getting created and destroyed.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tests/intel/drm_fdinfo.c | 68 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/tests/intel/drm_fdinfo.c b/tests/intel/drm_fdinfo.c
index 344c44dce78b..c4218b0d16e6 100644
--- a/tests/intel/drm_fdinfo.c
+++ b/tests/intel/drm_fdinfo.c
@@ -22,11 +22,14 @@
  *
  */
 
+#include <fcntl.h>
+
 #include "igt.h"
 #include "igt_core.h"
 #include "igt_device.h"
 #include "igt_drm_fdinfo.h"
 #include "i915/gem.h"
+#include "i915/gem_create.h"
 #include "i915/gem_vm.h"
 #include "intel_ctx.h"
 /**
@@ -72,6 +75,8 @@
  * SUBTEST: virtual-busy-idle-all
  *
  * SUBTEST: virtual-idle
+ *
+ * SUBTEST: context-close-stress
  */
 
 IGT_TEST_DESCRIPTION("Test the i915 drm fdinfo data");
@@ -717,6 +722,56 @@ virtual_all(int i915, const intel_ctx_cfg_t *base_cfg, unsigned int flags)
 	}
 }
 
+static void stress_context_close(int i915)
+{
+	const uint32_t bbe = MI_BATCH_BUFFER_END;
+	struct igt_helper_process reader = { };
+	struct drm_client_fdinfo info;
+	uint32_t batch;
+	int dir, ret;
+	char buf[64];
+
+	ret = snprintf(buf, sizeof(buf), "%u", i915);
+	igt_assert(ret > 0 && ret < sizeof(buf));
+
+	dir = open("/proc/self/fdinfo", O_DIRECTORY | O_RDONLY);
+	igt_assert_fd(dir);
+
+	memset(&info, 0, sizeof(info));
+	ret = __igt_parse_drm_fdinfo(dir, buf, &info, NULL, 0, NULL, 0);
+	igt_assert(ret > 0);
+	igt_require(info.num_regions);
+
+	batch = gem_create(i915, 4096);
+	gem_write(i915, batch, 0, &bbe, sizeof(bbe));
+
+	igt_fork_helper(&reader) {
+		for (;;) {
+			memset(&info, 0, sizeof(info));
+			ret = __igt_parse_drm_fdinfo(dir, buf, &info,
+						     NULL, 0, NULL, 0);
+			igt_assert(ret > 0);
+		}
+	}
+
+	igt_until_timeout(10) {
+		struct drm_i915_gem_exec_object2 obj = {
+			.handle = batch,
+		};
+		struct drm_i915_gem_execbuffer2 eb = {
+			.buffers_ptr = to_user_pointer(&obj),
+			.buffer_count = 1,
+		};
+
+		eb.rsvd1 = gem_context_create(i915);
+		igt_assert(eb.rsvd1);
+		gem_execbuf(i915, &eb);
+		gem_context_destroy(i915, eb.rsvd1);
+	}
+
+	igt_stop_helper(&reader);
+}
+
 #define test_each_engine(T, i915, ctx, e) \
 	igt_subtest_with_dynamic(T) for_each_ctx_engine(i915, ctx, e) \
 		igt_dynamic_f("%s", e->name)
@@ -848,6 +903,19 @@ igt_main
 	test_each_engine("isolation", i915, ctx, e)
 		single(i915, ctx, e, TEST_BUSY | TEST_ISOLATION);
 
+	igt_subtest_group {
+		int newfd;
+
+		igt_fixture
+			newfd = drm_reopen_driver(i915);
+
+		igt_subtest("context-close-stress")
+			stress_context_close(newfd);
+
+		igt_fixture
+			drm_close_driver(newfd);
+	}
+
 	igt_fixture {
 		intel_ctx_destroy(i915, ctx);
 		drm_close_driver(i915);
-- 
2.39.2

