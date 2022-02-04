Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D83CF4A9F4E
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Feb 2022 19:38:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB94010E806;
	Fri,  4 Feb 2022 18:38:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id ED00610E623;
 Fri,  4 Feb 2022 18:38:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E9F5DAADD1;
 Fri,  4 Feb 2022 18:38:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Fri, 04 Feb 2022 18:38:43 -0000
Message-ID: <164399992395.12041.18354495405145426445@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220204174436.830121-1-lucas.demarchi@intel.com>
In-Reply-To: <20220204174436.830121-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/guc=3A_Refactor_ADS_access_to_use_iosys=5Fmap?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/guc: Refactor ADS access to use iosys_map
URL   : https://patchwork.freedesktop.org/series/99711/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
28297417eba4 dma-buf-map: Rename to iosys-map
-:237: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#237: FILE: drivers/dma-buf/dma-buf.c:1279:
+		BUG_ON(iosys_map_is_null(&dmabuf->vmap_ptr));

-:243: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#243: FILE: drivers/dma-buf/dma-buf.c:1284:
+	BUG_ON(iosys_map_is_set(&dmabuf->vmap_ptr));

-:258: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#258: FILE: drivers/dma-buf/dma-buf.c:1311:
+	BUG_ON(iosys_map_is_null(&dmabuf->vmap_ptr));

-:261: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#261: FILE: drivers/dma-buf/dma-buf.c:1313:
+	BUG_ON(!iosys_map_is_equal(&dmabuf->vmap_ptr, map));

-:1625: WARNING:OBSOLETE: drivers/gpu/drm/tiny/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:1628: WARNING:OBSOLETE: drivers/gpu/drm/tiny/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:2598: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#2598: 
deleted file mode 100644

total: 0 errors, 7 warnings, 0 checks, 2303 lines checked
fa8fc0cacc71 iosys-map: Add offset to iosys_map_memcpy_to()
c756a6ec41f7 iosys-map: Add a few more helpers
-:97: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#97: FILE: include/linux/iosys-map.h:170:
+#define IOSYS_MAP_INIT_OFFSET(map_, offset_)	(struct iosys_map)	\
+	{								\
+		.vaddr = (map_)->vaddr + (offset_),			\
+		.is_iomem = (map_)->is_iomem,				\
+	}

-:97: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'map_' - possible side-effects?
#97: FILE: include/linux/iosys-map.h:170:
+#define IOSYS_MAP_INIT_OFFSET(map_, offset_)	(struct iosys_map)	\
+	{								\
+		.vaddr = (map_)->vaddr + (offset_),			\
+		.is_iomem = (map_)->is_iomem,				\
+	}

-:214: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'struct_type__' may be better as '(struct_type__)' to avoid precedence issues
#214: FILE: include/linux/iosys-map.h:386:
+#define iosys_map_rd_field(map__, struct_type__, field__) ({			\
+	struct_type__ *s;							\
+	iosys_map_rd(map__, offsetof(struct_type__, field__),			\
+		     typeof(s->field__));					\
+})

-:214: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'field__' - possible side-effects?
#214: FILE: include/linux/iosys-map.h:386:
+#define iosys_map_rd_field(map__, struct_type__, field__) ({			\
+	struct_type__ *s;							\
+	iosys_map_rd(map__, offsetof(struct_type__, field__),			\
+		     typeof(s->field__));					\
+})

-:232: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'struct_type__' may be better as '(struct_type__)' to avoid precedence issues
#232: FILE: include/linux/iosys-map.h:404:
+#define iosys_map_wr_field(map__, struct_type__, field__, val__) ({		\
+	struct_type__ *s;							\
+	iosys_map_wr(map__, offsetof(struct_type__, field__),			\
+		     typeof(s->field__), val__);				\
+})

-:232: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'field__' - possible side-effects?
#232: FILE: include/linux/iosys-map.h:404:
+#define iosys_map_wr_field(map__, struct_type__, field__, val__) ({		\
+	struct_type__ *s;							\
+	iosys_map_wr(map__, offsetof(struct_type__, field__),			\
+		     typeof(s->field__), val__);				\
+})

total: 1 errors, 0 warnings, 5 checks, 182 lines checked
013c71e03eef drm/i915/gt: Add helper for shmem copy to iosys_map
f0e0c6063903 drm/i915/guc: Keep iosys_map of ads_blob around
236fa8217a5b drm/i915/guc: Add read/write helpers for ADS blob
556507f9816d drm/i915/guc: Convert golden context init to iosys_map
0035e0d1e60a drm/i915/guc: Convert policies update to iosys_map
e05cdb2d1777 drm/i915/guc: Convert engine record to iosys_map
4cb7807205d5 drm/i915/guc: Convert guc_ads_private_data_reset to iosys_map
0e6432cf1683 drm/i915/guc: Convert golden context prep to iosys_map
e7e5c9a3da79 drm/i915/guc: Replace check for golden context size
449412edbe79 drm/i915/guc: Convert mapping table to iosys_map
faa609546fd7 drm/i915/guc: Convert capture list to iosys_map
5f42c3ebfe6d drm/i915/guc: Prepare for error propagation
70c1a70afe2d drm/i915/guc: Use a single pass to calculate regset
72dc7ff2aa14 drm/i915/guc: Convert guc_mmio_reg_state_init to iosys_map
92dd130ad23d drm/i915/guc: Convert __guc_ads_init to iosys_map
-:42: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#42: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:628:
+	ads_blob_write(guc, system_info.generic_gt_sysinfo[GUC_GENERIC_GT_SYSINFO_VDBOX_SFC_SUPPORT_MASK],

-:52: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#52: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:635:
+			       system_info.generic_gt_sysinfo[GUC_GENERIC_GT_SYSINFO_DOORBELL_COUNT_PER_SQIDI],

total: 0 errors, 2 warnings, 0 checks, 52 lines checked
94fca54f2c7f drm/i915/guc: Remove plain ads_blob pointer


