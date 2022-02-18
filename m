Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FDB64BC066
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 20:44:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B23D10E89C;
	Fri, 18 Feb 2022 19:44:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3B46A10E8C8;
 Fri, 18 Feb 2022 19:44:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3849DAADD9;
 Fri, 18 Feb 2022 19:44:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Fri, 18 Feb 2022 19:44:25 -0000
Message-ID: <164521346522.25451.7324891089085301611@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220216174147.3073235-1-lucas.demarchi@intel.com>
In-Reply-To: <20220216174147.3073235-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/guc=3A_Refactor_ADS_access_to_use_iosys=5Fmap_=28r?=
 =?utf-8?q?ev4=29?=
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

Series: drm/i915/guc: Refactor ADS access to use iosys_map (rev4)
URL   : https://patchwork.freedesktop.org/series/99711/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
554203971464 iosys-map: Add offset to iosys_map_memcpy_to()
5a68a5465b0a iosys-map: Add a few more helpers
-:103: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'map_' may be better as '(map_)' to avoid precedence issues
#103: FILE: include/linux/iosys-map.h:156:
+#define IOSYS_MAP_INIT_OFFSET(map_, offset_) ({				\
+	struct iosys_map copy = *map_;					\
+	iosys_map_incr(&copy, offset_);					\
+	copy;								\
+})

-:258: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'struct_offset__' may be better as '(struct_offset__)' to avoid precedence issues
#258: FILE: include/linux/iosys-map.h:432:
+#define iosys_map_rd_field(map__, struct_offset__, struct_type__, field__) ({	\
+	struct_type__ *s;							\
+	iosys_map_rd(map__, struct_offset__ + offsetof(struct_type__, field__),	\
+		     typeof(s->field__));					\
+})

-:258: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'struct_type__' may be better as '(struct_type__)' to avoid precedence issues
#258: FILE: include/linux/iosys-map.h:432:
+#define iosys_map_rd_field(map__, struct_offset__, struct_type__, field__) ({	\
+	struct_type__ *s;							\
+	iosys_map_rd(map__, struct_offset__ + offsetof(struct_type__, field__),	\
+		     typeof(s->field__));					\
+})

-:258: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'field__' - possible side-effects?
#258: FILE: include/linux/iosys-map.h:432:
+#define iosys_map_rd_field(map__, struct_offset__, struct_type__, field__) ({	\
+	struct_type__ *s;							\
+	iosys_map_rd(map__, struct_offset__ + offsetof(struct_type__, field__),	\
+		     typeof(s->field__));					\
+})

-:279: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'struct_offset__' may be better as '(struct_offset__)' to avoid precedence issues
#279: FILE: include/linux/iosys-map.h:453:
+#define iosys_map_wr_field(map__, struct_offset__, struct_type__, field__, val__) ({	\
+	struct_type__ *s;								\
+	iosys_map_wr(map__, struct_offset__ + offsetof(struct_type__, field__),		\
+		     typeof(s->field__), val__);					\
+})

-:279: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'struct_type__' may be better as '(struct_type__)' to avoid precedence issues
#279: FILE: include/linux/iosys-map.h:453:
+#define iosys_map_wr_field(map__, struct_offset__, struct_type__, field__, val__) ({	\
+	struct_type__ *s;								\
+	iosys_map_wr(map__, struct_offset__ + offsetof(struct_type__, field__),		\
+		     typeof(s->field__), val__);					\
+})

-:279: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'field__' - possible side-effects?
#279: FILE: include/linux/iosys-map.h:453:
+#define iosys_map_wr_field(map__, struct_offset__, struct_type__, field__, val__) ({	\
+	struct_type__ *s;								\
+	iosys_map_wr(map__, struct_offset__ + offsetof(struct_type__, field__),		\
+		     typeof(s->field__), val__);					\
+})

total: 0 errors, 0 warnings, 7 checks, 217 lines checked
5aed3fa10ede drm/i915/gt: Add helper for shmem copy to iosys_map
f7aaba839570 drm/i915/guc: Keep iosys_map of ads_blob around
4156cb519230 drm/i915/guc: Add read/write helpers for ADS blob
e71bbda4bf0f drm/i915/guc: Convert golden context init to iosys_map
49375cce81e4 drm/i915/guc: Convert policies update to iosys_map
234c1edc8ec8 drm/i915/guc: Convert engine record to iosys_map
13c3dafcbb9c drm/i915/guc: Convert guc_ads_private_data_reset to iosys_map
e2af5d8aae81 drm/i915/guc: Convert golden context prep to iosys_map
0a9faaccb3d3 drm/i915/guc: Replace check for golden context size
6518310edc43 drm/i915/guc: Convert mapping table to iosys_map
cd0f41c2e8ba drm/i915/guc: Convert capture list to iosys_map
dea23b4eadd0 drm/i915/guc: Convert guc_mmio_reg_state_init to iosys_map
62befe7c758b drm/i915/guc: Convert __guc_ads_init to iosys_map
-:42: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#42: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:623:
+	ads_blob_write(guc, system_info.generic_gt_sysinfo[GUC_GENERIC_GT_SYSINFO_VDBOX_SFC_SUPPORT_MASK],

-:52: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#52: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:630:
+			       system_info.generic_gt_sysinfo[GUC_GENERIC_GT_SYSINFO_DOORBELL_COUNT_PER_SQIDI],

total: 0 errors, 2 warnings, 0 checks, 52 lines checked
107e7bba4a41 drm/i915/guc: Remove plain ads_blob pointer


