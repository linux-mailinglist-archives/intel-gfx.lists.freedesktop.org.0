Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 115A13C23B3
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 14:48:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE2896EA1C;
	Fri,  9 Jul 2021 12:48:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3906C6EA1C
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jul 2021 12:48:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10039"; a="196872362"
X-IronPort-AV: E=Sophos;i="5.84,226,1620716400"; d="scan'208";a="196872362"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 05:48:01 -0700
X-IronPort-AV: E=Sophos;i="5.84,226,1620716400"; d="scan'208";a="488033192"
Received: from ashfaqur-mobl.ger.corp.intel.com (HELO [10.252.48.40])
 ([10.252.48.40])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 05:47:58 -0700
To: Matthew Auld <matthew.william.auld@gmail.com>
References: <20210701114234.3859716-1-maarten.lankhorst@linux.intel.com>
 <4dfba196-0106-6a20-aac1-4ca90c91f899@linux.intel.com>
 <CAM0jSHNQpgTW88qX+fesNEJTnB_DnxqYcpwEASxVa89D02tvnQ@mail.gmail.com>
 <CAM0jSHP0Dvik-FKQ9XdY-xbJmRX4GufJaC5QU4yyZ=Kzby8k4w@mail.gmail.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <4df9ac49-93c2-a9c2-03a3-1f6542700d8d@linux.intel.com>
Date: Fri, 9 Jul 2021 14:47:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <CAM0jSHP0Dvik-FKQ9XdY-xbJmRX4GufJaC5QU4yyZ=Kzby8k4w@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add TTM offset argument to mmap.
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
Cc: "Ekstrand, Jason" <jason.ekstrand@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Kenneth Graunke <kenneth@whitecape.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Op 09-07-2021 om 11:30 schreef Matthew Auld:
> On Mon, 5 Jul 2021 at 15:36, Matthew Auld
> <matthew.william.auld@gmail.com> wrote:
>> On Thu, 1 Jul 2021 at 12:50, Maarten Lankhorst
>> <maarten.lankhorst@linux.intel.com> wrote:
>>> Op 01-07-2021 om 13:42 schreef Maarten Lankhorst:
>>>> This is only used for ttm, and tells userspace that the mapping type is
>>>> ignored. This disables the other type of mmap offsets when discrete
>>>> memory is used, so fix the selftests as well.
>>>>
>>>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>>>> ---
>>>>  drivers/gpu/drm/i915/gem/i915_gem_mman.c      | 17 +++++++++++-
>>>>  .../gpu/drm/i915/gem/i915_gem_object_types.h  |  1 +
>>>>  .../drm/i915/gem/selftests/i915_gem_mman.c    | 27 +++++++++++++++++--
>>>>  include/uapi/drm/i915_drm.h                   |  9 ++++---
>>>>  4 files changed, 47 insertions(+), 7 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>>>> index a90f796e85c0..b34be9e5d094 100644
>>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>>>> @@ -679,10 +679,16 @@ __assign_mmap_offset(struct drm_i915_gem_object *obj,
>>>>               return -ENODEV;
>>>>
>>>>       if (obj->ops->mmap_offset)  {
>>>> +             if (mmap_type != I915_MMAP_TYPE_TTM)
>>>> +                     return -ENODEV;
>>>> +
>>>>               *offset = obj->ops->mmap_offset(obj);
>>>>               return 0;
>>>>       }
>>>>
>>>> +     if (mmap_type == I915_MMAP_TYPE_TTM)
>>>> +             return -ENODEV;
>>>> +
>>>>       if (mmap_type != I915_MMAP_TYPE_GTT &&
>>>>           !i915_gem_object_has_struct_page(obj) &&
>>>>           !i915_gem_object_has_iomem(obj))
>>>> @@ -727,7 +733,9 @@ i915_gem_dumb_mmap_offset(struct drm_file *file,
>>>>  {
>>>>       enum i915_mmap_type mmap_type;
>>>>
>>>> -     if (boot_cpu_has(X86_FEATURE_PAT))
>>>> +     if (HAS_LMEM(to_i915(dev)))
>>>> +             mmap_type = I915_MMAP_TYPE_TTM;
>>>> +     else if (boot_cpu_has(X86_FEATURE_PAT))
>>>>               mmap_type = I915_MMAP_TYPE_WC;
>> Hmm, I think we still need to check for X86_FEATURE_PAT somewhere,
>> since this is still just WC for lmem?
>>
>>>>       else if (!i915_ggtt_has_aperture(&to_i915(dev)->ggtt))
>>>>               return -ENODEV;
>>>> @@ -798,6 +806,10 @@ i915_gem_mmap_offset_ioctl(struct drm_device *dev, void *data,
>>>>               type = I915_MMAP_TYPE_UC;
>>>>               break;
>>>>
>>>> +     case I915_MMAP_OFFSET_TTM:
>>>> +             type = I915_MMAP_TYPE_TTM;
>>>> +             break;
>> Would it not be simpler to just convert to WC or WB here, if we
>> encounter _TTM? With that we also don't need to touch the dumb mmap
>> stuff and i915_gem_mmap()?
>>
>> if (IS_DGFX()) {
>>         if (args->type != OFFSET_TTM)
>>                return -ENODEV:
>>
>>        GEM_BUG_ON(!obj->mm.n_placements);
>>        if (i915_gem_object_placement_possible(obj, INTEL_MEMORY_LOCAL)) {
>>               type = TYPE_WC;
>>       else
>>               ttype = TYPE_WB;
>> }
>>
>> https://patchwork.freedesktop.org/patch/442579/?series=92209&rev=1
> fyi this patch is now merged, in case you need the
> i915_gem_object_placement_possible() helper.

I think a separate type is better, as it could still be mapped WB if evicted to system memory?

~Maarten

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
