Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE7C48DE75
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 21:00:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BE4610E572;
	Thu, 13 Jan 2022 19:59:52 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A84C10E565;
 Thu, 13 Jan 2022 19:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642103990; x=1673639990;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=psnkr3MgvoMIIiBGpnPVQ8sZWcklpUHRJRhXojZRi5c=;
 b=hAKHH0pLOA9KMMc+QnpCRSIXku/k8MeQKOxWb6LnRAL7bhjmDlZTxW3O
 qDF5bIig7ncPETTSja7GuIkkRqinolHYlW72d+gXp9itudd6kjcRLf7Qz
 2dF94m6TJS5U9Ez7EWH0TRE9c4b7OJCiipaAS4bkyXV6sbGOgwXZaDEYG
 WQ7NgVidYPRL+2p8TjxW7gAi28iprcEOBaZOqij/WKLs4l05RUZhepT9t
 SrUCzT9kLd455rxvGgN8cFKftpuUyAOXnogeIP0Sc3MSu4HgZYjy6O4Cj
 IeUgJ3u98O8E86daRLuyGIF9AW8upsqNd3jO2/S+zeoQ56CW7NFv/EJID Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="244055996"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="244055996"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 11:59:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="475477479"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga006.jf.intel.com with ESMTP; 13 Jan 2022 11:59:48 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Thu, 13 Jan 2022 11:59:40 -0800
Message-Id: <20220113195947.1536897-9-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220113195947.1536897-1-John.C.Harrison@Intel.com>
References: <20220113195947.1536897-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 i-g-t 08/15] tests/i915/i915_hangman: Add
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

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 tests/i915/i915_hangman.c | 59 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
index 5a0c9497c..918418760 100644
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
+	out = gem_mmap__wc(fd, scratch, 0, 4096, PROT_WRITE);
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
+		gem_require_mmap_wc(device);
 	}
 
 	igt_describe("Basic error capture");
-- 
2.25.1

