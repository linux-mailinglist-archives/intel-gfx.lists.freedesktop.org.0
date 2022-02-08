Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 217A74AD60E
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 12:18:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEBE410E525;
	Tue,  8 Feb 2022 11:18:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B96D710E525;
 Tue,  8 Feb 2022 11:18:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B50BCA66C9;
 Tue,  8 Feb 2022 11:18:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Tue, 08 Feb 2022 11:18:24 -0000
Message-ID: <164431910470.22535.7210724487502460280@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220208104524.2516209-1-lucas.demarchi@intel.com>
In-Reply-To: <20220208104524.2516209-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/guc=3A_Refactor_ADS_access_to_use_iosys=5Fmap_=28r?=
 =?utf-8?q?ev2=29?=
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

Series: drm/i915/guc: Refactor ADS access to use iosys_map (rev2)
URL   : https://patchwork.freedesktop.org/series/99711/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
80cfc4e5862f iosys-map: Add offset to iosys_map_memcpy_to()
2997557ba29b iosys-map: Add a few more helpers
-:106: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'map_' may be better as '(map_)' to avoid precedence issues
#106: FILE: include/linux/iosys-map.h:157:
+#define IOSYS_MAP_INIT_OFFSET(map_, offset_) ({				\
+	struct iosys_map copy = *map_;					\
+	iosys_map_incr(&copy, offset_);					\
+	copy;								\
+})

-:261: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'struct_offset__' may be better as '(struct_offset__)' to avoid precedence issues
#261: FILE: include/linux/iosys-map.h:433:
+#define iosys_map_rd_field(map__, struct_offset__, struct_type__, field__) ({	\
+	struct_type__ *s;							\
+	iosys_map_rd(map__, struct_offset__ + offsetof(struct_type__, field__),	\
+		     typeof(s->field__));					\
+})

-:261: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'struct_type__' may be better as '(struct_type__)' to avoid precedence issues
#261: FILE: include/linux/iosys-map.h:433:
+#define iosys_map_rd_field(map__, struct_offset__, struct_type__, field__) ({	\
+	struct_type__ *s;							\
+	iosys_map_rd(map__, struct_offset__ + offsetof(struct_type__, field__),	\
+		     typeof(s->field__));					\
+})

-:261: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'field__' - possible side-effects?
#261: FILE: include/linux/iosys-map.h:433:
+#define iosys_map_rd_field(map__, struct_offset__, struct_type__, field__) ({	\
+	struct_type__ *s;							\
+	iosys_map_rd(map__, struct_offset__ + offsetof(struct_type__, field__),	\
+		     typeof(s->field__));					\
+})

-:282: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'struct_offset__' may be better as '(struct_offset__)' to avoid precedence issues
#282: FILE: include/linux/iosys-map.h:454:
+#define iosys_map_wr_field(map__, struct_offset__, struct_type__, field__, val__) ({	\
+	struct_type__ *s;								\
+	iosys_map_wr(map__, struct_offset__ + offsetof(struct_type__, field__),		\
+		     typeof(s->field__), val__);					\
+})

-:282: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'struct_type__' may be better as '(struct_type__)' to avoid precedence issues
#282: FILE: include/linux/iosys-map.h:454:
+#define iosys_map_wr_field(map__, struct_offset__, struct_type__, field__, val__) ({	\
+	struct_type__ *s;								\
+	iosys_map_wr(map__, struct_offset__ + offsetof(struct_type__, field__),		\
+		     typeof(s->field__), val__);					\
+})

-:282: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'field__' - possible side-effects?
#282: FILE: include/linux/iosys-map.h:454:
+#define iosys_map_wr_field(map__, struct_offset__, struct_type__, field__, val__) ({	\
+	struct_type__ *s;								\
+	iosys_map_wr(map__, struct_offset__ + offsetof(struct_type__, field__),		\
+		     typeof(s->field__), val__);					\
+})

total: 0 errors, 0 warnings, 7 checks, 224 lines checked
342e2b55298e drm/i915/gt: Add helper for shmem copy to iosys_map
75652221ece7 drm/i915/guc: Keep iosys_map of ads_blob around
e909c8680cf3 drm/i915/guc: Add read/write helpers for ADS blob
3f919b8d697b drm/i915/guc: Convert golden context init to iosys_map
dab9247a24d0 drm/i915/guc: Convert policies update to iosys_map
46fcb66d43f0 drm/i915/guc: Convert engine record to iosys_map
2edec322d581 drm/i915/guc: Convert guc_ads_private_data_reset to iosys_map
550662116c5a drm/i915/guc: Convert golden context prep to iosys_map
ceddc2cf4b84 drm/i915/guc: Replace check for golden context size
658eb1647538 drm/i915/guc: Convert mapping table to iosys_map
91176455914b drm/i915/guc: Convert capture list to iosys_map
4c99355845f0 drm/i915/guc: Prepare for error propagation
a65c1205676e drm/i915/guc: Use a single pass to calculate regset
67c37ac3868b drm/i915/guc: Convert guc_mmio_reg_state_init to iosys_map
ff9c86ae5eea drm/i915/guc: Convert __guc_ads_init to iosys_map
-:42: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#42: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:623:
+	ads_blob_write(guc, system_info.generic_gt_sysinfo[GUC_GENERIC_GT_SYSINFO_VDBOX_SFC_SUPPORT_MASK],

-:52: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#52: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:630:
+			       system_info.generic_gt_sysinfo[GUC_GENERIC_GT_SYSINFO_DOORBELL_COUNT_PER_SQIDI],

total: 0 errors, 2 warnings, 0 checks, 52 lines checked
692f09e09c1c drm/i915/guc: Remove plain ads_blob pointer


