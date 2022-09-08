Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE9B5B18E6
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 11:39:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A05B410E9FE;
	Thu,  8 Sep 2022 09:39:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4C6F10E9F6;
 Thu,  8 Sep 2022 09:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662629966; x=1694165966;
 h=message-id:date:mime-version:subject:from:to:cc:
 references:in-reply-to:content-transfer-encoding;
 bh=ObSMOuSJDv+s7/YnxrOWucfjS22AgklUpYqGT+NWTeY=;
 b=UB0noKtNAC8obBpf7UOfte3mYHdmYjzXRhqluVNyJ62xzYpnVrYv7Zhm
 Jg7kjuhE4tAjVjXKAMg2xBsnwvSYka87Zwiv/czm4GfWYkGphEJmx25K3
 eYxUgV/Ojdb/WV+RmLHbrIlCzbTGX03XwIjtVsGYcVVZTX8VeMAkPzGEc
 JpjmaaLkmA4wTfQWSGH8/xYOTE9wHGkNT2CiEM+mjWXfK65n101i80veO
 aQWYxLrM7aecVb9GCBJNEF0OBDBIAxiXe2wzZUJe2NRuch/Rj7HIV1g91
 P/Q3GMQjZvvxv0ui9GQdexr9EWDVor8LRAr3KqPJiMAuqDJW3WpZ8n20f Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="294707841"
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="294707841"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 02:39:26 -0700
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="645007034"
Received: from jdemps5x-mobl.ger.corp.intel.com (HELO [10.213.237.77])
 ([10.213.237.77])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 02:39:23 -0700
Message-ID: <336182ee-ec65-57f0-9789-4d4047e80469@linux.intel.com>
Date: Thu, 8 Sep 2022 10:39:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220901183854.3446-1-niranjana.vishwanathapura@intel.com>
 <8888dcc8-6adf-9474-6229-7c6d446f2104@linux.intel.com>
 <d6b96a17-6074-8770-188f-fe8958612578@linux.intel.com>
 <77c478f4-3c3c-64c2-572d-c357ba819029@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <77c478f4-3c3c-64c2-572d-c357ba819029@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Rename ggtt_view as gtt_view
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
Cc: daniel.vetter@ffwll.ch, thomas.hellstrom@intel.com, matthew.auld@intel.com,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 07/09/2022 14:48, Tvrtko Ursulin wrote:
> 
> On 06/09/2022 17:14, Tvrtko Ursulin wrote:
>>
>> On 05/09/2022 10:34, Tvrtko Ursulin wrote:
>>>
>>> On 01/09/2022 19:38, Niranjana Vishwanathapura wrote:
>>>> So far, different views (normal, partial, rotated and remapped)
>>>> into the same object are only supported for GGTT mappings.
>>>> But with the upcoming VM_BIND feature, PPGTT will also use the
>>>> partial view mapping. Hence rename ggtt_view to more generic
>>>> gtt_view.
>>>>
>>>> Signed-off-by: Niranjana Vishwanathapura 
>>>> <niranjana.vishwanathapura@intel.com>
>>>
>>> Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>
>>> Easily even r-b since I did scroll through it and it all looks 
>>> straightforward.
>>
>> For the record:
>>
>> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Merge is temporarily on hold while I have been discussing some details 
> with Joonas today. Discussion is whether we should instead promote the 
> partial VMA, or at least build in the partial bind capability to the VMA 
> code itself. That is, not generalize the whole ggtt_view concept.
> 
> There is an interesting intersection with that future work to enable 
> partial backing storage as well. Today ggtt_views assume always full 
> obj->pages are present, and then ggtt_view pages are built from that set.
> 
> How will that fit with the partial backing store is the question. Would 
> 1st class partial VMAs work better for instance. Do you know if anyone 
> is working on that so we can sync?

Now pushed after some more discussion.

Regards,

Tvrtko

> 
> Regards,
> 
> Tvrtko
> 
>> Regards,
>>
>> Tvrtko
>>
>>
>>> Regards,
>>>
>>> Tvrtko
>>>
>>>> ---
>>>>   drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
>>>>   drivers/gpu/drm/i915/display/intel_display.h  |  2 +-
>>>>   .../drm/i915/display/intel_display_types.h    |  2 +-
>>>>   drivers/gpu/drm/i915/display/intel_fb.c       | 18 ++---
>>>>   drivers/gpu/drm/i915/display/intel_fb_pin.c   |  4 +-
>>>>   drivers/gpu/drm/i915/display/intel_fb_pin.h   |  4 +-
>>>>   drivers/gpu/drm/i915/display/intel_fbdev.c    |  4 +-
>>>>   drivers/gpu/drm/i915/gem/i915_gem_domain.c    |  4 +-
>>>>   drivers/gpu/drm/i915/gem/i915_gem_mman.c      | 16 ++---
>>>>   drivers/gpu/drm/i915/gem/i915_gem_object.h    |  2 +-
>>>>   .../drm/i915/gem/selftests/i915_gem_mman.c    |  4 +-
>>>>   drivers/gpu/drm/i915/gt/intel_reset.c         |  2 +-
>>>>   drivers/gpu/drm/i915/i915_debugfs.c           | 56 +++++++--------
>>>>   drivers/gpu/drm/i915/i915_drv.h               |  4 +-
>>>>   drivers/gpu/drm/i915/i915_gem.c               |  6 +-
>>>>   drivers/gpu/drm/i915/i915_vma.c               | 40 +++++------
>>>>   drivers/gpu/drm/i915/i915_vma.h               | 18 ++---
>>>>   drivers/gpu/drm/i915/i915_vma_types.h         | 42 ++++++------
>>>>   drivers/gpu/drm/i915/selftests/i915_vma.c     | 68 
>>>> +++++++++----------
>>>>   19 files changed, 149 insertions(+), 149 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c 
>>>> b/drivers/gpu/drm/i915/display/intel_display.c
>>>> index be7cff722196..8251f87064f6 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>>> @@ -670,7 +670,7 @@ bool intel_plane_uses_fence(const struct 
>>>> intel_plane_state *plane_state)
>>>>       return DISPLAY_VER(dev_priv) < 4 ||
>>>>           (plane->fbc &&
>>>> -         plane_state->view.gtt.type == I915_GGTT_VIEW_NORMAL);
>>>> +         plane_state->view.gtt.type == I915_GTT_VIEW_NORMAL);
>>>>   }
>>>>   /*
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.h 
>>>> b/drivers/gpu/drm/i915/display/intel_display.h
>>>> index e895277c4cd9..e322011877bb 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.h
>>>> @@ -45,7 +45,7 @@ struct drm_modeset_acquire_ctx;
>>>>   struct drm_plane;
>>>>   struct drm_plane_state;
>>>>   struct i915_address_space;
>>>> -struct i915_ggtt_view;
>>>> +struct i915_gtt_view;
>>>>   struct intel_atomic_state;
>>>>   struct intel_crtc;
>>>>   struct intel_crtc_state;
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h 
>>>> b/drivers/gpu/drm/i915/display/intel_display_types.h
>>>> index 0da9b208d56e..01977cd237eb 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>>>> @@ -105,7 +105,7 @@ struct intel_fb_view {
>>>>        * In the normal view the FB object's backing store sg list is 
>>>> used
>>>>        * directly and hence the remap information here is not used.
>>>>        */
>>>> -    struct i915_ggtt_view gtt;
>>>> +    struct i915_gtt_view gtt;
>>>>       /*
>>>>        * The GTT view (gtt.type) specific information for each FB color
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c 
>>>> b/drivers/gpu/drm/i915/display/intel_fb.c
>>>> index b191915ab351..eefa33c555ac 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_fb.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
>>>> @@ -1395,7 +1395,7 @@ static u32 calc_plane_remap_info(const struct 
>>>> intel_framebuffer *fb, int color_p
>>>>                      plane_view_height_tiles(fb, color_plane, dims, 
>>>> y));
>>>>       }
>>>> -    if (view->gtt.type == I915_GGTT_VIEW_ROTATED) {
>>>> +    if (view->gtt.type == I915_GTT_VIEW_ROTATED) {
>>>>           drm_WARN_ON(&i915->drm, remap_info->linear);
>>>>           check_array_bounds(i915, view->gtt.rotated.plane, 
>>>> color_plane);
>>>> @@ -1420,7 +1420,7 @@ static u32 calc_plane_remap_info(const struct 
>>>> intel_framebuffer *fb, int color_p
>>>>           /* rotate the tile dimensions to match the GTT view */
>>>>           swap(tile_width, tile_height);
>>>>       } else {
>>>> -        drm_WARN_ON(&i915->drm, view->gtt.type != 
>>>> I915_GGTT_VIEW_REMAPPED);
>>>> +        drm_WARN_ON(&i915->drm, view->gtt.type != 
>>>> I915_GTT_VIEW_REMAPPED);
>>>>           check_array_bounds(i915, view->gtt.remapped.plane, 
>>>> color_plane);
>>>> @@ -1503,12 +1503,12 @@ calc_plane_normal_size(const struct 
>>>> intel_framebuffer *fb, int color_plane,
>>>>   }
>>>>   static void intel_fb_view_init(struct drm_i915_private *i915, 
>>>> struct intel_fb_view *view,
>>>> -                   enum i915_ggtt_view_type view_type)
>>>> +                   enum i915_gtt_view_type view_type)
>>>>   {
>>>>       memset(view, 0, sizeof(*view));
>>>>       view->gtt.type = view_type;
>>>> -    if (view_type == I915_GGTT_VIEW_REMAPPED && IS_ALDERLAKE_P(i915))
>>>> +    if (view_type == I915_GTT_VIEW_REMAPPED && IS_ALDERLAKE_P(i915))
>>>>           view->gtt.remapped.plane_alignment = SZ_2M / PAGE_SIZE;
>>>>   }
>>>> @@ -1530,16 +1530,16 @@ int intel_fill_fb_info(struct 
>>>> drm_i915_private *i915, struct intel_framebuffer *
>>>>       int i, num_planes = fb->base.format->num_planes;
>>>>       unsigned int tile_size = intel_tile_size(i915);
>>>> -    intel_fb_view_init(i915, &fb->normal_view, I915_GGTT_VIEW_NORMAL);
>>>> +    intel_fb_view_init(i915, &fb->normal_view, I915_GTT_VIEW_NORMAL);
>>>>       drm_WARN_ON(&i915->drm,
>>>>               intel_fb_supports_90_270_rotation(fb) &&
>>>>               intel_fb_needs_pot_stride_remap(fb));
>>>>       if (intel_fb_supports_90_270_rotation(fb))
>>>> -        intel_fb_view_init(i915, &fb->rotated_view, 
>>>> I915_GGTT_VIEW_ROTATED);
>>>> +        intel_fb_view_init(i915, &fb->rotated_view, 
>>>> I915_GTT_VIEW_ROTATED);
>>>>       if (intel_fb_needs_pot_stride_remap(fb))
>>>> -        intel_fb_view_init(i915, &fb->remapped_view, 
>>>> I915_GGTT_VIEW_REMAPPED);
>>>> +        intel_fb_view_init(i915, &fb->remapped_view, 
>>>> I915_GTT_VIEW_REMAPPED);
>>>>       for (i = 0; i < num_planes; i++) {
>>>>           struct fb_plane_view_dims view_dims;
>>>> @@ -1620,8 +1620,8 @@ static void intel_plane_remap_gtt(struct 
>>>> intel_plane_state *plane_state)
>>>>       u32 gtt_offset = 0;
>>>>       intel_fb_view_init(i915, &plane_state->view,
>>>> -               drm_rotation_90_or_270(rotation) ? 
>>>> I915_GGTT_VIEW_ROTATED :
>>>> -                                  I915_GGTT_VIEW_REMAPPED);
>>>> +               drm_rotation_90_or_270(rotation) ? 
>>>> I915_GTT_VIEW_ROTATED :
>>>> +                                  I915_GTT_VIEW_REMAPPED);
>>>>       src_x = plane_state->uapi.src.x1 >> 16;
>>>>       src_y = plane_state->uapi.src.y1 >> 16;
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c 
>>>> b/drivers/gpu/drm/i915/display/intel_fb_pin.c
>>>> index bd6e7c98e751..c86e5d4ee016 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
>>>> @@ -18,7 +18,7 @@
>>>>   static struct i915_vma *
>>>>   intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
>>>> -             const struct i915_ggtt_view *view,
>>>> +             const struct i915_gtt_view *view,
>>>>                bool uses_fence,
>>>>                unsigned long *out_flags,
>>>>                struct i915_address_space *vm)
>>>> @@ -79,7 +79,7 @@ intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
>>>>   struct i915_vma *
>>>>   intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
>>>>                  bool phys_cursor,
>>>> -               const struct i915_ggtt_view *view,
>>>> +               const struct i915_gtt_view *view,
>>>>                  bool uses_fence,
>>>>                  unsigned long *out_flags)
>>>>   {
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h 
>>>> b/drivers/gpu/drm/i915/display/intel_fb_pin.h
>>>> index e4fcd0218d9d..de0efaa25905 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.h
>>>> @@ -11,12 +11,12 @@
>>>>   struct drm_framebuffer;
>>>>   struct i915_vma;
>>>>   struct intel_plane_state;
>>>> -struct i915_ggtt_view;
>>>> +struct i915_gtt_view;
>>>>   struct i915_vma *
>>>>   intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
>>>>                  bool phys_cursor,
>>>> -               const struct i915_ggtt_view *view,
>>>> +               const struct i915_gtt_view *view,
>>>>                  bool uses_fence,
>>>>                  unsigned long *out_flags);
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c 
>>>> b/drivers/gpu/drm/i915/display/intel_fbdev.c
>>>> index c08ff6a5c2e9..94081bf05b99 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
>>>> @@ -198,8 +198,8 @@ static int intelfb_create(struct drm_fb_helper 
>>>> *helper,
>>>>       struct drm_i915_private *dev_priv = to_i915(dev);
>>>>       struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
>>>>       struct i915_ggtt *ggtt = to_gt(dev_priv)->ggtt;
>>>> -    const struct i915_ggtt_view view = {
>>>> -        .type = I915_GGTT_VIEW_NORMAL,
>>>> +    const struct i915_gtt_view view = {
>>>> +        .type = I915_GTT_VIEW_NORMAL,
>>>>       };
>>>>       intel_wakeref_t wakeref;
>>>>       struct fb_info *info;
>>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c 
>>>> b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>>>> index 1674b0c5802b..d44a152ce680 100644
>>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>>>> @@ -397,7 +397,7 @@ struct i915_vma *
>>>>   i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
>>>>                        struct i915_gem_ww_ctx *ww,
>>>>                        u32 alignment,
>>>> -                     const struct i915_ggtt_view *view,
>>>> +                     const struct i915_gtt_view *view,
>>>>                        unsigned int flags)
>>>>   {
>>>>       struct drm_i915_private *i915 = to_i915(obj->base.dev);
>>>> @@ -434,7 +434,7 @@ i915_gem_object_pin_to_display_plane(struct 
>>>> drm_i915_gem_object *obj,
>>>>        */
>>>>       vma = ERR_PTR(-ENOSPC);
>>>>       if ((flags & PIN_MAPPABLE) == 0 &&
>>>> -        (!view || view->type == I915_GGTT_VIEW_NORMAL))
>>>> +        (!view || view->type == I915_GTT_VIEW_NORMAL))
>>>>           vma = i915_gem_object_ggtt_pin_ww(obj, ww, view, 0, 
>>>> alignment,
>>>>                             flags | PIN_MAPPABLE |
>>>>                             PIN_NONBLOCK);
>>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c 
>>>> b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>>>> index 0c5c43852e24..3218981488cc 100644
>>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>>>> @@ -194,17 +194,17 @@ int i915_gem_mmap_gtt_version(void)
>>>>       return 4;
>>>>   }
>>>> -static inline struct i915_ggtt_view
>>>> +static inline struct i915_gtt_view
>>>>   compute_partial_view(const struct drm_i915_gem_object *obj,
>>>>                pgoff_t page_offset,
>>>>                unsigned int chunk)
>>>>   {
>>>> -    struct i915_ggtt_view view;
>>>> +    struct i915_gtt_view view;
>>>>       if (i915_gem_object_is_tiled(obj))
>>>>           chunk = roundup(chunk, tile_row_pages(obj) ?: 1);
>>>> -    view.type = I915_GGTT_VIEW_PARTIAL;
>>>> +    view.type = I915_GTT_VIEW_PARTIAL;
>>>>       view.partial.offset = rounddown(page_offset, chunk);
>>>>       view.partial.size =
>>>>           min_t(unsigned int, chunk,
>>>> @@ -212,7 +212,7 @@ compute_partial_view(const struct 
>>>> drm_i915_gem_object *obj,
>>>>       /* If the partial covers the entire object, just create a 
>>>> normal VMA. */
>>>>       if (chunk >= obj->base.size >> PAGE_SHIFT)
>>>> -        view.type = I915_GGTT_VIEW_NORMAL;
>>>> +        view.type = I915_GTT_VIEW_NORMAL;
>>>>       return view;
>>>>   }
>>>> @@ -341,12 +341,12 @@ static vm_fault_t vm_fault_gtt(struct vm_fault 
>>>> *vmf)
>>>>                         PIN_NOEVICT);
>>>>       if (IS_ERR(vma) && vma != ERR_PTR(-EDEADLK)) {
>>>>           /* Use a partial view if it is bigger than available space */
>>>> -        struct i915_ggtt_view view =
>>>> +        struct i915_gtt_view view =
>>>>               compute_partial_view(obj, page_offset, MIN_CHUNK_PAGES);
>>>>           unsigned int flags;
>>>>           flags = PIN_MAPPABLE | PIN_NOSEARCH;
>>>> -        if (view.type == I915_GGTT_VIEW_NORMAL)
>>>> +        if (view.type == I915_GTT_VIEW_NORMAL)
>>>>               flags |= PIN_NONBLOCK; /* avoid warnings for pinned */
>>>>           /*
>>>> @@ -357,7 +357,7 @@ static vm_fault_t vm_fault_gtt(struct vm_fault 
>>>> *vmf)
>>>>           vma = i915_gem_object_ggtt_pin_ww(obj, &ww, &view, 0, 0, 
>>>> flags);
>>>>           if (IS_ERR(vma) && vma != ERR_PTR(-EDEADLK)) {
>>>>               flags = PIN_MAPPABLE;
>>>> -            view.type = I915_GGTT_VIEW_PARTIAL;
>>>> +            view.type = I915_GTT_VIEW_PARTIAL;
>>>>               vma = i915_gem_object_ggtt_pin_ww(obj, &ww, &view, 0, 
>>>> 0, flags);
>>>>           }
>>>> @@ -394,7 +394,7 @@ static vm_fault_t vm_fault_gtt(struct vm_fault 
>>>> *vmf)
>>>>       /* Finally, remap it using the new GTT offset */
>>>>       ret = remap_io_mapping(area,
>>>> -                   area->vm_start + (vma->ggtt_view.partial.offset 
>>>> << PAGE_SHIFT),
>>>> +                   area->vm_start + (vma->gtt_view.partial.offset 
>>>> << PAGE_SHIFT),
>>>>                      (ggtt->gmadr.start + vma->node.start) >> 
>>>> PAGE_SHIFT,
>>>>                      min_t(u64, vma->size, area->vm_end - 
>>>> area->vm_start),
>>>>                      &ggtt->iomap);
>>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h 
>>>> b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>>>> index 6f0a3ce35567..7317d4102955 100644
>>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
>>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>>>> @@ -543,7 +543,7 @@ struct i915_vma * __must_check
>>>>   i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
>>>>                        struct i915_gem_ww_ctx *ww,
>>>>                        u32 alignment,
>>>> -                     const struct i915_ggtt_view *view,
>>>> +                     const struct i915_gtt_view *view,
>>>>                        unsigned int flags);
>>>>   void i915_gem_object_make_unshrinkable(struct drm_i915_gem_object 
>>>> *obj);
>>>> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c 
>>>> b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
>>>> index afdd827e7fd1..b73c91aa5450 100644
>>>> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
>>>> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
>>>> @@ -93,7 +93,7 @@ static int check_partial_mapping(struct 
>>>> drm_i915_gem_object *obj,
>>>>   {
>>>>       const unsigned long npages = obj->base.size / PAGE_SIZE;
>>>>       struct drm_i915_private *i915 = to_i915(obj->base.dev);
>>>> -    struct i915_ggtt_view view;
>>>> +    struct i915_gtt_view view;
>>>>       struct i915_vma *vma;
>>>>       unsigned long page;
>>>>       u32 __iomem *io;
>>>> @@ -210,7 +210,7 @@ static int check_partial_mappings(struct 
>>>> drm_i915_gem_object *obj,
>>>>       }
>>>>       for_each_prime_number_from(page, 1, npages) {
>>>> -        struct i915_ggtt_view view =
>>>> +        struct i915_gtt_view view =
>>>>               compute_partial_view(obj, page, MIN_CHUNK_PAGES);
>>>>           u32 __iomem *io;
>>>>           struct page *p;
>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c 
>>>> b/drivers/gpu/drm/i915/gt/intel_reset.c
>>>> index 1211774e1d91..b36674356986 100644
>>>> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
>>>> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
>>>> @@ -776,7 +776,7 @@ static void revoke_mmaps(struct intel_gt *gt)
>>>>               continue;
>>>>           node = &vma->mmo->vma_node;
>>>> -        vma_offset = vma->ggtt_view.partial.offset << PAGE_SHIFT;
>>>> +        vma_offset = vma->gtt_view.partial.offset << PAGE_SHIFT;
>>>>           unmap_mapping_range(gt->i915->drm.anon_inode->i_mapping,
>>>>                       drm_vma_node_offset_addr(node) + vma_offset,
>>>> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c 
>>>> b/drivers/gpu/drm/i915/i915_debugfs.c
>>>> index 3e99a6a88c3a..ae987e92251d 100644
>>>> --- a/drivers/gpu/drm/i915/i915_debugfs.c
>>>> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
>>>> @@ -187,47 +187,47 @@ i915_debugfs_describe_obj(struct seq_file *m, 
>>>> struct drm_i915_gem_object *obj)
>>>>                  stringify_page_sizes(vma->resource->page_sizes_gtt,
>>>>                           NULL, 0));
>>>>           if (i915_vma_is_ggtt(vma) || i915_vma_is_dpt(vma)) {
>>>> -            switch (vma->ggtt_view.type) {
>>>> -            case I915_GGTT_VIEW_NORMAL:
>>>> +            switch (vma->gtt_view.type) {
>>>> +            case I915_GTT_VIEW_NORMAL:
>>>>                   seq_puts(m, ", normal");
>>>>                   break;
>>>> -            case I915_GGTT_VIEW_PARTIAL:
>>>> +            case I915_GTT_VIEW_PARTIAL:
>>>>                   seq_printf(m, ", partial [%08llx+%x]",
>>>> -                       vma->ggtt_view.partial.offset << PAGE_SHIFT,
>>>> -                       vma->ggtt_view.partial.size << PAGE_SHIFT);
>>>> +                       vma->gtt_view.partial.offset << PAGE_SHIFT,
>>>> +                       vma->gtt_view.partial.size << PAGE_SHIFT);
>>>>                   break;
>>>> -            case I915_GGTT_VIEW_ROTATED:
>>>> +            case I915_GTT_VIEW_ROTATED:
>>>>                   seq_printf(m, ", rotated [(%ux%u, src_stride=%u, 
>>>> dst_stride=%u, offset=%u), (%ux%u, src_stride=%u, dst_stride=%u, 
>>>> offset=%u)]",
>>>> -                       vma->ggtt_view.rotated.plane[0].width,
>>>> -                       vma->ggtt_view.rotated.plane[0].height,
>>>> -                       vma->ggtt_view.rotated.plane[0].src_stride,
>>>> -                       vma->ggtt_view.rotated.plane[0].dst_stride,
>>>> -                       vma->ggtt_view.rotated.plane[0].offset,
>>>> -                       vma->ggtt_view.rotated.plane[1].width,
>>>> -                       vma->ggtt_view.rotated.plane[1].height,
>>>> -                       vma->ggtt_view.rotated.plane[1].src_stride,
>>>> -                       vma->ggtt_view.rotated.plane[1].dst_stride,
>>>> -                       vma->ggtt_view.rotated.plane[1].offset);
>>>> +                       vma->gtt_view.rotated.plane[0].width,
>>>> +                       vma->gtt_view.rotated.plane[0].height,
>>>> +                       vma->gtt_view.rotated.plane[0].src_stride,
>>>> +                       vma->gtt_view.rotated.plane[0].dst_stride,
>>>> +                       vma->gtt_view.rotated.plane[0].offset,
>>>> +                       vma->gtt_view.rotated.plane[1].width,
>>>> +                       vma->gtt_view.rotated.plane[1].height,
>>>> +                       vma->gtt_view.rotated.plane[1].src_stride,
>>>> +                       vma->gtt_view.rotated.plane[1].dst_stride,
>>>> +                       vma->gtt_view.rotated.plane[1].offset);
>>>>                   break;
>>>> -            case I915_GGTT_VIEW_REMAPPED:
>>>> +            case I915_GTT_VIEW_REMAPPED:
>>>>                   seq_printf(m, ", remapped [(%ux%u, src_stride=%u, 
>>>> dst_stride=%u, offset=%u), (%ux%u, src_stride=%u, dst_stride=%u, 
>>>> offset=%u)]",
>>>> -                       vma->ggtt_view.remapped.plane[0].width,
>>>> -                       vma->ggtt_view.remapped.plane[0].height,
>>>> -                       vma->ggtt_view.remapped.plane[0].src_stride,
>>>> -                       vma->ggtt_view.remapped.plane[0].dst_stride,
>>>> -                       vma->ggtt_view.remapped.plane[0].offset,
>>>> -                       vma->ggtt_view.remapped.plane[1].width,
>>>> -                       vma->ggtt_view.remapped.plane[1].height,
>>>> -                       vma->ggtt_view.remapped.plane[1].src_stride,
>>>> -                       vma->ggtt_view.remapped.plane[1].dst_stride,
>>>> -                       vma->ggtt_view.remapped.plane[1].offset);
>>>> +                       vma->gtt_view.remapped.plane[0].width,
>>>> +                       vma->gtt_view.remapped.plane[0].height,
>>>> +                       vma->gtt_view.remapped.plane[0].src_stride,
>>>> +                       vma->gtt_view.remapped.plane[0].dst_stride,
>>>> +                       vma->gtt_view.remapped.plane[0].offset,
>>>> +                       vma->gtt_view.remapped.plane[1].width,
>>>> +                       vma->gtt_view.remapped.plane[1].height,
>>>> +                       vma->gtt_view.remapped.plane[1].src_stride,
>>>> +                       vma->gtt_view.remapped.plane[1].dst_stride,
>>>> +                       vma->gtt_view.remapped.plane[1].offset);
>>>>                   break;
>>>>               default:
>>>> -                MISSING_CASE(vma->ggtt_view.type);
>>>> +                MISSING_CASE(vma->gtt_view.type);
>>>>                   break;
>>>>               }
>>>>           }
>>>> diff --git a/drivers/gpu/drm/i915/i915_drv.h 
>>>> b/drivers/gpu/drm/i915/i915_drv.h
>>>> index c9cca165bf5d..281079f0aa1b 100644
>>>> --- a/drivers/gpu/drm/i915/i915_drv.h
>>>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>>>> @@ -1019,12 +1019,12 @@ static inline void 
>>>> i915_gem_drain_workqueue(struct drm_i915_private *i915)
>>>>   struct i915_vma * __must_check
>>>>   i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_object *obj,
>>>>                   struct i915_gem_ww_ctx *ww,
>>>> -                const struct i915_ggtt_view *view,
>>>> +                const struct i915_gtt_view *view,
>>>>                   u64 size, u64 alignment, u64 flags);
>>>>   struct i915_vma * __must_check
>>>>   i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
>>>> -             const struct i915_ggtt_view *view,
>>>> +             const struct i915_gtt_view *view,
>>>>                u64 size, u64 alignment, u64 flags);
>>>>   int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
>>>> diff --git a/drivers/gpu/drm/i915/i915_gem.c 
>>>> b/drivers/gpu/drm/i915/i915_gem.c
>>>> index c2d6172ba4bb..57402b2f7524 100644
>>>> --- a/drivers/gpu/drm/i915/i915_gem.c
>>>> +++ b/drivers/gpu/drm/i915/i915_gem.c
>>>> @@ -885,7 +885,7 @@ static void discard_ggtt_vma(struct i915_vma *vma)
>>>>   struct i915_vma *
>>>>   i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_object *obj,
>>>>                   struct i915_gem_ww_ctx *ww,
>>>> -                const struct i915_ggtt_view *view,
>>>> +                const struct i915_gtt_view *view,
>>>>                   u64 size, u64 alignment, u64 flags)
>>>>   {
>>>>       struct drm_i915_private *i915 = to_i915(obj->base.dev);
>>>> @@ -896,7 +896,7 @@ i915_gem_object_ggtt_pin_ww(struct 
>>>> drm_i915_gem_object *obj,
>>>>       GEM_WARN_ON(!ww);
>>>>       if (flags & PIN_MAPPABLE &&
>>>> -        (!view || view->type == I915_GGTT_VIEW_NORMAL)) {
>>>> +        (!view || view->type == I915_GTT_VIEW_NORMAL)) {
>>>>           /*
>>>>            * If the required space is larger than the available
>>>>            * aperture, we will not able to find a slot for the
>>>> @@ -987,7 +987,7 @@ i915_gem_object_ggtt_pin_ww(struct 
>>>> drm_i915_gem_object *obj,
>>>>   struct i915_vma * __must_check
>>>>   i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
>>>> -             const struct i915_ggtt_view *view,
>>>> +             const struct i915_gtt_view *view,
>>>>                u64 size, u64 alignment, u64 flags)
>>>>   {
>>>>       struct i915_gem_ww_ctx ww;
>>>> diff --git a/drivers/gpu/drm/i915/i915_vma.c 
>>>> b/drivers/gpu/drm/i915/i915_vma.c
>>>> index 260371716490..e300f8070c1d 100644
>>>> --- a/drivers/gpu/drm/i915/i915_vma.c
>>>> +++ b/drivers/gpu/drm/i915/i915_vma.c
>>>> @@ -109,7 +109,7 @@ static void __i915_vma_retire(struct i915_active 
>>>> *ref)
>>>>   static struct i915_vma *
>>>>   vma_create(struct drm_i915_gem_object *obj,
>>>>          struct i915_address_space *vm,
>>>> -       const struct i915_ggtt_view *view)
>>>> +       const struct i915_gtt_view *view)
>>>>   {
>>>>       struct i915_vma *pos = ERR_PTR(-E2BIG);
>>>>       struct i915_vma *vma;
>>>> @@ -141,9 +141,9 @@ vma_create(struct drm_i915_gem_object *obj,
>>>>       INIT_LIST_HEAD(&vma->obj_link);
>>>>       RB_CLEAR_NODE(&vma->obj_node);
>>>> -    if (view && view->type != I915_GGTT_VIEW_NORMAL) {
>>>> -        vma->ggtt_view = *view;
>>>> -        if (view->type == I915_GGTT_VIEW_PARTIAL) {
>>>> +    if (view && view->type != I915_GTT_VIEW_NORMAL) {
>>>> +        vma->gtt_view = *view;
>>>> +        if (view->type == I915_GTT_VIEW_PARTIAL) {
>>>>               GEM_BUG_ON(range_overflows_t(u64,
>>>>                                view->partial.offset,
>>>>                                view->partial.size,
>>>> @@ -151,10 +151,10 @@ vma_create(struct drm_i915_gem_object *obj,
>>>>               vma->size = view->partial.size;
>>>>               vma->size <<= PAGE_SHIFT;
>>>>               GEM_BUG_ON(vma->size > obj->base.size);
>>>> -        } else if (view->type == I915_GGTT_VIEW_ROTATED) {
>>>> +        } else if (view->type == I915_GTT_VIEW_ROTATED) {
>>>>               vma->size = intel_rotation_info_size(&view->rotated);
>>>>               vma->size <<= PAGE_SHIFT;
>>>> -        } else if (view->type == I915_GGTT_VIEW_REMAPPED) {
>>>> +        } else if (view->type == I915_GTT_VIEW_REMAPPED) {
>>>>               vma->size = intel_remapped_info_size(&view->remapped);
>>>>               vma->size <<= PAGE_SHIFT;
>>>>           }
>>>> @@ -248,7 +248,7 @@ vma_create(struct drm_i915_gem_object *obj,
>>>>   static struct i915_vma *
>>>>   i915_vma_lookup(struct drm_i915_gem_object *obj,
>>>>          struct i915_address_space *vm,
>>>> -       const struct i915_ggtt_view *view)
>>>> +       const struct i915_gtt_view *view)
>>>>   {
>>>>       struct rb_node *rb;
>>>> @@ -286,7 +286,7 @@ i915_vma_lookup(struct drm_i915_gem_object *obj,
>>>>   struct i915_vma *
>>>>   i915_vma_instance(struct drm_i915_gem_object *obj,
>>>>             struct i915_address_space *vm,
>>>> -          const struct i915_ggtt_view *view)
>>>> +          const struct i915_gtt_view *view)
>>>>   {
>>>>       struct i915_vma *vma;
>>>> @@ -1203,7 +1203,7 @@ intel_remap_pages(struct intel_remapped_info 
>>>> *rem_info,
>>>>   }
>>>>   static noinline struct sg_table *
>>>> -intel_partial_pages(const struct i915_ggtt_view *view,
>>>> +intel_partial_pages(const struct i915_gtt_view *view,
>>>>               struct drm_i915_gem_object *obj)
>>>>   {
>>>>       struct sg_table *st;
>>>> @@ -1247,33 +1247,33 @@ __i915_vma_get_pages(struct i915_vma *vma)
>>>>        */
>>>>       GEM_BUG_ON(!i915_gem_object_has_pinned_pages(vma->obj));
>>>> -    switch (vma->ggtt_view.type) {
>>>> +    switch (vma->gtt_view.type) {
>>>>       default:
>>>> -        GEM_BUG_ON(vma->ggtt_view.type);
>>>> +        GEM_BUG_ON(vma->gtt_view.type);
>>>>           fallthrough;
>>>> -    case I915_GGTT_VIEW_NORMAL:
>>>> +    case I915_GTT_VIEW_NORMAL:
>>>>           pages = vma->obj->mm.pages;
>>>>           break;
>>>> -    case I915_GGTT_VIEW_ROTATED:
>>>> +    case I915_GTT_VIEW_ROTATED:
>>>>           pages =
>>>> -            intel_rotate_pages(&vma->ggtt_view.rotated, vma->obj);
>>>> +            intel_rotate_pages(&vma->gtt_view.rotated, vma->obj);
>>>>           break;
>>>> -    case I915_GGTT_VIEW_REMAPPED:
>>>> +    case I915_GTT_VIEW_REMAPPED:
>>>>           pages =
>>>> -            intel_remap_pages(&vma->ggtt_view.remapped, vma->obj);
>>>> +            intel_remap_pages(&vma->gtt_view.remapped, vma->obj);
>>>>           break;
>>>> -    case I915_GGTT_VIEW_PARTIAL:
>>>> -        pages = intel_partial_pages(&vma->ggtt_view, vma->obj);
>>>> +    case I915_GTT_VIEW_PARTIAL:
>>>> +        pages = intel_partial_pages(&vma->gtt_view, vma->obj);
>>>>           break;
>>>>       }
>>>>       if (IS_ERR(pages)) {
>>>>           drm_err(&vma->vm->i915->drm,
>>>>               "Failed to get pages for VMA view type %u (%ld)!\n",
>>>> -            vma->ggtt_view.type, PTR_ERR(pages));
>>>> +            vma->gtt_view.type, PTR_ERR(pages));
>>>>           return PTR_ERR(pages);
>>>>       }
>>>> @@ -1806,7 +1806,7 @@ void i915_vma_revoke_mmap(struct i915_vma *vma)
>>>>       GEM_BUG_ON(!vma->obj->userfault_count);
>>>>       node = &vma->mmo->vma_node;
>>>> -    vma_offset = vma->ggtt_view.partial.offset << PAGE_SHIFT;
>>>> +    vma_offset = vma->gtt_view.partial.offset << PAGE_SHIFT;
>>>>       unmap_mapping_range(vma->vm->i915->drm.anon_inode->i_mapping,
>>>>                   drm_vma_node_offset_addr(node) + vma_offset,
>>>>                   vma->size,
>>>> diff --git a/drivers/gpu/drm/i915/i915_vma.h 
>>>> b/drivers/gpu/drm/i915/i915_vma.h
>>>> index 33a58f605d75..aecd9c64486b 100644
>>>> --- a/drivers/gpu/drm/i915/i915_vma.h
>>>> +++ b/drivers/gpu/drm/i915/i915_vma.h
>>>> @@ -43,7 +43,7 @@
>>>>   struct i915_vma *
>>>>   i915_vma_instance(struct drm_i915_gem_object *obj,
>>>>             struct i915_address_space *vm,
>>>> -          const struct i915_ggtt_view *view);
>>>> +          const struct i915_gtt_view *view);
>>>>   void i915_vma_unpin_and_release(struct i915_vma **p_vma, unsigned 
>>>> int flags);
>>>>   #define I915_VMA_RELEASE_MAP BIT(0)
>>>> @@ -160,7 +160,7 @@ static inline void i915_vma_put(struct i915_vma 
>>>> *vma)
>>>>   static inline long
>>>>   i915_vma_compare(struct i915_vma *vma,
>>>>            struct i915_address_space *vm,
>>>> -         const struct i915_ggtt_view *view)
>>>> +         const struct i915_gtt_view *view)
>>>>   {
>>>>       ptrdiff_t cmp;
>>>> @@ -170,8 +170,8 @@ i915_vma_compare(struct i915_vma *vma,
>>>>       if (cmp)
>>>>           return cmp;
>>>> -    BUILD_BUG_ON(I915_GGTT_VIEW_NORMAL != 0);
>>>> -    cmp = vma->ggtt_view.type;
>>>> +    BUILD_BUG_ON(I915_GTT_VIEW_NORMAL != 0);
>>>> +    cmp = vma->gtt_view.type;
>>>>       if (!view)
>>>>           return cmp;
>>>> @@ -181,7 +181,7 @@ i915_vma_compare(struct i915_vma *vma,
>>>>       assert_i915_gem_gtt_types();
>>>> -    /* ggtt_view.type also encodes its size so that we both 
>>>> distinguish
>>>> +    /* gtt_view.type also encodes its size so that we both distinguish
>>>>        * different views using it as a "type" and also use a compact 
>>>> (no
>>>>        * accessing of uninitialised padding bytes) memcmp without 
>>>> storing
>>>>        * an extra parameter or adding more code.
>>>> @@ -191,14 +191,14 @@ i915_vma_compare(struct i915_vma *vma,
>>>>        * we assert above that all branches have the same address, 
>>>> and that
>>>>        * each branch has a unique type/size.
>>>>        */
>>>> -    BUILD_BUG_ON(I915_GGTT_VIEW_NORMAL >= I915_GGTT_VIEW_PARTIAL);
>>>> -    BUILD_BUG_ON(I915_GGTT_VIEW_PARTIAL >= I915_GGTT_VIEW_ROTATED);
>>>> -    BUILD_BUG_ON(I915_GGTT_VIEW_ROTATED >= I915_GGTT_VIEW_REMAPPED);
>>>> +    BUILD_BUG_ON(I915_GTT_VIEW_NORMAL >= I915_GTT_VIEW_PARTIAL);
>>>> +    BUILD_BUG_ON(I915_GTT_VIEW_PARTIAL >= I915_GTT_VIEW_ROTATED);
>>>> +    BUILD_BUG_ON(I915_GTT_VIEW_ROTATED >= I915_GTT_VIEW_REMAPPED);
>>>>       BUILD_BUG_ON(offsetof(typeof(*view), rotated) !=
>>>>                offsetof(typeof(*view), partial));
>>>>       BUILD_BUG_ON(offsetof(typeof(*view), rotated) !=
>>>>                offsetof(typeof(*view), remapped));
>>>> -    return memcmp(&vma->ggtt_view.partial, &view->partial, 
>>>> view->type);
>>>> +    return memcmp(&vma->gtt_view.partial, &view->partial, view->type);
>>>>   }
>>>>   struct i915_vma_work *i915_vma_work(void);
>>>> diff --git a/drivers/gpu/drm/i915/i915_vma_types.h 
>>>> b/drivers/gpu/drm/i915/i915_vma_types.h
>>>> index be6e028c3b57..ec0f6c9f57d0 100644
>>>> --- a/drivers/gpu/drm/i915/i915_vma_types.h
>>>> +++ b/drivers/gpu/drm/i915/i915_vma_types.h
>>>> @@ -67,30 +67,30 @@ enum i915_cache_level;
>>>>    * Implementation and usage
>>>>    *
>>>>    * GGTT views are implemented using VMAs and are distinguished via 
>>>> enum
>>>> - * i915_ggtt_view_type and struct i915_ggtt_view.
>>>> + * i915_gtt_view_type and struct i915_gtt_view.
>>>>    *
>>>>    * A new flavour of core GEM functions which work with GGTT bound 
>>>> objects were
>>>>    * added with the _ggtt_ infix, and sometimes with _view postfix 
>>>> to avoid
>>>> - * renaming  in large amounts of code. They take the struct 
>>>> i915_ggtt_view
>>>> + * renaming  in large amounts of code. They take the struct 
>>>> i915_gtt_view
>>>>    * parameter encapsulating all metadata required to implement a view.
>>>>    *
>>>>    * As a helper for callers which are only interested in the normal 
>>>> view,
>>>> - * globally const i915_ggtt_view_normal singleton instance exists. 
>>>> All old core
>>>> + * globally const i915_gtt_view_normal singleton instance exists. 
>>>> All old core
>>>>    * GEM API functions, the ones not taking the view parameter, are 
>>>> operating on,
>>>>    * or with the normal GGTT view.
>>>>    *
>>>>    * Code wanting to add or use a new GGTT view needs to:
>>>>    *
>>>>    * 1. Add a new enum with a suitable name.
>>>> - * 2. Extend the metadata in the i915_ggtt_view structure if required.
>>>> + * 2. Extend the metadata in the i915_gtt_view structure if required.
>>>>    * 3. Add support to i915_get_vma_pages().
>>>>    *
>>>>    * New views are required to build a scatter-gather table from 
>>>> within the
>>>> - * i915_get_vma_pages function. This table is stored in the 
>>>> vma.ggtt_view and
>>>> + * i915_get_vma_pages function. This table is stored in the 
>>>> vma.gtt_view and
>>>>    * exists for the lifetime of an VMA.
>>>>    *
>>>>    * Core API is designed to have copy semantics which means that 
>>>> passed in
>>>> - * struct i915_ggtt_view does not need to be persistent (left 
>>>> around after
>>>> + * struct i915_gtt_view does not need to be persistent (left around 
>>>> after
>>>>    * calling the core API functions).
>>>>    *
>>>>    */
>>>> @@ -130,11 +130,11 @@ struct intel_partial_info {
>>>>       unsigned int size;
>>>>   } __packed;
>>>> -enum i915_ggtt_view_type {
>>>> -    I915_GGTT_VIEW_NORMAL = 0,
>>>> -    I915_GGTT_VIEW_ROTATED = sizeof(struct intel_rotation_info),
>>>> -    I915_GGTT_VIEW_PARTIAL = sizeof(struct intel_partial_info),
>>>> -    I915_GGTT_VIEW_REMAPPED = sizeof(struct intel_remapped_info),
>>>> +enum i915_gtt_view_type {
>>>> +    I915_GTT_VIEW_NORMAL = 0,
>>>> +    I915_GTT_VIEW_ROTATED = sizeof(struct intel_rotation_info),
>>>> +    I915_GTT_VIEW_PARTIAL = sizeof(struct intel_partial_info),
>>>> +    I915_GTT_VIEW_REMAPPED = sizeof(struct intel_remapped_info),
>>>>   };
>>>>   static inline void assert_i915_gem_gtt_types(void)
>>>> @@ -152,18 +152,18 @@ static inline void 
>>>> assert_i915_gem_gtt_types(void)
>>>>       /* As we encode the size of each branch inside the union into 
>>>> its type,
>>>>        * we have to be careful that each branch has a unique size.
>>>>        */
>>>> -    switch ((enum i915_ggtt_view_type)0) {
>>>> -    case I915_GGTT_VIEW_NORMAL:
>>>> -    case I915_GGTT_VIEW_PARTIAL:
>>>> -    case I915_GGTT_VIEW_ROTATED:
>>>> -    case I915_GGTT_VIEW_REMAPPED:
>>>> +    switch ((enum i915_gtt_view_type)0) {
>>>> +    case I915_GTT_VIEW_NORMAL:
>>>> +    case I915_GTT_VIEW_PARTIAL:
>>>> +    case I915_GTT_VIEW_ROTATED:
>>>> +    case I915_GTT_VIEW_REMAPPED:
>>>>           /* gcc complains if these are identical cases */
>>>>           break;
>>>>       }
>>>>   }
>>>> -struct i915_ggtt_view {
>>>> -    enum i915_ggtt_view_type type;
>>>> +struct i915_gtt_view {
>>>> +    enum i915_gtt_view_type type;
>>>>       union {
>>>>           /* Members need to contain no holes/padding */
>>>>           struct intel_partial_info partial;
>>>> @@ -280,11 +280,11 @@ struct i915_vma {
>>>>       /**
>>>>        * Support different GGTT views into the same object.
>>>>        * This means there can be multiple VMA mappings per object 
>>>> and per VM.
>>>> -     * i915_ggtt_view_type is used to distinguish between those 
>>>> entries.
>>>> -     * The default one of zero (I915_GGTT_VIEW_NORMAL) is default 
>>>> and also
>>>> +     * i915_gtt_view_type is used to distinguish between those 
>>>> entries.
>>>> +     * The default one of zero (I915_GTT_VIEW_NORMAL) is default 
>>>> and also
>>>>        * assumed in GEM functions which take no ggtt view parameter.
>>>>        */
>>>> -    struct i915_ggtt_view ggtt_view;
>>>> +    struct i915_gtt_view gtt_view;
>>>>       /** This object's place on the active/inactive lists */
>>>>       struct list_head vm_link;
>>>> diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c 
>>>> b/drivers/gpu/drm/i915/selftests/i915_vma.c
>>>> index e3821398a5b0..71b52d5efef4 100644
>>>> --- a/drivers/gpu/drm/i915/selftests/i915_vma.c
>>>> +++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
>>>> @@ -51,9 +51,9 @@ static bool assert_vma(struct i915_vma *vma,
>>>>           ok = false;
>>>>       }
>>>> -    if (vma->ggtt_view.type != I915_GGTT_VIEW_NORMAL) {
>>>> +    if (vma->gtt_view.type != I915_GTT_VIEW_NORMAL) {
>>>>           pr_err("VMA created with wrong type [%d]\n",
>>>> -               vma->ggtt_view.type);
>>>> +               vma->gtt_view.type);
>>>>           ok = false;
>>>>       }
>>>> @@ -63,7 +63,7 @@ static bool assert_vma(struct i915_vma *vma,
>>>>   static struct i915_vma *
>>>>   checked_vma_instance(struct drm_i915_gem_object *obj,
>>>>                struct i915_address_space *vm,
>>>> -             const struct i915_ggtt_view *view)
>>>> +             const struct i915_gtt_view *view)
>>>>   {
>>>>       struct i915_vma *vma;
>>>>       bool ok = true;
>>>> @@ -91,7 +91,7 @@ checked_vma_instance(struct drm_i915_gem_object *obj,
>>>>       }
>>>>       if (i915_vma_compare(vma, vma->vm,
>>>> -                 i915_vma_is_ggtt(vma) ? &vma->ggtt_view : NULL)) {
>>>> +                 i915_vma_is_ggtt(vma) ? &vma->gtt_view : NULL)) {
>>>>           pr_err("i915_vma_compare failed with itself\n");
>>>>           return ERR_PTR(-EINVAL);
>>>>       }
>>>> @@ -530,12 +530,12 @@ assert_remapped(struct drm_i915_gem_object *obj,
>>>>       return sg;
>>>>   }
>>>> -static unsigned int remapped_size(enum i915_ggtt_view_type view_type,
>>>> +static unsigned int remapped_size(enum i915_gtt_view_type view_type,
>>>>                     const struct intel_remapped_plane_info *a,
>>>>                     const struct intel_remapped_plane_info *b)
>>>>   {
>>>> -    if (view_type == I915_GGTT_VIEW_ROTATED)
>>>> +    if (view_type == I915_GTT_VIEW_ROTATED)
>>>>           return a->dst_stride * a->width + b->dst_stride * b->width;
>>>>       else
>>>>           return a->dst_stride * a->height + b->dst_stride * b->height;
>>>> @@ -569,9 +569,9 @@ static int igt_vma_rotate_remap(void *arg)
>>>>           { }
>>>>       }, *a, *b;
>>>> -    enum i915_ggtt_view_type types[] = {
>>>> -        I915_GGTT_VIEW_ROTATED,
>>>> -        I915_GGTT_VIEW_REMAPPED,
>>>> +    enum i915_gtt_view_type types[] = {
>>>> +        I915_GTT_VIEW_ROTATED,
>>>> +        I915_GTT_VIEW_REMAPPED,
>>>>           0,
>>>>       }, *t;
>>>>       const unsigned int max_pages = 64;
>>>> @@ -588,7 +588,7 @@ static int igt_vma_rotate_remap(void *arg)
>>>>       for (t = types; *t; t++) {
>>>>       for (a = planes; a->width; a++) {
>>>>           for (b = planes + ARRAY_SIZE(planes); b-- != planes; ) {
>>>> -            struct i915_ggtt_view view = {
>>>> +            struct i915_gtt_view view = {
>>>>                   .type = *t,
>>>>                   .remapped.plane[0] = *a,
>>>>                   .remapped.plane[1] = *b,
>>>> @@ -602,11 +602,11 @@ static int igt_vma_rotate_remap(void *arg)
>>>>               max_offset = max_pages - max_offset;
>>>>               if (!plane_info[0].dst_stride)
>>>> -                plane_info[0].dst_stride = view.type == 
>>>> I915_GGTT_VIEW_ROTATED ?
>>>> +                plane_info[0].dst_stride = view.type == 
>>>> I915_GTT_VIEW_ROTATED ?
>>>>                                       plane_info[0].height :
>>>>                                       plane_info[0].width;
>>>>               if (!plane_info[1].dst_stride)
>>>> -                plane_info[1].dst_stride = view.type == 
>>>> I915_GGTT_VIEW_ROTATED ?
>>>> +                plane_info[1].dst_stride = view.type == 
>>>> I915_GTT_VIEW_ROTATED ?
>>>>                                       plane_info[1].height :
>>>>                                       plane_info[1].width;
>>>> @@ -630,7 +630,7 @@ static int igt_vma_rotate_remap(void *arg)
>>>>                       expected_pages = remapped_size(view.type, 
>>>> &plane_info[0], &plane_info[1]);
>>>> -                    if (view.type == I915_GGTT_VIEW_ROTATED &&
>>>> +                    if (view.type == I915_GTT_VIEW_ROTATED &&
>>>>                           vma->size != expected_pages * PAGE_SIZE) {
>>>>                           pr_err("VMA is wrong size, expected %lu, 
>>>> found %llu\n",
>>>>                                  PAGE_SIZE * expected_pages, 
>>>> vma->size);
>>>> @@ -638,7 +638,7 @@ static int igt_vma_rotate_remap(void *arg)
>>>>                           goto out_object;
>>>>                       }
>>>> -                    if (view.type == I915_GGTT_VIEW_REMAPPED &&
>>>> +                    if (view.type == I915_GTT_VIEW_REMAPPED &&
>>>>                           vma->size > expected_pages * PAGE_SIZE) {
>>>>                           pr_err("VMA is wrong size, expected %lu, 
>>>> found %llu\n",
>>>>                                  PAGE_SIZE * expected_pages, 
>>>> vma->size);
>>>> @@ -668,13 +668,13 @@ static int igt_vma_rotate_remap(void *arg)
>>>>                       sg = vma->pages->sgl;
>>>>                       for (n = 0; n < 
>>>> ARRAY_SIZE(view.rotated.plane); n++) {
>>>> -                        if (view.type == I915_GGTT_VIEW_ROTATED)
>>>> +                        if (view.type == I915_GTT_VIEW_ROTATED)
>>>>                               sg = assert_rotated(obj, 
>>>> &view.rotated, n, sg);
>>>>                           else
>>>>                               sg = assert_remapped(obj, 
>>>> &view.remapped, n, sg);
>>>>                           if (IS_ERR(sg)) {
>>>>                               pr_err("Inconsistent %s VMA pages for 
>>>> plane %d: [(%d, %d, %d, %d, %d), (%d, %d, %d, %d, %d)]\n",
>>>> -                                   view.type == 
>>>> I915_GGTT_VIEW_ROTATED ?
>>>> +                                   view.type == 
>>>> I915_GTT_VIEW_ROTATED ?
>>>>                                      "rotated" : "remapped", n,
>>>>                                      plane_info[0].width,
>>>>                                      plane_info[0].height,
>>>> @@ -741,7 +741,7 @@ static bool assert_partial(struct 
>>>> drm_i915_gem_object *obj,
>>>>   }
>>>>   static bool assert_pin(struct i915_vma *vma,
>>>> -               struct i915_ggtt_view *view,
>>>> +               struct i915_gtt_view *view,
>>>>                  u64 size,
>>>>                  const char *name)
>>>>   {
>>>> @@ -759,8 +759,8 @@ static bool assert_pin(struct i915_vma *vma,
>>>>           ok = false;
>>>>       }
>>>> -    if (view && view->type != I915_GGTT_VIEW_NORMAL) {
>>>> -        if (memcmp(&vma->ggtt_view, view, sizeof(*view))) {
>>>> +    if (view && view->type != I915_GTT_VIEW_NORMAL) {
>>>> +        if (memcmp(&vma->gtt_view, view, sizeof(*view))) {
>>>>               pr_err("(%s) VMA mismatch upon creation!\n",
>>>>                      name);
>>>>               ok = false;
>>>> @@ -772,9 +772,9 @@ static bool assert_pin(struct i915_vma *vma,
>>>>               ok = false;
>>>>           }
>>>>       } else {
>>>> -        if (vma->ggtt_view.type != I915_GGTT_VIEW_NORMAL) {
>>>> +        if (vma->gtt_view.type != I915_GTT_VIEW_NORMAL) {
>>>>               pr_err("Not the normal ggtt view! Found %d\n",
>>>> -                   vma->ggtt_view.type);
>>>> +                   vma->gtt_view.type);
>>>>               ok = false;
>>>>           }
>>>> @@ -818,14 +818,14 @@ static int igt_vma_partial(void *arg)
>>>>           nvma = 0;
>>>>           for_each_prime_number_from(sz, 1, npages) {
>>>>               for_each_prime_number_from(offset, 0, npages - sz) {
>>>> -                struct i915_ggtt_view view;
>>>> +                struct i915_gtt_view view;
>>>> -                view.type = I915_GGTT_VIEW_PARTIAL;
>>>> +                view.type = I915_GTT_VIEW_PARTIAL;
>>>>                   view.partial.offset = offset;
>>>>                   view.partial.size = sz;
>>>>                   if (sz == npages)
>>>> -                    view.type = I915_GGTT_VIEW_NORMAL;
>>>> +                    view.type = I915_GTT_VIEW_NORMAL;
>>>>                   vma = checked_vma_instance(obj, vm, &view);
>>>>                   if (IS_ERR(vma)) {
>>>> @@ -976,9 +976,9 @@ static int igt_vma_remapped_gtt(void *arg)
>>>>           { }
>>>>       }, *p;
>>>> -    enum i915_ggtt_view_type types[] = {
>>>> -        I915_GGTT_VIEW_ROTATED,
>>>> -        I915_GGTT_VIEW_REMAPPED,
>>>> +    enum i915_gtt_view_type types[] = {
>>>> +        I915_GTT_VIEW_ROTATED,
>>>> +        I915_GTT_VIEW_REMAPPED,
>>>>           0,
>>>>       }, *t;
>>>>       struct drm_i915_gem_object *obj;
>>>> @@ -996,7 +996,7 @@ static int igt_vma_remapped_gtt(void *arg)
>>>>       for (t = types; *t; t++) {
>>>>           for (p = planes; p->width; p++) {
>>>> -            struct i915_ggtt_view view = {
>>>> +            struct i915_gtt_view view = {
>>>>                   .type = *t,
>>>>                   .rotated.plane[0] = *p,
>>>>               };
>>>> @@ -1012,7 +1012,7 @@ static int igt_vma_remapped_gtt(void *arg)
>>>>                   goto out;
>>>>               if (!plane_info[0].dst_stride)
>>>> -                plane_info[0].dst_stride = *t == 
>>>> I915_GGTT_VIEW_ROTATED ?
>>>> +                plane_info[0].dst_stride = *t == 
>>>> I915_GTT_VIEW_ROTATED ?
>>>>                                    p->height : p->width;
>>>>               vma = i915_gem_object_ggtt_pin(obj, &view, 0, 0, 
>>>> PIN_MAPPABLE);
>>>> @@ -1021,7 +1021,7 @@ static int igt_vma_remapped_gtt(void *arg)
>>>>                   goto out;
>>>>               }
>>>> -            GEM_BUG_ON(vma->ggtt_view.type != *t);
>>>> +            GEM_BUG_ON(vma->gtt_view.type != *t);
>>>>               map = i915_vma_pin_iomap(vma);
>>>>               i915_vma_unpin(vma);
>>>> @@ -1035,7 +1035,7 @@ static int igt_vma_remapped_gtt(void *arg)
>>>>                       unsigned int offset;
>>>>                       u32 val = y << 16 | x;
>>>> -                    if (*t == I915_GGTT_VIEW_ROTATED)
>>>> +                    if (*t == I915_GTT_VIEW_ROTATED)
>>>>                           offset = (x * plane_info[0].dst_stride + 
>>>> y) * PAGE_SIZE;
>>>>                       else
>>>>                           offset = (y * plane_info[0].dst_stride + 
>>>> x) * PAGE_SIZE;
>>>> @@ -1052,7 +1052,7 @@ static int igt_vma_remapped_gtt(void *arg)
>>>>                   goto out;
>>>>               }
>>>> -            GEM_BUG_ON(vma->ggtt_view.type != I915_GGTT_VIEW_NORMAL);
>>>> +            GEM_BUG_ON(vma->gtt_view.type != I915_GTT_VIEW_NORMAL);
>>>>               map = i915_vma_pin_iomap(vma);
>>>>               i915_vma_unpin(vma);
>>>> @@ -1067,7 +1067,7 @@ static int igt_vma_remapped_gtt(void *arg)
>>>>                       u32 exp = y << 16 | x;
>>>>                       u32 val;
>>>> -                    if (*t == I915_GGTT_VIEW_ROTATED)
>>>> +                    if (*t == I915_GTT_VIEW_ROTATED)
>>>>                           src_idx = rotated_index(&view.rotated, 0, 
>>>> x, y);
>>>>                       else
>>>>                           src_idx = remapped_index(&view.remapped, 
>>>> 0, x, y);
>>>> @@ -1076,7 +1076,7 @@ static int igt_vma_remapped_gtt(void *arg)
>>>>                       val = ioread32(&map[offset / sizeof(*map)]);
>>>>                       if (val != exp) {
>>>>                           pr_err("%s VMA write test failed, expected 
>>>> 0x%x, found 0x%x\n",
>>>> -                               *t == I915_GGTT_VIEW_ROTATED ? 
>>>> "Rotated" : "Remapped",
>>>> +                               *t == I915_GTT_VIEW_ROTATED ? 
>>>> "Rotated" : "Remapped",
>>>>                                  exp, val);
>>>>                           i915_vma_unpin_iomap(vma);
>>>>                           err = -EINVAL;
