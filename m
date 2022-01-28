Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 926FD49FE18
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 17:34:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5E3B10E201;
	Fri, 28 Jan 2022 16:34:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2559010E201
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 16:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643387639; x=1674923639;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=dIvcmR7cbN7ZfpbM0WhX0pRHeOtPWQXA2HgL0ryEsi8=;
 b=TM+cEQNpY5PO7A7Rycmrer73yaoTJWrBEAF6I+rGNYChurFzwkxGwUbN
 3B8dEFJ0ATE1eIWp0Gg/BBPhSl2oL9bN4KqQPpZPuAWV7lsuVpcmUw+zd
 Cn0m+gxC4v9Nngh/fY4halw/lV60RO/5z2C1wUpFQvsTTaGViuNh2mPxr
 +USnkhPVgkwjaZrYAnO+G1SxZA292k2Wikwlfkh8rHWG1bdqBZWPF/oEY
 o2iqHxbwhauGYJQoiX8Gt/wi570SQMxrzJP6zmCcAvboCtR/rDagcsGEC
 IZYcQwVqEMs40E1H35zR3PrMkaxlqPQyfhkPLXBRXx9kRECCXjq6Lo22Q Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="230729264"
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; d="scan'208";a="230729264"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 08:33:58 -0800
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; d="scan'208";a="521766734"
Received: from mcummins-mobl1.ger.corp.intel.com (HELO [10.213.196.43])
 ([10.213.196.43])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 08:33:56 -0800
Message-ID: <730f20ec-bcdb-e051-4ca2-7e5609e58839@linux.intel.com>
Date: Fri, 28 Jan 2022 16:33:54 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: Vivek Kasireddy <vivek.kasireddy@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220119231214.3663150-1-vivek.kasireddy@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220119231214.3663150-1-vivek.kasireddy@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v4 RESEND] drm/i915/gem: Don't try to map
 and fence large scanout buffers (v4)
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


Hi,

On 19/01/2022 23:12, Vivek Kasireddy wrote:
> On platforms capable of allowing 8K (7680 x 4320) modes, pinning 2 or
> more framebuffers/scanout buffers results in only one that is mappable/
> fenceable. Therefore, pageflipping between these 2 FBs where only one
> is mappable/fenceable creates latencies large enough to miss alternate
> vblanks thereby producing less optimal framerate.
> 
> This mainly happens because when i915_gem_object_pin_to_display_plane()
> is called to pin one of the FB objs, the associated vma is identified
> as misplaced and therefore i915_vma_unbind() is called which unbinds and
> evicts it. This misplaced vma gets subseqently pinned only when
> i915_gem_object_ggtt_pin_ww() is called without PIN_MAPPABLE. This
> results in a latency of ~10ms and happens every other vblank/repaint cycle.
> Therefore, to fix this issue, we try to see if there is space to map
> at-least two objects of a given size and return early if there isn't. This
> would ensure that we do not try with PIN_MAPPABLE for any objects that
> are too big to map thereby preventing unncessary unbind.
> 
> Testcase:
> Running Weston and weston-simple-egl on an Alderlake_S (ADLS) platform
> with a 8K@60 mode results in only ~40 FPS. Since upstream Weston submits
> a frame ~7ms before the next vblank, the latencies seen between atomic
> commit and flip event are 7, 24 (7 + 16.66), 7, 24..... suggesting that
> it misses the vblank every other frame.
> 
> Here is the ftrace snippet that shows the source of the ~10ms latency:
>                i915_gem_object_pin_to_display_plane() {
> 0.102 us   |    i915_gem_object_set_cache_level();
>                  i915_gem_object_ggtt_pin_ww() {
> 0.390 us   |      i915_vma_instance();
> 0.178 us   |      i915_vma_misplaced();
>                    i915_vma_unbind() {
>                    __i915_active_wait() {
> 0.082 us   |        i915_active_acquire_if_busy();
> 0.475 us   |      }
>                    intel_runtime_pm_get() {
> 0.087 us   |        intel_runtime_pm_acquire();
> 0.259 us   |      }
>                    __i915_active_wait() {
> 0.085 us   |        i915_active_acquire_if_busy();
> 0.240 us   |      }
>                    __i915_vma_evict() {
>                      ggtt_unbind_vma() {
>                        gen8_ggtt_clear_range() {
> 10507.255 us |        }
> 10507.689 us |      }
> 10508.516 us |   }
> 
> v2: Instead of using bigjoiner checks, determine whether a scanout
>      buffer is too big by checking to see if it is possible to map
>      two of them into the ggtt.
> 
> v3 (Ville):
> - Count how many fb objects can be fit into the available holes
>    instead of checking for a hole twice the object size.
> - Take alignment constraints into account.
> - Limit this large scanout buffer check to >= Gen 11 platforms.
> 
> v4:
> - Remove existing heuristic that checks just for size. (Ville)
> - Return early if we find space to map at-least two objects. (Tvrtko)
> - Slightly update the commit message.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_gem.c | 88 ++++++++++++++++++++++-----------
>   drivers/gpu/drm/i915/i915_vma.c |  2 +-
>   2 files changed, 60 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index e3a2c2a0e156..95ec972f8c8a 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -46,6 +46,7 @@
>   #include "gem/i915_gem_mman.h"
>   #include "gem/i915_gem_region.h"
>   #include "gem/i915_gem_userptr.h"
> +#include "gem/i915_gem_tiling.h"
>   #include "gt/intel_engine_user.h"
>   #include "gt/intel_gt.h"
>   #include "gt/intel_gt_pm.h"
> @@ -876,6 +877,63 @@ static void discard_ggtt_vma(struct i915_vma *vma)
>   	spin_unlock(&obj->vma.lock);
>   }
>   
> +static bool i915_gem_obj_too_big(struct drm_i915_gem_object *obj,
> +				 u64 alignment)

In the meantime codebase got i915_gem_object_size_2big, which has a more 
fundamental purpose, so I suggest you rename this one to something which 
immediately indicates this is just about the mappable aperture.

Perhaps i915_gem_object_fits_in_aperture(obj, alignment, flags)?

> +{
> +	struct drm_i915_private *i915 = to_i915(obj->base.dev);
> +	struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
> +	struct drm_mm_node *hole;
> +	u64 hole_start, hole_end, start, end;
> +	u64 fence_size, fence_alignment;
> +	unsigned int count = 0;
> +
> +	/*
> +	 * If the required space is larger than the available
> +	 * aperture, we will not able to find a slot for the
> +	 * object and unbinding the object now will be in
> +	 * vain. Worse, doing so may cause us to ping-pong
> +	 * the object in and out of the Global GTT and
> +	 * waste a lot of cycles under the mutex.
> +	 */
> +	if (obj->base.size > ggtt->mappable_end)
> +		return true;
> +
> +	if (HAS_GMCH(i915) || DISPLAY_VER(i915) < 11 ||
> +	    !i915_gem_object_is_framebuffer(obj))
> +		return false;
> +
> +	fence_size = i915_gem_fence_size(i915, obj->base.size,
> +					 i915_gem_object_get_tiling(obj),
> +					 i915_gem_object_get_stride(obj));

You will have to account for guard pages on some platforms so do:

if (i915_vm_has_cache_coloring(&ggtt->vm))
         fence_size += 2 * I915_GTT_PAGE_SIZE;

> +	fence_alignment = i915_gem_fence_alignment(i915, obj->base.size,
> +						   i915_gem_object_get_tiling(obj),
> +						   i915_gem_object_get_stride(obj));
> +	alignment = max_t(u64, alignment, fence_alignment);
> +
> +	/*
> +	 * Assuming this object is a large scanout buffer, we try to find
> +	 * out if there is room to map at-least two of them. There could
> +	 * be space available to map one but to be consistent, we try to
> +	 * avoid mapping/fencing any of them.
> +	 */
> +	drm_mm_for_each_hole(hole, &ggtt->vm.mm, hole_start, hole_end) {

Would it be worth not doing the hole search below a certain object size? 
Stick to existing heuristics I mean for small buffers since they cannot 
possibly be large frame buffers.

Also, I am guessing hole search can be expensive since it appears to be 
a linear list. DRM core has also a tree tracking it but nothing exported 
to use it.

It follows that regardless of the potential object size fork in the 
logic (like below x MiB use todays fast logic, above you more expensive 
hole search), you could follow up with a patch to improve the hole walk 
from linear to using the existing rbtree (export a new helper from DRM 
core). You could of course do that straight away as well if you feel 
like tackling it.

> +		do {
> +			start = round_up(hole_start, alignment);
> +			end = min_t(u64, hole_end, ggtt->mappable_end);
> +
> +			if (range_overflows(start, fence_size, end))
> +				break;
> +
> +			if (++count >= 2)
> +				return false;
> +
> +			hole_start = start + fence_size;
> +		} while (1);
> +	}
> +
> +	return true;
> +}
> +
>   struct i915_vma *
>   i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_object *obj,
>   			    struct i915_gem_ww_ctx *ww,
> @@ -891,36 +949,8 @@ i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_object *obj,
>   
>   	if (flags & PIN_MAPPABLE &&
>   	    (!view || view->type == I915_GGTT_VIEW_NORMAL)) {
> -		/*
> -		 * If the required space is larger than the available
> -		 * aperture, we will not able to find a slot for the
> -		 * object and unbinding the object now will be in
> -		 * vain. Worse, doing so may cause us to ping-pong
> -		 * the object in and out of the Global GTT and
> -		 * waste a lot of cycles under the mutex.
> -		 */
> -		if (obj->base.size > ggtt->mappable_end)
> +		if (i915_gem_obj_too_big(obj, alignment))
>   			return ERR_PTR(-E2BIG);
> -
> -		/*
> -		 * If NONBLOCK is set the caller is optimistically
> -		 * trying to cache the full object within the mappable
> -		 * aperture, and *must* have a fallback in place for
> -		 * situations where we cannot bind the object. We
> -		 * can be a little more lax here and use the fallback
> -		 * more often to avoid costly migrations of ourselves
> -		 * and other objects within the aperture.
> -		 *
> -		 * Half-the-aperture is used as a simple heuristic.
> -		 * More interesting would to do search for a free
> -		 * block prior to making the commitment to unbind.
> -		 * That caters for the self-harm case, and with a
> -		 * little more heuristics (e.g. NOFAULT, NOEVICT)
> -		 * we could try to minimise harm to others.
> -		 */
> -		if (flags & PIN_NONBLOCK &&
> -		    obj->base.size > ggtt->mappable_end / 2)
> -			return ERR_PTR(-ENOSPC);

It is important not to lose the PIN_NONBLOCK logic, which therefore I 
think needs to go into your helper. Like:

...
	if (obj->base.size > ggtt->mappable_end)
		return true;

+	if (!(flags & PIN_NONBLOCK))
+		return false;
...

In other words pinning *must* *not* fail when PIN_NONBLOCK is not given 
for cases where today it would succeed.

It will work for your case because if you look into 
i915_gem_object_pin_to_display_plane, first pin attempt will fail 
because PIN_MAPPABLE and PIN_NONBLOCK will both be set. The fallback pin 
will then work because PIN_MAPPABLE is not set by the caller (apart on 
GMCH platforms), so there is no issue with ping-pong between 8k 
framebuffers.

This also means you should preserve the first part of the above comment 
and just edit the 2nd part to describe the new heuristics.

>   	}
>   
>   new_vma:
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index b959e904c4d3..65ec191e814e 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -1428,7 +1428,7 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
>   		if (err)
>   			goto err_active;
>   
> -		if (i915_is_ggtt(vma->vm))
> +		if (i915_is_ggtt(vma->vm) && flags & PIN_MAPPABLE)

This hunk you should drop. __i915_vma_set_map_and_fenceable will do the 
right thing already and will work better for VMA reuse if the respective 
flags are set when VMA happens to be in the right position etc.

Regards,

Tvrtko

>   			__i915_vma_set_map_and_fenceable(vma);
>   	}
>   
> 
