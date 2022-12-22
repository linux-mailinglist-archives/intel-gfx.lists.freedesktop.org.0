Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62485653DF0
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 11:04:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90F6E10E53A;
	Thu, 22 Dec 2022 10:04:23 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E945710E53A;
 Thu, 22 Dec 2022 10:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671703461; x=1703239461;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=a6tAzWDG3PfnL/6HR0Lz6HBGHC52sPyP+44WoXrAzxU=;
 b=IVVZqur5483oU5PmUtA4zWAkcd93eC9vEjhv2i5NDld/+Lt74NvGYwyG
 z/DvHATcN2lr8ErzXV14+kRjnaG64+r8Se/VKdqKgQHoyJEHxqGngsoyR
 fgax5TYTZNGwOZ+YyrkxQTPhp6JWY88DYPfX4aNT40XvalzkJn2DgD9qo
 NvDD1APAYFgW0oNzsZUtgZ4YTnP2H/DN8IKp+3GAmJ9hNMtcNsV3BCNjG
 e4KfXuF8uY0/fA4RhRRHcOs1/s0GKft271JZ6zWS5gt7P4bodAbwFT0PA
 jewI+86v2oioDUEuBDLGBHqqzUI4VY26/7PYgCaoISltkdPc8setW5Q9T w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="299763229"
X-IronPort-AV: E=Sophos;i="5.96,265,1665471600"; d="scan'208";a="299763229"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2022 02:04:11 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="645164567"
X-IronPort-AV: E=Sophos;i="5.96,265,1665471600"; d="scan'208";a="645164567"
Received: from cprice2-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.220.27])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2022 02:04:09 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Thu, 22 Dec 2022 10:04:03 +0000
Message-Id: <20221222100403.256775-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/gem_mmap_gtt: add test
 mmap_closed_bo
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

From: Chuansheng Liu <chuansheng.liu@intel.com>

Recently we figured out one memory leak in i915 driver when running
below alike test:

create_bo
gem_mmap_gtt bo
gem_mmap_gtt bo twice
close_bo

then the memory leak is detected. More details can be referred in
https://patchwork.freedesktop.org/patch/475802/?series=100532&rev=2

For detecting such issue, this test case mmap_closed_bo is created,
it will close the bo with keeping one mmap, then second mmap the bo,
in normal situation, we expect second mmap failure with EACCESS. But
it will succeed if driver has the vm_node allowance leak.

V2: (Tvrtko) some variable placement and comments tuning.
V3: (Tvrtko) Using igt_drop_caches_set(fd, DROP_FREED) directly.
v4: [tursulin] Fixed a conflict, added igt_describe.

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Chuansheng Liu <chuansheng.liu@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tests/i915/gem_mmap_gtt.c | 49 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/tests/i915/gem_mmap_gtt.c b/tests/i915/gem_mmap_gtt.c
index c14ab50eeee7..68f5e8412af6 100644
--- a/tests/i915/gem_mmap_gtt.c
+++ b/tests/i915/gem_mmap_gtt.c
@@ -320,6 +320,52 @@ test_wc(int fd)
 		     5*gtt_writes/256., 5*cpu_writes/256.);
 }
 
+static void mmap_closed_bo(int fd)
+{
+	int loop = 0;
+
+	while (loop++ < 2) {
+		struct drm_i915_gem_mmap_gtt mmap_arg;
+		void *p1, *p2;
+		int i = loop;
+
+		memset(&mmap_arg, 0, sizeof(mmap_arg));
+		mmap_arg.handle = gem_create(fd, OBJECT_SIZE);
+		igt_assert(mmap_arg.handle);
+
+		while (i--) {
+			/*
+			 * Get mmap offset by calling GEM_MMAP_GTT one or multiple times in
+			 * order to try to provoke a memory leak in the driver.
+			 */
+			do_ioctl(fd, DRM_IOCTL_I915_GEM_MMAP_GTT, &mmap_arg);
+		}
+
+		p1 = mmap64(0, OBJECT_SIZE, PROT_READ | PROT_WRITE,
+			MAP_SHARED, fd, mmap_arg.offset);
+		igt_assert(p1 != MAP_FAILED);
+
+		gem_close(fd, mmap_arg.handle);
+
+		/*
+		 * Drop the freed objects for consistent 2nd mmap result.
+		 */
+		igt_drop_caches_set(fd, DROP_FREED);
+
+		p2 = mmap64(0, OBJECT_SIZE, PROT_READ | PROT_WRITE,
+			MAP_SHARED, fd, mmap_arg.offset);
+
+		munmap(p1, OBJECT_SIZE);
+
+		/*
+		 * we expect mmapping p2 would fail, otherwise the driver
+		 * may not clean up the allowance of vm_node, it would
+		 * cause memory leak.
+		 */
+		igt_assert(p2 == MAP_FAILED);
+	}
+}
+
 static int mmap_gtt_version(int i915)
 {
 	int val = 0;
@@ -1315,6 +1361,9 @@ igt_main
 		     "writes into it from another GTT mmapped.");
 	igt_subtest("basic-write-gtt")
 		test_write_gtt(fd);
+	igt_describe("Check mmap of a closed handle is rejected.");
+	igt_subtest("mmap-closed-bo")
+		mmap_closed_bo(fd);
 	igt_describe("Inspect a GTT mmap using ptrace().");
 	igt_subtest("ptrace")
 		test_ptrace(fd);
-- 
2.34.1

