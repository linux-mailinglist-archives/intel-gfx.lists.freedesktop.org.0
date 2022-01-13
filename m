Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8938F48E130
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jan 2022 00:51:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D34E910E84C;
	Thu, 13 Jan 2022 23:51:26 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C62510E823;
 Thu, 13 Jan 2022 23:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642117883; x=1673653883;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GvTeMj4p496eF/cgKeteC+4cJZcBT8YpC6yo0tfo/ds=;
 b=kBoOsfF5fpqZhdXCavDDghMD7SmsPcYtd4X0m6LEAVwKA0Q622BoVlHO
 H90ZvBdG1z8IXw8N77B5xbThcGk0z01XCKVbLk6ueyUVerlwDT7C7xiCU
 5UdWZwaOtXUBdp8gSELCWxRNLyAfOpogaOk6zh4X1w2+8kLCWJWc4aHTR
 11hexWjbeq4pGugRAeVW6ZmlfZl049SreYBpKrLFeig4v0fz7vbGne9+C
 XQlWBBmjGPz5Vix/SPHU2SL8J0ZFtNk3LmzkFIsMKZYLVE5qVOufWvnEH
 1xwqWdlbXar+h9cz5SZk47dvc5BItg1LAJzESFsymTeasq81Z1vM9Lzxn w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="268502308"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="268502308"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 15:51:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="620783062"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga002.fm.intel.com with ESMTP; 13 Jan 2022 15:51:22 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Thu, 13 Jan 2022 15:51:18 -0800
Message-Id: <20220113235118.1575410-16-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220113235118.1575410-1-John.C.Harrison@Intel.com>
References: <20220113235118.1575410-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 i-g-t 15/15] tests/i915/gem_exec_capture:
 Restore engines
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

The test was updated some engine properties but not restoring them
afterwards. That would leave the system in a non-default state which
could potentially affect subsequent tests. Fix it by using the new
save/restore engine properties helper functions.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 tests/i915/gem_exec_capture.c | 37 ++++++++++++++++++++++++++---------
 1 file changed, 28 insertions(+), 9 deletions(-)

diff --git a/tests/i915/gem_exec_capture.c b/tests/i915/gem_exec_capture.c
index 9beb36fc7..51db07c41 100644
--- a/tests/i915/gem_exec_capture.c
+++ b/tests/i915/gem_exec_capture.c
@@ -209,14 +209,21 @@ static int check_error_state(int dir, struct offset *obj_offsets, int obj_count,
 	return blobs;
 }
 
-static void configure_hangs(int fd, const struct intel_execution_engine2 *e, int ctxt_id)
+static struct gem_engine_properties
+configure_hangs(int fd, const struct intel_execution_engine2 *e, int ctxt_id)
 {
+	struct gem_engine_properties props;
+
 	/* Ensure fast hang detection */
-	gem_engine_property_printf(fd, e->name, "preempt_timeout_ms", "%d", 250);
-	gem_engine_property_printf(fd, e->name, "heartbeat_interval_ms", "%d", 500);
+	props.engine = e;
+	props.preempt_timeout = 250;
+	props.heartbeat_interval = 500;
+	gem_engine_properties_configure(fd, &props);
 
 	/* Allow engine based resets and disable banning */
 	igt_allow_hang(fd, ctxt_id, HANG_ALLOW_CAPTURE | HANG_WANT_ENGINE_RESET);
+
+	return props;
 }
 
 static bool fence_busy(int fence)
@@ -256,8 +263,9 @@ static void __capture1(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
 	uint32_t *batch, *seqno;
 	struct offset offset;
 	int i, fence_out;
+	struct gem_engine_properties saved_engine;
 
-	configure_hangs(fd, e, ctx->id);
+	saved_engine = configure_hangs(fd, e, ctx->id);
 
 	memset(obj, 0, sizeof(obj));
 	obj[SCRATCH].handle = gem_create_in_memory_regions(fd, 4096, region);
@@ -371,6 +379,8 @@ static void __capture1(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
 	gem_close(fd, obj[BATCH].handle);
 	gem_close(fd, obj[NOCAPTURE].handle);
 	gem_close(fd, obj[SCRATCH].handle);
+
+	gem_engine_properties_restore(fd, &saved_engine);
 }
 
 static void capture(int fd, int dir, const intel_ctx_t *ctx,
@@ -417,8 +427,9 @@ __captureN(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
 	uint32_t *batch, *seqno;
 	struct offset *offsets;
 	int i, fence_out;
+	struct gem_engine_properties saved_engine;
 
-	configure_hangs(fd, e, ctx->id);
+	saved_engine = configure_hangs(fd, e, ctx->id);
 
 	offsets = calloc(count, sizeof(*offsets));
 	igt_assert(offsets);
@@ -559,10 +570,12 @@ __captureN(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
 
 	qsort(offsets, count, sizeof(*offsets), cmp);
 	igt_assert(offsets[0].addr <= offsets[count-1].addr);
+
+	gem_engine_properties_restore(fd, &saved_engine);
 	return offsets;
 }
 
-#define find_first_available_engine(fd, ctx, e) \
+#define find_first_available_engine(fd, ctx, e, saved) \
 	do { \
 		ctx = intel_ctx_create_all_physical(fd); \
 		igt_assert(ctx); \
@@ -570,7 +583,7 @@ __captureN(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
 			for_each_if(gem_class_can_store_dword(fd, e->class)) \
 				break; \
 		igt_assert(e); \
-		configure_hangs(fd, e, ctx->id); \
+		saved = configure_hangs(fd, e, ctx->id); \
 	} while(0)
 
 static void many(int fd, int dir, uint64_t size, unsigned int flags)
@@ -580,8 +593,9 @@ static void many(int fd, int dir, uint64_t size, unsigned int flags)
 	uint64_t ram, gtt, ahnd;
 	unsigned long count, blobs;
 	struct offset *offsets;
+	struct gem_engine_properties saved_engine;
 
-	find_first_available_engine(fd, ctx, e);
+	find_first_available_engine(fd, ctx, e, saved_engine);
 
 	gtt = gem_aperture_size(fd) / size;
 	ram = (intel_get_avail_ram_mb() << 20) / size;
@@ -602,6 +616,8 @@ static void many(int fd, int dir, uint64_t size, unsigned int flags)
 
 	free(offsets);
 	put_ahnd(ahnd);
+
+	gem_engine_properties_restore(fd, &saved_engine);
 }
 
 static void prioinv(int fd, int dir, const intel_ctx_t *ctx,
@@ -697,8 +713,9 @@ static void userptr(int fd, int dir)
 	void *ptr;
 	int obj_size = 4096;
 	uint32_t system_region = INTEL_MEMORY_REGION_ID(I915_SYSTEM_MEMORY, 0);
+	struct gem_engine_properties saved_engine;
 
-	find_first_available_engine(fd, ctx, e);
+	find_first_available_engine(fd, ctx, e, saved_engine);
 
 	igt_assert(posix_memalign(&ptr, obj_size, obj_size) == 0);
 	memset(ptr, 0, obj_size);
@@ -710,6 +727,8 @@ static void userptr(int fd, int dir)
 	gem_close(fd, handle);
 	put_ahnd(ahnd);
 	free(ptr);
+
+	gem_engine_properties_restore(fd, &saved_engine);
 }
 
 static bool has_capture(int fd)
-- 
2.25.1

