Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2620145F0C
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 00:17:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0EB36F92F;
	Wed, 22 Jan 2020 23:17:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08B8A6F92C;
 Wed, 22 Jan 2020 23:17:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 15:17:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,351,1574150400"; d="scan'208";a="375061673"
Received: from jhli-desk1.jf.intel.com ([10.54.74.160])
 by orsmga004.jf.intel.com with ESMTP; 22 Jan 2020 15:17:03 -0800
From: Juston Li <juston.li@intel.com>
To: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 ville.syrjala@linux.intel.com, daniel@ffwll.ch
Date: Wed, 22 Jan 2020 15:16:54 -0800
Message-Id: <20200122231655.9702-1-juston.li@intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 i-g-t 1/2] include/drm-uapi: Import headers
 from 3ff4c24bdb1f
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Taken from:
	commit 3ff4c24bdb1f494c217c80348f9db4896043ed81
	Author: Lyude Paul <lyude@redhat.com>
	Date:   Fri Jan 17 17:47:48 2020 -0500

	drm/dp_mst: Fix indenting in drm_dp_mst_topology_mgr_set_mst()

include/drm-uapi/drm_fourcc.h was not synced as the local copy has
changes not merged upstream.

Signed-off-by: Juston Li <juston.li@intel.com>
---
 include/drm-uapi/amdgpu_drm.h   |  74 ++++++++++++++++++-
 include/drm-uapi/drm.h          |  41 +++++++++++
 include/drm-uapi/drm_mode.h     | 122 +++++++++++++++++++++++++++++++-
 include/drm-uapi/etnaviv_drm.h  |  10 ++-
 include/drm-uapi/exynos_drm.h   |   2 +-
 include/drm-uapi/msm_drm.h      |  14 ++++
 include/drm-uapi/nouveau_drm.h  |  51 +++++++++++++
 include/drm-uapi/omap_drm.h     |  18 ++---
 include/drm-uapi/panfrost_drm.h |  88 +++++++++++++++++++++++
 include/drm-uapi/v3d_drm.h      |  36 +++++++++-
 include/drm-uapi/vmwgfx_drm.h   |   4 +-
 11 files changed, 441 insertions(+), 19 deletions(-)

diff --git a/include/drm-uapi/amdgpu_drm.h b/include/drm-uapi/amdgpu_drm.h
index be84e43c1e19..ac3879829bb5 100644
--- a/include/drm-uapi/amdgpu_drm.h
+++ b/include/drm-uapi/amdgpu_drm.h
@@ -128,6 +128,10 @@ extern "C" {
  * for the second page onward should be set to NC.
  */
 #define AMDGPU_GEM_CREATE_MQD_GFX9		(1 << 8)
+/* Flag that BO may contain sensitive data that must be wiped before
+ * releasing the memory
+ */
+#define AMDGPU_GEM_CREATE_VRAM_WIPE_ON_RELEASE	(1 << 9)
 
 struct drm_amdgpu_gem_create_in  {
 	/** the requested memory size */
@@ -210,13 +214,19 @@ union drm_amdgpu_bo_list {
 #define AMDGPU_CTX_QUERY2_FLAGS_VRAMLOST (1<<1)
 /* indicate some job from this context once cause gpu hang */
 #define AMDGPU_CTX_QUERY2_FLAGS_GUILTY   (1<<2)
+/* indicate some errors are detected by RAS */
+#define AMDGPU_CTX_QUERY2_FLAGS_RAS_CE   (1<<3)
+#define AMDGPU_CTX_QUERY2_FLAGS_RAS_UE   (1<<4)
 
 /* Context priority level */
 #define AMDGPU_CTX_PRIORITY_UNSET       -2048
 #define AMDGPU_CTX_PRIORITY_VERY_LOW    -1023
 #define AMDGPU_CTX_PRIORITY_LOW         -512
 #define AMDGPU_CTX_PRIORITY_NORMAL      0
-/* Selecting a priority above NORMAL requires CAP_SYS_NICE or DRM_MASTER */
+/*
+ * When used in struct drm_amdgpu_ctx_in, a priority above NORMAL requires
+ * CAP_SYS_NICE or DRM_MASTER
+*/
 #define AMDGPU_CTX_PRIORITY_HIGH        512
 #define AMDGPU_CTX_PRIORITY_VERY_HIGH   1023
 
@@ -226,6 +236,7 @@ struct drm_amdgpu_ctx_in {
 	/** For future use, no flags defined so far */
 	__u32	flags;
 	__u32	ctx_id;
+	/** AMDGPU_CTX_PRIORITY_* */
 	__s32	priority;
 };
 
@@ -272,13 +283,15 @@ union drm_amdgpu_vm {
 
 /* sched ioctl */
 #define AMDGPU_SCHED_OP_PROCESS_PRIORITY_OVERRIDE	1
+#define AMDGPU_SCHED_OP_CONTEXT_PRIORITY_OVERRIDE	2
 
 struct drm_amdgpu_sched_in {
 	/* AMDGPU_SCHED_OP_* */
 	__u32	op;
 	__u32	fd;
+	/** AMDGPU_CTX_PRIORITY_* */
 	__s32	priority;
-	__u32	flags;
+	__u32   ctx_id;
 };
 
 union drm_amdgpu_sched {
@@ -487,6 +500,8 @@ struct drm_amdgpu_gem_op {
 #define AMDGPU_VM_MTYPE_CC		(3 << 5)
 /* Use UC MTYPE instead of default MTYPE */
 #define AMDGPU_VM_MTYPE_UC		(4 << 5)
+/* Use RW MTYPE instead of default MTYPE */
+#define AMDGPU_VM_MTYPE_RW		(5 << 5)
 
 struct drm_amdgpu_gem_va {
 	/** GEM object handle */
@@ -523,6 +538,9 @@ struct drm_amdgpu_gem_va {
 #define AMDGPU_CHUNK_ID_SYNCOBJ_IN      0x04
 #define AMDGPU_CHUNK_ID_SYNCOBJ_OUT     0x05
 #define AMDGPU_CHUNK_ID_BO_HANDLES      0x06
+#define AMDGPU_CHUNK_ID_SCHEDULED_DEPENDENCIES	0x07
+#define AMDGPU_CHUNK_ID_SYNCOBJ_TIMELINE_WAIT    0x08
+#define AMDGPU_CHUNK_ID_SYNCOBJ_TIMELINE_SIGNAL  0x09
 
 struct drm_amdgpu_cs_chunk {
 	__u32		chunk_id;
@@ -565,6 +583,11 @@ union drm_amdgpu_cs {
  * caches (L2/vL1/sL1/I$). */
 #define AMDGPU_IB_FLAG_TC_WB_NOT_INVALIDATE (1 << 3)
 
+/* Set GDS_COMPUTE_MAX_WAVE_ID = DEFAULT before PACKET3_INDIRECT_BUFFER.
+ * This will reset wave ID counters for the IB.
+ */
+#define AMDGPU_IB_FLAG_RESET_GDS_MAX_WAVE_ID (1 << 4)
+
 struct drm_amdgpu_cs_chunk_ib {
 	__u32 _pad;
 	/** AMDGPU_IB_FLAG_* */
@@ -598,6 +621,12 @@ struct drm_amdgpu_cs_chunk_sem {
 	__u32 handle;
 };
 
+struct drm_amdgpu_cs_chunk_syncobj {
+       __u32 handle;
+       __u32 flags;
+       __u64 point;
+};
+
 #define AMDGPU_FENCE_TO_HANDLE_GET_SYNCOBJ	0
 #define AMDGPU_FENCE_TO_HANDLE_GET_SYNCOBJ_FD	1
 #define AMDGPU_FENCE_TO_HANDLE_GET_SYNC_FILE_FD	2
@@ -673,6 +702,10 @@ struct drm_amdgpu_cs_chunk_data {
 	#define AMDGPU_INFO_FW_GFX_RLC_RESTORE_LIST_SRM_MEM 0x11
 	/* Subquery id: Query DMCU firmware version */
 	#define AMDGPU_INFO_FW_DMCU		0x12
+	#define AMDGPU_INFO_FW_TA		0x13
+	/* Subquery id: Query DMCUB firmware version */
+	#define AMDGPU_INFO_FW_DMCUB		0x14
+
 /* number of bytes moved for TTM migration */
 #define AMDGPU_INFO_NUM_BYTES_MOVED		0x0f
 /* the used VRAM size */
@@ -726,6 +759,37 @@ struct drm_amdgpu_cs_chunk_data {
 /* Number of VRAM page faults on CPU access. */
 #define AMDGPU_INFO_NUM_VRAM_CPU_PAGE_FAULTS	0x1E
 #define AMDGPU_INFO_VRAM_LOST_COUNTER		0x1F
+/* query ras mask of enabled features*/
+#define AMDGPU_INFO_RAS_ENABLED_FEATURES	0x20
+
+/* RAS MASK: UMC (VRAM) */
+#define AMDGPU_INFO_RAS_ENABLED_UMC			(1 << 0)
+/* RAS MASK: SDMA */
+#define AMDGPU_INFO_RAS_ENABLED_SDMA			(1 << 1)
+/* RAS MASK: GFX */
+#define AMDGPU_INFO_RAS_ENABLED_GFX			(1 << 2)
+/* RAS MASK: MMHUB */
+#define AMDGPU_INFO_RAS_ENABLED_MMHUB			(1 << 3)
+/* RAS MASK: ATHUB */
+#define AMDGPU_INFO_RAS_ENABLED_ATHUB			(1 << 4)
+/* RAS MASK: PCIE */
+#define AMDGPU_INFO_RAS_ENABLED_PCIE			(1 << 5)
+/* RAS MASK: HDP */
+#define AMDGPU_INFO_RAS_ENABLED_HDP			(1 << 6)
+/* RAS MASK: XGMI */
+#define AMDGPU_INFO_RAS_ENABLED_XGMI			(1 << 7)
+/* RAS MASK: DF */
+#define AMDGPU_INFO_RAS_ENABLED_DF			(1 << 8)
+/* RAS MASK: SMN */
+#define AMDGPU_INFO_RAS_ENABLED_SMN			(1 << 9)
+/* RAS MASK: SEM */
+#define AMDGPU_INFO_RAS_ENABLED_SEM			(1 << 10)
+/* RAS MASK: MP0 */
+#define AMDGPU_INFO_RAS_ENABLED_MP0			(1 << 11)
+/* RAS MASK: MP1 */
+#define AMDGPU_INFO_RAS_ENABLED_MP1			(1 << 12)
+/* RAS MASK: FUSE */
+#define AMDGPU_INFO_RAS_ENABLED_FUSE			(1 << 13)
 
 #define AMDGPU_INFO_MMR_SE_INDEX_SHIFT	0
 #define AMDGPU_INFO_MMR_SE_INDEX_MASK	0xff
@@ -862,6 +926,7 @@ struct drm_amdgpu_info_firmware {
 #define AMDGPU_VRAM_TYPE_HBM   6
 #define AMDGPU_VRAM_TYPE_DDR3  7
 #define AMDGPU_VRAM_TYPE_DDR4  8
+#define AMDGPU_VRAM_TYPE_GDDR6 9
 
 struct drm_amdgpu_info_device {
 	/** PCI Device ID */
@@ -941,6 +1006,10 @@ struct drm_amdgpu_info_device {
 	__u64 high_va_offset;
 	/** The maximum high virtual address */
 	__u64 high_va_max;
+	/* gfx10 pa_sc_tile_steering_override */
+	__u32 pa_sc_tile_steering_override;
+	/* disabled TCCs */
+	__u64 tcc_disabled_mask;
 };
 
 struct drm_amdgpu_info_hw_ip {
@@ -994,6 +1063,7 @@ struct drm_amdgpu_info_vce_clock_table {
 #define AMDGPU_FAMILY_CZ			135 /* Carrizo, Stoney */
 #define AMDGPU_FAMILY_AI			141 /* Vega10 */
 #define AMDGPU_FAMILY_RV			142 /* Raven */
+#define AMDGPU_FAMILY_NV			143 /* Navi10 */
 
 #if defined(__cplusplus)
 }
diff --git a/include/drm-uapi/drm.h b/include/drm-uapi/drm.h
index 85c685a2075e..c7fd2a35fd7b 100644
--- a/include/drm-uapi/drm.h
+++ b/include/drm-uapi/drm.h
@@ -44,6 +44,7 @@ typedef unsigned int drm_handle_t;
 
 #else /* One of the BSDs */
 
+#include <stdint.h>
 #include <sys/ioccom.h>
 #include <sys/types.h>
 typedef int8_t   __s8;
@@ -643,6 +644,7 @@ struct drm_gem_open {
 #define DRM_CAP_PAGE_FLIP_TARGET	0x11
 #define DRM_CAP_CRTC_IN_VBLANK_EVENT	0x12
 #define DRM_CAP_SYNCOBJ		0x13
+#define DRM_CAP_SYNCOBJ_TIMELINE	0x14
 
 /** DRM_IOCTL_GET_CAP ioctl argument type */
 struct drm_get_cap {
@@ -729,8 +731,18 @@ struct drm_syncobj_handle {
 	__u32 pad;
 };
 
+struct drm_syncobj_transfer {
+	__u32 src_handle;
+	__u32 dst_handle;
+	__u64 src_point;
+	__u64 dst_point;
+	__u32 flags;
+	__u32 pad;
+};
+
 #define DRM_SYNCOBJ_WAIT_FLAGS_WAIT_ALL (1 << 0)
 #define DRM_SYNCOBJ_WAIT_FLAGS_WAIT_FOR_SUBMIT (1 << 1)
+#define DRM_SYNCOBJ_WAIT_FLAGS_WAIT_AVAILABLE (1 << 2) /* wait for time point to become available */
 struct drm_syncobj_wait {
 	__u64 handles;
 	/* absolute timeout */
@@ -741,12 +753,34 @@ struct drm_syncobj_wait {
 	__u32 pad;
 };
 
+struct drm_syncobj_timeline_wait {
+	__u64 handles;
+	/* wait on specific timeline point for every handles*/
+	__u64 points;
+	/* absolute timeout */
+	__s64 timeout_nsec;
+	__u32 count_handles;
+	__u32 flags;
+	__u32 first_signaled; /* only valid when not waiting all */
+	__u32 pad;
+};
+
+
 struct drm_syncobj_array {
 	__u64 handles;
 	__u32 count_handles;
 	__u32 pad;
 };
 
+#define DRM_SYNCOBJ_QUERY_FLAGS_LAST_SUBMITTED (1 << 0) /* last available point on timeline syncobj */
+struct drm_syncobj_timeline_array {
+	__u64 handles;
+	__u64 points;
+	__u32 count_handles;
+	__u32 flags;
+};
+
+
 /* Query current scanout sequence number */
 struct drm_crtc_get_sequence {
 	__u32 crtc_id;		/* requested crtc_id */
@@ -903,6 +937,13 @@ extern "C" {
 #define DRM_IOCTL_MODE_GET_LEASE	DRM_IOWR(0xC8, struct drm_mode_get_lease)
 #define DRM_IOCTL_MODE_REVOKE_LEASE	DRM_IOWR(0xC9, struct drm_mode_revoke_lease)
 
+#define DRM_IOCTL_SYNCOBJ_TIMELINE_WAIT	DRM_IOWR(0xCA, struct drm_syncobj_timeline_wait)
+#define DRM_IOCTL_SYNCOBJ_QUERY		DRM_IOWR(0xCB, struct drm_syncobj_timeline_array)
+#define DRM_IOCTL_SYNCOBJ_TRANSFER	DRM_IOWR(0xCC, struct drm_syncobj_transfer)
+#define DRM_IOCTL_SYNCOBJ_TIMELINE_SIGNAL	DRM_IOWR(0xCD, struct drm_syncobj_timeline_array)
+
+#define DRM_IOCTL_MODE_GETFB2		DRM_IOWR(0xCE, struct drm_mode_fb_cmd2)
+
 /**
  * Device specific ioctls should only be in their respective headers
  * The device specific ioctl range is from 0x40 to 0x9f.
diff --git a/include/drm-uapi/drm_mode.h b/include/drm-uapi/drm_mode.h
index a439c2e67896..735c8cfdaaa1 100644
--- a/include/drm-uapi/drm_mode.h
+++ b/include/drm-uapi/drm_mode.h
@@ -33,7 +33,15 @@
 extern "C" {
 #endif
 
-#define DRM_DISPLAY_INFO_LEN	32
+/**
+ * DOC: overview
+ *
+ * DRM exposes many UAPI and structure definition to have a consistent
+ * and standardized interface with user.
+ * Userspace can refer to these structure definitions and UAPI formats
+ * to communicate to driver
+ */
+
 #define DRM_CONNECTOR_NAME_LEN	32
 #define DRM_DISPLAY_MODE_LEN	32
 #define DRM_PROP_NAME_LEN	32
@@ -353,6 +361,7 @@ enum drm_mode_subconnector {
 #define DRM_MODE_CONNECTOR_DSI		16
 #define DRM_MODE_CONNECTOR_DPI		17
 #define DRM_MODE_CONNECTOR_WRITEBACK	18
+#define DRM_MODE_CONNECTOR_SPI		19
 
 struct drm_mode_get_connector {
 
@@ -622,7 +631,8 @@ struct drm_color_ctm {
 
 struct drm_color_lut {
 	/*
-	 * Data is U0.16 fixed point format.
+	 * Values are mapped linearly to 0.0 - 1.0 range, with 0x0 == 0.0 and
+	 * 0xffff == 1.0.
 	 */
 	__u16 red;
 	__u16 green;
@@ -630,6 +640,92 @@ struct drm_color_lut {
 	__u16 reserved;
 };
 
+/**
+ * struct hdr_metadata_infoframe - HDR Metadata Infoframe Data.
+ *
+ * HDR Metadata Infoframe as per CTA 861.G spec. This is expected
+ * to match exactly with the spec.
+ *
+ * Userspace is expected to pass the metadata information as per
+ * the format described in this structure.
+ */
+struct hdr_metadata_infoframe {
+	/**
+	 * @eotf: Electro-Optical Transfer Function (EOTF)
+	 * used in the stream.
+	 */
+	__u8 eotf;
+	/**
+	 * @metadata_type: Static_Metadata_Descriptor_ID.
+	 */
+	__u8 metadata_type;
+	/**
+	 * @display_primaries: Color Primaries of the Data.
+	 * These are coded as unsigned 16-bit values in units of
+	 * 0.00002, where 0x0000 represents zero and 0xC350
+	 * represents 1.0000.
+	 * @display_primaries.x: X cordinate of color primary.
+	 * @display_primaries.y: Y cordinate of color primary.
+	 */
+	struct {
+		__u16 x, y;
+		} display_primaries[3];
+	/**
+	 * @white_point: White Point of Colorspace Data.
+	 * These are coded as unsigned 16-bit values in units of
+	 * 0.00002, where 0x0000 represents zero and 0xC350
+	 * represents 1.0000.
+	 * @white_point.x: X cordinate of whitepoint of color primary.
+	 * @white_point.y: Y cordinate of whitepoint of color primary.
+	 */
+	struct {
+		__u16 x, y;
+		} white_point;
+	/**
+	 * @max_display_mastering_luminance: Max Mastering Display Luminance.
+	 * This value is coded as an unsigned 16-bit value in units of 1 cd/m2,
+	 * where 0x0001 represents 1 cd/m2 and 0xFFFF represents 65535 cd/m2.
+	 */
+	__u16 max_display_mastering_luminance;
+	/**
+	 * @min_display_mastering_luminance: Min Mastering Display Luminance.
+	 * This value is coded as an unsigned 16-bit value in units of
+	 * 0.0001 cd/m2, where 0x0001 represents 0.0001 cd/m2 and 0xFFFF
+	 * represents 6.5535 cd/m2.
+	 */
+	__u16 min_display_mastering_luminance;
+	/**
+	 * @max_cll: Max Content Light Level.
+	 * This value is coded as an unsigned 16-bit value in units of 1 cd/m2,
+	 * where 0x0001 represents 1 cd/m2 and 0xFFFF represents 65535 cd/m2.
+	 */
+	__u16 max_cll;
+	/**
+	 * @max_fall: Max Frame Average Light Level.
+	 * This value is coded as an unsigned 16-bit value in units of 1 cd/m2,
+	 * where 0x0001 represents 1 cd/m2 and 0xFFFF represents 65535 cd/m2.
+	 */
+	__u16 max_fall;
+};
+
+/**
+ * struct hdr_output_metadata - HDR output metadata
+ *
+ * Metadata Information to be passed from userspace
+ */
+struct hdr_output_metadata {
+	/**
+	 * @metadata_type: Static_Metadata_Descriptor_ID.
+	 */
+	__u32 metadata_type;
+	/**
+	 * @hdmi_metadata_type1: HDR Metadata Infoframe.
+	 */
+	union {
+		struct hdr_metadata_infoframe hdmi_metadata_type1;
+	};
+};
+
 #define DRM_MODE_PAGE_FLIP_EVENT 0x01
 #define DRM_MODE_PAGE_FLIP_ASYNC 0x02
 #define DRM_MODE_PAGE_FLIP_TARGET_ABSOLUTE 0x4
@@ -803,6 +899,10 @@ struct drm_format_modifier {
 };
 
 /**
+ * struct drm_mode_create_blob - Create New block property
+ * @data: Pointer to data to copy.
+ * @length: Length of data to copy.
+ * @blob_id: new property ID.
  * Create a new 'blob' data property, copying length bytes from data pointer,
  * and returning new blob ID.
  */
@@ -816,6 +916,8 @@ struct drm_mode_create_blob {
 };
 
 /**
+ * struct drm_mode_destroy_blob - Destroy user blob
+ * @blob_id: blob_id to destroy
  * Destroy a user-created blob property.
  */
 struct drm_mode_destroy_blob {
@@ -823,6 +925,12 @@ struct drm_mode_destroy_blob {
 };
 
 /**
+ * struct drm_mode_create_lease - Create lease
+ * @object_ids: Pointer to array of object ids.
+ * @object_count: Number of object ids.
+ * @flags: flags for new FD.
+ * @lessee_id: unique identifier for lessee.
+ * @fd: file descriptor to new drm_master file.
  * Lease mode resources, creating another drm_master.
  */
 struct drm_mode_create_lease {
@@ -840,6 +948,10 @@ struct drm_mode_create_lease {
 };
 
 /**
+ * struct drm_mode_list_lessees - List lessees
+ * @count_lessees: Number of lessees.
+ * @pad: pad.
+ * @lessees_ptr: Pointer to lessess.
  * List lesses from a drm_master
  */
 struct drm_mode_list_lessees {
@@ -860,6 +972,10 @@ struct drm_mode_list_lessees {
 };
 
 /**
+ * struct drm_mode_get_lease - Get Lease
+ * @count_objects: Number of leased objects.
+ * @pad: pad.
+ * @objects_ptr: Pointer to objects.
  * Get leased objects
  */
 struct drm_mode_get_lease {
@@ -880,6 +996,8 @@ struct drm_mode_get_lease {
 };
 
 /**
+ * struct drm_mode_revoke_lease - Revoke lease
+ * @lessee_id: Unique ID of lessee.
  * Revoke lease
  */
 struct drm_mode_revoke_lease {
diff --git a/include/drm-uapi/etnaviv_drm.h b/include/drm-uapi/etnaviv_drm.h
index 0d5c49dc478c..09d0df8b71c5 100644
--- a/include/drm-uapi/etnaviv_drm.h
+++ b/include/drm-uapi/etnaviv_drm.h
@@ -73,6 +73,7 @@ struct drm_etnaviv_timespec {
 #define ETNAVIV_PARAM_GPU_INSTRUCTION_COUNT         0x18
 #define ETNAVIV_PARAM_GPU_NUM_CONSTANTS             0x19
 #define ETNAVIV_PARAM_GPU_NUM_VARYINGS              0x1a
+#define ETNAVIV_PARAM_SOFTPIN_START_ADDR            0x1b
 
 #define ETNA_MAX_PIPES 4
 
@@ -148,6 +149,11 @@ struct drm_etnaviv_gem_submit_reloc {
  * then patching the cmdstream for this entry is skipped.  This can
  * avoid kernel needing to map/access the cmdstream bo in the common
  * case.
+ * If the submit is a softpin submit (ETNA_SUBMIT_SOFTPIN) the 'presumed'
+ * field is interpreted as the fixed location to map the bo into the gpu
+ * virtual address space. If the kernel is unable to map the buffer at
+ * this location the submit will fail. This means userspace is responsible
+ * for the whole gpu virtual address management.
  */
 #define ETNA_SUBMIT_BO_READ             0x0001
 #define ETNA_SUBMIT_BO_WRITE            0x0002
@@ -177,9 +183,11 @@ struct drm_etnaviv_gem_submit_pmr {
 #define ETNA_SUBMIT_NO_IMPLICIT         0x0001
 #define ETNA_SUBMIT_FENCE_FD_IN         0x0002
 #define ETNA_SUBMIT_FENCE_FD_OUT        0x0004
+#define ETNA_SUBMIT_SOFTPIN             0x0008
 #define ETNA_SUBMIT_FLAGS		(ETNA_SUBMIT_NO_IMPLICIT | \
 					 ETNA_SUBMIT_FENCE_FD_IN | \
-					 ETNA_SUBMIT_FENCE_FD_OUT)
+					 ETNA_SUBMIT_FENCE_FD_OUT| \
+					 ETNA_SUBMIT_SOFTPIN)
 #define ETNA_PIPE_3D      0x00
 #define ETNA_PIPE_2D      0x01
 #define ETNA_PIPE_VG      0x02
diff --git a/include/drm-uapi/exynos_drm.h b/include/drm-uapi/exynos_drm.h
index 7414cfd76419..293815e3c1c8 100644
--- a/include/drm-uapi/exynos_drm.h
+++ b/include/drm-uapi/exynos_drm.h
@@ -68,7 +68,7 @@ struct drm_exynos_gem_info {
 /**
  * A structure for user connection request of virtual display.
  *
- * @connection: indicate whether doing connetion or not by user.
+ * @connection: indicate whether doing connection or not by user.
  * @extensions: if this value is 1 then the vidi driver would need additional
  *	128bytes edid data.
  * @edid: the edid data pointer from user side.
diff --git a/include/drm-uapi/msm_drm.h b/include/drm-uapi/msm_drm.h
index 91a16b333c69..0b85ed6a3710 100644
--- a/include/drm-uapi/msm_drm.h
+++ b/include/drm-uapi/msm_drm.h
@@ -74,6 +74,8 @@ struct drm_msm_timespec {
 #define MSM_PARAM_TIMESTAMP  0x05
 #define MSM_PARAM_GMEM_BASE  0x06
 #define MSM_PARAM_NR_RINGS   0x07
+#define MSM_PARAM_PP_PGTABLE 0x08  /* => 1 for per-process pagetables, else 0 */
+#define MSM_PARAM_FAULTS     0x09
 
 struct drm_msm_param {
 	__u32 pipe;           /* in, MSM_PIPE_x */
@@ -286,6 +288,16 @@ struct drm_msm_submitqueue {
 	__u32 id;      /* out, identifier */
 };
 
+#define MSM_SUBMITQUEUE_PARAM_FAULTS   0
+
+struct drm_msm_submitqueue_query {
+	__u64 data;
+	__u32 id;
+	__u32 param;
+	__u32 len;
+	__u32 pad;
+};
+
 #define DRM_MSM_GET_PARAM              0x00
 /* placeholder:
 #define DRM_MSM_SET_PARAM              0x01
@@ -302,6 +314,7 @@ struct drm_msm_submitqueue {
  */
 #define DRM_MSM_SUBMITQUEUE_NEW        0x0A
 #define DRM_MSM_SUBMITQUEUE_CLOSE      0x0B
+#define DRM_MSM_SUBMITQUEUE_QUERY      0x0C
 
 #define DRM_IOCTL_MSM_GET_PARAM        DRM_IOWR(DRM_COMMAND_BASE + DRM_MSM_GET_PARAM, struct drm_msm_param)
 #define DRM_IOCTL_MSM_GEM_NEW          DRM_IOWR(DRM_COMMAND_BASE + DRM_MSM_GEM_NEW, struct drm_msm_gem_new)
@@ -313,6 +326,7 @@ struct drm_msm_submitqueue {
 #define DRM_IOCTL_MSM_GEM_MADVISE      DRM_IOWR(DRM_COMMAND_BASE + DRM_MSM_GEM_MADVISE, struct drm_msm_gem_madvise)
 #define DRM_IOCTL_MSM_SUBMITQUEUE_NEW    DRM_IOWR(DRM_COMMAND_BASE + DRM_MSM_SUBMITQUEUE_NEW, struct drm_msm_submitqueue)
 #define DRM_IOCTL_MSM_SUBMITQUEUE_CLOSE  DRM_IOW (DRM_COMMAND_BASE + DRM_MSM_SUBMITQUEUE_CLOSE, __u32)
+#define DRM_IOCTL_MSM_SUBMITQUEUE_QUERY  DRM_IOW (DRM_COMMAND_BASE + DRM_MSM_SUBMITQUEUE_QUERY, struct drm_msm_submitqueue_query)
 
 #if defined(__cplusplus)
 }
diff --git a/include/drm-uapi/nouveau_drm.h b/include/drm-uapi/nouveau_drm.h
index 259588a4b61b..9459a6e3bc1f 100644
--- a/include/drm-uapi/nouveau_drm.h
+++ b/include/drm-uapi/nouveau_drm.h
@@ -133,12 +133,63 @@ struct drm_nouveau_gem_cpu_fini {
 #define DRM_NOUVEAU_NOTIFIEROBJ_ALLOC  0x05 /* deprecated */
 #define DRM_NOUVEAU_GPUOBJ_FREE        0x06 /* deprecated */
 #define DRM_NOUVEAU_NVIF               0x07
+#define DRM_NOUVEAU_SVM_INIT           0x08
+#define DRM_NOUVEAU_SVM_BIND           0x09
 #define DRM_NOUVEAU_GEM_NEW            0x40
 #define DRM_NOUVEAU_GEM_PUSHBUF        0x41
 #define DRM_NOUVEAU_GEM_CPU_PREP       0x42
 #define DRM_NOUVEAU_GEM_CPU_FINI       0x43
 #define DRM_NOUVEAU_GEM_INFO           0x44
 
+struct drm_nouveau_svm_init {
+	__u64 unmanaged_addr;
+	__u64 unmanaged_size;
+};
+
+struct drm_nouveau_svm_bind {
+	__u64 header;
+	__u64 va_start;
+	__u64 va_end;
+	__u64 npages;
+	__u64 stride;
+	__u64 result;
+	__u64 reserved0;
+	__u64 reserved1;
+};
+
+#define NOUVEAU_SVM_BIND_COMMAND_SHIFT          0
+#define NOUVEAU_SVM_BIND_COMMAND_BITS           8
+#define NOUVEAU_SVM_BIND_COMMAND_MASK           ((1 << 8) - 1)
+#define NOUVEAU_SVM_BIND_PRIORITY_SHIFT         8
+#define NOUVEAU_SVM_BIND_PRIORITY_BITS          8
+#define NOUVEAU_SVM_BIND_PRIORITY_MASK          ((1 << 8) - 1)
+#define NOUVEAU_SVM_BIND_TARGET_SHIFT           16
+#define NOUVEAU_SVM_BIND_TARGET_BITS            32
+#define NOUVEAU_SVM_BIND_TARGET_MASK            0xffffffff
+
+/*
+ * Below is use to validate ioctl argument, userspace can also use it to make
+ * sure that no bit are set beyond known fields for a given kernel version.
+ */
+#define NOUVEAU_SVM_BIND_VALID_BITS     48
+#define NOUVEAU_SVM_BIND_VALID_MASK     ((1ULL << NOUVEAU_SVM_BIND_VALID_BITS) - 1)
+
+
+/*
+ * NOUVEAU_BIND_COMMAND__MIGRATE: synchronous migrate to target memory.
+ * result: number of page successfuly migrate to the target memory.
+ */
+#define NOUVEAU_SVM_BIND_COMMAND__MIGRATE               0
+
+/*
+ * NOUVEAU_SVM_BIND_HEADER_TARGET__GPU_VRAM: target the GPU VRAM memory.
+ */
+#define NOUVEAU_SVM_BIND_TARGET__GPU_VRAM               (1UL << 31)
+
+
+#define DRM_IOCTL_NOUVEAU_SVM_INIT           DRM_IOWR(DRM_COMMAND_BASE + DRM_NOUVEAU_SVM_INIT, struct drm_nouveau_svm_init)
+#define DRM_IOCTL_NOUVEAU_SVM_BIND           DRM_IOWR(DRM_COMMAND_BASE + DRM_NOUVEAU_SVM_BIND, struct drm_nouveau_svm_bind)
+
 #define DRM_IOCTL_NOUVEAU_GEM_NEW            DRM_IOWR(DRM_COMMAND_BASE + DRM_NOUVEAU_GEM_NEW, struct drm_nouveau_gem_new)
 #define DRM_IOCTL_NOUVEAU_GEM_PUSHBUF        DRM_IOWR(DRM_COMMAND_BASE + DRM_NOUVEAU_GEM_PUSHBUF, struct drm_nouveau_gem_pushbuf)
 #define DRM_IOCTL_NOUVEAU_GEM_CPU_PREP       DRM_IOW (DRM_COMMAND_BASE + DRM_NOUVEAU_GEM_CPU_PREP, struct drm_nouveau_gem_cpu_prep)
diff --git a/include/drm-uapi/omap_drm.h b/include/drm-uapi/omap_drm.h
index 1fccffef9e27..5a142fad473c 100644
--- a/include/drm-uapi/omap_drm.h
+++ b/include/drm-uapi/omap_drm.h
@@ -38,20 +38,20 @@ struct drm_omap_param {
 	__u64 value;			/* in (set_param), out (get_param) */
 };
 
-#define OMAP_BO_SCANOUT		0x00000001	/* scanout capable (phys contiguous) */
-#define OMAP_BO_CACHE_MASK	0x00000006	/* cache type mask, see cache modes */
-#define OMAP_BO_TILED_MASK	0x00000f00	/* tiled mapping mask, see tiled modes */
+/* Scanout buffer, consumable by DSS */
+#define OMAP_BO_SCANOUT		0x00000001
 
-/* cache modes */
-#define OMAP_BO_CACHED		0x00000000	/* default */
-#define OMAP_BO_WC		0x00000002	/* write-combine */
-#define OMAP_BO_UNCACHED	0x00000004	/* strongly-ordered (uncached) */
+/* Buffer CPU caching mode: cached, write-combining or uncached. */
+#define OMAP_BO_CACHED		0x00000000
+#define OMAP_BO_WC		0x00000002
+#define OMAP_BO_UNCACHED	0x00000004
+#define OMAP_BO_CACHE_MASK	0x00000006
 
-/* tiled modes */
+/* Use TILER for the buffer. The TILER container unit can be 8, 16 or 32 bits. */
 #define OMAP_BO_TILED_8		0x00000100
 #define OMAP_BO_TILED_16	0x00000200
 #define OMAP_BO_TILED_32	0x00000300
-#define OMAP_BO_TILED		(OMAP_BO_TILED_8 | OMAP_BO_TILED_16 | OMAP_BO_TILED_32)
+#define OMAP_BO_TILED_MASK	0x00000f00
 
 union omap_gem_size {
 	__u32 bytes;		/* (for non-tiled formats) */
diff --git a/include/drm-uapi/panfrost_drm.h b/include/drm-uapi/panfrost_drm.h
index a52e0283b90d..ec19db1eead8 100644
--- a/include/drm-uapi/panfrost_drm.h
+++ b/include/drm-uapi/panfrost_drm.h
@@ -18,6 +18,9 @@ extern "C" {
 #define DRM_PANFROST_MMAP_BO			0x03
 #define DRM_PANFROST_GET_PARAM			0x04
 #define DRM_PANFROST_GET_BO_OFFSET		0x05
+#define DRM_PANFROST_PERFCNT_ENABLE		0x06
+#define DRM_PANFROST_PERFCNT_DUMP		0x07
+#define DRM_PANFROST_MADVISE			0x08
 
 #define DRM_IOCTL_PANFROST_SUBMIT		DRM_IOW(DRM_COMMAND_BASE + DRM_PANFROST_SUBMIT, struct drm_panfrost_submit)
 #define DRM_IOCTL_PANFROST_WAIT_BO		DRM_IOW(DRM_COMMAND_BASE + DRM_PANFROST_WAIT_BO, struct drm_panfrost_wait_bo)
@@ -25,6 +28,16 @@ extern "C" {
 #define DRM_IOCTL_PANFROST_MMAP_BO		DRM_IOWR(DRM_COMMAND_BASE + DRM_PANFROST_MMAP_BO, struct drm_panfrost_mmap_bo)
 #define DRM_IOCTL_PANFROST_GET_PARAM		DRM_IOWR(DRM_COMMAND_BASE + DRM_PANFROST_GET_PARAM, struct drm_panfrost_get_param)
 #define DRM_IOCTL_PANFROST_GET_BO_OFFSET	DRM_IOWR(DRM_COMMAND_BASE + DRM_PANFROST_GET_BO_OFFSET, struct drm_panfrost_get_bo_offset)
+#define DRM_IOCTL_PANFROST_MADVISE		DRM_IOWR(DRM_COMMAND_BASE + DRM_PANFROST_MADVISE, struct drm_panfrost_madvise)
+
+/*
+ * Unstable ioctl(s): only exposed when the unsafe unstable_ioctls module
+ * param is set to true.
+ * All these ioctl(s) are subject to deprecation, so please don't rely on
+ * them for anything but debugging purpose.
+ */
+#define DRM_IOCTL_PANFROST_PERFCNT_ENABLE	DRM_IOW(DRM_COMMAND_BASE + DRM_PANFROST_PERFCNT_ENABLE, struct drm_panfrost_perfcnt_enable)
+#define DRM_IOCTL_PANFROST_PERFCNT_DUMP		DRM_IOW(DRM_COMMAND_BASE + DRM_PANFROST_PERFCNT_DUMP, struct drm_panfrost_perfcnt_dump)
 
 #define PANFROST_JD_REQ_FS (1 << 0)
 /**
@@ -71,6 +84,9 @@ struct drm_panfrost_wait_bo {
 	__s64 timeout_ns;	/* absolute */
 };
 
+#define PANFROST_BO_NOEXEC	1
+#define PANFROST_BO_HEAP	2
+
 /**
  * struct drm_panfrost_create_bo - ioctl argument for creating Panfrost BOs.
  *
@@ -116,6 +132,45 @@ struct drm_panfrost_mmap_bo {
 
 enum drm_panfrost_param {
 	DRM_PANFROST_PARAM_GPU_PROD_ID,
+	DRM_PANFROST_PARAM_GPU_REVISION,
+	DRM_PANFROST_PARAM_SHADER_PRESENT,
+	DRM_PANFROST_PARAM_TILER_PRESENT,
+	DRM_PANFROST_PARAM_L2_PRESENT,
+	DRM_PANFROST_PARAM_STACK_PRESENT,
+	DRM_PANFROST_PARAM_AS_PRESENT,
+	DRM_PANFROST_PARAM_JS_PRESENT,
+	DRM_PANFROST_PARAM_L2_FEATURES,
+	DRM_PANFROST_PARAM_CORE_FEATURES,
+	DRM_PANFROST_PARAM_TILER_FEATURES,
+	DRM_PANFROST_PARAM_MEM_FEATURES,
+	DRM_PANFROST_PARAM_MMU_FEATURES,
+	DRM_PANFROST_PARAM_THREAD_FEATURES,
+	DRM_PANFROST_PARAM_MAX_THREADS,
+	DRM_PANFROST_PARAM_THREAD_MAX_WORKGROUP_SZ,
+	DRM_PANFROST_PARAM_THREAD_MAX_BARRIER_SZ,
+	DRM_PANFROST_PARAM_COHERENCY_FEATURES,
+	DRM_PANFROST_PARAM_TEXTURE_FEATURES0,
+	DRM_PANFROST_PARAM_TEXTURE_FEATURES1,
+	DRM_PANFROST_PARAM_TEXTURE_FEATURES2,
+	DRM_PANFROST_PARAM_TEXTURE_FEATURES3,
+	DRM_PANFROST_PARAM_JS_FEATURES0,
+	DRM_PANFROST_PARAM_JS_FEATURES1,
+	DRM_PANFROST_PARAM_JS_FEATURES2,
+	DRM_PANFROST_PARAM_JS_FEATURES3,
+	DRM_PANFROST_PARAM_JS_FEATURES4,
+	DRM_PANFROST_PARAM_JS_FEATURES5,
+	DRM_PANFROST_PARAM_JS_FEATURES6,
+	DRM_PANFROST_PARAM_JS_FEATURES7,
+	DRM_PANFROST_PARAM_JS_FEATURES8,
+	DRM_PANFROST_PARAM_JS_FEATURES9,
+	DRM_PANFROST_PARAM_JS_FEATURES10,
+	DRM_PANFROST_PARAM_JS_FEATURES11,
+	DRM_PANFROST_PARAM_JS_FEATURES12,
+	DRM_PANFROST_PARAM_JS_FEATURES13,
+	DRM_PANFROST_PARAM_JS_FEATURES14,
+	DRM_PANFROST_PARAM_JS_FEATURES15,
+	DRM_PANFROST_PARAM_NR_CORE_GROUPS,
+	DRM_PANFROST_PARAM_THREAD_TLS_ALLOC,
 };
 
 struct drm_panfrost_get_param {
@@ -135,6 +190,39 @@ struct drm_panfrost_get_bo_offset {
 	__u64 offset;
 };
 
+struct drm_panfrost_perfcnt_enable {
+	__u32 enable;
+	/*
+	 * On bifrost we have 2 sets of counters, this parameter defines the
+	 * one to track.
+	 */
+	__u32 counterset;
+};
+
+struct drm_panfrost_perfcnt_dump {
+	__u64 buf_ptr;
+};
+
+/* madvise provides a way to tell the kernel in case a buffers contents
+ * can be discarded under memory pressure, which is useful for userspace
+ * bo cache where we want to optimistically hold on to buffer allocate
+ * and potential mmap, but allow the pages to be discarded under memory
+ * pressure.
+ *
+ * Typical usage would involve madvise(DONTNEED) when buffer enters BO
+ * cache, and madvise(WILLNEED) if trying to recycle buffer from BO cache.
+ * In the WILLNEED case, 'retained' indicates to userspace whether the
+ * backing pages still exist.
+ */
+#define PANFROST_MADV_WILLNEED 0	/* backing pages are needed, status returned in 'retained' */
+#define PANFROST_MADV_DONTNEED 1	/* backing pages not needed */
+
+struct drm_panfrost_madvise {
+	__u32 handle;         /* in, GEM handle */
+	__u32 madv;           /* in, PANFROST_MADV_x */
+	__u32 retained;       /* out, whether backing store still exists */
+};
+
 #if defined(__cplusplus)
 }
 #endif
diff --git a/include/drm-uapi/v3d_drm.h b/include/drm-uapi/v3d_drm.h
index ea70669d2138..1ce746e228d9 100644
--- a/include/drm-uapi/v3d_drm.h
+++ b/include/drm-uapi/v3d_drm.h
@@ -37,6 +37,7 @@ extern "C" {
 #define DRM_V3D_GET_PARAM                         0x04
 #define DRM_V3D_GET_BO_OFFSET                     0x05
 #define DRM_V3D_SUBMIT_TFU                        0x06
+#define DRM_V3D_SUBMIT_CSD                        0x07
 
 #define DRM_IOCTL_V3D_SUBMIT_CL           DRM_IOWR(DRM_COMMAND_BASE + DRM_V3D_SUBMIT_CL, struct drm_v3d_submit_cl)
 #define DRM_IOCTL_V3D_WAIT_BO             DRM_IOWR(DRM_COMMAND_BASE + DRM_V3D_WAIT_BO, struct drm_v3d_wait_bo)
@@ -45,6 +46,9 @@ extern "C" {
 #define DRM_IOCTL_V3D_GET_PARAM           DRM_IOWR(DRM_COMMAND_BASE + DRM_V3D_GET_PARAM, struct drm_v3d_get_param)
 #define DRM_IOCTL_V3D_GET_BO_OFFSET       DRM_IOWR(DRM_COMMAND_BASE + DRM_V3D_GET_BO_OFFSET, struct drm_v3d_get_bo_offset)
 #define DRM_IOCTL_V3D_SUBMIT_TFU          DRM_IOW(DRM_COMMAND_BASE + DRM_V3D_SUBMIT_TFU, struct drm_v3d_submit_tfu)
+#define DRM_IOCTL_V3D_SUBMIT_CSD          DRM_IOW(DRM_COMMAND_BASE + DRM_V3D_SUBMIT_CSD, struct drm_v3d_submit_csd)
+
+#define DRM_V3D_SUBMIT_CL_FLUSH_CACHE             0x01
 
 /**
  * struct drm_v3d_submit_cl - ioctl argument for submitting commands to the 3D
@@ -59,7 +63,7 @@ extern "C" {
  * flushed by the time the render done IRQ happens, which is the
  * trigger for out_sync.  Any dirtying of cachelines by the job (only
  * possible using TMU writes) must be flushed by the caller using the
- * CL's cache flush commands.
+ * DRM_V3D_SUBMIT_CL_FLUSH_CACHE_FLAG flag.
  */
 struct drm_v3d_submit_cl {
 	/* Pointer to the binner command list.
@@ -122,8 +126,7 @@ struct drm_v3d_submit_cl {
 	/* Number of BO handles passed in (size is that times 4). */
 	__u32 bo_handle_count;
 
-	/* Pad, must be zero-filled. */
-	__u32 pad;
+	__u32 flags;
 };
 
 /**
@@ -190,6 +193,8 @@ enum drm_v3d_param {
 	DRM_V3D_PARAM_V3D_CORE0_IDENT1,
 	DRM_V3D_PARAM_V3D_CORE0_IDENT2,
 	DRM_V3D_PARAM_SUPPORTS_TFU,
+	DRM_V3D_PARAM_SUPPORTS_CSD,
+	DRM_V3D_PARAM_SUPPORTS_CACHE_FLUSH,
 };
 
 struct drm_v3d_get_param {
@@ -230,6 +235,31 @@ struct drm_v3d_submit_tfu {
 	__u32 out_sync;
 };
 
+/* Submits a compute shader for dispatch.  This job will block on any
+ * previous compute shaders submitted on this fd, and any other
+ * synchronization must be performed with in_sync/out_sync.
+ */
+struct drm_v3d_submit_csd {
+	__u32 cfg[7];
+	__u32 coef[4];
+
+	/* Pointer to a u32 array of the BOs that are referenced by the job.
+	 */
+	__u64 bo_handles;
+
+	/* Number of BO handles passed in (size is that times 4). */
+	__u32 bo_handle_count;
+
+	/* sync object to block on before running the CSD job.  Each
+	 * CSD job will execute in the order submitted to its FD.
+	 * Synchronization against rendering/TFU jobs or CSD from
+	 * other fds requires using sync objects.
+	 */
+	__u32 in_sync;
+	/* Sync object to signal when the CSD job is done. */
+	__u32 out_sync;
+};
+
 #if defined(__cplusplus)
 }
 #endif
diff --git a/include/drm-uapi/vmwgfx_drm.h b/include/drm-uapi/vmwgfx_drm.h
index 399f58317cff..02cab33f2f25 100644
--- a/include/drm-uapi/vmwgfx_drm.h
+++ b/include/drm-uapi/vmwgfx_drm.h
@@ -891,11 +891,13 @@ struct drm_vmw_shader_arg {
  *                                      surface.
  * @drm_vmw_surface_flag_create_buffer: Create a backup buffer if none is
  *                                      given.
+ * @drm_vmw_surface_flag_coherent:      Back surface with coherent memory.
  */
 enum drm_vmw_surface_flags {
 	drm_vmw_surface_flag_shareable = (1 << 0),
 	drm_vmw_surface_flag_scanout = (1 << 1),
-	drm_vmw_surface_flag_create_buffer = (1 << 2)
+	drm_vmw_surface_flag_create_buffer = (1 << 2),
+	drm_vmw_surface_flag_coherent = (1 << 3),
 };
 
 /**
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
