Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C36C949D617
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 00:17:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E81F10ECDF;
	Wed, 26 Jan 2022 23:17:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 19A0E10ECDE;
 Wed, 26 Jan 2022 23:17:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 16513AAA91;
 Wed, 26 Jan 2022 23:17:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Wed, 26 Jan 2022 23:17:20 -0000
Message-ID: <164323904006.25401.5136800217992084316@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220126203702.1784589-1-lucas.demarchi@intel.com>
In-Reply-To: <20220126203702.1784589-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/guc=3A_Refactor_ADS_access_to_use_dma=5Fbuf=5Fmap?=
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

Series: drm/i915/guc: Refactor ADS access to use dma_buf_map
URL   : https://patchwork.freedesktop.org/series/99378/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
65454816ee9c dma-buf-map: Add read/write helpers
-:105: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'type__' may be better as '(type__)' to avoid precedence issues
#105: FILE: include/linux/dma-buf-map.h:319:
+#define dma_buf_map_read_field(map__, type__, field__) ({				\
+	type__ *t__;									\
+	typeof(t__->field__) val__;							\
+	dma_buf_map_memcpy_from_offset(&val__, map__, offsetof(type__, field__),	\
+				       sizeof(t__->field__));				\
+	val__;										\
+})

-:105: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'field__' - possible side-effects?
#105: FILE: include/linux/dma-buf-map.h:319:
+#define dma_buf_map_read_field(map__, type__, field__) ({				\
+	type__ *t__;									\
+	typeof(t__->field__) val__;							\
+	dma_buf_map_memcpy_from_offset(&val__, map__, offsetof(type__, field__),	\
+				       sizeof(t__->field__));				\
+	val__;										\
+})

-:105: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'field__' may be better as '(field__)' to avoid precedence issues
#105: FILE: include/linux/dma-buf-map.h:319:
+#define dma_buf_map_read_field(map__, type__, field__) ({				\
+	type__ *t__;									\
+	typeof(t__->field__) val__;							\
+	dma_buf_map_memcpy_from_offset(&val__, map__, offsetof(type__, field__),	\
+				       sizeof(t__->field__));				\
+	val__;										\
+})

-:126: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'type__' may be better as '(type__)' to avoid precedence issues
#126: FILE: include/linux/dma-buf-map.h:340:
+#define dma_buf_map_write_field(map__, type__, field__, val__) ({			\
+	type__ *t__;									\
+	typeof(t__->field__) val____ = val__;						\
+	dma_buf_map_memcpy_to_offset(map__, offsetof(type__, field__),			\
+				     &val____, sizeof(t__->field__));			\
+})

-:126: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'field__' - possible side-effects?
#126: FILE: include/linux/dma-buf-map.h:340:
+#define dma_buf_map_write_field(map__, type__, field__, val__) ({			\
+	type__ *t__;									\
+	typeof(t__->field__) val____ = val__;						\
+	dma_buf_map_memcpy_to_offset(map__, offsetof(type__, field__),			\
+				     &val____, sizeof(t__->field__));			\
+})

-:126: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'field__' may be better as '(field__)' to avoid precedence issues
#126: FILE: include/linux/dma-buf-map.h:340:
+#define dma_buf_map_write_field(map__, type__, field__, val__) ({			\
+	type__ *t__;									\
+	typeof(t__->field__) val____ = val__;						\
+	dma_buf_map_memcpy_to_offset(map__, offsetof(type__, field__),			\
+				     &val____, sizeof(t__->field__));			\
+})

total: 0 errors, 0 warnings, 6 checks, 97 lines checked
3e1d98022b1e dma-buf-map: Add helper to initialize second map
-:55: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#55: FILE: include/linux/dma-buf-map.h:157:
+#define DMA_BUF_MAP_INIT_OFFSET(map_, offset_)	(struct dma_buf_map)	\
+	{								\
+		.vaddr = (map_)->vaddr + (offset_),			\
+		.is_iomem = (map_)->is_iomem,				\
+	}

-:55: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'map_' - possible side-effects?
#55: FILE: include/linux/dma-buf-map.h:157:
+#define DMA_BUF_MAP_INIT_OFFSET(map_, offset_)	(struct dma_buf_map)	\
+	{								\
+		.vaddr = (map_)->vaddr + (offset_),			\
+		.is_iomem = (map_)->is_iomem,				\
+	}

total: 1 errors, 0 warnings, 1 checks, 35 lines checked
2d41494bd5b1 drm/i915/gt: Add helper for shmem copy to dma_buf_map
99e46a0dde3e drm/i915/guc: Keep dma_buf_map of ads_blob around
85b2d92083f4 drm/i915/guc: Add read/write helpers for ADS blob
7be0be3302b4 drm/i915/guc: Convert golden context init to dma_buf_map
f6c5dcbe95f6 drm/i915/guc: Convert policies update to dma_buf_map
5100676b5102 drm/i915/guc: Convert engine record to dma_buf_map
2231431579a3 dma-buf-map: Add wrapper over memset
a69351212152 drm/i915/guc: Convert guc_ads_private_data_reset to dma_buf_map
04d2c4cf7a69 drm/i915/guc: Convert golden context prep to dma_buf_map
824e76096416 drm/i915/guc: Replace check for golden context size
1df5683fe05f drm/i915/guc: Convert mapping table to dma_buf_map
1f7b57620e07 drm/i915/guc: Convert capture list to dma_buf_map
a3cbf5b2fd0b drm/i915/guc: Prepare for error propagation
f6a9b1574461 drm/i915/guc: Use a single pass to calculate regset
dbd1faca50e7 drm/i915/guc: Convert guc_mmio_reg_state_init to dma_buf_map
5e92c399bbf6 drm/i915/guc: Convert __guc_ads_init to dma_buf_map
-:42: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#42: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:617:
+	ads_blob_write(guc, system_info.generic_gt_sysinfo[GUC_GENERIC_GT_SYSINFO_VDBOX_SFC_SUPPORT_MASK],

-:52: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#52: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:624:
+			       system_info.generic_gt_sysinfo[GUC_GENERIC_GT_SYSINFO_DOORBELL_COUNT_PER_SQIDI],

total: 0 errors, 2 warnings, 0 checks, 52 lines checked
2788e054f9ce drm/i915/guc: Remove plain ads_blob pointer


