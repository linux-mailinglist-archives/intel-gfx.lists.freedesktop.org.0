Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4510F3C894D
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 19:05:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C83B6E433;
	Wed, 14 Jul 2021 17:05:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09D5D6E433
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 17:05:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10045"; a="232205659"
X-IronPort-AV: E=Sophos;i="5.84,239,1620716400"; d="scan'208";a="232205659"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2021 10:05:16 -0700
X-IronPort-AV: E=Sophos;i="5.84,239,1620716400"; d="scan'208";a="505387003"
Received: from aghandou-mobl.ger.corp.intel.com (HELO [10.249.44.49])
 ([10.249.44.49])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2021 10:05:15 -0700
To: Jason Ekstrand <jason@jlekstrand.net>
References: <20210714100323.752828-1-maarten.lankhorst@linux.intel.com>
 <CAOFGe96ScooLy0sahtTi=E_At+J8N+o+uUNCt2jcsMzq+Jc9sw@mail.gmail.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <a7b6c71b-ddd7-ec6e-642c-b6e2c947c578@linux.intel.com>
Date: Wed, 14 Jul 2021 19:05:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <CAOFGe96ScooLy0sahtTi=E_At+J8N+o+uUNCt2jcsMzq+Jc9sw@mail.gmail.com>
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Op 14-07-2021 om 18:17 schreef Jason Ekstrand:
> On Wed, Jul 14, 2021 at 5:03 AM Maarten Lankhorst
> <maarten.lankhorst@linux.intel.com> wrote:
>> The FIXED mapping is only used for ttm, and tells userspace that the
>> mapping type is pre-defined. This disables the other type of mmap
>> offsets when discrete memory is used, so fix the selftests as well.
>>
>> Document the struct as well, so it shows up in docbook.
>>
>> Cc: Jason Ekstrand <jason@jlekstrand.net>
>> Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> ---
>>  drivers/gpu/drm/i915/gem/i915_gem_mman.c      | 17 ++++++-
>>  .../gpu/drm/i915/gem/i915_gem_object_types.h  |  1 +
>>  .../drm/i915/gem/selftests/i915_gem_mman.c    | 27 ++++++++++-
>>  include/uapi/drm/i915_drm.h                   | 46 ++++++++++++++-----
>>  4 files changed, 77 insertions(+), 14 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>> index a90f796e85c0..31c4021bb6be 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>> @@ -679,10 +679,16 @@ __assign_mmap_offset(struct drm_i915_gem_object *obj,
>>                 return -ENODEV;
>>
>>         if (obj->ops->mmap_offset)  {
>> +               if (mmap_type != I915_MMAP_TYPE_FIXED)
>> +                       return -ENODEV;
>> +
>>                 *offset = obj->ops->mmap_offset(obj);
>>                 return 0;
>>         }
>>
>> +       if (mmap_type == I915_MMAP_TYPE_FIXED)
>> +               return -ENODEV;
>> +
>>         if (mmap_type != I915_MMAP_TYPE_GTT &&
>>             !i915_gem_object_has_struct_page(obj) &&
>>             !i915_gem_object_has_iomem(obj))
>> @@ -727,7 +733,9 @@ i915_gem_dumb_mmap_offset(struct drm_file *file,
>>  {
>>         enum i915_mmap_type mmap_type;
>>
>> -       if (boot_cpu_has(X86_FEATURE_PAT))
>> +       if (HAS_LMEM(to_i915(dev)))
>> +               mmap_type = I915_MMAP_TYPE_FIXED;
>> +       else if (boot_cpu_has(X86_FEATURE_PAT))
>>                 mmap_type = I915_MMAP_TYPE_WC;
>>         else if (!i915_ggtt_has_aperture(&to_i915(dev)->ggtt))
>>                 return -ENODEV;
>> @@ -798,6 +806,10 @@ i915_gem_mmap_offset_ioctl(struct drm_device *dev, void *data,
>>                 type = I915_MMAP_TYPE_UC;
>>                 break;
>>
>> +       case I915_MMAP_OFFSET_FIXED:
>> +               type = I915_MMAP_TYPE_FIXED;
>> +               break;
>> +
>>         default:
>>                 return -EINVAL;
>>         }
>> @@ -968,6 +980,9 @@ int i915_gem_mmap(struct file *filp, struct vm_area_struct *vma)
>>                 vma->vm_ops = &vm_ops_cpu;
>>                 break;
>>
>> +       case I915_MMAP_TYPE_FIXED:
>> +               GEM_WARN_ON(1);
>> +               /* fall-through */
>>         case I915_MMAP_TYPE_WB:
>>                 vma->vm_page_prot = vm_get_page_prot(vma->vm_flags);
>>                 vma->vm_ops = &vm_ops_cpu;
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>> index ef3de2ae9723..afbadfc5516b 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>> @@ -105,6 +105,7 @@ enum i915_mmap_type {
>>         I915_MMAP_TYPE_WC,
>>         I915_MMAP_TYPE_WB,
>>         I915_MMAP_TYPE_UC,
>> +       I915_MMAP_TYPE_FIXED,
>>  };
>>
>>  struct i915_mmap_offset {
>> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
>> index 1da8bd675e54..52789c8ad337 100644
>> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
>> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
>> @@ -573,6 +573,14 @@ static int make_obj_busy(struct drm_i915_gem_object *obj)
>>         return 0;
>>  }
>>
>> +static enum i915_mmap_type default_mapping(struct drm_i915_private *i915)
>> +{
>> +       if (HAS_LMEM(i915))
>> +               return I915_MMAP_TYPE_FIXED;
>> +
>> +       return I915_MMAP_TYPE_GTT;
>> +}
>> +
>>  static bool assert_mmap_offset(struct drm_i915_private *i915,
>>                                unsigned long size,
>>                                int expected)
>> @@ -585,7 +593,7 @@ static bool assert_mmap_offset(struct drm_i915_private *i915,
>>         if (IS_ERR(obj))
>>                 return expected && expected == PTR_ERR(obj);
>>
>> -       ret = __assign_mmap_offset(obj, I915_MMAP_TYPE_GTT, &offset, NULL);
>> +       ret = __assign_mmap_offset(obj, default_mapping(i915), &offset, NULL);
>>         i915_gem_object_put(obj);
>>
>>         return ret == expected;
>> @@ -689,7 +697,7 @@ static int igt_mmap_offset_exhaustion(void *arg)
>>                 goto out;
>>         }
>>
>> -       err = __assign_mmap_offset(obj, I915_MMAP_TYPE_GTT, &offset, NULL);
>> +       err = __assign_mmap_offset(obj, default_mapping(i915), &offset, NULL);
>>         if (err) {
>>                 pr_err("Unable to insert object into reclaimed hole\n");
>>                 goto err_obj;
>> @@ -831,8 +839,14 @@ static int wc_check(struct drm_i915_gem_object *obj)
>>
>>  static bool can_mmap(struct drm_i915_gem_object *obj, enum i915_mmap_type type)
>>  {
>> +       struct drm_i915_private *i915 = to_i915(obj->base.dev);
>>         bool no_map;
>>
>> +       if (HAS_LMEM(i915))
>> +               return type == I915_MMAP_TYPE_FIXED;
>> +       else if (type == I915_MMAP_TYPE_FIXED)
>> +               return false;
>> +
>>         if (type == I915_MMAP_TYPE_GTT &&
>>             !i915_ggtt_has_aperture(&to_i915(obj->base.dev)->ggtt))
>>                 return false;
>> @@ -970,6 +984,8 @@ static int igt_mmap(void *arg)
>>                         err = __igt_mmap(i915, obj, I915_MMAP_TYPE_GTT);
>>                         if (err == 0)
>>                                 err = __igt_mmap(i915, obj, I915_MMAP_TYPE_WC);
>> +                       if (err == 0)
>> +                               err = __igt_mmap(i915, obj, I915_MMAP_TYPE_FIXED);
>>
>>                         i915_gem_object_put(obj);
>>                         if (err)
>> @@ -987,6 +1003,7 @@ static const char *repr_mmap_type(enum i915_mmap_type type)
>>         case I915_MMAP_TYPE_WB: return "wb";
>>         case I915_MMAP_TYPE_WC: return "wc";
>>         case I915_MMAP_TYPE_UC: return "uc";
>> +       case I915_MMAP_TYPE_FIXED: return "ttm";
> fixed?
>
> Otherwise, I trolled through the patch and everything looks good.  I
> don't know the code well enough to know if you missed anything but
> what you have seems sane.
>
> Reviewed-by: Jason Ekstrand <jason@jlekstrand.net>
>
> I suppose you'll be wanting a couple mesa patches to go with this?  I
> can try and knock something out today.


Yes please! IGT probably needs fixing too. I can probably take a look at that.

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
