Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DDE740CF12
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 23:56:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14C566EA70;
	Wed, 15 Sep 2021 21:56:07 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CBE86EA6E;
 Wed, 15 Sep 2021 21:56:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10108"; a="307981716"
X-IronPort-AV: E=Sophos;i="5.85,296,1624345200"; d="scan'208";a="307981716"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 14:55:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,296,1624345200"; d="scan'208";a="472551431"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga007.jf.intel.com with ESMTP; 15 Sep 2021 14:55:58 -0700
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Cc: Intel-GFX@Lists.FreeDesktop.Org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 John Harrison <John.C.Harrison@Intel.com>,
 Slawomir Milczarek <slawomir.milczarek@intel.com>,
 Matthew Brost <matthew.brost@intel.com>
Date: Wed, 15 Sep 2021 14:55:58 -0700
Message-Id: <20210915215558.2473428-2-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210915215558.2473428-1-John.C.Harrison@Intel.com>
References: <20210915215558.2473428-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 1/1] tests/i915/query: Query,
 parse and validate the hwconfig table
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

From: Rodrigo Vivi <rodrigo.vivi@intel.com>

Newer platforms have an embedded table giving details about that
platform's hardware configuration. This table can be retrieved from
the KMD via the existing query API. So add a test for it as both an
example of how to fetch the table and to validate the contents as much
as is possible.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Cc: Slawomir Milczarek <slawomir.milczarek@intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 include/drm-uapi/i915_drm.h |   1 +
 lib/intel_hwconfig_types.h  | 106 +++++++++++++++++++++++
 tests/i915/i915_query.c     | 168 ++++++++++++++++++++++++++++++++++++
 3 files changed, 275 insertions(+)
 create mode 100644 lib/intel_hwconfig_types.h

diff --git a/include/drm-uapi/i915_drm.h b/include/drm-uapi/i915_drm.h
index b9632bb2c..ae0c8dfad 100644
--- a/include/drm-uapi/i915_drm.h
+++ b/include/drm-uapi/i915_drm.h
@@ -2451,6 +2451,7 @@ struct drm_i915_query_item {
 #define DRM_I915_QUERY_ENGINE_INFO	2
 #define DRM_I915_QUERY_PERF_CONFIG      3
 #define DRM_I915_QUERY_MEMORY_REGIONS   4
+#define DRM_I915_QUERY_HWCONFIG_TABLE   5
 /* Must be kept compact -- no holes and well documented */
 
 	/**
diff --git a/lib/intel_hwconfig_types.h b/lib/intel_hwconfig_types.h
new file mode 100644
index 000000000..c9961e6bd
--- /dev/null
+++ b/lib/intel_hwconfig_types.h
@@ -0,0 +1,106 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#ifndef _INTEL_HWCONFIG_TYPES_H_
+#define _INTEL_HWCONFIG_TYPES_H_
+
+#include "intel_chipset.h"
+
+/**
+ * enum intel_hwconfig - Global definition of hwconfig table attributes
+ *
+ * Intel devices provide a KLV (Key/Length/Value) table containing
+ * the static hardware configuration for that platform.
+ * This enum defines the current attribute keys for this KLV.
+ */
+enum intel_hwconfig {
+	INTEL_HWCONFIG_MAX_SLICES_SUPPORTED = 1,
+	INTEL_HWCONFIG_MAX_DUAL_SUBSLICES_SUPPORTED,		/* 2 */
+	INTEL_HWCONFIG_MAX_NUM_EU_PER_DSS,			/* 3 */
+	INTEL_HWCONFIG_NUM_PIXEL_PIPES,				/* 4 */
+	INTEL_HWCONFIG_DEPRECATED_MAX_NUM_GEOMETRY_PIPES,	/* 5 */
+	INTEL_HWCONFIG_DEPRECATED_L3_CACHE_SIZE_IN_KB,		/* 6 */
+	INTEL_HWCONFIG_DEPRECATED_L3_BANK_COUNT,		/* 7 */
+	INTEL_HWCONFIG_L3_CACHE_WAYS_SIZE_IN_BYTES,		/* 8 */
+	INTEL_HWCONFIG_L3_CACHE_WAYS_PER_SECTOR,		/* 9 */
+	INTEL_HWCONFIG_MAX_MEMORY_CHANNELS,			/* 10 */
+	INTEL_HWCONFIG_MEMORY_TYPE,				/* 11 */
+	INTEL_HWCONFIG_CACHE_TYPES,                             /* 12 */
+	INTEL_HWCONFIG_LOCAL_MEMORY_PAGE_SIZES_SUPPORTED,	/* 13 */
+	INTEL_HWCONFIG_DEPRECATED_SLM_SIZE_IN_KB,		/* 14 */
+	INTEL_HWCONFIG_NUM_THREADS_PER_EU,			/* 15 */
+	INTEL_HWCONFIG_TOTAL_VS_THREADS,			/* 16 */
+	INTEL_HWCONFIG_TOTAL_GS_THREADS,			/* 17 */
+	INTEL_HWCONFIG_TOTAL_HS_THREADS,			/* 18 */
+	INTEL_HWCONFIG_TOTAL_DS_THREADS,			/* 19 */
+	INTEL_HWCONFIG_TOTAL_VS_THREADS_POCS,			/* 20 */
+	INTEL_HWCONFIG_TOTAL_PS_THREADS,			/* 21 */
+	INTEL_HWCONFIG_DEPRECATED_MAX_FILL_RATE,		/* 22 */
+	INTEL_HWCONFIG_MAX_RCS,					/* 23 */
+	INTEL_HWCONFIG_MAX_CCS,					/* 24 */
+	INTEL_HWCONFIG_MAX_VCS,					/* 25 */
+	INTEL_HWCONFIG_MAX_VECS,				/* 26 */
+	INTEL_HWCONFIG_MAX_COPY_CS,				/* 27 */
+	INTEL_HWCONFIG_DEPRECATED_URB_SIZE_IN_KB,		/* 28 */
+	INTEL_HWCONFIG_MIN_VS_URB_ENTRIES,			/* 29 */
+	INTEL_HWCONFIG_MAX_VS_URB_ENTRIES,			/* 30 */
+	INTEL_HWCONFIG_MIN_PCS_URB_ENTRIES,			/* 31 */
+	INTEL_HWCONFIG_MAX_PCS_URB_ENTRIES,			/* 32 */
+	INTEL_HWCONFIG_MIN_HS_URB_ENTRIES,			/* 33 */
+	INTEL_HWCONFIG_MAX_HS_URB_ENTRIES,			/* 34 */
+	INTEL_HWCONFIG_MIN_GS_URB_ENTRIES,			/* 35 */
+	INTEL_HWCONFIG_MAX_GS_URB_ENTRIES,			/* 36 */
+	INTEL_HWCONFIG_MIN_DS_URB_ENTRIES,			/* 37 */
+	INTEL_HWCONFIG_MAX_DS_URB_ENTRIES,			/* 38 */
+	INTEL_HWCONFIG_PUSH_CONSTANT_URB_RESERVED_SIZE,		/* 39 */
+	INTEL_HWCONFIG_POCS_PUSH_CONSTANT_URB_RESERVED_SIZE,	/* 40 */
+	INTEL_HWCONFIG_URB_REGION_ALIGNMENT_SIZE_IN_BYTES,	/* 41 */
+	INTEL_HWCONFIG_URB_ALLOCATION_SIZE_UNITS_IN_BYTES,	/* 42 */
+	INTEL_HWCONFIG_MAX_URB_SIZE_CCS_IN_BYTES,		/* 43 */
+	INTEL_HWCONFIG_VS_MIN_DEREF_BLOCK_SIZE_HANDLE_COUNT,	/* 44 */
+	INTEL_HWCONFIG_DS_MIN_DEREF_BLOCK_SIZE_HANDLE_COUNT,	/* 45 */
+	INTEL_HWCONFIG_NUM_RT_STACKS_PER_DSS,			/* 46 */
+	INTEL_HWCONFIG_MAX_URB_STARTING_ADDRESS,		/* 47 */
+	INTEL_HWCONFIG_MIN_CS_URB_ENTRIES,			/* 48 */
+	INTEL_HWCONFIG_MAX_CS_URB_ENTRIES,			/* 49 */
+	INTEL_HWCONFIG_L3_ALLOC_PER_BANK_URB,			/* 50 */
+	INTEL_HWCONFIG_L3_ALLOC_PER_BANK_REST,			/* 51 */
+	INTEL_HWCONFIG_L3_ALLOC_PER_BANK_DC,			/* 52 */
+	INTEL_HWCONFIG_L3_ALLOC_PER_BANK_RO,			/* 53 */
+	INTEL_HWCONFIG_L3_ALLOC_PER_BANK_Z,			/* 54 */
+	INTEL_HWCONFIG_L3_ALLOC_PER_BANK_COLOR,			/* 55 */
+	INTEL_HWCONFIG_L3_ALLOC_PER_BANK_UNIFIED_TILE_CACHE,	/* 56 */
+	INTEL_HWCONFIG_L3_ALLOC_PER_BANK_COMMAND_BUFFER,	/* 57 */
+	INTEL_HWCONFIG_L3_ALLOC_PER_BANK_RW,			/* 58 */
+	INTEL_HWCONFIG_MAX_NUM_L3_CONFIGS,			/* 59 */
+	INTEL_HWCONFIG_BINDLESS_SURFACE_OFFSET_BIT_COUNT,	/* 60 */
+	INTEL_HWCONFIG_RESERVED_CCS_WAYS,			/* 61 */
+	INTEL_HWCONFIG_CSR_SIZE_IN_MB,				/* 62 */
+	INTEL_HWCONFIG_GEOMETRY_PIPES_PER_SLICE,		/* 63 */
+	INTEL_HWCONFIG_L3_BANK_SIZE_IN_KB,			/* 64 */
+	INTEL_HWCONFIG_SLM_SIZE_PER_DSS,			/* 65 */
+	INTEL_HWCONFIG_MAX_PIXEL_FILL_RATE_PER_SLICE,		/* 66 */
+	INTEL_HWCONFIG_MAX_PIXEL_FILL_RATE_PER_DSS,		/* 67 */
+	INTEL_HWCONFIG_URB_SIZE_PER_SLICE_IN_KB,		/* 68 */
+	INTEL_HWCONFIG_URB_SIZE_PER_L3_BANK_COUNT_IN_KB,	/* 69 */
+	INTEL_HWCONFIG_MAX_SUBSLICE,				/* 70 */
+	INTEL_HWCONFIG_MAX_EU_PER_SUBSLICE,			/* 71 */
+	INTEL_HWCONFIG_RAMBO_L3_BANK_SIZE_IN_KB,		/* 72 */
+	INTEL_HWCONFIG_SLM_SIZE_PER_SS_IN_KB,			/* 73 */
+	__INTEL_HWCONFIG_LIMIT
+};
+
+enum {
+	INTEL_HWCONFIG_MEMORY_TYPE_LPDDR4 = 0,
+	INTEL_HWCONFIG_MEMORY_TYPE_LPDDR5,
+};
+
+enum {
+	INTEL_HWCONFIG_CACHE_TYPE_L3    = BIT(0),
+	INTEL_HWCONFIG_CACHE_TYPE_LLC   = BIT(1),
+	INTEL_HWCONFIG_CACHE_TYPE_EDRAM = BIT(2),
+};
+
+#endif /* _INTEL_HWCONFIG_TYPES_H_ */
diff --git a/tests/i915/i915_query.c b/tests/i915/i915_query.c
index 3c791b8ba..1802287e3 100644
--- a/tests/i915/i915_query.c
+++ b/tests/i915/i915_query.c
@@ -22,6 +22,7 @@
  */
 
 #include "igt.h"
+#include "intel_hwconfig_types.h"
 
 #include <limits.h>
 
@@ -842,6 +843,170 @@ static void engines(int fd)
 	free(engines);
 }
 
+static const char * const hwconfig_keys[] = {
+	[INTEL_HWCONFIG_MAX_SLICES_SUPPORTED] = "Maximum number of Slices",
+	[INTEL_HWCONFIG_MAX_DUAL_SUBSLICES_SUPPORTED] = "Maximum number of DSS",
+	[INTEL_HWCONFIG_MAX_NUM_EU_PER_DSS] = "Maximum number of EUs per DSS",
+	[INTEL_HWCONFIG_NUM_PIXEL_PIPES] = "Pixel Pipes",
+	[INTEL_HWCONFIG_DEPRECATED_MAX_NUM_GEOMETRY_PIPES] = "[DEPRECATED] Geometry Pipes",
+	[INTEL_HWCONFIG_DEPRECATED_L3_CACHE_SIZE_IN_KB] = "[DEPRECATED] L3 Size (in KB)",
+	[INTEL_HWCONFIG_DEPRECATED_L3_BANK_COUNT] = "[DEPRECATED] L3 Bank Count",
+	[INTEL_HWCONFIG_L3_CACHE_WAYS_SIZE_IN_BYTES] = "L3 Cache Ways Size (in bytes)",
+	[INTEL_HWCONFIG_L3_CACHE_WAYS_PER_SECTOR] = "L3 Cache Ways Per Sector",
+	[INTEL_HWCONFIG_MAX_MEMORY_CHANNELS] = "Memory Channels",
+	[INTEL_HWCONFIG_MEMORY_TYPE] = "Memory type",
+	[INTEL_HWCONFIG_CACHE_TYPES] = "Cache types",
+	[INTEL_HWCONFIG_LOCAL_MEMORY_PAGE_SIZES_SUPPORTED] = "Local memory page size",
+	[INTEL_HWCONFIG_DEPRECATED_SLM_SIZE_IN_KB] = "[DEPRECATED] SLM Size (in KB)",
+	[INTEL_HWCONFIG_NUM_THREADS_PER_EU] = "Num thread per EU",
+	[INTEL_HWCONFIG_TOTAL_VS_THREADS] = "Maximum Vertex Shader threads",
+	[INTEL_HWCONFIG_TOTAL_GS_THREADS] = "Maximum Geometry Shader threads",
+	[INTEL_HWCONFIG_TOTAL_HS_THREADS] = "Maximum Hull Shader threads",
+	[INTEL_HWCONFIG_TOTAL_DS_THREADS] = "Maximum Domain Shader threads",
+	[INTEL_HWCONFIG_TOTAL_VS_THREADS_POCS] = "Maximum Vertex Shader Threads for POCS",
+	[INTEL_HWCONFIG_TOTAL_PS_THREADS] = "Maximum Pixel Shader Threads",
+	[INTEL_HWCONFIG_DEPRECATED_MAX_FILL_RATE] = "[DEPRECATED] Maximum pixel rate for Fill",
+	[INTEL_HWCONFIG_MAX_RCS] = "MaxRCS",
+	[INTEL_HWCONFIG_MAX_CCS] = "MaxCCS",
+	[INTEL_HWCONFIG_MAX_VCS] = "MaxVCS",
+	[INTEL_HWCONFIG_MAX_VECS] = "MaxVECS",
+	[INTEL_HWCONFIG_MAX_COPY_CS] = "MaxCopyCS",
+	[INTEL_HWCONFIG_DEPRECATED_URB_SIZE_IN_KB] = "[DEPRECATED] URB Size (in KB)",
+	[INTEL_HWCONFIG_MIN_VS_URB_ENTRIES] = "The minimum number of VS URB entries.",
+	[INTEL_HWCONFIG_MAX_VS_URB_ENTRIES] = "The maximum number of VS URB entries.",
+	[INTEL_HWCONFIG_MIN_PCS_URB_ENTRIES] = "The minimum number of PCS URB entries",
+	[INTEL_HWCONFIG_MAX_PCS_URB_ENTRIES] = "The maximum number of PCS URB entries",
+	[INTEL_HWCONFIG_MIN_HS_URB_ENTRIES] = "The minimum number of HS URB entries",
+	[INTEL_HWCONFIG_MAX_HS_URB_ENTRIES] = "The maximum number of HS URB entries",
+	[INTEL_HWCONFIG_MIN_GS_URB_ENTRIES] = "The minimum number of GS URB entries",
+	[INTEL_HWCONFIG_MAX_GS_URB_ENTRIES] = "The maximum number of GS URB entries",
+	[INTEL_HWCONFIG_MIN_DS_URB_ENTRIES] = "The minimum number of DS URB Entries",
+	[INTEL_HWCONFIG_MAX_DS_URB_ENTRIES] = "The maximum number of DS URB Entries",
+	[INTEL_HWCONFIG_PUSH_CONSTANT_URB_RESERVED_SIZE] = "Push Constant URB Reserved Size (in bytes)",
+	[INTEL_HWCONFIG_POCS_PUSH_CONSTANT_URB_RESERVED_SIZE] = "POCS Push Constant URB Reserved Size (in bytes)",
+	[INTEL_HWCONFIG_URB_REGION_ALIGNMENT_SIZE_IN_BYTES] = "URB Region Alignment Size (in bytes)",
+	[INTEL_HWCONFIG_URB_ALLOCATION_SIZE_UNITS_IN_BYTES] = "URB Allocation Size Units (in bytes)",
+	[INTEL_HWCONFIG_MAX_URB_SIZE_CCS_IN_BYTES] = "Max URB Size CCS (in bytes)",
+	[INTEL_HWCONFIG_VS_MIN_DEREF_BLOCK_SIZE_HANDLE_COUNT] = "VS Min Deref BlockSize Handle Count",
+	[INTEL_HWCONFIG_DS_MIN_DEREF_BLOCK_SIZE_HANDLE_COUNT] = "DS Min Deref Block Size Handle Count",
+	[INTEL_HWCONFIG_NUM_RT_STACKS_PER_DSS] = "Num RT Stacks Per DSS",
+	[INTEL_HWCONFIG_MAX_URB_STARTING_ADDRESS] = "Max URB Starting Address",
+	[INTEL_HWCONFIG_MIN_CS_URB_ENTRIES] = "Min CS URB Entries",
+	[INTEL_HWCONFIG_MAX_CS_URB_ENTRIES] = "Max CS URB Entries",
+	[INTEL_HWCONFIG_L3_ALLOC_PER_BANK_URB] = "L3 Alloc Per Bank - URB",
+	[INTEL_HWCONFIG_L3_ALLOC_PER_BANK_REST] = "L3 Alloc Per Bank - Rest",
+	[INTEL_HWCONFIG_L3_ALLOC_PER_BANK_DC] = "L3 Alloc Per Bank - DC",
+	[INTEL_HWCONFIG_L3_ALLOC_PER_BANK_RO] = "L3 Alloc Per Bank - RO",
+	[INTEL_HWCONFIG_L3_ALLOC_PER_BANK_Z] = "L3 Alloc Per Bank - Z",
+	[INTEL_HWCONFIG_L3_ALLOC_PER_BANK_COLOR] = "L3 Alloc Per Bank - Color",
+	[INTEL_HWCONFIG_L3_ALLOC_PER_BANK_UNIFIED_TILE_CACHE] = "L3 Alloc Per Bank - Unified Tile Cache",
+	[INTEL_HWCONFIG_L3_ALLOC_PER_BANK_COMMAND_BUFFER] = "L3 Alloc Per Bank - Command Buffer",
+	[INTEL_HWCONFIG_L3_ALLOC_PER_BANK_RW] = "L3 Alloc Per Bank - RW",
+	[INTEL_HWCONFIG_MAX_NUM_L3_CONFIGS] = "Num L3 Configs",
+	[INTEL_HWCONFIG_BINDLESS_SURFACE_OFFSET_BIT_COUNT] = "Bindless Surface Offset Bit Count",
+	[INTEL_HWCONFIG_RESERVED_CCS_WAYS] = "Reserved CCS ways",
+	[INTEL_HWCONFIG_CSR_SIZE_IN_MB] = "CSR Size (in MB)",
+	[INTEL_HWCONFIG_GEOMETRY_PIPES_PER_SLICE] = "Geometry pipes per slice",
+	[INTEL_HWCONFIG_L3_BANK_SIZE_IN_KB] = "L3 bank size (in KB)",
+	[INTEL_HWCONFIG_SLM_SIZE_PER_DSS] = "SLM size per DSS",
+	[INTEL_HWCONFIG_MAX_PIXEL_FILL_RATE_PER_SLICE] = "Max pixel fill rate per slice",
+	[INTEL_HWCONFIG_MAX_PIXEL_FILL_RATE_PER_DSS] = "Max pixel fill rate per DSS",
+	[INTEL_HWCONFIG_URB_SIZE_PER_SLICE_IN_KB] = "URB size per slice (in KB)",
+	[INTEL_HWCONFIG_URB_SIZE_PER_L3_BANK_COUNT_IN_KB] = "URB size per L3 bank count (in KB)",
+	[INTEL_HWCONFIG_MAX_SUBSLICE] = "Max subslices",
+	[INTEL_HWCONFIG_MAX_EU_PER_SUBSLICE] = "Max EUs per subslice",
+	[INTEL_HWCONFIG_RAMBO_L3_BANK_SIZE_IN_KB] = "RAMBO L3 bank size (in KB)",
+	[INTEL_HWCONFIG_SLM_SIZE_PER_SS_IN_KB] = "SLM size per SS (in KB)",
+};
+
+static void query_parse_and_validate_hwconfig_table(int i915)
+{
+	struct drm_i915_query_item item = {
+		.query_id = DRM_I915_QUERY_HWCONFIG_TABLE,
+	};
+	uint32_t *data, value;
+	int i = 0;
+	int len, j, max_words, table_size;
+
+	igt_assert(ARRAY_SIZE(hwconfig_keys) == __INTEL_HWCONFIG_LIMIT);
+
+	i915_query_items(i915, &item, 1);
+	table_size = item.length;
+	igt_require(table_size > 0);
+
+	data = malloc(table_size);
+	igt_assert(data);
+	memset(data, 0, table_size);
+	item.data_ptr = to_user_pointer(data);
+
+	i915_query_items(i915, &item, 1);
+	igt_assert(item.length == table_size);
+	igt_info("Table size = %d bytes\n", table_size);
+	igt_assert(table_size > 0);
+
+	/* HWConfig table is a list of KLV sets */
+	max_words = table_size / sizeof(uint32_t);
+	igt_assert(max_words * sizeof(uint32_t) == table_size);
+	while (i < max_words) {
+		/* Attribute ID zero is invalid */
+		igt_assert(data[i] > 0);
+		igt_assert(data[i] < __INTEL_HWCONFIG_LIMIT);
+
+		len = data[i + 1];
+		igt_assert(len > 0);
+		igt_assert((i + 2 + len) <= max_words);
+
+		igt_info("[%2d] %s: ", data[i], hwconfig_keys[data[i]]);
+
+		value = data[i + 2];
+		switch (data[i]) {
+		case INTEL_HWCONFIG_MEMORY_TYPE:
+			igt_assert(len == 1);
+			switch (value) {
+			case INTEL_HWCONFIG_MEMORY_TYPE_LPDDR4:
+				igt_info("LPDDR4\n");
+				break;
+			case INTEL_HWCONFIG_MEMORY_TYPE_LPDDR5:
+				igt_info("LPDDR5\n");
+				break;
+			default:
+				igt_assert(0);
+			}
+			break;
+
+		case INTEL_HWCONFIG_CACHE_TYPES:
+			igt_assert(len == 1);
+
+#define TEST_CACHE_TYPE(type)					\
+	if (value & INTEL_HWCONFIG_CACHE_TYPE_##type) {		\
+		value &= ~INTEL_HWCONFIG_CACHE_TYPE_##type;	\
+		igt_info(#type);				\
+		if (value)					\
+			igt_info(", ");				\
+	}
+
+			TEST_CACHE_TYPE(L3);
+			TEST_CACHE_TYPE(LLC);
+			TEST_CACHE_TYPE(EDRAM);
+#undef TEST_CACHE_TYPE
+
+			igt_assert(value == 0);
+			igt_info("\n");
+			break;
+
+		default:
+			for (j = i + 2; j < i + 1 + len; j++)
+				igt_info("%d, ", data[j]);
+			igt_info("%d\n", data[j]);
+		}
+
+		/* Advance to next key */
+		i += 2 + len;
+	}
+
+	free(data);
+}
+
 igt_main
 {
 	int fd = -1;
@@ -911,6 +1076,9 @@ igt_main
 			engines(fd);
 	}
 
+	igt_subtest("hwconfig_table")
+		query_parse_and_validate_hwconfig_table(fd);
+
 	igt_fixture {
 		close(fd);
 	}
-- 
2.25.1

