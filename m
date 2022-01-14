Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16ED548EFC6
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jan 2022 19:17:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34BCA10E1C4;
	Fri, 14 Jan 2022 18:17:32 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EEAD10E1CE;
 Fri, 14 Jan 2022 18:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642184235; x=1673720235;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EnyT+dq+GuzzwfvvcH4v+mjZUdOE5Al4DQ+ee95tbRA=;
 b=N3vt0X8SinJGw7KqHLkXzLnnkf/ByY85jf8wH3kyOQ8qJQhIuT9rSnkF
 OZJ3ZWRMBaeJ2WOC96S3iFSqbDP0tl5LLhl+q/eHSReu/DAVe6od+I4LK
 iLkSze2NP3iEM4YqN3zJri0lcYCmAHNoPeBMkoe9o732Sjf55pQYQjhP/
 qO9f8slQzwJ9KqFwjZR+p3J2QGF0W614+MLVsbK8bwk6U72c0l4q+Dp0u
 bZzOL6/hSELz8GN86OEAQvZFyEoTHetBDUO3mbL1+ROyk9dQWoBvST1Tb
 o3eTIlG1F/NFGYkv4I1UKuNdwbjNNko+vzmIga19XxlBg3iGaLFc7rMbB A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10227"; a="224988562"
X-IronPort-AV: E=Sophos;i="5.88,289,1635231600"; d="scan'208";a="224988562"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2022 10:17:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,289,1635231600"; d="scan'208";a="491602010"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga002.jf.intel.com with ESMTP; 14 Jan 2022 10:17:13 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Fri, 14 Jan 2022 10:17:06 -0800
Message-Id: <20220114181713.1798514-9-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220114181713.1798514-1-John.C.Harrison@Intel.com>
References: <20220114181713.1798514-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 i-g-t 08/15] tests/i915/i915_hangman: Add
 alive-ness test after error capture
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
Cc: Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Added a an extra step to the i915_hangman tests to check that the
system is still alive after the hang and recovery. This submits a
simple batch to each engine which does a write to memory and checks
that the write occurred.

v2: Use _device_coherent instead of _wc for mapping memory to support
discrete boards.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 tests/i915/i915_hangman.c | 59 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
index 5a0c9497c..73a86ec9e 100644
--- a/tests/i915/i915_hangman.c
+++ b/tests/i915/i915_hangman.c
@@ -48,8 +48,57 @@
 static int device = -1;
 static int sysfs = -1;
 
+#define OFFSET_ALIVE	10
+
 IGT_TEST_DESCRIPTION("Tests for hang detection and recovery");
 
+static void check_alive(void)
+{
+	const struct intel_execution_engine2 *engine;
+	const intel_ctx_t *ctx;
+	uint32_t scratch, *out;
+	int fd, i = 0;
+	uint64_t ahnd, scratch_addr;
+
+	fd = drm_open_driver(DRIVER_INTEL);
+	igt_require(gem_class_can_store_dword(fd, 0));
+
+	ctx = intel_ctx_create_all_physical(fd);
+	ahnd = get_reloc_ahnd(fd, ctx->id);
+	scratch = gem_create(fd, 4096);
+	scratch_addr = get_offset(ahnd, scratch, 4096, 0);
+	out = gem_mmap__device_coherent(fd, scratch, 0, 4096, PROT_WRITE | PROT_READ);
+	gem_set_domain(fd, scratch,
+			I915_GEM_DOMAIN_GTT, I915_GEM_DOMAIN_GTT);
+
+	for_each_physical_engine(fd, engine) {
+		igt_assert_eq_u32(out[i + OFFSET_ALIVE], 0);
+		i++;
+	}
+
+	i = 0;
+	for_each_ctx_engine(fd, ctx, engine) {
+		if (!gem_class_can_store_dword(fd, engine->class))
+			continue;
+
+		/* +OFFSET_ALIVE to ensure engine zero doesn't get a false negative */
+		igt_store_word(fd, ahnd, ctx, engine, -1, scratch, scratch_addr,
+			       i + OFFSET_ALIVE, i + OFFSET_ALIVE);
+		i++;
+	}
+
+	gem_set_domain(fd, scratch, I915_GEM_DOMAIN_GTT, 0);
+
+	while (i--)
+		igt_assert_eq_u32(out[i + OFFSET_ALIVE], i + OFFSET_ALIVE);
+
+	munmap(out, 4096);
+	gem_close(fd, scratch);
+	put_ahnd(ahnd);
+	intel_ctx_destroy(fd, ctx);
+	close(fd);
+}
+
 static bool has_error_state(int dir)
 {
 	bool result;
@@ -231,6 +280,8 @@ static void test_error_state_capture(const intel_ctx_t *ctx,
 	check_error_state(e->name, offset, batch);
 	munmap(batch, 4096);
 	put_ahnd(ahnd);
+
+	check_alive();
 }
 
 static void
@@ -289,6 +340,8 @@ test_engine_hang(const intel_ctx_t *ctx,
 		put_ahnd(ahndN);
 	}
 	put_ahnd(ahnd);
+
+	check_alive();
 }
 
 static int hang_count;
@@ -321,6 +374,8 @@ static void test_hang_detector(const intel_ctx_t *ctx,
 
 	/* Did it work? */
 	igt_assert(hang_count == 1);
+
+	check_alive();
 }
 
 /* This test covers the case where we end up in an uninitialised area of the
@@ -356,6 +411,8 @@ static void hangcheck_unterminated(const intel_ctx_t *ctx)
 		igt_force_gpu_reset(device);
 		igt_assert_f(0, "unterminated batch did not trigger a hang!\n");
 	}
+
+	check_alive();
 }
 
 static void do_tests(const char *name, const char *prefix,
@@ -433,6 +490,8 @@ igt_main
 		igt_assert(sysfs != -1);
 
 		igt_require(has_error_state(sysfs));
+
+		gem_require_mmap_device_coherent(device);
 	}
 
 	igt_describe("Basic error capture");
-- 
2.25.1

