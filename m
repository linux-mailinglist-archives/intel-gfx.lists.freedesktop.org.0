Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9E83DB585
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 10:54:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 909B16F406;
	Fri, 30 Jul 2021 08:54:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31B186F40D;
 Fri, 30 Jul 2021 08:54:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="298644881"
X-IronPort-AV: E=Sophos;i="5.84,281,1620716400"; d="scan'208";a="298644881"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 01:54:15 -0700
X-IronPort-AV: E=Sophos;i="5.84,281,1620716400"; d="scan'208";a="664763909"
Received: from asleatox-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.201.173])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 01:54:13 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 30 Jul 2021 09:53:48 +0100
Message-Id: <20210730085348.2326899-11-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210730085348.2326899-1-matthew.auld@intel.com>
References: <20210730085348.2326899-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v3 11/11] tests/i915/gem_exec_fence: use
 device_coherent mmap
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We lost explicit WC mmaps on discrete, where we now only support FIXED,
however such mappings should be device coherent. In gem_exec_fence it
looks like we can just use mmap__device_coherent, which should also work
on discrete platforms, while still using an explicit WC mmap on
integrated platforms.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Ramalingam C <ramalingam.c@intel.com>
---
 tests/i915/gem_exec_fence.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/tests/i915/gem_exec_fence.c b/tests/i915/gem_exec_fence.c
index ef1bb0ca..620e7ac2 100644
--- a/tests/i915/gem_exec_fence.c
+++ b/tests/i915/gem_exec_fence.c
@@ -152,7 +152,7 @@ static void test_fence_busy(int fd, const intel_ctx_t *ctx,
 	obj.relocation_count = 1;
 	memset(&reloc, 0, sizeof(reloc));
 
-	batch = gem_mmap__wc(fd, obj.handle, 0, 4096, PROT_WRITE);
+	batch = gem_mmap__device_coherent(fd, obj.handle, 0, 4096, PROT_WRITE);
 	gem_set_domain(fd, obj.handle,
 		       I915_GEM_DOMAIN_GTT, I915_GEM_DOMAIN_GTT);
 
@@ -244,7 +244,7 @@ static void test_fence_busy_all(int fd, const intel_ctx_t *ctx, unsigned flags)
 	obj.relocation_count = 1;
 	memset(&reloc, 0, sizeof(reloc));
 
-	batch = gem_mmap__wc(fd, obj.handle, 0, 4096, PROT_WRITE);
+	batch = gem_mmap__device_coherent(fd, obj.handle, 0, 4096, PROT_WRITE);
 	gem_set_domain(fd, obj.handle,
 		       I915_GEM_DOMAIN_GTT, I915_GEM_DOMAIN_GTT);
 
@@ -353,7 +353,7 @@ static void test_fence_await(int fd, const intel_ctx_t *ctx,
 	uint32_t *out;
 	int i;
 
-	out = gem_mmap__wc(fd, scratch, 0, 4096, PROT_WRITE);
+	out = gem_mmap__device_coherent(fd, scratch, 0, 4096, PROT_WRITE);
 	gem_set_domain(fd, scratch,
 			I915_GEM_DOMAIN_GTT, I915_GEM_DOMAIN_GTT);
 
@@ -617,7 +617,7 @@ static void test_parallel(int i915, const intel_ctx_t *ctx,
 	const struct intel_execution_engine2 *e2;
 	const unsigned int gen = intel_gen(intel_get_drm_devid(i915));
 	uint32_t scratch = gem_create(i915, 4096);
-	uint32_t *out = gem_mmap__wc(i915, scratch, 0, 4096, PROT_READ);
+	uint32_t *out = gem_mmap__device_coherent(i915, scratch, 0, 4096, PROT_READ);
 	uint32_t handle[I915_EXEC_RING_MASK];
 	IGT_CORK_FENCE(cork);
 	igt_spin_t *spin;
@@ -2813,7 +2813,7 @@ static void test_syncobj_timeline_chain_engines(int fd, const intel_ctx_cfg_t *c
 
 	gem_sync(fd, ctx.engine_counter_object.handle);
 
-	counter_output = gem_mmap__wc(fd, ctx.engine_counter_object.handle, 0, 4096, PROT_READ);
+	counter_output = gem_mmap__device_coherent(fd, ctx.engine_counter_object.handle, 0, 4096, PROT_READ);
 
 	for (uint32_t i = 0; i < ctx.engines.nengines; i++)
 		igt_debug("engine %i (%s)\t= %016"PRIx64"\n", i,
@@ -2879,7 +2879,7 @@ static void test_syncobj_stationary_timeline_chain_engines(int fd, const intel_c
 
 	gem_sync(fd, ctx.engine_counter_object.handle);
 
-	counter_output = gem_mmap__wc(fd, ctx.engine_counter_object.handle, 0, 4096, PROT_READ);
+	counter_output = gem_mmap__device_coherent(fd, ctx.engine_counter_object.handle, 0, 4096, PROT_READ);
 
 	for (uint32_t i = 0; i < ctx.engines.nengines; i++)
 		igt_debug("engine %i (%s)\t= %016"PRIx64"\n", i,
@@ -2940,7 +2940,7 @@ static void test_syncobj_backward_timeline_chain_engines(int fd, const intel_ctx
 
 	gem_sync(fd, ctx.engine_counter_object.handle);
 
-	counter_output = gem_mmap__wc(fd, ctx.engine_counter_object.handle, 0, 4096, PROT_READ);
+	counter_output = gem_mmap__device_coherent(fd, ctx.engine_counter_object.handle, 0, 4096, PROT_READ);
 
 	for (uint32_t i = 0; i < ctx.engines.nengines; i++)
 		igt_debug("engine %i (%s)\t= %016"PRIx64"\n", i,
@@ -2963,7 +2963,7 @@ igt_main
 		i915 = drm_open_driver(DRIVER_INTEL);
 		igt_require_gem(i915);
 		igt_require(gem_has_exec_fence(i915));
-		gem_require_mmap_wc(i915);
+		gem_require_mmap_device_coherent(i915);
 		ctx = intel_ctx_create_all_physical(i915);
 
 		gem_submission_print_method(i915);
-- 
2.26.3

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
