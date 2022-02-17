Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 291BF4B99CD
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 08:24:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 701BB10E157;
	Thu, 17 Feb 2022 07:24:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3FFF510E157;
 Thu, 17 Feb 2022 07:24:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3E29CA008A;
 Thu, 17 Feb 2022 07:24:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 17 Feb 2022 07:24:47 -0000
Message-ID: <164508268723.18053.9393079387989526293@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220216174147.3073235-1-lucas.demarchi@intel.com>
In-Reply-To: <20220216174147.3073235-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/guc=3A_Refactor_ADS_access_to_use_iosys=5Fmap_=28r?=
 =?utf-8?q?ev3=29?=
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

Series: drm/i915/guc: Refactor ADS access to use iosys_map (rev3)
URL   : https://patchwork.freedesktop.org/series/99711/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3c4f364a17be iosys-map: Add offset to iosys_map_memcpy_to()
7ab81996b485 iosys-map: Add a few more helpers
-:102: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'map_' may be better as '(map_)' to avoid precedence issues
#102: FILE: include/linux/iosys-map.h:156:
+#define IOSYS_MAP_INIT_OFFSET(map_, offset_) ({				\
+	struct iosys_map copy = *map_;					\
+	iosys_map_incr(&copy, offset_);					\
+	copy;								\
+})

-:257: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'struct_offset__' may be better as '(struct_offset__)' to avoid precedence issues
#257: FILE: include/linux/iosys-map.h:432:
+#define iosys_map_rd_field(map__, struct_offset__, struct_type__, field__) ({	\
+	struct_type__ *s;							\
+	iosys_map_rd(map__, struct_offset__ + offsetof(struct_type__, field__),	\
+		     typeof(s->field__));					\
+})

-:257: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'struct_type__' may be better as '(struct_type__)' to avoid precedence issues
#257: FILE: include/linux/iosys-map.h:432:
+#define iosys_map_rd_field(map__, struct_offset__, struct_type__, field__) ({	\
+	struct_type__ *s;							\
+	iosys_map_rd(map__, struct_offset__ + offsetof(struct_type__, field__),	\
+		     typeof(s->field__));					\
+})

-:257: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'field__' - possible side-effects?
#257: FILE: include/linux/iosys-map.h:432:
+#define iosys_map_rd_field(map__, struct_offset__, struct_type__, field__) ({	\
+	struct_type__ *s;							\
+	iosys_map_rd(map__, struct_offset__ + offsetof(struct_type__, field__),	\
+		     typeof(s->field__));					\
+})

-:278: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'struct_offset__' may be better as '(struct_offset__)' to avoid precedence issues
#278: FILE: include/linux/iosys-map.h:453:
+#define iosys_map_wr_field(map__, struct_offset__, struct_type__, field__, val__) ({	\
+	struct_type__ *s;								\
+	iosys_map_wr(map__, struct_offset__ + offsetof(struct_type__, field__),		\
+		     typeof(s->field__), val__);					\
+})

-:278: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'struct_type__' may be better as '(struct_type__)' to avoid precedence issues
#278: FILE: include/linux/iosys-map.h:453:
+#define iosys_map_wr_field(map__, struct_offset__, struct_type__, field__, val__) ({	\
+	struct_type__ *s;								\
+	iosys_map_wr(map__, struct_offset__ + offsetof(struct_type__, field__),		\
+		     typeof(s->field__), val__);					\
+})

-:278: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'field__' - possible side-effects?
#278: FILE: include/linux/iosys-map.h:453:
+#define iosys_map_wr_field(map__, struct_offset__, struct_type__, field__, val__) ({	\
+	struct_type__ *s;								\
+	iosys_map_wr(map__, struct_offset__ + offsetof(struct_type__, field__),		\
+		     typeof(s->field__), val__);					\
+})

total: 0 errors, 0 warnings, 7 checks, 217 lines checked
b26af08d993c drm/i915/gt: Add helper for shmem copy to iosys_map
7a7bd9870c5e drm/i915/guc: Keep iosys_map of ads_blob around
955dd8aab6d5 drm/i915/guc: Add read/write helpers for ADS blob
d69fd819ad0b drm/i915/guc: Convert golden context init to iosys_map
23e5eaa48251 drm/i915/guc: Convert policies update to iosys_map
af050820f83c drm/i915/guc: Convert engine record to iosys_map
0481cbf77890 drm/i915/guc: Convert guc_ads_private_data_reset to iosys_map
3115fab4b911 drm/i915/guc: Convert golden context prep to iosys_map
70f013d0a2ad drm/i915/guc: Replace check for golden context size
c4b18c55e3d1 drm/i915/guc: Convert mapping table to iosys_map
f5682a7a730d drm/i915/guc: Convert capture list to iosys_map
79242ec38bba drm/i915/guc: Convert guc_mmio_reg_state_init to iosys_map
aa46f3f7041b drm/i915/guc: Convert __guc_ads_init to iosys_map
-:42: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#42: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:623:
+	ads_blob_write(guc, system_info.generic_gt_sysinfo[GUC_GENERIC_GT_SYSINFO_VDBOX_SFC_SUPPORT_MASK],

-:52: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#52: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:630:
+			       system_info.generic_gt_sysinfo[GUC_GENERIC_GT_SYSINFO_DOORBELL_COUNT_PER_SQIDI],

total: 0 errors, 2 warnings, 0 checks, 52 lines checked
14d3c077b299 drm/i915/guc: Remove plain ads_blob pointer


