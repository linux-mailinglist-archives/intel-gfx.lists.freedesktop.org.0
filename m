Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5647E464A53
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 10:04:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EAD26EA4C;
	Wed,  1 Dec 2021 09:04:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5C046EA4C
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 09:04:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="217112500"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="217112500"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 01:04:33 -0800
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="540749184"
Received: from pwedlarx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.26.43])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 01:04:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, Mullati Siva
 <siva.mullati@intel.com>
In-Reply-To: <20211130191728.hiyeuvchddhly3qx@ldmartin-desk2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211122123142.319367-1-siva.mullati@intel.com>
 <20211130191728.hiyeuvchddhly3qx@ldmartin-desk2>
Date: Wed, 01 Dec 2021 11:04:27 +0200
Message-ID: <87h7bsitlw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Skip remap_io_mapping() for
 non-x86 platforms
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
Cc: intel-gfx@lists.freedesktop.org, matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 30 Nov 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Mon, Nov 22, 2021 at 06:01:42PM +0530, Mullati Siva wrote:
>>From: Siva Mullati <siva.mullati@intel.com>
>>
>>Only hw that supports mappable aperture would hit this path
>>vm_fault_gtt/vm_fault_tmm, So we never hit this function
>>remap_io_mapping() in discrete, So skip this code for non-x86
>>architectures.
>>
>>Signed-off-by: Siva Mullati <siva.mullati@intel.com>
>>---
>> drivers/gpu/drm/i915/gem/i915_gem_mman.c |  1 +
>> drivers/gpu/drm/i915/i915_drv.h          |  8 ------
>> drivers/gpu/drm/i915/i915_mm.c           |  1 +
>> drivers/gpu/drm/i915/i915_mm.h           | 32 ++++++++++++++++++++++++
>> 4 files changed, 34 insertions(+), 8 deletions(-)
>> create mode 100644 drivers/gpu/drm/i915/i915_mm.h
>>
>>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i=
915/gem/i915_gem_mman.c
>>index 65fc6ff5f59d..39bb15eafc07 100644
>>--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>>+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>>@@ -17,6 +17,7 @@
>> #include "i915_gem_ioctls.h"
>> #include "i915_gem_object.h"
>> #include "i915_gem_mman.h"
>>+#include "i915_mm.h"
>> #include "i915_trace.h"
>> #include "i915_user_extensions.h"
>> #include "i915_gem_ttm.h"
>>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
>>index 1bfadd9127fc..7ae0f0cc6866 100644
>>--- a/drivers/gpu/drm/i915/i915_drv.h
>>+++ b/drivers/gpu/drm/i915/i915_drv.h
>>@@ -1967,14 +1967,6 @@ mkwrite_device_info(struct drm_i915_private *dev_p=
riv)
>> int i915_reg_read_ioctl(struct drm_device *dev, void *data,
>> 			struct drm_file *file);
>>
>>-/* i915_mm.c */
>>-int remap_io_mapping(struct vm_area_struct *vma,
>>-		     unsigned long addr, unsigned long pfn, unsigned long size,
>>-		     struct io_mapping *iomap);
>>-int remap_io_sg(struct vm_area_struct *vma,
>>-		unsigned long addr, unsigned long size,
>>-		struct scatterlist *sgl, resource_size_t iobase);
>>-
>> static inline int intel_hws_csb_write_index(struct drm_i915_private *i91=
5)
>> {
>> 	if (GRAPHICS_VER(i915) >=3D 11)
>>diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_m=
m.c
>>index 666808cb3a32..f4df15fe7cf8 100644
>>--- a/drivers/gpu/drm/i915/i915_mm.c
>>+++ b/drivers/gpu/drm/i915/i915_mm.c
>>@@ -27,6 +27,7 @@
>>
>>
>> #include "i915_drv.h"
>>+#include "i915_mm.h"
>>
>> struct remap_pfn {
>> 	struct mm_struct *mm;
>>diff --git a/drivers/gpu/drm/i915/i915_mm.h b/drivers/gpu/drm/i915/i915_m=
m.h
>>new file mode 100644
>>index 000000000000..1d3bbb9cbf43
>>--- /dev/null
>>+++ b/drivers/gpu/drm/i915/i915_mm.h
>>@@ -0,0 +1,32 @@
>>+/* SPDX-License-Identifier: MIT */
>>+/*
>>+ * Copyright =C2=A9 2021 Intel Corporation
>>+ */
>>+
>>+#ifndef __I915_MM_H__
>>+#define __I915_MM_H__
>>+
>>+#include <linux/types.h>
>>+
>>+struct vm_area_struct;
>>+struct io_mapping;
>>+struct scatterlist;
>>+
>>+#if IS_ENABLED(CONFIG_X86)
>>+int remap_io_mapping(struct vm_area_struct *vma,
>>+		unsigned long addr, unsigned long pfn, unsigned long size,
>>+		struct io_mapping *iomap);
>>+#else
>>+static inline int remap_io_mapping(struct vm_area_struct *vma,
>>+		unsigned long addr, unsigned long pfn, unsigned long size,
>>+		struct io_mapping *iomap)
>>+{
>
> would probably be good to add:
>
> 	pr_err("Architecture has no remap_io_mapping() and shouldn't be calling =
this function\n");
> 	WARN_ON_ONCE(1);
>
> the same way that is done in drivers/gpu/drm/drm_cache.c
>
> Other than that:
>
>
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
>
> Since you're adding this header, can you follow up with one additional
> patch to move the rest of the prototypes off i915_drv.h and into this
> new header?

There's only the two functions?

BR,
Jani.


>
>
> thanks
> Lucas De Marchi
>
>
>>+	return 0;
>>+}
>>+#endif
>>+
>>+int remap_io_sg(struct vm_area_struct *vma,
>>+		unsigned long addr, unsigned long size,
>>+		struct scatterlist *sgl, resource_size_t iobase);
>>+
>>+#endif /* __I915_MM_H__ */
>>--=20
>>2.33.0
>>

--=20
Jani Nikula, Intel Open Source Graphics Center
