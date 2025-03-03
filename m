Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B1CA4BFC9
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Mar 2025 13:05:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A840010E3DC;
	Mon,  3 Mar 2025 12:05:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GWJ8M3D+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B68FE10E289;
 Mon,  3 Mar 2025 12:05:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741003531; x=1772539531;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=35Msi+omAXxutTbx4YTV6kinyUtC10Wsp16v1NM3pFk=;
 b=GWJ8M3D+pYAZV/s748/8wq6tZxsURtbXBrjGs6M3o8mM4IHmSk/Bryot
 WuVjFG8StQGRfCwtrIUJ+qJ9vDExp6/msBeattvwMVpzvSUNHlPqP+rWW
 pVf/3cLGMeOI/D5HsuSt0WOjfxbgnak3cdyJt9rDVKKgJquFzO2KiQETd
 b/nOUuTAZWbK47k/oNcqu8aVA0Sr5tHAQPPnv5kZgNxkpoUFpWJjAiY4k
 Zbf2FdmoPtGk2U8JraAiU9vSzdds/XdEWtYyfGisP/J1jyy686GGpq/5y
 oPwbHbP562HtU95o6wuHeByXfClORsDVjcie8PrAfGCRY/EAhhRccdjAf Q==;
X-CSE-ConnectionGUID: /cwQo6BwSZqmNa1V3Wqbcg==
X-CSE-MsgGUID: mJTSMDOXTDOtnSl/7wwriQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="52513952"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="52513952"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 04:05:30 -0800
X-CSE-ConnectionGUID: UDXwtasDTrqwoPXvLNnSlg==
X-CSE-MsgGUID: OcKxVXRcQumSCH/TSVeiug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="118688021"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.144])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 04:05:28 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 2/2] drm/i915: split out i915_gtt_view_types.h from
 i915_vma_types.h
In-Reply-To: <e9197d7adcb3ada93c6e76c31dc402c9e8cfba1e.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1740412806.git.jani.nikula@intel.com>
 <bb31885c32dbddad76d634c6fdb98a73b546b42e.1740412806.git.jani.nikula@intel.com>
 <e9197d7adcb3ada93c6e76c31dc402c9e8cfba1e.camel@intel.com>
Date: Mon, 03 Mar 2025 14:05:25 +0200
Message-ID: <878qpm1fqy.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Fri, 28 Feb 2025, "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@=
intel.com> wrote:
> One opinion - consider it a nit, but maybe since all of the content of th=
is new
> header display specific, maybe instead of "i915_ggtt_view_types", why not=
 "i915_plane_gtt_types"
> (or i915_display_gtt_types), if u plan to also expand to things across pl=
ane<->pipe

Thanks for the comment. I decided to go with the name in the patch, as
it just literally describes what's in the header. I'm not even sure this
is the final iteration of what it's eventually going to be, but rather a
small step towards separating i915 core and display, and reducing the
includes across the boundary. So I don't think it's massively important
to nitpick this name (while I am known to be careful about naming in
general ;).

Thanks Rodrigo for the review, series pushed to din.

BR,
Jani.


>
>
> ...alan
>
> On Mon, 2025-02-24 at 18:00 +0200, Jani Nikula wrote:
>> In the interest of limiting the display dependencies on i915 core
>> headers, split out i915_gtt_view_types.h from i915_vma_types.h, and only
>> include the new header from intel_display_types.h.
>>
>> Reuse the new header from xe compat code too, failing build if partial
>> view is used in display code.
>>
>> Side note: Why would we ever have set enum i915_gtt_view_type values to
>> size of each type?! What an insane hack.
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  .../drm/i915/display/intel_display_types.h    |  2 +-
>>  drivers/gpu/drm/i915/i915_gtt_view_types.h    | 59 +++++++++++++++
>>  drivers/gpu/drm/i915/i915_vma_types.h         | 52 +------------
>>  .../compat-i915-headers/i915_gtt_view_types.h |  7 ++
>>  .../xe/compat-i915-headers/i915_vma_types.h   | 74 -------------------
>>  5 files changed, 69 insertions(+), 125 deletions(-)
>>  create mode 100644 drivers/gpu/drm/i915/i915_gtt_view_types.h
>>  create mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_gtt_view=
_types.h
>>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_vma_type=
s.h
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/driver=
s/gpu/drm/i915/display/intel_display_types.h
>> index 12723ba13eb6..a856cbcf102f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -42,7 +42,7 @@
>>  #include <drm/intel/i915_hdcp_interface.h>
>>  #include <uapi/drm/i915_drm.h>
>>
>> -#include "i915_vma_types.h"
>> +#include "i915_gtt_view_types.h"
>>  #include "intel_bios.h"
>>  #include "intel_display.h"
>>  #include "intel_display_conversion.h"
>> diff --git a/drivers/gpu/drm/i915/i915_gtt_view_types.h b/drivers/gpu/dr=
m/i915/i915_gtt_view_types.h
>> new file mode 100644
>> index 000000000000..c084f67bc880
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/i915_gtt_view_types.h
>> @@ -0,0 +1,59 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/* Copyright =C2=A9 2025 Intel Corporation */
>> +
>> +#ifndef __I915_GTT_VIEW_TYPES_H__
>> +#define __I915_GTT_VIEW_TYPES_H__
>> +
>> +#include <linux/types.h>
>> +
>> +struct intel_remapped_plane_info {
>> +       /* in gtt pages */
>> +       u32 offset:31;
>> +       u32 linear:1;
>> +       union {
>> +               /* in gtt pages for !linear */
>> +               struct {
>> +                       u16 width;
>> +                       u16 height;
>> +                       u16 src_stride;
>> +                       u16 dst_stride;
>> +               };
>> +
>> +               /* in gtt pages for linear */
>> +               u32 size;
>> +       };
>> +} __packed;
>> +
>> +struct intel_rotation_info {
>> +       struct intel_remapped_plane_info plane[2];
>> +} __packed;
>> +
>> +struct intel_partial_info {
>> +       u64 offset;
>> +       unsigned int size;
>> +} __packed;
>> +
>> +struct intel_remapped_info {
>> +       struct intel_remapped_plane_info plane[4];
>> +       /* in gtt pages */
>> +       u32 plane_alignment;
>> +} __packed;
>> +
>> +enum i915_gtt_view_type {
>> +       I915_GTT_VIEW_NORMAL =3D 0,
>> +       I915_GTT_VIEW_ROTATED =3D sizeof(struct intel_rotation_info),
>> +       I915_GTT_VIEW_PARTIAL =3D sizeof(struct intel_partial_info),
>> +       I915_GTT_VIEW_REMAPPED =3D sizeof(struct intel_remapped_info),
>> +};
>> +
>> +struct i915_gtt_view {
>> +       enum i915_gtt_view_type type;
>> +       union {
>> +               /* Members need to contain no holes/padding */
>> +               struct intel_partial_info partial;
>> +               struct intel_rotation_info rotated;
>> +               struct intel_remapped_info remapped;
>> +       };
>> +};
>> +
>> +#endif /* __I915_GTT_VIEW_TYPES_H__ */
>> diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i91=
5/i915_vma_types.h
>> index 559de74d0b11..a499a3bea874 100644
>> --- a/drivers/gpu/drm/i915/i915_vma_types.h
>> +++ b/drivers/gpu/drm/i915/i915_vma_types.h
>> @@ -32,6 +32,8 @@
>>
>>  #include "gem/i915_gem_object_types.h"
>>
>> +#include "i915_gtt_view_types.h"
>> +
>>  /**
>>   * DOC: Global GTT views
>>   *
>> @@ -95,46 +97,6 @@
>>
>>  struct i915_vma_resource;
>>
>> -struct intel_remapped_plane_info {
>> -       /* in gtt pages */
>> -       u32 offset:31;
>> -       u32 linear:1;
>> -       union {
>> -               /* in gtt pages for !linear */
>> -               struct {
>> -                       u16 width;
>> -                       u16 height;
>> -                       u16 src_stride;
>> -                       u16 dst_stride;
>> -               };
>> -
>> -               /* in gtt pages for linear */
>> -               u32 size;
>> -       };
>> -} __packed;
>> -
>> -struct intel_remapped_info {
>> -       struct intel_remapped_plane_info plane[4];
>> -       /* in gtt pages */
>> -       u32 plane_alignment;
>> -} __packed;
>> -
>> -struct intel_rotation_info {
>> -       struct intel_remapped_plane_info plane[2];
>> -} __packed;
>> -
>> -struct intel_partial_info {
>> -       u64 offset;
>> -       unsigned int size;
>> -} __packed;
>> -
>> -enum i915_gtt_view_type {
>> -       I915_GTT_VIEW_NORMAL =3D 0,
>> -       I915_GTT_VIEW_ROTATED =3D sizeof(struct intel_rotation_info),
>> -       I915_GTT_VIEW_PARTIAL =3D sizeof(struct intel_partial_info),
>> -       I915_GTT_VIEW_REMAPPED =3D sizeof(struct intel_remapped_info),
>> -};
>> -
>>  static inline void assert_i915_gem_gtt_types(void)
>>  {
>>         BUILD_BUG_ON(sizeof(struct intel_rotation_info) !=3D 2 * sizeof(=
u32) + 8 * sizeof(u16));
>> @@ -160,16 +122,6 @@ static inline void assert_i915_gem_gtt_types(void)
>>         }
>>  }
>>
>> -struct i915_gtt_view {
>> -       enum i915_gtt_view_type type;
>> -       union {
>> -               /* Members need to contain no holes/padding */
>> -               struct intel_partial_info partial;
>> -               struct intel_rotation_info rotated;
>> -               struct intel_remapped_info remapped;
>> -       };
>> -};
>> -
>>  /**
>>   * DOC: Virtual Memory Address
>>   *
>> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_gtt_view_types.=
h b/drivers/gpu/drm/xe/compat-i915-
>> headers/i915_gtt_view_types.h
>> new file mode 100644
>> index 000000000000..b261910cd6f9
>> --- /dev/null
>> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_gtt_view_types.h
>> @@ -0,0 +1,7 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/* Copyright =C2=A9 2025 Intel Corporation */
>> +
>> +#include "../../i915/i915_gtt_view_types.h"
>> +
>> +/* Partial view not supported in xe, fail build if used. */
>> +#define I915_GTT_VIEW_PARTIAL
>> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_vma_types.h b/d=
rivers/gpu/drm/xe/compat-i915-
>> headers/i915_vma_types.h
>> deleted file mode 100644
>> index e7aaf50f5485..000000000000
>> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_vma_types.h
>> +++ /dev/null
>> @@ -1,74 +0,0 @@
>> -/* SPDX-License-Identifier: MIT */
>> -/*
>> - * Copyright =C2=A9 2023 Intel Corporation
>> - */
>> -
>> -#include <linux/types.h>
>> -#include <linux/build_bug.h>
>> -
>> -/* XX: Figure out how to handle this vma mapping in xe */
>> -struct intel_remapped_plane_info {
>> -       /* in gtt pages */
>> -       u32 offset:31;
>> -       u32 linear:1;
>> -       union {
>> -               /* in gtt pages for !linear */
>> -               struct {
>> -                       u16 width;
>> -                       u16 height;
>> -                       u16 src_stride;
>> -                       u16 dst_stride;
>> -               };
>> -
>> -               /* in gtt pages for linear */
>> -               u32 size;
>> -       };
>> -} __packed;
>> -
>> -struct intel_remapped_info {
>> -       struct intel_remapped_plane_info plane[4];
>> -       /* in gtt pages */
>> -       u32 plane_alignment;
>> -} __packed;
>> -
>> -struct intel_rotation_info {
>> -       struct intel_remapped_plane_info plane[2];
>> -} __packed;
>> -
>> -enum i915_gtt_view_type {
>> -       I915_GTT_VIEW_NORMAL =3D 0,
>> -       I915_GTT_VIEW_ROTATED =3D sizeof(struct intel_rotation_info),
>> -       I915_GTT_VIEW_REMAPPED =3D sizeof(struct intel_remapped_info),
>> -};
>> -
>> -static inline void assert_i915_gem_gtt_types(void)
>> -{
>> -       BUILD_BUG_ON(sizeof(struct intel_rotation_info) !=3D 2 * sizeof(=
u32) + 8 * sizeof(u16));
>> -       BUILD_BUG_ON(sizeof(struct intel_remapped_info) !=3D 5 * sizeof(=
u32) + 16 * sizeof(u16));
>> -
>> -       /* Check that rotation/remapped shares offsets for simplicity */
>> -       BUILD_BUG_ON(offsetof(struct intel_remapped_info, plane[0]) !=3D
>> -                    offsetof(struct intel_rotation_info, plane[0]));
>> -       BUILD_BUG_ON(offsetofend(struct intel_remapped_info, plane[1]) !=
=3D
>> -                    offsetofend(struct intel_rotation_info, plane[1]));
>> -
>> -       /* As we encode the size of each branch inside the union into it=
s type,
>> -        * we have to be careful that each branch has a unique size.
>> -        */
>> -       switch ((enum i915_gtt_view_type)0) {
>> -       case I915_GTT_VIEW_NORMAL:
>> -       case I915_GTT_VIEW_ROTATED:
>> -       case I915_GTT_VIEW_REMAPPED:
>> -               /* gcc complains if these are identical cases */
>> -               break;
>> -       }
>> -}
>> -
>> -struct i915_gtt_view {
>> -       enum i915_gtt_view_type type;
>> -       union {
>> -               /* Members need to contain no holes/padding */
>> -               struct intel_rotation_info rotated;
>> -               struct intel_remapped_info remapped;
>> -       };
>> -};
>> --
>> 2.39.5
>>
>

--=20
Jani Nikula, Intel
