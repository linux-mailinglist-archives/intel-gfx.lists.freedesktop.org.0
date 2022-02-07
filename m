Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEBEF4ABC6B
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Feb 2022 12:47:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97EAE10F835;
	Mon,  7 Feb 2022 11:47:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C544B10F834
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Feb 2022 11:47:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644234440; x=1675770440;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=dJGEJPqdxFmyXZqjExQkG1dJnRp/JN/qnL2qRS5p8ck=;
 b=OW2CLP25UwcfHkxBB80r/sLCQjjx3WKmxWNVbd54yVy/A19lLDU3FK5z
 WNmBuvPvbVZaw5z4zKh1sOUr/3n9Jll9xHf+52HCuabhUkyUw8F/nmfb7
 btsVaSXfwXOk8RwXhRqUdS/TbkqjxpAqSee/6yDmB/XuR5XIPHCoatka2
 jwsw7CF+yvY9H5FBNL3S+BrCTVpDFrWgRVYAxDmMKRkIZUt4tDccnSeo7
 dsTiZyZ8P0+26HNWY1QwFxwuPlWncIrEq0QR+CKrsqY89yYJAlwdjGAL/
 elCRD8mpcs+jCUPiI0ayurtWYvf+H31DuJxV7Qzpi0zMtXLaQ9LdAO5HM g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10250"; a="247532624"
X-IronPort-AV: E=Sophos;i="5.88,349,1635231600"; d="scan'208";a="247532624"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2022 03:47:20 -0800
X-IronPort-AV: E=Sophos;i="5.88,349,1635231600"; d="scan'208";a="481561235"
Received: from conroyco-mobl2.ger.corp.intel.com (HELO [10.213.251.21])
 ([10.213.251.21])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2022 03:47:18 -0800
Message-ID: <4475de33-22b3-edbb-2995-f72e9bcc4162@linux.intel.com>
Date: Mon, 7 Feb 2022 11:47:16 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Vivek Kasireddy <vivek.kasireddy@intel.com>
References: <c8691153-023c-941d-d8b7-831220caa6e6@linux.intel.com>
 <20220204012210.1517091-1-vivek.kasireddy@intel.com>
 <YgD7UiFEdeWl/dsS@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <YgD7UiFEdeWl/dsS@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gem: Don't try to map and
 fence large scanout buffers (v6)
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 07/02/2022 10:58, Ville Syrjälä wrote:
> On Thu, Feb 03, 2022 at 05:22:10PM -0800, Vivek Kasireddy wrote:
>> On platforms capable of allowing 8K (7680 x 4320) modes, pinning 2 or
>> more framebuffers/scanout buffers results in only one that is mappable/
>> fenceable. Therefore, pageflipping between these 2 FBs where only one
>> is mappable/fenceable creates latencies large enough to miss alternate
>> vblanks thereby producing less optimal framerate.
>>
>> This mainly happens because when i915_gem_object_pin_to_display_plane()
>> is called to pin one of the FB objs, the associated vma is identified
>> as misplaced and therefore i915_vma_unbind() is called which unbinds and
>> evicts it. This misplaced vma gets subseqently pinned only when
>> i915_gem_object_ggtt_pin_ww() is called without PIN_MAPPABLE. This
>> results in a latency of ~10ms and happens every other vblank/repaint cycle.
>> Therefore, to fix this issue, we try to see if there is space to map
>> at-least two objects of a given size and return early if there isn't. This
>> would ensure that we do not try with PIN_MAPPABLE for any objects that
>> are too big to map thereby preventing unncessary unbind.
>>
>> Testcase:
>> Running Weston and weston-simple-egl on an Alderlake_S (ADLS) platform
>> with a 8K@60 mode results in only ~40 FPS. Since upstream Weston submits
>> a frame ~7ms before the next vblank, the latencies seen between atomic
>> commit and flip event are 7, 24 (7 + 16.66), 7, 24..... suggesting that
>> it misses the vblank every other frame.
>>
>> Here is the ftrace snippet that shows the source of the ~10ms latency:
>>                i915_gem_object_pin_to_display_plane() {
>> 0.102 us   |    i915_gem_object_set_cache_level();
>>                  i915_gem_object_ggtt_pin_ww() {
>> 0.390 us   |      i915_vma_instance();
>> 0.178 us   |      i915_vma_misplaced();
>>                    i915_vma_unbind() {
>>                    __i915_active_wait() {
>> 0.082 us   |        i915_active_acquire_if_busy();
>> 0.475 us   |      }
>>                    intel_runtime_pm_get() {
>> 0.087 us   |        intel_runtime_pm_acquire();
>> 0.259 us   |      }
>>                    __i915_active_wait() {
>> 0.085 us   |        i915_active_acquire_if_busy();
>> 0.240 us   |      }
>>                    __i915_vma_evict() {
>>                      ggtt_unbind_vma() {
>>                        gen8_ggtt_clear_range() {
>> 10507.255 us |        }
>> 10507.689 us |      }
>> 10508.516 us |   }
>>
>> v2: Instead of using bigjoiner checks, determine whether a scanout
>>      buffer is too big by checking to see if it is possible to map
>>      two of them into the ggtt.
>>
>> v3 (Ville):
>> - Count how many fb objects can be fit into the available holes
>>    instead of checking for a hole twice the object size.
>> - Take alignment constraints into account.
>> - Limit this large scanout buffer check to >= Gen 11 platforms.
>>
>> v4:
>> - Remove existing heuristic that checks just for size. (Ville)
>> - Return early if we find space to map at-least two objects. (Tvrtko)
>> - Slightly update the commit message.
>>
>> v5: (Tvrtko)
>> - Rename the function to indicate that the object may be too big to
>>    map into the aperture.
>> - Account for guard pages while calculating the total size required
>>    for the object.
>> - Do not subject all objects to the heuristic check and instead
>>    consider objects only of a certain size.
>> - Do the hole walk using the rbtree.
>> - Preserve the existing PIN_NONBLOCK logic.
>> - Drop the PIN_MAPPABLE check while pinning the VMA.
>>
>> v6: (Tvrtko)
>> - Return 0 on success and the specific error code on failure to
>>    preserve the existing behavior.
>>
>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>> Cc: Manasi Navare <manasi.d.navare@intel.com>
>> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
>> ---
>>   drivers/gpu/drm/i915/i915_gem.c | 120 ++++++++++++++++++++++++--------
>>   1 file changed, 90 insertions(+), 30 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
>> index e3a2c2a0e156..39f0d17550c3 100644
>> --- a/drivers/gpu/drm/i915/i915_gem.c
>> +++ b/drivers/gpu/drm/i915/i915_gem.c
>> @@ -46,6 +46,7 @@
>>   #include "gem/i915_gem_mman.h"
>>   #include "gem/i915_gem_region.h"
>>   #include "gem/i915_gem_userptr.h"
>> +#include "gem/i915_gem_tiling.h"
>>   #include "gt/intel_engine_user.h"
>>   #include "gt/intel_gt.h"
>>   #include "gt/intel_gt_pm.h"
>> @@ -876,6 +877,92 @@ static void discard_ggtt_vma(struct i915_vma *vma)
>>   	spin_unlock(&obj->vma.lock);
>>   }
>>   
>> +static int
>> +i915_gem_object_fits_in_aperture(struct drm_i915_gem_object *obj,
>> +				 u64 alignment, u64 flags)
>> +{
>> +	struct drm_i915_private *i915 = to_i915(obj->base.dev);
>> +	struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
>> +	struct drm_mm_node *hole;
>> +	u64 hole_start, hole_end, start, end;
>> +	u64 fence_size, fence_alignment;
>> +	unsigned int count = 0;
>> +
>> +	/*
>> +	 * If the required space is larger than the available
>> +	 * aperture, we will not able to find a slot for the
>> +	 * object and unbinding the object now will be in
>> +	 * vain. Worse, doing so may cause us to ping-pong
>> +	 * the object in and out of the Global GTT and
>> +	 * waste a lot of cycles under the mutex.
>> +	 */
>> +	if (obj->base.size > ggtt->mappable_end)
>> +		return -E2BIG;
>> +
>> +	/*
>> +	 * If NONBLOCK is set the caller is optimistically
>> +	 * trying to cache the full object within the mappable
>> +	 * aperture, and *must* have a fallback in place for
>> +	 * situations where we cannot bind the object. We
>> +	 * can be a little more lax here and use the fallback
>> +	 * more often to avoid costly migrations of ourselves
>> +	 * and other objects within the aperture.
>> +	 */
>> +	if (!(flags & PIN_NONBLOCK))
>> +		return 0;
>> +
>> +	/*
>> +	 * We only consider objects whose size is at-least a quarter of
>> +	 * the aperture to be too big and subject them to the new
>> +	 * heuristic below.
>> +	 */
>> +	if (obj->base.size < ggtt->mappable_end / 4)
>> +		return 0;
> 
> That seems a fairly arbitrary thing to put here. Maybe something the
> caller should check/specify?

I have no strong opinion on this one. In my mind I categorised it under 
"is it a large framebuffer" heuristics. Previously it was less than one 
half of aperture always okay, now one quarter, plus 2x hole check if 
larger. Both are heuristics. I even mentioned earlier if 2x should be an 
input parameter as well, but again, given it's not an exported function 
couldn't really justify it.

> 
>> +
>> +	if (HAS_GMCH(i915) || DISPLAY_VER(i915) < 11 ||
>> +	    !i915_gem_object_is_framebuffer(obj))
>> +		return 0;
> 
> None of that seems appropriate for a generic gem function
> with this name.

It's not exported though, maybe remove i915_gem prefix to avoid any 
ideas of it being generic?

Regards,

Tvrtko

> 
>> +
>> +	fence_size = i915_gem_fence_size(i915, obj->base.size,
>> +					 i915_gem_object_get_tiling(obj),
>> +					 i915_gem_object_get_stride(obj));
>> +
>> +	if (i915_vm_has_cache_coloring(&ggtt->vm))
>> +		fence_size += 2 * I915_GTT_PAGE_SIZE;
>> +
>> +	fence_alignment = i915_gem_fence_alignment(i915, obj->base.size,
>> +						   i915_gem_object_get_tiling(obj),
>> +						   i915_gem_object_get_stride(obj));
>> +	alignment = max_t(u64, alignment, fence_alignment);
>> +
>> +	/*
>> +	 * Assuming this object is a large scanout buffer, we try to find
>> +	 * out if there is room to map at-least two of them. There could
>> +	 * be space available to map one but to be consistent, we try to
>> +	 * avoid mapping/fencing any of them.
>> +	 */
>> +	drm_mm_for_each_suitable_hole(hole, &ggtt->vm.mm, 0, ggtt->mappable_end,
>> +				      fence_size, DRM_MM_INSERT_LOW) {
>> +		hole_start = drm_mm_hole_node_start(hole);
>> +		hole_end = hole_start + hole->hole_size;
>> +
>> +		do {
>> +			start = round_up(hole_start, alignment);
>> +			end = min_t(u64, hole_end, ggtt->mappable_end);
>> +
>> +			if (range_overflows(start, fence_size, end))
>> +				break;
>> +
>> +			if (++count >= 2)
>> +				return 0;
>> +
>> +			hole_start = start + fence_size;
>> +		} while (1);
>> +	}
>> +
>> +	return -ENOSPC;
>> +}
>> +
>>   struct i915_vma *
>>   i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_object *obj,
>>   			    struct i915_gem_ww_ctx *ww,
>> @@ -891,36 +978,9 @@ i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_object *obj,
>>   
>>   	if (flags & PIN_MAPPABLE &&
>>   	    (!view || view->type == I915_GGTT_VIEW_NORMAL)) {
>> -		/*
>> -		 * If the required space is larger than the available
>> -		 * aperture, we will not able to find a slot for the
>> -		 * object and unbinding the object now will be in
>> -		 * vain. Worse, doing so may cause us to ping-pong
>> -		 * the object in and out of the Global GTT and
>> -		 * waste a lot of cycles under the mutex.
>> -		 */
>> -		if (obj->base.size > ggtt->mappable_end)
>> -			return ERR_PTR(-E2BIG);
>> -
>> -		/*
>> -		 * If NONBLOCK is set the caller is optimistically
>> -		 * trying to cache the full object within the mappable
>> -		 * aperture, and *must* have a fallback in place for
>> -		 * situations where we cannot bind the object. We
>> -		 * can be a little more lax here and use the fallback
>> -		 * more often to avoid costly migrations of ourselves
>> -		 * and other objects within the aperture.
>> -		 *
>> -		 * Half-the-aperture is used as a simple heuristic.
>> -		 * More interesting would to do search for a free
>> -		 * block prior to making the commitment to unbind.
>> -		 * That caters for the self-harm case, and with a
>> -		 * little more heuristics (e.g. NOFAULT, NOEVICT)
>> -		 * we could try to minimise harm to others.
>> -		 */
>> -		if (flags & PIN_NONBLOCK &&
>> -		    obj->base.size > ggtt->mappable_end / 2)
>> -			return ERR_PTR(-ENOSPC);
>> +		ret = i915_gem_object_fits_in_aperture(obj, alignment, flags);
>> +		if (ret)
>> +			return ERR_PTR(ret);
>>   	}
>>   
>>   new_vma:
>> -- 
>> 2.34.1
> 
