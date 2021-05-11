Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9233A37AC6B
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 18:51:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D27F6EA84;
	Tue, 11 May 2021 16:51:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 361AB6EA84;
 Tue, 11 May 2021 16:51:47 +0000 (UTC)
IronPort-SDR: NpG7FU7vYDI738zP+AaX9D4fGL8D20QyN93GUzp4oxPxIDOTQrqyXLWjkjsC4HaJGQ/XMlIUUR
 adO/9A5amO0Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="199544233"
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="199544233"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 09:51:44 -0700
IronPort-SDR: BPSOzOFtHG5DUxbEuGMEyjtuEWEs9Koe5ecRH2804TeCms45YDRyaIXyUgrIvwVqcAtb7c2rJI
 kTpF/HenaFZg==
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="537104795"
Received: from rdavies-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.2.133])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 09:51:42 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 11 May 2021 17:51:11 +0100
Message-Id: <20210511165117.428062-7-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210511165117.428062-1-matthew.auld@intel.com>
References: <20210511165117.428062-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 06/12] tests/i915/gem_media_fill: Use
 memory region interface
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
Cc: thomas.hellstrom@linux.intel.com,
 Dominik Grzegorzek <dominik.grzegorzek@intel.com>,
 intel-gfx@lists.freedesktop.org, Andrzej Turko <andrzej.turko@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Andrzej Turko <andrzej.turko@linux.intel.com>

Converted the test gem_media_fill to use memory region uapi.

Signed-off-by: Andrzej Turko <andrzej.turko@linux.intel.com>
Cc: Zbigniew Kempczynski <zbigniew.kempczynski@intel.com>
Cc: Dominik Grzegorzek <dominik.grzegorzek@intel.com>
Cc: Petri Latvala <petri.latvala@intel.com>
---
 tests/i915/gem_media_fill.c | 57 ++++++++++++++++++++++++++++---------
 1 file changed, 44 insertions(+), 13 deletions(-)

diff --git a/tests/i915/gem_media_fill.c b/tests/i915/gem_media_fill.c
index 24d17fab..bbd2110f 100644
--- a/tests/i915/gem_media_fill.c
+++ b/tests/i915/gem_media_fill.c
@@ -64,21 +64,24 @@ typedef struct {
 } data_t;
 
 static struct intel_buf *
-create_buf(data_t *data, int width, int height, uint8_t color)
+create_buf(data_t *data, int width, int height, uint8_t color, uint32_t region)
 {
 	struct intel_buf *buf;
+	uint32_t handle;
 	uint8_t *ptr;
 	int i;
 
 	buf = calloc(1, sizeof(*buf));
 	igt_assert(buf);
 
+	handle = gem_create_in_memory_regions(data->drm_fd, SIZE, region);
+
 	/*
 	 * Legacy code uses 32 bpp after buffer creation.
 	 * Let's do the same due to keep shader intact.
 	 */
-	intel_buf_init(data->bops, buf, width/4, height, 32, 0,
-		       I915_TILING_NONE, 0);
+	intel_buf_init_using_handle(data->bops, handle, buf, width/4,
+				    height, 32, 0, I915_TILING_NONE, 0);
 
 	ptr = gem_mmap__cpu_coherent(data->drm_fd, buf->handle, 0,
 				     buf->surface[0].size, PROT_WRITE);
@@ -101,13 +104,16 @@ static void buf_check(uint8_t *ptr, int x, int y, uint8_t color)
 		     color, val, x, y);
 }
 
-static void media_fill(data_t *data, igt_fillfunc_t fill)
+static void media_fill(data_t *data, igt_fillfunc_t fill,
+		       struct igt_collection *memregion_set)
 {
 	struct intel_buf *buf;
+	uint32_t region;
 	uint8_t *ptr;
 	int i, j;
 
-	buf = create_buf(data, WIDTH, HEIGHT, COLOR_C4);
+	region = igt_collection_get_value(memregion_set, 0);
+	buf = create_buf(data, WIDTH, HEIGHT, COLOR_C4, region);
 	ptr = gem_mmap__device_coherent(data->drm_fd, buf->handle,
 					0, buf->surface[0].size, PROT_READ);
 	for (i = 0; i < WIDTH; i++)
@@ -126,20 +132,45 @@ static void media_fill(data_t *data, igt_fillfunc_t fill)
 	munmap(ptr, buf->surface[0].size);
 }
 
-igt_simple_main
+igt_main
 {
 	data_t data = {0, };
 	igt_fillfunc_t fill_fn = NULL;
+	struct local_drm_i915_query_memory_regions *query_info;
+	struct igt_collection *set, *region_set;
+
+	igt_fixture {
+		data.drm_fd = drm_open_driver_render(DRIVER_INTEL);
+		igt_require_gem(data.drm_fd);
+
+		data.devid = intel_get_drm_devid(data.drm_fd);
+		data.bops = buf_ops_create(data.drm_fd);
+
+		fill_fn = igt_get_media_fillfunc(data.devid);
+
+		igt_require_f(fill_fn, "no media-fill function\n");
+
+		query_info = gem_get_query_memory_regions(data.drm_fd);
+		igt_assert(query_info);
+
+		set = get_memory_region_set(query_info,
+					    I915_SYSTEM_MEMORY);
 
-	data.drm_fd = drm_open_driver_render(DRIVER_INTEL);
-	igt_require_gem(data.drm_fd);
+		igt_fork_hang_detector(data.drm_fd);
+	}
 
-	data.devid = intel_get_drm_devid(data.drm_fd);
-	data.bops = buf_ops_create(data.drm_fd);
+	igt_subtest_with_dynamic("media-fill")
+		for_each_combination(region_set, 1, set) {
+			char *sub_name = memregion_dynamic_subtest_name(region_set);
 
-	fill_fn = igt_get_media_fillfunc(data.devid);
+			igt_dynamic_f("%s", sub_name)
+				media_fill(&data, fill_fn, region_set);
 
-	igt_require_f(fill_fn, "no media-fill function\n");
+			free(sub_name);
+	}
 
-	media_fill(&data, fill_fn);
+	igt_fixture {
+		igt_collection_destroy(set);
+		igt_stop_hang_detector();
+	}
 }
-- 
2.26.3

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
