Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B64584DC49C
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 12:16:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B7DF10E89B;
	Thu, 17 Mar 2022 11:16:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2577E10E7E3
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 11:16:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647515781; x=1679051781;
 h=message-id:date:mime-version:subject:to:references:from:
 cc:in-reply-to:content-transfer-encoding;
 bh=SI0FKO7I6S8olgwAftOrDDcOopEWmCnUPdpmcvchXsc=;
 b=jqbxjX7XyHSuTEfSQ3Dj9Me2R1964SylbSkEpilax+1tyWn3IPn4Ko2D
 QaEzpeiEUJ7z8NYoxhUhDtY4Bnt4TcgDagEMyI6zT0U+zra8JtqXbW5SR
 R+ux6or0RQl01kXhPH5VMaubw/bkiiF9XP/HySFRFnDCvjEyjwZA8QXeT
 yQkN0PUfF2sMXqnfAitum9iMFXD/9luWSIo6+DAaetWeLzWqebHyhys4S
 zkoRL5njH1WSX69+k6cES4g2MNItLTNNOpdK1ihmMAFg2cuRoCqVzfOMw
 ABIvFz86gpbKS9RcVHTpCx7PYeqGS9u22V6fBdxta3b+V0D9gsgGWb7rP Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10288"; a="237452259"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="237452259"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 04:16:20 -0700
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="516727085"
Received: from liujoann-mobl.amr.corp.intel.com (HELO [10.209.162.134])
 ([10.209.162.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 04:16:18 -0700
Message-ID: <f2d2fcab-447a-4e18-19ed-3615cd5d1cd4@linux.intel.com>
Date: Thu, 17 Mar 2022 11:16:15 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Vivek Kasireddy <vivek.kasireddy@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220317072333.1048130-1-vivek.kasireddy@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220317072333.1048130-1-vivek.kasireddy@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915/gem: Don't evict unmappable
 VMAs when pinning with PIN_MAPPABLE
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


On 17/03/2022 07:23, Vivek Kasireddy wrote:
> On platforms capable of allowing 8K (7680 x 4320) modes, pinning 2 or
> more framebuffers/scanout buffers results in only one that is mappable/
> fenceable. Therefore, pageflipping between these 2 FBs where only one
> is mappable/fenceable creates latencies large enough to miss alternate
> vblanks thereby producing less optimal framerate.
> 
> This mainly happens because when i915_gem_object_pin_to_display_plane()
> is called to pin one of the FB objs, the associated vma is identified
> as misplaced -- because there is no space for it in the aperture --
> and therefore i915_vma_unbind() is called which unbinds and evicts it.
> This misplaced vma gets subseqently pinned only when
> i915_gem_object_ggtt_pin_ww() is called without PIN_MAPPABLE. This whole
> thing results in a latency of ~10ms and happens every other repaint cycle.

Just out of curiosity - have you looked at where does this 10ms come 
from? Like is it simply clearing/writing PTEs so expensive, or there is 
more to it? Apologies if I asked this before..

> Therefore, to fix this issue, we just ensure that the misplaced VMA
> does not get evicted when we try to pin it with PIN_MAPPABLE -- by
> returning early if the mappable/fenceable flag is not set.
> 
> Testcase:
> Running Weston and weston-simple-egl on an Alderlake_S (ADLS) platform
> with a 8K@60 mode results in only ~40 FPS (compared to ~59 FPS with
> this patch). Since upstream Weston submits a frame ~7ms before the
> next vblank, the latencies seen between atomic commit and flip event
> are 7, 24 (7 + 16.66), 7, 24..... suggesting that it misses the
> vblank every other frame.
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
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_gem.c | 8 +++++++-
>   1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index 9747924cc57b..7307c5de1c58 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -939,8 +939,14 @@ i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_object *obj,
>   			if (i915_vma_is_pinned(vma) || i915_vma_is_active(vma))
>   				return ERR_PTR(-ENOSPC);
>   
> +			/*
> +			 * If this misplaced vma is too big (i.e, at-least
> +			 * half the size of aperture) or just unmappable,
> +			 * we would not be able to pin with PIN_MAPPABLE.
> +			 */

I would be tempted to describe the ping-pong issue in the comment. In 
short would do it, but just because git blame on a line of code tends to 
fail to lead to the correct commit message after a while.

So maybe just say along the lines of "If the misplaced vma is too big 
... or hasn't been pinned mappable before, we ignore the misplacement 
when PIN_NONBLOCK is set in order to avoid ping-pong of double (or more) 
-buffered frame buffers into the aperture and out on every vblank."

>   			if (flags & PIN_MAPPABLE &&
> -			    vma->fence_size > ggtt->mappable_end / 2)
> +			    (vma->fence_size > ggtt->mappable_end / 2 ||
> +			    !i915_vma_is_map_and_fenceable(vma)))
>   				return ERR_PTR(-ENOSPC);
>   		}
>   

With the expanded comment it looks good to me.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

+ Daniel if he wants to double check it.

Regards,

Tvrtko
