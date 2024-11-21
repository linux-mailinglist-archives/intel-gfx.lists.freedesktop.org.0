Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6979D4AFA
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2024 11:41:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECA7F10E8DE;
	Thu, 21 Nov 2024 10:41:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LP6pgD2b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A05E710E8DD;
 Thu, 21 Nov 2024 10:41:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732185701; x=1763721701;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T6UIgMkW5HfQGGucfSzf+mhqUdQ5IzrG0xcRiBwAMMs=;
 b=LP6pgD2bCAfscRGHugx3O6ZmrAkm1aey2WN5mDyS2IrydG8G5cA6FlOm
 id1wxk9rSSU8ACIxXKpfEmUO6KsbOxpiCKH6b42hmxTlU+aZZ/kdXGGRO
 bH870lCqg2fiPzCh5nEWpcUL5U3rMExnauqZZWk1PugQX8HufxWFsg4NI
 TDza5SQApk7UZTsHYBljvT+G1XcrUAJEfsvKNwTe/gCYE/aRH8pSySg28
 LaI5moYdvsdWT0vxTnpwgz8zO3VcjuVQifmM4sJwP/h264s8bi1Ra2Box
 TkSIh+jCKYsAf7jZK1YA/hrRg36gwEkhrnQlwkN5nc27dnd7ySYaX/f56 Q==;
X-CSE-ConnectionGUID: e6sGnbKoRJePU5v7+BURcw==
X-CSE-MsgGUID: HsfbuBfmSaKzaplaonAQ5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11262"; a="32406861"
X-IronPort-AV: E=Sophos;i="6.12,172,1728975600"; d="scan'208";a="32406861"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2024 02:41:41 -0800
X-CSE-ConnectionGUID: 6sH6/GjzSjWDspzmTDKINQ==
X-CSE-MsgGUID: NHy89RaPT2uYl2VI7AnLPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,172,1728975600"; d="scan'208";a="91022941"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.105])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2024 02:41:38 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t 1/2] tests/gem_mmap_offset: Split 'clear' subtest
Date: Thu, 21 Nov 2024 11:39:27 +0100
Message-ID: <20241121104039.314188-5-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241121104039.314188-4-janusz.krzysztofik@linux.intel.com>
References: <20241121104039.314188-4-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Commit e25913a1a79d ("i915/gem_mmap_offset: Ignore ENOSPC error for making
residency execbuf") not only resolved the issue of unnecessary failures on
ENOSPC errors, but also introduced an alternative method of clearing
memory of an object, with random selection of one of those methods on each
iteration.  The new method expects the memory to be cleared in pagefault
handler path.  Since those two methods may give different results, mixing
them in one exercise may make the picture unclear, especially if something
goes wrong.

Add a new subtest that exercises the pagefault method exclusively.

Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11738
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_mmap_offset.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/tests/intel/gem_mmap_offset.c b/tests/intel/gem_mmap_offset.c
index 3f499abedb..20dca17378 100644
--- a/tests/intel/gem_mmap_offset.c
+++ b/tests/intel/gem_mmap_offset.c
@@ -53,6 +53,7 @@
  * SUBTEST: basic-uaf
  * SUBTEST: blt-coherency
  * SUBTEST: clear
+ * SUBTEST: clear-via-pagefault
  * SUBTEST: close-race
  * SUBTEST: isolation
  * SUBTEST: mmap-boundaries
@@ -720,6 +721,8 @@ struct thread_clear {
 	struct drm_i915_gem_memory_class_instance region;
 	int timeout;
 	int i915;
+	unsigned flags;
+#define CLEAR_IN_EXECBUF	0x1 << 0
 };
 
 static void *thread_clear(void *data)
@@ -743,8 +746,8 @@ static void *thread_clear(void *data)
 		size = npages << 12;
 
 		igt_assert_eq(__gem_create_in_memory_region_list(i915, &handle, &size, 0, &arg->region, 1), 0);
-		/* Zero-init bo in execbuf or pagefault handler path randomly */
-		if (random() & 1)
+		/* Zero-init bo in execbuf or pagefault handler path as requested */
+		if (arg->flags & CLEAR_IN_EXECBUF)
 			make_resident(i915, batch, handle);
 
 		ptr = __mmap_offset(i915, handle, 0, size,
@@ -784,13 +787,14 @@ static void *thread_clear(void *data)
 	return (void *)(uintptr_t)checked;
 }
 
-static void always_clear(int i915, const struct gem_memory_region *r, int timeout)
+static void always_clear(int i915, const struct gem_memory_region *r, int timeout, unsigned flags)
 {
 	struct thread_clear arg = {
 		.i915 = i915,
 		.region = r->ci,
 		.max = r->cpu_size / 2 >> 12, /* in pages */
 		.timeout = timeout,
+		.flags = flags,
 	};
 	const int ncpus = sysconf(_SC_NPROCESSORS_ONLN);
 	unsigned long checked;
@@ -1200,7 +1204,14 @@ igt_main
 	igt_subtest_with_dynamic("clear") {
 		for_each_memory_region(r, i915) {
 			igt_dynamic_f("%s", r->name)
-				always_clear(i915, r, 20);
+				always_clear(i915, r, 20, CLEAR_IN_EXECBUF);
+		}
+	}
+
+	igt_subtest_with_dynamic("clear-via-pagefault") {
+		for_each_memory_region(r, i915) {
+			igt_dynamic_f("%s", r->name)
+				always_clear(i915, r, 20, 0);
 		}
 	}
 
-- 
2.47.0

