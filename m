Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 481574D97F8
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 10:45:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07D9310E985;
	Tue, 15 Mar 2022 09:45:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A07310E975;
 Tue, 15 Mar 2022 09:45:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647337525; x=1678873525;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=eyfZyUrDHyhMxReq/zn0CQTHs/y5Xwqz/T+Ytfth6R8=;
 b=N9710aZ8SWQxXdM0GucbvHIBv/8eq7WT9vlJtmWhH/8q8RdQaOI7oLE+
 oqvorsNWvrWl9IFpi0v2plBYOI7R5/SxDTyPUFITBD/ACuks/mVQqz3Um
 iF/KPKbQNdDKR0UAQyQbjUtI8NrVX3rOhkP/j+h5psOIgGRs4yC55YP+F
 r4nP15qDRxe2qRn7djfx3Jxn1LWeg17Mr5FXh2qZ1qxS+LRIoYvu05sf3
 jNAqL0N7AvmtYxfQfxepPyPCNkyTPQEe/CpsNBhQ7FiNzqevJvPa6ZX6D
 i2usFcr+NMWLG/aWsMH44SA/1vGbzgLWQ/cFNFhZ0tzm0kuwOpzkgdYJn w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="316979709"
X-IronPort-AV: E=Sophos;i="5.90,182,1643702400"; d="scan'208";a="316979709"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 02:45:24 -0700
X-IronPort-AV: E=Sophos;i="5.90,182,1643702400"; d="scan'208";a="549539526"
Received: from rdoostne-mobl.amr.corp.intel.com (HELO [10.212.38.21])
 ([10.212.38.21])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 02:45:23 -0700
Message-ID: <a072da3c-5267-07cd-7710-7cd0ad840cb8@linux.intel.com>
Date: Tue, 15 Mar 2022 09:45:20 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>,
 Daniel Vetter <daniel@ffwll.ch>
References: <20220307202121.389550-1-vivek.kasireddy@intel.com>
 <20220307202121.389550-3-vivek.kasireddy@intel.com>
 <CAKMK7uGxvC+mzmH7EPcqggZ05u--D6N29Ati0YuuEc-Tgd-0Gw@mail.gmail.com>
 <1f9db89a-0d31-d9f5-2b4d-7856aa9ffa01@linux.intel.com>
 <db9ecbf6e27f4a7d8e3d2aa24c13c9c0@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <db9ecbf6e27f4a7d8e3d2aa24c13c9c0@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v6 2/2] drm/i915/gem: Don't try to map and
 fence large scanout buffers (v9)
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 15/03/2022 07:28, Kasireddy, Vivek wrote:
> Hi Tvrtko, Daniel,
> 
>>
>> On 11/03/2022 09:39, Daniel Vetter wrote:
>>> On Mon, 7 Mar 2022 at 21:38, Vivek Kasireddy <vivek.kasireddy@intel.com> wrote:
>>>>
>>>> On platforms capable of allowing 8K (7680 x 4320) modes, pinning 2 or
>>>> more framebuffers/scanout buffers results in only one that is mappable/
>>>> fenceable. Therefore, pageflipping between these 2 FBs where only one
>>>> is mappable/fenceable creates latencies large enough to miss alternate
>>>> vblanks thereby producing less optimal framerate.
>>>>
>>>> This mainly happens because when i915_gem_object_pin_to_display_plane()
>>>> is called to pin one of the FB objs, the associated vma is identified
>>>> as misplaced and therefore i915_vma_unbind() is called which unbinds and
>>>> evicts it. This misplaced vma gets subseqently pinned only when
>>>> i915_gem_object_ggtt_pin_ww() is called without PIN_MAPPABLE. This
>>>> results in a latency of ~10ms and happens every other vblank/repaint cycle.
>>>> Therefore, to fix this issue, we try to see if there is space to map
>>>> at-least two objects of a given size and return early if there isn't. This
>>>> would ensure that we do not try with PIN_MAPPABLE for any objects that
>>>> are too big to map thereby preventing unncessary unbind.
>>>>
>>>> Testcase:
>>>> Running Weston and weston-simple-egl on an Alderlake_S (ADLS) platform
>>>> with a 8K@60 mode results in only ~40 FPS. Since upstream Weston submits
>>>> a frame ~7ms before the next vblank, the latencies seen between atomic
>>>> commit and flip event are 7, 24 (7 + 16.66), 7, 24..... suggesting that
>>>> it misses the vblank every other frame.
>>>>
>>>> Here is the ftrace snippet that shows the source of the ~10ms latency:
>>>>                 i915_gem_object_pin_to_display_plane() {
>>>> 0.102 us   |    i915_gem_object_set_cache_level();
>>>>                   i915_gem_object_ggtt_pin_ww() {
>>>> 0.390 us   |      i915_vma_instance();
>>>> 0.178 us   |      i915_vma_misplaced();
>>>>                     i915_vma_unbind() {
>>>>                     __i915_active_wait() {
>>>> 0.082 us   |        i915_active_acquire_if_busy();
>>>> 0.475 us   |      }
>>>>                     intel_runtime_pm_get() {
>>>> 0.087 us   |        intel_runtime_pm_acquire();
>>>> 0.259 us   |      }
>>>>                     __i915_active_wait() {
>>>> 0.085 us   |        i915_active_acquire_if_busy();
>>>> 0.240 us   |      }
>>>>                     __i915_vma_evict() {
>>>>                       ggtt_unbind_vma() {
>>>>                         gen8_ggtt_clear_range() {
>>>> 10507.255 us |        }
>>>> 10507.689 us |      }
>>>> 10508.516 us |   }
>>>>
>>>> v2: Instead of using bigjoiner checks, determine whether a scanout
>>>>       buffer is too big by checking to see if it is possible to map
>>>>       two of them into the ggtt.
>>>>
>>>> v3 (Ville):
>>>> - Count how many fb objects can be fit into the available holes
>>>>     instead of checking for a hole twice the object size.
>>>> - Take alignment constraints into account.
>>>> - Limit this large scanout buffer check to >= Gen 11 platforms.
>>>>
>>>> v4:
>>>> - Remove existing heuristic that checks just for size. (Ville)
>>>> - Return early if we find space to map at-least two objects. (Tvrtko)
>>>> - Slightly update the commit message.
>>>>
>>>> v5: (Tvrtko)
>>>> - Rename the function to indicate that the object may be too big to
>>>>     map into the aperture.
>>>> - Account for guard pages while calculating the total size required
>>>>     for the object.
>>>> - Do not subject all objects to the heuristic check and instead
>>>>     consider objects only of a certain size.
>>>> - Do the hole walk using the rbtree.
>>>> - Preserve the existing PIN_NONBLOCK logic.
>>>> - Drop the PIN_MAPPABLE check while pinning the VMA.
>>>>
>>>> v6: (Tvrtko)
>>>> - Return 0 on success and the specific error code on failure to
>>>>     preserve the existing behavior.
>>>>
>>>> v7: (Ville)
>>>> - Drop the HAS_GMCH(i915), DISPLAY_VER(i915) < 11 and
>>>>     size < ggtt->mappable_end / 4 checks.
>>>> - Drop the redundant check that is based on previous heuristic.
>>>>
>>>> v8:
>>>> - Make sure that we are holding the mutex associated with ggtt vm
>>>>     as we traverse the hole nodes.
>>>>
>>>> v9: (Tvrtko)
>>>> - Use mutex_lock_interruptible_nested() instead of mutex_lock().
>>>>
>>>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>>>> Cc: Manasi Navare <manasi.d.navare@intel.com>
>>>> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/i915_gem.c | 128 +++++++++++++++++++++++---------
>>>>    1 file changed, 94 insertions(+), 34 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
>>>> index 9747924cc57b..e0d731b3f215 100644
>>>> --- a/drivers/gpu/drm/i915/i915_gem.c
>>>> +++ b/drivers/gpu/drm/i915/i915_gem.c
>>>> @@ -49,6 +49,7 @@
>>>>    #include "gem/i915_gem_pm.h"
>>>>    #include "gem/i915_gem_region.h"
>>>>    #include "gem/i915_gem_userptr.h"
>>>> +#include "gem/i915_gem_tiling.h"
>>>>    #include "gt/intel_engine_user.h"
>>>>    #include "gt/intel_gt.h"
>>>>    #include "gt/intel_gt_pm.h"
>>>> @@ -882,6 +883,96 @@ static void discard_ggtt_vma(struct i915_vma *vma)
>>>>           spin_unlock(&obj->vma.lock);
>>>>    }
>>>>
>>>> +static int
>>>> +i915_gem_object_fits_in_aperture(struct drm_i915_gem_object *obj,
>>>> +                                u64 alignment, u64 flags)
>>>
>>> Tvrtko asked me to ack the first patch, but then I looked at this and
>>> started wondering.
>>>
>>> Conceptually this doesn't pass the smell test. What if we have
>>> multiple per-crtc buffers? Multiple planes on the same crtc? What if
>>> the app does triple buffer? You'll be forever busy tuning this
>>> heuristics, which can't fundamentally be fixed I think. The old "half
>>> of mappable" heuristic isn't really better, but at least it was dead
>>> simple.
>>>
>>> Imo what we need here is a change in approach:
>>> 1. Check whether the useable view for scanout exists already. If yes,
>>> use that. This should avoid the constant unbinding stalls.
>>> 2. Try to in buffer to mappabley, but without evicting anything (so
>>> not the non-blocking thing)
>>> 3. Pin the buffer with the most lenient approach
>>>
>>> Even the non-blocking interim stage is dangerous, since it'll just
>>> result in other buffers (e.g. when triple-buffering) getting unbound
>>> and we're back to the same stall. Note that this could have an impact
>>> on cpu rendering compositors, where we might end up relying a lot more
>>> partial views. But as long as we are a tad more aggressive (i.e. the
>>> non-blocking binding) in the mmap path that should work out to keep
>>> everything balanced, since usually you render first before you display
>>> anything. And so the buffer should end up in the ideal place.
>>>
>>> I'd try to first skip the 2. step since I think it'll require a bit of
>>> work, and frankly I don't think we care about the potential fallout.
>>
>> To be sure I understand, you propose to stop trying to pin mappable by default. Ie. stop
>> respecting this comment from i915_gem_object_pin_to_display_plane:
>>
>> 	/*
>> 	 * As the user may map the buffer once pinned in the display plane
>> 	 * (e.g. libkms for the bootup splash), we have to ensure that we
>> 	 * always use map_and_fenceable for all scanout buffers. However,
>> 	 * it may simply be too big to fit into mappable, in which case
>> 	 * put it anyway and hope that userspace can cope (but always first
>> 	 * try to preserve the existing ABI).
>> 	 */
> [Kasireddy, Vivek] Digging further, this is what the commit message that added
> the above comment says:
> commit 2efb813d5388e18255c54afac77bd91acd586908
> Author: Chris Wilson <chris@chris-wilson.co.uk>
> Date:   Thu Aug 18 17:17:06 2016 +0100
> 
>      drm/i915: Fallback to using unmappable memory for scanout
> 
>      The existing ABI says that scanouts are pinned into the mappable region
>      so that legacy clients (e.g. old Xorg or plymouthd) can write directly
>      into the scanout through a GTT mapping. However if the surface does not
>      fit into the mappable region, we are better off just trying to fit it
>      anywhere and hoping for the best. (Any userspace that is capable of
>      using ginormous scanouts is also likely not to rely on pure GTT
>      updates.) With the partial vma fault support, we are no longer
>      restricted to only using scanouts that we can pin (though it is still
>      preferred for performance reasons and for powersaving features like
>      FBC).
> 
>>
>> By a quick look, for this case it appears we would end up creating partial views for CPU
>> access (since the normal mapping would be busy/unpinnable). Worst case for this is to
>> create a bunch of 1MiB VMAs so something to check would be how long those persist in
>> memory before they get released. Or perhaps the bootup splash use case is not common
>> these days?
> [Kasireddy, Vivek] AFAIK, Plymouth is still the default bootup splash service on Fedora,
> Ubuntu and most other distributions. And, I took a quick look at it and IIUC, it (Plymouth's
> drm plugin) seems to create a dumb FB, mmap and update it via the dirty_fb ioctl. This
> would not to be a problem on ADL-S where there is space in mappable for one 8K FB.
> 

FBC is a good point - correct me if I am wrong, but if we dropped trying 
to map in aperture by default it looks like we would lose it and that 
would be a significant power regression. In which case it doesn't seem 
like that would be an option.

Which I think leaves us with _some_ heuristics in any case.

1) N-holes heuristics.

2) Don't ever try PIN_MAPPABLE for framebuffers larger than some 
percentage of aperture.

Could this solve the 8k issue, most of the time, maybe? Could the 
current "aperture / 2" test be expressed generically in some terms? Like 
"(aperture - 10% (or some absolute value)) / 2" to account for non-fb 
objects? I forgot what you said the relationship between aperture size 
and 8k fb size was.

3) Don't evict for PIN_MAPPABLE mismatches when 
i915_gem_object_ggtt_pin_ww->i915_vma_misplaced is called on behalf of 
i915_gem_object_pin_to_display_plane. Assumption being if we ended up 
with a non-mappable fb to start with, we must not try to re-bind it or 
we risk ping-pong latencies.

The last would I guess need to distinguish between PIN_MAPPABLE passed 
in versus opportunistically added by i915_gem_object_pin_to_display_plane.

How intrusive would it be to implement this option I am not sure without 
trying myself.

> Given this, do you think it would work if we just preserve the existing behavior and
> tweak the heuristic introduced in this patch to look for space in aperture for only
> one FB instead of two? Or, is there no good option for solving this issue other than
> to create 1MB VMAs?

I did not get how having one hole would solve the issue. Wouldn't it 
still hit the re-bind ping-pong? Or there isn't even a single hole for 
8k fb typically?

Regards,

Tvrtko
