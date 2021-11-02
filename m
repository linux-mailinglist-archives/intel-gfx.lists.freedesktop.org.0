Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2808443078
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Nov 2021 15:34:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0DAA6E953;
	Tue,  2 Nov 2021 14:34:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 938256E953
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Nov 2021 14:34:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="317471726"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="317471726"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 07:34:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="467758020"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 02 Nov 2021 07:34:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Nov 2021 16:34:15 +0200
Date: Tue, 2 Nov 2021 16:34:15 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
Message-ID: <YYFMZ4ke4qIvI4ku@intel.com>
References: <YXqdNxrTCGS40jNZ@intel.com>
 <20211029074303.1566344-1-vivek.kasireddy@intel.com>
 <YX+/oVeiLMbJF/hq@intel.com>
 <bbdb0ef427534d38b3dbaeddf849f134@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <bbdb0ef427534d38b3dbaeddf849f134@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Don't try to map and fence
 large scanout buffers (v3)
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 01, 2021 at 09:27:30PM +0000, Kasireddy, Vivek wrote:
> Hi Ville,
> 
> > 
> > On Fri, Oct 29, 2021 at 12:43:03AM -0700, Vivek Kasireddy wrote:
> > > On platforms capable of allowing 8K (7680 x 4320) modes, pinning 2 or
> > > more framebuffers/scanout buffers results in only one that is mappable/
> > > fenceable. Therefore, pageflipping between these 2 FBs where only one
> > > is mappable/fenceable creates latencies large enough to miss alternate
> > > vblanks thereby producing less optimal framerate.
> > >
> > > This mainly happens because when i915_gem_object_pin_to_display_plane()
> > > is called to pin one of the FB objs, the associated vma is identified
> > > as misplaced and therefore i915_vma_unbind() is called which unbinds and
> > > evicts it. This misplaced vma gets subseqently pinned only when
> > > i915_gem_object_ggtt_pin_ww() is called without the mappable flag. This
> > > results in a latency of ~10ms and happens every other vblank/repaint cycle.
> > >
> > > Testcase:
> > > Running Weston and weston-simple-egl on an Alderlake_S (ADLS) platform
> > > with a 8K@60 mode results in only ~40 FPS. Since upstream Weston submits
> > > a frame ~7ms before the next vblank, the latencies seen between atomic
> > > commit and flip event are 7, 24 (7 + 16.66), 7, 24..... suggesting that
> > > it misses the vblank every other frame.
> > >
> > > Here is the ftrace snippet that shows the source of the ~10ms latency:
> > >               i915_gem_object_pin_to_display_plane() {
> > > 0.102 us   |    i915_gem_object_set_cache_level();
> > >                 i915_gem_object_ggtt_pin_ww() {
> > > 0.390 us   |      i915_vma_instance();
> > > 0.178 us   |      i915_vma_misplaced();
> > >                   i915_vma_unbind() {
> > >                   __i915_active_wait() {
> > > 0.082 us   |        i915_active_acquire_if_busy();
> > > 0.475 us   |      }
> > >                   intel_runtime_pm_get() {
> > > 0.087 us   |        intel_runtime_pm_acquire();
> > > 0.259 us   |      }
> > >                   __i915_active_wait() {
> > > 0.085 us   |        i915_active_acquire_if_busy();
> > > 0.240 us   |      }
> > >                   __i915_vma_evict() {
> > >                     ggtt_unbind_vma() {
> > >                       gen8_ggtt_clear_range() {
> > > 10507.255 us |        }
> > > 10507.689 us |      }
> > > 10508.516 us |   }
> > >
> > > v2: Instead of using bigjoiner checks, determine whether a scanout
> > >     buffer is too big by checking to see if it is possible to map
> > >     two of them into the ggtt.
> > >
> > > v3 (Ville):
> > > - Count how many fb objects can be fit into the available holes
> > >   instead of checking for a hole twice the object size.
> > > - Take alignment constraints into account.
> > > - Limit this large scanout buffer check to >= Gen 12 platforms.
> > >
> > > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > > Cc: Manasi Navare <manasi.d.navare@intel.com>
> > > Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/i915_gem.c | 65 ++++++++++++++++++++++++++++-----
> > >  drivers/gpu/drm/i915/i915_vma.c |  2 +-
> > >  2 files changed, 57 insertions(+), 10 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> > > index 981e383d1a5d..761dc385fbfc 100644
> > > --- a/drivers/gpu/drm/i915/i915_gem.c
> > > +++ b/drivers/gpu/drm/i915/i915_gem.c
> > > @@ -866,6 +866,61 @@ static void discard_ggtt_vma(struct i915_vma *vma)
> > >  	spin_unlock(&obj->vma.lock);
> > >  }
> > >
> > > +static bool i915_gem_obj_too_big(struct drm_i915_gem_object *obj,
> > > +				 u64 alignment)
> > > +{
> > > +	struct drm_i915_private *i915 = to_i915(obj->base.dev);
> > > +	struct i915_ggtt *ggtt = &i915->ggtt;
> > > +	struct drm_mm_node *hole;
> > > +	u64 hole_start, hole_end, start, end;
> > > +	u64 fence_size, fence_alignment;
> > > +	unsigned int count = 0;
> > > +
> > > +	/*
> > > +	 * If the required space is larger than the available
> > > +	 * aperture, we will not able to find a slot for the
> > > +	 * object and unbinding the object now will be in
> > > +	 * vain. Worse, doing so may cause us to ping-pong
> > > +	 * the object in and out of the Global GTT and
> > > +	 * waste a lot of cycles under the mutex.
> > > +	 */
> > > +	if (obj->base.size > ggtt->mappable_end)
> > > +		return true;
> > > +
> > > +	if (HAS_GMCH(i915) || DISPLAY_VER(i915) < 11 ||
> > > +	    !i915_gem_object_is_framebuffer(obj))
> > > +		return false;
> > > +
> > > +	fence_size = i915_gem_fence_size(i915, obj->base.size,
> > > +					 i915_gem_object_get_tiling(obj),
> > > +					 i915_gem_object_get_stride(obj));
> > > +	fence_alignment = i915_gem_fence_alignment(i915, obj->base.size,
> > > +					 i915_gem_object_get_tiling(obj),
> > > +					 i915_gem_object_get_stride(obj));
> > > +	alignment = max_t(u64, alignment, fence_alignment);
> > > +
> > > +	/*
> > > +	 * Assuming this object is a large scanout buffer, we try to find
> > > +	 * out if there is room to map at-least two of them. There could
> > > +	 * be space available to map one but to be consistent, we try to
> > > +	 * avoid mapping/fencing any of them.
> > > +	 */
> > > +	drm_mm_for_each_hole(hole, &ggtt->vm.mm, hole_start, hole_end) {
> > > +		do {
> > > +			start = round_up(hole_start, alignment);
> > > +			end = min_t(u64, hole_end, ggtt->mappable_end);
> > > +
> > > +			if (range_overflows(start, fence_size, end))
> > > +				break;
> > > +
> > > +			count++;
> > > +			hole_start = start + fence_size;
> > > +		} while (1);
> > > +	}
> > > +
> > > +	return count < 2;
> > > +}
> > > +
> > >  struct i915_vma *
> > >  i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_object *obj,
> > >  			    struct i915_gem_ww_ctx *ww,
> > > @@ -879,15 +934,7 @@ i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_object
> > *obj,
> > >
> > >  	if (flags & PIN_MAPPABLE &&
> > >  	    (!view || view->type == I915_GGTT_VIEW_NORMAL)) {
> > > -		/*
> > > -		 * If the required space is larger than the available
> > > -		 * aperture, we will not able to find a slot for the
> > > -		 * object and unbinding the object now will be in
> > > -		 * vain. Worse, doing so may cause us to ping-pong
> > > -		 * the object in and out of the Global GTT and
> > > -		 * waste a lot of cycles under the mutex.
> > > -		 */
> > > -		if (obj->base.size > ggtt->mappable_end)
> > > +		if (i915_gem_obj_too_big(obj, alignment))
> > >  			return ERR_PTR(-E2BIG);
> > >
> > >  		/*
> > 
> > As I pointed out we already have the current ping-pong heuristic
> > right here. You should adjust that instead of adding yet another
> > heuristic in parallel.
> [Kasireddy, Vivek] I think the heuristic you are referring to is:
> obj->base.size > ggtt->mappable_end / 2
> 
> Are you saying that I should do something like
> obj->base.size > ggtt->mappable_end / 4
> and return early? I guess I could do that and it would work in this case
> but I thought it would make more sense to look at the available space
> dynamically given that both the 8K FBs fail the
> obj->base.size > ggtt->mappable_end / 2 check.

No. I'm saying you do roughly what you do here, but do it in the right
place (ie. replace the /2 heuristic with this fancier one).

-- 
Ville Syrjälä
Intel
