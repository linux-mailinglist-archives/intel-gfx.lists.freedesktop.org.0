Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C596553CD2C
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 18:26:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D56010FE9E;
	Fri,  3 Jun 2022 16:25:55 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0F8B10FB83;
 Fri,  3 Jun 2022 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654273553; x=1685809553;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L8o84xaKIz8ZwcqZEdILLqhyX/bxGm+ikUUcchTbSy0=;
 b=N2J7Nks3gcO7tqWJFDudm6acQKmQczjfS9oqGI3lLTn5v4KMFB0aSMl6
 ZijnaX2f6ZmKblCQyrf8KV2eFPj2UcNKUQ2CC05R5jF06Kv5yjc+7j6Gy
 Exv5HYsFi2Ikra6lWPIJVYk+Qc8nmaIbegXGLDfAq/hkVDkVr6bWdck/J
 N/M07z6sBtanKEbQEo9y471mPMbavOpxlTBDncpe231h6KHtOAy5Y/Iin
 Q6vxrmIe+O/a1Z1BYu0RzENjucYeIcyLd5D8tlKRDL9hF9xhaFI07yEPb
 MKPjXrlTKa9FkQGD/dmc89ovkhWIs29wKAhyBBJzAEgeNynG9c3dz6DbY g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10367"; a="273853171"
X-IronPort-AV: E=Sophos;i="5.91,275,1647327600"; d="scan'208";a="273853171"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 09:25:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,275,1647327600"; d="scan'208";a="563850903"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga002.jf.intel.com with ESMTP; 03 Jun 2022 09:25:52 -0700
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Fri,  3 Jun 2022 09:25:50 -0700
Message-Id: <20220603162552.2254187-2-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220603162552.2254187-1-John.C.Harrison@Intel.com>
References: <20220603162552.2254187-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 i-g-t 1/3] include/drm-uapi: Update to latest
 i915_drm.h
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

Update to the latest master version of the DRM UAPI header file from
git://anongit.freedesktop.org/git/drm/drm:
  c4955d9cd2fc Merge tag 'drm-intel-next-fixes-2022-05-24' of
  git://anongit.freedesktop.org/drm/drm-intel into drm-next

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 include/drm-uapi/i915_drm.h | 398 ++++++++++++++++++++++++++++--------
 1 file changed, 312 insertions(+), 86 deletions(-)

diff --git a/include/drm-uapi/i915_drm.h b/include/drm-uapi/i915_drm.h
index 9c9e1afa61ba..b4efc96c2edc 100644
--- a/include/drm-uapi/i915_drm.h
+++ b/include/drm-uapi/i915_drm.h
@@ -154,25 +154,77 @@ enum i915_mocs_table_index {
 	I915_MOCS_CACHED,
 };
 
-/*
+/**
+ * enum drm_i915_gem_engine_class - uapi engine type enumeration
+ *
  * Different engines serve different roles, and there may be more than one
- * engine serving each role. enum drm_i915_gem_engine_class provides a
- * classification of the role of the engine, which may be used when requesting
- * operations to be performed on a certain subset of engines, or for providing
- * information about that group.
+ * engine serving each role.  This enum provides a classification of the role
+ * of the engine, which may be used when requesting operations to be performed
+ * on a certain subset of engines, or for providing information about that
+ * group.
  */
 enum drm_i915_gem_engine_class {
+	/**
+	 * @I915_ENGINE_CLASS_RENDER:
+	 *
+	 * Render engines support instructions used for 3D, Compute (GPGPU),
+	 * and programmable media workloads.  These instructions fetch data and
+	 * dispatch individual work items to threads that operate in parallel.
+	 * The threads run small programs (called "kernels" or "shaders") on
+	 * the GPU's execution units (EUs).
+	 */
 	I915_ENGINE_CLASS_RENDER	= 0,
+
+	/**
+	 * @I915_ENGINE_CLASS_COPY:
+	 *
+	 * Copy engines (also referred to as "blitters") support instructions
+	 * that move blocks of data from one location in memory to another,
+	 * or that fill a specified location of memory with fixed data.
+	 * Copy engines can perform pre-defined logical or bitwise operations
+	 * on the source, destination, or pattern data.
+	 */
 	I915_ENGINE_CLASS_COPY		= 1,
+
+	/**
+	 * @I915_ENGINE_CLASS_VIDEO:
+	 *
+	 * Video engines (also referred to as "bit stream decode" (BSD) or
+	 * "vdbox") support instructions that perform fixed-function media
+	 * decode and encode.
+	 */
 	I915_ENGINE_CLASS_VIDEO		= 2,
+
+	/**
+	 * @I915_ENGINE_CLASS_VIDEO_ENHANCE:
+	 *
+	 * Video enhancement engines (also referred to as "vebox") support
+	 * instructions related to image enhancement.
+	 */
 	I915_ENGINE_CLASS_VIDEO_ENHANCE	= 3,
 
-	/* should be kept compact */
+	/**
+	 * @I915_ENGINE_CLASS_COMPUTE:
+	 *
+	 * Compute engines support a subset of the instructions available
+	 * on render engines:  compute engines support Compute (GPGPU) and
+	 * programmable media workloads, but do not support the 3D pipeline.
+	 */
+	I915_ENGINE_CLASS_COMPUTE	= 4,
+
+	/* Values in this enum should be kept compact. */
 
+	/**
+	 * @I915_ENGINE_CLASS_INVALID:
+	 *
+	 * Placeholder value to represent an invalid engine class assignment.
+	 */
 	I915_ENGINE_CLASS_INVALID	= -1
 };
 
-/*
+/**
+ * struct i915_engine_class_instance - Engine class/instance identifier
+ *
  * There may be more than one engine fulfilling any role within the system.
  * Each engine of a class is given a unique instance number and therefore
  * any engine can be specified by its class:instance tuplet. APIs that allow
@@ -180,10 +232,21 @@ enum drm_i915_gem_engine_class {
  * for this identification.
  */
 struct i915_engine_class_instance {
-	__u16 engine_class; /* see enum drm_i915_gem_engine_class */
-	__u16 engine_instance;
+	/**
+	 * @engine_class:
+	 *
+	 * Engine class from enum drm_i915_gem_engine_class
+	 */
+	__u16 engine_class;
 #define I915_ENGINE_CLASS_INVALID_NONE -1
 #define I915_ENGINE_CLASS_INVALID_VIRTUAL -2
+
+	/**
+	 * @engine_instance:
+	 *
+	 * Engine instance.
+	 */
+	__u16 engine_instance;
 };
 
 /**
@@ -1118,10 +1181,16 @@ struct drm_i915_gem_exec_object2 {
 	/**
 	 * When the EXEC_OBJECT_PINNED flag is specified this is populated by
 	 * the user with the GTT offset at which this object will be pinned.
+	 *
 	 * When the I915_EXEC_NO_RELOC flag is specified this must contain the
 	 * presumed_offset of the object.
+	 *
 	 * During execbuffer2 the kernel populates it with the value of the
 	 * current GTT offset of the object, for future presumed_offset writes.
+	 *
+	 * See struct drm_i915_gem_create_ext for the rules when dealing with
+	 * alignment restrictions with I915_MEMORY_CLASS_DEVICE, on devices with
+	 * minimum page sizes, like DG2.
 	 */
 	__u64 offset;
 
@@ -2651,24 +2720,65 @@ enum drm_i915_perf_record_type {
 	DRM_I915_PERF_RECORD_MAX /* non-ABI */
 };
 
-/*
+/**
+ * struct drm_i915_perf_oa_config
+ *
  * Structure to upload perf dynamic configuration into the kernel.
  */
 struct drm_i915_perf_oa_config {
-	/** String formatted like "%08x-%04x-%04x-%04x-%012x" */
+	/**
+	 * @uuid:
+	 *
+	 * String formatted like "%\08x-%\04x-%\04x-%\04x-%\012x"
+	 */
 	char uuid[36];
 
+	/**
+	 * @n_mux_regs:
+	 *
+	 * Number of mux regs in &mux_regs_ptr.
+	 */
 	__u32 n_mux_regs;
+
+	/**
+	 * @n_boolean_regs:
+	 *
+	 * Number of boolean regs in &boolean_regs_ptr.
+	 */
 	__u32 n_boolean_regs;
+
+	/**
+	 * @n_flex_regs:
+	 *
+	 * Number of flex regs in &flex_regs_ptr.
+	 */
 	__u32 n_flex_regs;
 
-	/*
-	 * These fields are pointers to tuples of u32 values (register address,
-	 * value). For example the expected length of the buffer pointed by
-	 * mux_regs_ptr is (2 * sizeof(u32) * n_mux_regs).
+	/**
+	 * @mux_regs_ptr:
+	 *
+	 * Pointer to tuples of u32 values (register address, value) for mux
+	 * registers.  Expected length of buffer is (2 * sizeof(u32) *
+	 * &n_mux_regs).
 	 */
 	__u64 mux_regs_ptr;
+
+	/**
+	 * @boolean_regs_ptr:
+	 *
+	 * Pointer to tuples of u32 values (register address, value) for mux
+	 * registers.  Expected length of buffer is (2 * sizeof(u32) *
+	 * &n_boolean_regs).
+	 */
 	__u64 boolean_regs_ptr;
+
+	/**
+	 * @flex_regs_ptr:
+	 *
+	 * Pointer to tuples of u32 values (register address, value) for mux
+	 * registers.  Expected length of buffer is (2 * sizeof(u32) *
+	 * &n_flex_regs).
+	 */
 	__u64 flex_regs_ptr;
 };
 
@@ -2679,12 +2789,24 @@ struct drm_i915_perf_oa_config {
  * @data_ptr is also depends on the specific @query_id.
  */
 struct drm_i915_query_item {
-	/** @query_id: The id for this query */
+	/**
+	 * @query_id:
+	 *
+	 * The id for this query.  Currently accepted query IDs are:
+	 *  - %DRM_I915_QUERY_TOPOLOGY_INFO (see struct drm_i915_query_topology_info)
+	 *  - %DRM_I915_QUERY_ENGINE_INFO (see struct drm_i915_engine_info)
+	 *  - %DRM_I915_QUERY_PERF_CONFIG (see struct drm_i915_query_perf_config)
+	 *  - %DRM_I915_QUERY_MEMORY_REGIONS (see struct drm_i915_query_memory_regions)
+	 *  - %DRM_I915_QUERY_HWCONFIG_BLOB (see `GuC HWCONFIG blob uAPI`)
+	 *  - %DRM_I915_QUERY_GEOMETRY_SUBSLICES (see struct drm_i915_query_topology_info)
+	 */
 	__u64 query_id;
-#define DRM_I915_QUERY_TOPOLOGY_INFO    1
-#define DRM_I915_QUERY_ENGINE_INFO	2
-#define DRM_I915_QUERY_PERF_CONFIG      3
-#define DRM_I915_QUERY_MEMORY_REGIONS   4
+#define DRM_I915_QUERY_TOPOLOGY_INFO		1
+#define DRM_I915_QUERY_ENGINE_INFO		2
+#define DRM_I915_QUERY_PERF_CONFIG		3
+#define DRM_I915_QUERY_MEMORY_REGIONS		4
+#define DRM_I915_QUERY_HWCONFIG_BLOB		5
+#define DRM_I915_QUERY_GEOMETRY_SUBSLICES	6
 /* Must be kept compact -- no holes and well documented */
 
 	/**
@@ -2700,14 +2822,17 @@ struct drm_i915_query_item {
 	/**
 	 * @flags:
 	 *
-	 * When query_id == DRM_I915_QUERY_TOPOLOGY_INFO, must be 0.
+	 * When &query_id == %DRM_I915_QUERY_TOPOLOGY_INFO, must be 0.
 	 *
-	 * When query_id == DRM_I915_QUERY_PERF_CONFIG, must be one of the
+	 * When &query_id == %DRM_I915_QUERY_PERF_CONFIG, must be one of the
 	 * following:
 	 *
-	 *	- DRM_I915_QUERY_PERF_CONFIG_LIST
-	 *      - DRM_I915_QUERY_PERF_CONFIG_DATA_FOR_UUID
-	 *      - DRM_I915_QUERY_PERF_CONFIG_FOR_UUID
+	 *	- %DRM_I915_QUERY_PERF_CONFIG_LIST
+	 *      - %DRM_I915_QUERY_PERF_CONFIG_DATA_FOR_UUID
+	 *      - %DRM_I915_QUERY_PERF_CONFIG_FOR_UUID
+	 *
+	 * When &query_id == %DRM_I915_QUERY_GEOMETRY_SUBSLICES must contain
+	 * a struct i915_engine_class_instance that references a render engine.
 	 */
 	__u32 flags;
 #define DRM_I915_QUERY_PERF_CONFIG_LIST          1
@@ -2765,66 +2890,112 @@ struct drm_i915_query {
 	__u64 items_ptr;
 };
 
-/*
- * Data written by the kernel with query DRM_I915_QUERY_TOPOLOGY_INFO :
- *
- * data: contains the 3 pieces of information :
- *
- * - the slice mask with one bit per slice telling whether a slice is
- *   available. The availability of slice X can be queried with the following
- *   formula :
- *
- *           (data[X / 8] >> (X % 8)) & 1
- *
- * - the subslice mask for each slice with one bit per subslice telling
- *   whether a subslice is available. Gen12 has dual-subslices, which are
- *   similar to two gen11 subslices. For gen12, this array represents dual-
- *   subslices. The availability of subslice Y in slice X can be queried
- *   with the following formula :
- *
- *           (data[subslice_offset +
- *                 X * subslice_stride +
- *                 Y / 8] >> (Y % 8)) & 1
- *
- * - the EU mask for each subslice in each slice with one bit per EU telling
- *   whether an EU is available. The availability of EU Z in subslice Y in
- *   slice X can be queried with the following formula :
+/**
+ * struct drm_i915_query_topology_info
  *
- *           (data[eu_offset +
- *                 (X * max_subslices + Y) * eu_stride +
- *                 Z / 8] >> (Z % 8)) & 1
+ * Describes slice/subslice/EU information queried by
+ * %DRM_I915_QUERY_TOPOLOGY_INFO
  */
 struct drm_i915_query_topology_info {
-	/*
+	/**
+	 * @flags:
+	 *
 	 * Unused for now. Must be cleared to zero.
 	 */
 	__u16 flags;
 
+	/**
+	 * @max_slices:
+	 *
+	 * The number of bits used to express the slice mask.
+	 */
 	__u16 max_slices;
+
+	/**
+	 * @max_subslices:
+	 *
+	 * The number of bits used to express the subslice mask.
+	 */
 	__u16 max_subslices;
+
+	/**
+	 * @max_eus_per_subslice:
+	 *
+	 * The number of bits in the EU mask that correspond to a single
+	 * subslice's EUs.
+	 */
 	__u16 max_eus_per_subslice;
 
-	/*
+	/**
+	 * @subslice_offset:
+	 *
 	 * Offset in data[] at which the subslice masks are stored.
 	 */
 	__u16 subslice_offset;
 
-	/*
+	/**
+	 * @subslice_stride:
+	 *
 	 * Stride at which each of the subslice masks for each slice are
 	 * stored.
 	 */
 	__u16 subslice_stride;
 
-	/*
+	/**
+	 * @eu_offset:
+	 *
 	 * Offset in data[] at which the EU masks are stored.
 	 */
 	__u16 eu_offset;
 
-	/*
+	/**
+	 * @eu_stride:
+	 *
 	 * Stride at which each of the EU masks for each subslice are stored.
 	 */
 	__u16 eu_stride;
 
+	/**
+	 * @data:
+	 *
+	 * Contains 3 pieces of information :
+	 *
+	 * - The slice mask with one bit per slice telling whether a slice is
+	 *   available. The availability of slice X can be queried with the
+	 *   following formula :
+	 *
+	 *   .. code:: c
+	 *
+	 *      (data[X / 8] >> (X % 8)) & 1
+	 *
+	 *   Starting with Xe_HP platforms, Intel hardware no longer has
+	 *   traditional slices so i915 will always report a single slice
+	 *   (hardcoded slicemask = 0x1) which contains all of the platform's
+	 *   subslices.  I.e., the mask here does not reflect any of the newer
+	 *   hardware concepts such as "gslices" or "cslices" since userspace
+	 *   is capable of inferring those from the subslice mask.
+	 *
+	 * - The subslice mask for each slice with one bit per subslice telling
+	 *   whether a subslice is available.  Starting with Gen12 we use the
+	 *   term "subslice" to refer to what the hardware documentation
+	 *   describes as a "dual-subslices."  The availability of subslice Y
+	 *   in slice X can be queried with the following formula :
+	 *
+	 *   .. code:: c
+	 *
+	 *      (data[subslice_offset + X * subslice_stride + Y / 8] >> (Y % 8)) & 1
+	 *
+	 * - The EU mask for each subslice in each slice, with one bit per EU
+	 *   telling whether an EU is available. The availability of EU Z in
+	 *   subslice Y in slice X can be queried with the following formula :
+	 *
+	 *   .. code:: c
+	 *
+	 *      (data[eu_offset +
+	 *            (X * max_subslices + Y) * eu_stride +
+	 *            Z / 8
+	 *       ] >> (Z % 8)) & 1
+	 */
 	__u8 data[];
 };
 
@@ -2945,52 +3116,68 @@ struct drm_i915_query_engine_info {
 	struct drm_i915_engine_info engines[];
 };
 
-/*
- * Data written by the kernel with query DRM_I915_QUERY_PERF_CONFIG.
+/**
+ * struct drm_i915_query_perf_config
+ *
+ * Data written by the kernel with query %DRM_I915_QUERY_PERF_CONFIG and
+ * %DRM_I915_QUERY_GEOMETRY_SUBSLICES.
  */
 struct drm_i915_query_perf_config {
 	union {
-		/*
-		 * When query_item.flags == DRM_I915_QUERY_PERF_CONFIG_LIST, i915 sets
-		 * this fields to the number of configurations available.
+		/**
+		 * @n_configs:
+		 *
+		 * When &drm_i915_query_item.flags ==
+		 * %DRM_I915_QUERY_PERF_CONFIG_LIST, i915 sets this fields to
+		 * the number of configurations available.
 		 */
 		__u64 n_configs;
 
-		/*
-		 * When query_id == DRM_I915_QUERY_PERF_CONFIG_DATA_FOR_ID,
-		 * i915 will use the value in this field as configuration
-		 * identifier to decide what data to write into config_ptr.
+		/**
+		 * @config:
+		 *
+		 * When &drm_i915_query_item.flags ==
+		 * %DRM_I915_QUERY_PERF_CONFIG_DATA_FOR_ID, i915 will use the
+		 * value in this field as configuration identifier to decide
+		 * what data to write into config_ptr.
 		 */
 		__u64 config;
 
-		/*
-		 * When query_id == DRM_I915_QUERY_PERF_CONFIG_DATA_FOR_UUID,
-		 * i915 will use the value in this field as configuration
-		 * identifier to decide what data to write into config_ptr.
+		/**
+		 * @uuid:
+		 *
+		 * When &drm_i915_query_item.flags ==
+		 * %DRM_I915_QUERY_PERF_CONFIG_DATA_FOR_UUID, i915 will use the
+		 * value in this field as configuration identifier to decide
+		 * what data to write into config_ptr.
 		 *
 		 * String formatted like "%08x-%04x-%04x-%04x-%012x"
 		 */
 		char uuid[36];
 	};
 
-	/*
+	/**
+	 * @flags:
+	 *
 	 * Unused for now. Must be cleared to zero.
 	 */
 	__u32 flags;
 
-	/*
-	 * When query_item.flags == DRM_I915_QUERY_PERF_CONFIG_LIST, i915 will
-	 * write an array of __u64 of configuration identifiers.
+	/**
+	 * @data:
 	 *
-	 * When query_item.flags == DRM_I915_QUERY_PERF_CONFIG_DATA, i915 will
-	 * write a struct drm_i915_perf_oa_config. If the following fields of
-	 * drm_i915_perf_oa_config are set not set to 0, i915 will write into
-	 * the associated pointers the values of submitted when the
+	 * When &drm_i915_query_item.flags == %DRM_I915_QUERY_PERF_CONFIG_LIST,
+	 * i915 will write an array of __u64 of configuration identifiers.
+	 *
+	 * When &drm_i915_query_item.flags == %DRM_I915_QUERY_PERF_CONFIG_DATA,
+	 * i915 will write a struct drm_i915_perf_oa_config. If the following
+	 * fields of struct drm_i915_perf_oa_config are not set to 0, i915 will
+	 * write into the associated pointers the values of submitted when the
 	 * configuration was created :
 	 *
-	 *         - n_mux_regs
-	 *         - n_boolean_regs
-	 *         - n_flex_regs
+	 *  - &drm_i915_perf_oa_config.n_mux_regs
+	 *  - &drm_i915_perf_oa_config.n_boolean_regs
+	 *  - &drm_i915_perf_oa_config.n_flex_regs
 	 */
 	__u8 data[];
 };
@@ -3128,6 +3315,16 @@ struct drm_i915_query_memory_regions {
 	struct drm_i915_memory_region_info regions[];
 };
 
+/**
+ * DOC: GuC HWCONFIG blob uAPI
+ *
+ * The GuC produces a blob with information about the current device.
+ * i915 reads this blob from GuC and makes it available via this uAPI.
+ *
+ * The format and meaning of the blob content are documented in the
+ * Programmer's Reference Manual.
+ */
+
 /**
  * struct drm_i915_gem_create_ext - Existing gem_create behaviour, with added
  * extension support using struct i915_user_extension.
@@ -3144,11 +3341,40 @@ struct drm_i915_gem_create_ext {
 	 *
 	 * The (page-aligned) allocated size for the object will be returned.
 	 *
-	 * Note that for some devices we have might have further minimum
-	 * page-size restrictions(larger than 4K), like for device local-memory.
-	 * However in general the final size here should always reflect any
-	 * rounding up, if for example using the I915_GEM_CREATE_EXT_MEMORY_REGIONS
-	 * extension to place the object in device local-memory.
+	 *
+	 * DG2 64K min page size implications:
+	 *
+	 * On discrete platforms, starting from DG2, we have to contend with GTT
+	 * page size restrictions when dealing with I915_MEMORY_CLASS_DEVICE
+	 * objects.  Specifically the hardware only supports 64K or larger GTT
+	 * page sizes for such memory. The kernel will already ensure that all
+	 * I915_MEMORY_CLASS_DEVICE memory is allocated using 64K or larger page
+	 * sizes underneath.
+	 *
+	 * Note that the returned size here will always reflect any required
+	 * rounding up done by the kernel, i.e 4K will now become 64K on devices
+	 * such as DG2.
+	 *
+	 * Special DG2 GTT address alignment requirement:
+	 *
+	 * The GTT alignment will also need to be at least 2M for such objects.
+	 *
+	 * Note that due to how the hardware implements 64K GTT page support, we
+	 * have some further complications:
+	 *
+	 *   1) The entire PDE (which covers a 2MB virtual address range), must
+	 *   contain only 64K PTEs, i.e mixing 4K and 64K PTEs in the same
+	 *   PDE is forbidden by the hardware.
+	 *
+	 *   2) We still need to support 4K PTEs for I915_MEMORY_CLASS_SYSTEM
+	 *   objects.
+	 *
+	 * To keep things simple for userland, we mandate that any GTT mappings
+	 * must be aligned to and rounded up to 2MB. The kernel will internally
+	 * pad them out to the next 2MB boundary. As this only wastes virtual
+	 * address space and avoids userland having to copy any needlessly
+	 * complicated PDE sharing scheme (coloring) and only affects DG2, this
+	 * is deemed to be a good compromise.
 	 */
 	__u64 size;
 	/**
-- 
2.36.0

