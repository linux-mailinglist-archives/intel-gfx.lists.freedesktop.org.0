Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4586A5F469E
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 17:26:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30DC910E711;
	Tue,  4 Oct 2022 15:26:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA70110E724;
 Tue,  4 Oct 2022 15:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664897182; x=1696433182;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=exIdKb5B73+GhD3q4SRTY1/IZO35AGSv2ITM754pZUQ=;
 b=Ne3ILYzcoFB7osUBLqOzKol/n2cI1m2gfCO9Da7ffBV38y+iy8ukoyuj
 hpOxAyA5Rl1m1ifpcxkQhrqhR8quMsvgx9tMMV1weZ8NiAHJuj36AIzJL
 SDPHAbb9riq/8wkYLXZ6jYvVfclCtJmx09AOPf1939gHD+yiBZj+ai2ST
 HZYcKtAh1wfNRSNe6biUn+6NgcFPetEuL5LRdIxSA+kyYhNilNQamkEnL
 fodZWQ9qNL/vFKH4LDorYcMNEcGZ4cRnkvqZtxyU5i9jNIzmt2kf57Ww8
 n6sJdQo/I03uHqKmaobAik/Tdtthr7xy95MYfewZAv4/Wn63qqXR6WD6U Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="301659426"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="301659426"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 08:26:22 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="601655880"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="601655880"
Received: from ngverso-mobl2.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.7.149])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 08:26:21 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue,  4 Oct 2022 16:25:49 +0100
Message-Id: <20221004152549.436801-5-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221004152549.436801-1-matthew.auld@intel.com>
References: <20221004152549.436801-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 5/5] tests/i915/gem_create: add some
 basic testing for GTT alignment
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Make sure we can always place an object at some GTT address, so
long as we adhere to the min GTT alignment for the given region.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 tests/i915/gem_create.c | 117 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 117 insertions(+)

diff --git a/tests/i915/gem_create.c b/tests/i915/gem_create.c
index becdc715..5ede76fa 100644
--- a/tests/i915/gem_create.c
+++ b/tests/i915/gem_create.c
@@ -821,6 +821,115 @@ static void create_ext_cpu_access_big(int fd)
 	free(regions);
 }
 
+/** XXX: remove once we sync the uapi header */
+#define gtt_alignment rsvd0
+static bool supports_gtt_alignment(int fd)
+{
+	struct drm_i915_query_memory_regions *regions;
+	uint32_t gtt_alignment;
+
+	regions = gem_get_query_memory_regions(fd);
+	igt_assert(regions);
+	igt_assert(regions->num_regions);
+
+	gtt_alignment = regions->regions[0].gtt_alignment;
+	free(regions);
+
+	return gtt_alignment;
+}
+
+static void create_ext_placement_alignment(int fd)
+{
+	struct drm_i915_gem_create_ext_memory_regions setparam_region = {
+		.base = { .name = I915_GEM_CREATE_EXT_MEMORY_REGIONS },
+	};
+	struct drm_i915_gem_memory_class_instance *uregions;
+	struct drm_i915_query_memory_regions *regions;
+	const uint32_t bbe = MI_BATCH_BUFFER_END;
+	struct drm_i915_gem_execbuffer2 execbuf = {};
+	struct drm_i915_gem_exec_object2 obj = {};
+	uint32_t max_gtt_alignment;
+	uint32_t handle;
+	uint32_t ctx;
+	uint64_t ahnd;
+	uint64_t size;
+	int i;
+
+	regions = gem_get_query_memory_regions(fd);
+	igt_assert(regions);
+	igt_assert(regions->num_regions);
+
+	uregions = calloc(regions->num_regions, sizeof(*uregions));
+
+	ctx = gem_context_create(fd);
+
+	max_gtt_alignment = 0;
+	for (i = 0; i < regions->num_regions; i++) {
+		struct drm_i915_memory_region_info qmr = regions->regions[i];
+		struct drm_i915_gem_memory_class_instance ci = qmr.region;
+		uint32_t gtt_alignment;
+
+		gtt_alignment = qmr.gtt_alignment;
+
+		setparam_region.regions = to_user_pointer(&ci);
+		setparam_region.num_regions = 1;
+
+		size = PAGE_SIZE;
+		igt_assert_eq(__gem_create_ext(fd, &size, 0, &handle,
+					       &setparam_region.base), 0);
+		gem_write(fd, handle, 0, &bbe, sizeof(bbe));
+
+		ahnd = intel_allocator_open_full(fd, ctx, 0, 0,
+						 INTEL_ALLOCATOR_RANDOM,
+						 ALLOC_STRATEGY_HIGH_TO_LOW,
+						 gtt_alignment);
+
+		obj.handle = handle;
+		obj.offset = CANONICAL(get_offset(ahnd, handle, size, 0));
+		obj.flags = EXEC_OBJECT_SUPPORTS_48B_ADDRESS | EXEC_OBJECT_PINNED;
+
+		execbuf.buffers_ptr = to_user_pointer(&obj);
+		execbuf.buffer_count = 1;
+
+		gem_execbuf(fd, &execbuf);
+
+		put_ahnd(ahnd);
+
+		max_gtt_alignment = max(max_gtt_alignment, gtt_alignment);
+		uregions[i] = regions->regions[i].region;
+	}
+
+	setparam_region.regions = to_user_pointer(uregions);
+	setparam_region.num_regions = regions->num_regions;
+
+	size = PAGE_SIZE;
+	igt_assert_eq(__gem_create_ext(fd, &size, 0, &handle,
+				       &setparam_region.base), 0);
+	gem_write(fd, handle, 0, &bbe, sizeof(bbe));
+
+	ahnd = intel_allocator_open_full(fd, ctx, 0, 0,
+					 INTEL_ALLOCATOR_RANDOM,
+					 ALLOC_STRATEGY_HIGH_TO_LOW,
+					 max_gtt_alignment);
+
+	obj.handle = handle;
+	obj.offset = CANONICAL(get_offset(ahnd, handle, size, 0));
+	obj.flags = EXEC_OBJECT_SUPPORTS_48B_ADDRESS | EXEC_OBJECT_PINNED;
+
+	execbuf.buffers_ptr = to_user_pointer(&obj);
+	execbuf.buffer_count = 1;
+
+	gem_execbuf(fd, &execbuf);
+
+	put_ahnd(ahnd);
+
+	gem_context_destroy(fd, ctx);
+
+	gem_close(fd, handle);
+	free(uregions);
+	free(regions);
+}
+
 igt_main
 {
 	int fd = -1;
@@ -906,4 +1015,12 @@ igt_main
 		igt_require(supports_needs_cpu_access(fd));
 		create_ext_cpu_access_big(fd);
 	}
+
+	igt_describe("Check reported GTT alignment gives usable GTT address, for each region.");
+	igt_subtest("create-ext-placement-alignment") {
+		igt_require(supports_gtt_alignment(fd));
+		igt_require(gem_uses_full_ppgtt(fd));
+		create_ext_placement_alignment(fd);
+	}
+
 }
-- 
2.37.3

