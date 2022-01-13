Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E7748DC6F
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 18:00:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B200D10E528;
	Thu, 13 Jan 2022 16:59:55 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 186D910E53C;
 Thu, 13 Jan 2022 16:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642093188; x=1673629188;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SF5kYFo17sPtZ+xsyQzrEyAaysRWp6cEPprK3+ugT+M=;
 b=HACtY7IjS4OMJCAj+17bmcwWGjfROs08RJCtBbir3FsVv4FLe3q6z0Eo
 Y7o5fOdHL9C4/yszCB8cZdgGLTiTAMUci/kMiyFs4kWk3tAjeyRuR5b3y
 u7w9P3dhoXFs/o74vsFIMqnTo/GxQhKs+kr+VNJ/L7y19RQgFA33zPhxM
 0rsmhDj6WZqPzD5NcsnXViFj2ng3Lx249biFHt9m/gyOm8Th0fu4uy1JL
 xvdczGIJnnwg01gYhYuchWqzHrRFAnBGds9jVK5g6iLtaGdhKNPFX+sYe
 em1r9RABWBGIMEksPP8reuZo9KkyvaoP9TkJ+ZXb+EXM6M4+7JIg1G83N w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="307396641"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="307396641"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 08:59:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="515999188"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga007.jf.intel.com with ESMTP; 13 Jan 2022 08:59:45 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Thu, 13 Jan 2022 08:59:44 -0800
Message-Id: <20220113165944.1414015-16-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220113165944.1414015-1-John.C.Harrison@Intel.com>
References: <20220113165944.1414015-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 i-g-t 15/15] tests/i915/gem_exec_capture:
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

