Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE9243C514
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 10:27:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27B4B6E4AD;
	Wed, 27 Oct 2021 08:27:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50AF76E4AD
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Oct 2021 08:27:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="253656470"
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="253656470"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 01:27:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="486566394"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 27 Oct 2021 01:27:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Oct 2021 11:27:20 +0300
Date: Wed, 27 Oct 2021 11:27:20 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "Navare, Manasi D" <manasi.d.navare@intel.com>
Message-ID: <YXkNaOxG2r+y3dzj@intel.com>
References: <20211026063811.1375040-1-vivek.kasireddy@intel.com>
 <YXfFOw8jQMiOzTy9@intel.com>
 <f35abfc540b9475b9f31121653586bed@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f35abfc540b9475b9f31121653586bed@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Don't try to map and fence
 8K/bigjoiner scanout buffers
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

On Wed, Oct 27, 2021 at 06:41:25AM +0000, Kasireddy, Vivek wrote:
> Hi Ville,
> 
> > 
> > On Mon, Oct 25, 2021 at 11:38:11PM -0700, Vivek Kasireddy wrote:
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
> > > commit and flip event is 7, 24 (7 + 16.66), 7, 24..... suggesting that
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
> > > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > > Cc: Manasi Navare <manasi.d.navare@intel.com>
> > > Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_fb_pin.c  | 11 +++++++++--
> > >  drivers/gpu/drm/i915/display/intel_overlay.c | 11 ++++++++---
> > >  drivers/gpu/drm/i915/gem/i915_gem_domain.c   |  6 ++++--
> > >  drivers/gpu/drm/i915/gem/i915_gem_object.h   |  3 ++-
> > >  4 files changed, 23 insertions(+), 8 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> > b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> > > index 3f77f3013584..53c156d9a9f9 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> > > @@ -144,7 +144,7 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
> > >
> > >  	if (!ret) {
> > >  		vma = i915_gem_object_pin_to_display_plane(obj, &ww, alignment,
> > > -							   view, pinctl);
> > > +							   view, pinctl, uses_fence);
> > >  		if (IS_ERR(vma)) {
> > >  			ret = PTR_ERR(vma);
> > >  			goto err_unpin;
> > > @@ -218,9 +218,16 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state)
> > >  		INTEL_INFO(dev_priv)->display.cursor_needs_physical;
> > >
> > >  	if (!intel_fb_uses_dpt(fb)) {
> > > +		struct intel_crtc *crtc = to_intel_crtc(plane_state->hw.crtc);
> > > +		struct intel_crtc_state *crtc_state =
> > > +					to_intel_crtc_state(crtc->base.state);
> > > +		bool uses_fence = intel_plane_uses_fence(plane_state);
> > > +		bool is_bigjoiner = crtc_state->bigjoiner ||
> > > +				    crtc_state->bigjoiner_slave;
> > 
> > Bigjoiner is just an implementation detail. It is not the cause of any
> > of this.
> [Kasireddy, Vivek] Right, bigjoiner/8K is just exposing the underlying issue; which is
> that sometimes, large objects/scanout buffers that fail range overflow checks and thus
> are not mappable/fenceable keep getting evicted and reinserted leading to latencies. 
> I guess I could mark an object/vma as permanently un-mappable/un-fenceable and try
> not to map it subsequently but this would result in one scanout buffer that is mappable
> but others that are not. Would this be acceptable -- assuming we are pageflipping
> between multiple FBs?
> Any ideas on solving this issue cleanly?

We might just consider skipping PIN_MAPPABLE if the vma is too big.
What the specific defition of "too big" would be I'm not sure.

-- 
Ville Syrjälä
Intel
