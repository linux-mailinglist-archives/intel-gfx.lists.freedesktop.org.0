Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5C937AC70
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 18:51:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1E626EA92;
	Tue, 11 May 2021 16:51:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD9E66EA84;
 Tue, 11 May 2021 16:51:46 +0000 (UTC)
IronPort-SDR: REQwGlAUElF5CAnLl07810i3oZT+e/aj1CmLsq9PGi/MypjU7LzdA82Y1G4MT/u4Q9s7c3JPsR
 qPFsn/P2Kpfg==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="199544227"
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="199544227"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 09:51:42 -0700
IronPort-SDR: PsTrtiBb+Btaz0rbG3QLyeuc/1CImRh48sV8iKkQ4DokjG1Zqm524U+OYnFUAKOKipvTL0uoKC
 +C/S4ONGheaA==
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="537104782"
Received: from rdavies-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.2.133])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 09:51:40 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 11 May 2021 17:51:10 +0100
Message-Id: <20210511165117.428062-6-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210511165117.428062-1-matthew.auld@intel.com>
References: <20210511165117.428062-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 05/12] tests/i915/gem_gpgpu_fill: Use
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

Converted the test gem_gpgpu_fill to use memory region uapi.

Signed-off-by: Andrzej Turko <andrzej.turko@linux.intel.com>
Cc: Zbigniew Kempczynski <zbigniew.kempczynski@intel.com>
Cc: Dominik Grzegorzek <dominik.grzegorzek@intel.com>
Cc: Petri Latvala <petri.latvala@intel.com>
---
 tests/i915/gem_gpgpu_fill.c | 42 ++++++++++++++++++++++++++++++-------
 1 file changed, 34 insertions(+), 8 deletions(-)

diff --git a/tests/i915/gem_gpgpu_fill.c b/tests/i915/gem_gpgpu_fill.c
index 5b11fb35..a6da3bce 100644
--- a/tests/i915/gem_gpgpu_fill.c
+++ b/tests/i915/gem_gpgpu_fill.c
@@ -45,13 +45,14 @@
 #include "drm.h"
 #include "i915/gem.h"
 #include "igt.h"
+#include "igt_collection.h"
 #include "intel_bufops.h"
+#include "i915/intel_memory_region.h"
 
 #define WIDTH 64
 #define HEIGHT 64
 #define STRIDE (WIDTH)
 #define SIZE (HEIGHT*STRIDE)
-
 #define COLOR_C4	0xc4
 #define COLOR_4C	0x4c
 
@@ -62,10 +63,11 @@ typedef struct {
 } data_t;
 
 static struct intel_buf *
-create_buf(data_t *data, int width, int height, uint8_t color)
+create_buf(data_t *data, int width, int height, uint8_t color, uint32_t region)
 {
 	struct intel_buf *buf;
 	uint8_t *ptr;
+	uint32_t handle;
 	int i;
 
 	buf = calloc(1, sizeof(*buf));
@@ -75,8 +77,10 @@ create_buf(data_t *data, int width, int height, uint8_t color)
 	 * Legacy code uses 32 bpp after buffer creation.
 	 * Let's do the same due to keep shader intact.
 	 */
-	intel_buf_init(data->bops, buf, width/4, height, 32, 0,
-		       I915_TILING_NONE, 0);
+	handle = gem_create_in_memory_regions(data->drm_fd, SIZE, region);
+	intel_buf_init_using_handle(data->bops, handle, buf,
+				    width/4, height, 32, 0,
+				    I915_TILING_NONE, 0);
 
 	ptr = gem_mmap__cpu_coherent(data->drm_fd, buf->handle, 0,
 				     buf->surface[0].size, PROT_WRITE);
@@ -99,15 +103,16 @@ static void buf_check(uint8_t *ptr, int x, int y, uint8_t color)
 		     color, val, x, y);
 }
 
-static void gpgpu_fill(data_t *data, igt_fillfunc_t fill)
+static void gpgpu_fill(data_t *data, igt_fillfunc_t fill, uint32_t region)
 {
 	struct intel_buf *buf;
 	uint8_t *ptr;
 	int i, j;
 
-	buf = create_buf(data, WIDTH, HEIGHT, COLOR_C4);
+	buf = create_buf(data, WIDTH, HEIGHT, COLOR_C4, region);
 	ptr = gem_mmap__device_coherent(data->drm_fd, buf->handle, 0,
 					buf->surface[0].size, PROT_READ);
+
 	for (i = 0; i < WIDTH; i++)
 		for (j = 0; j < HEIGHT; j++)
 			buf_check(ptr, i, j, COLOR_C4);
@@ -123,10 +128,13 @@ static void gpgpu_fill(data_t *data, igt_fillfunc_t fill)
 
 	munmap(ptr, buf->surface[0].size);
 }
+
 igt_main
 {
 	data_t data = {0, };
 	igt_fillfunc_t fill_fn = NULL;
+	struct local_drm_i915_query_memory_regions *region_info;
+	struct igt_collection *region_set;
 
 	igt_fixture {
 		data.drm_fd = drm_open_driver_render(DRIVER_INTEL);
@@ -138,12 +146,30 @@ igt_main
 
 		igt_require_f(fill_fn, "no gpgpu-fill function\n");
 
+		region_info = gem_get_query_memory_regions(data.drm_fd);
+		igt_assert(region_info);
+
+		region_set = get_memory_region_set(region_info,
+						   I915_SYSTEM_MEMORY);
 	}
 
-	igt_subtest("basic")
-		gpgpu_fill(&data, fill_fn);
+	igt_subtest_with_dynamic("basic") {
+		struct igt_collection *region;
+
+		for_each_combination(region, 1, region_set) {
+			char *name = memregion_dynamic_subtest_name(region);
+			uint32_t id = igt_collection_get_value(region, 0);
+
+			igt_dynamic(name)
+				gpgpu_fill(&data, fill_fn, id);
+
+			free(name);
+		}
+	}
 
 	igt_fixture {
+		igt_collection_destroy(region_set);
+		free(region_info);
 		buf_ops_destroy(data.bops);
 	}
 }
-- 
2.26.3

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
