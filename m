Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D714422AA
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Nov 2021 22:30:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D5A289FDD;
	Mon,  1 Nov 2021 21:30:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA96E89FDD
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Nov 2021 21:30:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="211178547"
X-IronPort-AV: E=Sophos;i="5.87,200,1631602800"; d="scan'208";a="211178547"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 14:27:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,200,1631602800"; d="scan'208";a="488816068"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga007.jf.intel.com with ESMTP; 01 Nov 2021 14:27:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 14:27:30 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 14:27:30 -0700
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.2242.012;
 Mon, 1 Nov 2021 14:27:30 -0700
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915/gem: Don't try to map and fence large scanout
 buffers (v3)
Thread-Index: AQHXzJqhXzFnjT3OUUqa5oSLG6AuJ6vu8JGAgAA7LsA=
Date: Mon, 1 Nov 2021 21:27:30 +0000
Message-ID: <bbdb0ef427534d38b3dbaeddf849f134@intel.com>
References: <YXqdNxrTCGS40jNZ@intel.com>
 <20211029074303.1566344-1-vivek.kasireddy@intel.com>
 <YX+/oVeiLMbJF/hq@intel.com>
In-Reply-To: <YX+/oVeiLMbJF/hq@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
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

Hi Ville,

>=20
> On Fri, Oct 29, 2021 at 12:43:03AM -0700, Vivek Kasireddy wrote:
> > On platforms capable of allowing 8K (7680 x 4320) modes, pinning 2 or
> > more framebuffers/scanout buffers results in only one that is mappable/
> > fenceable. Therefore, pageflipping between these 2 FBs where only one
> > is mappable/fenceable creates latencies large enough to miss alternate
> > vblanks thereby producing less optimal framerate.
> >
> > This mainly happens because when i915_gem_object_pin_to_display_plane()
> > is called to pin one of the FB objs, the associated vma is identified
> > as misplaced and therefore i915_vma_unbind() is called which unbinds an=
d
> > evicts it. This misplaced vma gets subseqently pinned only when
> > i915_gem_object_ggtt_pin_ww() is called without the mappable flag. This
> > results in a latency of ~10ms and happens every other vblank/repaint cy=
cle.
> >
> > Testcase:
> > Running Weston and weston-simple-egl on an Alderlake_S (ADLS) platform
> > with a 8K@60 mode results in only ~40 FPS. Since upstream Weston submit=
s
> > a frame ~7ms before the next vblank, the latencies seen between atomic
> > commit and flip event are 7, 24 (7 + 16.66), 7, 24..... suggesting that
> > it misses the vblank every other frame.
> >
> > Here is the ftrace snippet that shows the source of the ~10ms latency:
> >               i915_gem_object_pin_to_display_plane() {
> > 0.102 us   |    i915_gem_object_set_cache_level();
> >                 i915_gem_object_ggtt_pin_ww() {
> > 0.390 us   |      i915_vma_instance();
> > 0.178 us   |      i915_vma_misplaced();
> >                   i915_vma_unbind() {
> >                   __i915_active_wait() {
> > 0.082 us   |        i915_active_acquire_if_busy();
> > 0.475 us   |      }
> >                   intel_runtime_pm_get() {
> > 0.087 us   |        intel_runtime_pm_acquire();
> > 0.259 us   |      }
> >                   __i915_active_wait() {
> > 0.085 us   |        i915_active_acquire_if_busy();
> > 0.240 us   |      }
> >                   __i915_vma_evict() {
> >                     ggtt_unbind_vma() {
> >                       gen8_ggtt_clear_range() {
> > 10507.255 us |        }
> > 10507.689 us |      }
> > 10508.516 us |   }
> >
> > v2: Instead of using bigjoiner checks, determine whether a scanout
> >     buffer is too big by checking to see if it is possible to map
> >     two of them into the ggtt.
> >
> > v3 (Ville):
> > - Count how many fb objects can be fit into the available holes
> >   instead of checking for a hole twice the object size.
> > - Take alignment constraints into account.
> > - Limit this large scanout buffer check to >=3D Gen 12 platforms.
> >
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > Cc: Manasi Navare <manasi.d.navare@intel.com>
> > Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_gem.c | 65 ++++++++++++++++++++++++++++-----
> >  drivers/gpu/drm/i915/i915_vma.c |  2 +-
> >  2 files changed, 57 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i91=
5_gem.c
> > index 981e383d1a5d..761dc385fbfc 100644
> > --- a/drivers/gpu/drm/i915/i915_gem.c
> > +++ b/drivers/gpu/drm/i915/i915_gem.c
> > @@ -866,6 +866,61 @@ static void discard_ggtt_vma(struct i915_vma *vma)
> >  	spin_unlock(&obj->vma.lock);
> >  }
> >
> > +static bool i915_gem_obj_too_big(struct drm_i915_gem_object *obj,
> > +				 u64 alignment)
> > +{
> > +	struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
> > +	struct i915_ggtt *ggtt =3D &i915->ggtt;
> > +	struct drm_mm_node *hole;
> > +	u64 hole_start, hole_end, start, end;
> > +	u64 fence_size, fence_alignment;
> > +	unsigned int count =3D 0;
> > +
> > +	/*
> > +	 * If the required space is larger than the available
> > +	 * aperture, we will not able to find a slot for the
> > +	 * object and unbinding the object now will be in
> > +	 * vain. Worse, doing so may cause us to ping-pong
> > +	 * the object in and out of the Global GTT and
> > +	 * waste a lot of cycles under the mutex.
> > +	 */
> > +	if (obj->base.size > ggtt->mappable_end)
> > +		return true;
> > +
> > +	if (HAS_GMCH(i915) || DISPLAY_VER(i915) < 11 ||
> > +	    !i915_gem_object_is_framebuffer(obj))
> > +		return false;
> > +
> > +	fence_size =3D i915_gem_fence_size(i915, obj->base.size,
> > +					 i915_gem_object_get_tiling(obj),
> > +					 i915_gem_object_get_stride(obj));
> > +	fence_alignment =3D i915_gem_fence_alignment(i915, obj->base.size,
> > +					 i915_gem_object_get_tiling(obj),
> > +					 i915_gem_object_get_stride(obj));
> > +	alignment =3D max_t(u64, alignment, fence_alignment);
> > +
> > +	/*
> > +	 * Assuming this object is a large scanout buffer, we try to find
> > +	 * out if there is room to map at-least two of them. There could
> > +	 * be space available to map one but to be consistent, we try to
> > +	 * avoid mapping/fencing any of them.
> > +	 */
> > +	drm_mm_for_each_hole(hole, &ggtt->vm.mm, hole_start, hole_end) {
> > +		do {
> > +			start =3D round_up(hole_start, alignment);
> > +			end =3D min_t(u64, hole_end, ggtt->mappable_end);
> > +
> > +			if (range_overflows(start, fence_size, end))
> > +				break;
> > +
> > +			count++;
> > +			hole_start =3D start + fence_size;
> > +		} while (1);
> > +	}
> > +
> > +	return count < 2;
> > +}
> > +
> >  struct i915_vma *
> >  i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_object *obj,
> >  			    struct i915_gem_ww_ctx *ww,
> > @@ -879,15 +934,7 @@ i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_ob=
ject
> *obj,
> >
> >  	if (flags & PIN_MAPPABLE &&
> >  	    (!view || view->type =3D=3D I915_GGTT_VIEW_NORMAL)) {
> > -		/*
> > -		 * If the required space is larger than the available
> > -		 * aperture, we will not able to find a slot for the
> > -		 * object and unbinding the object now will be in
> > -		 * vain. Worse, doing so may cause us to ping-pong
> > -		 * the object in and out of the Global GTT and
> > -		 * waste a lot of cycles under the mutex.
> > -		 */
> > -		if (obj->base.size > ggtt->mappable_end)
> > +		if (i915_gem_obj_too_big(obj, alignment))
> >  			return ERR_PTR(-E2BIG);
> >
> >  		/*
>=20
> As I pointed out we already have the current ping-pong heuristic
> right here. You should adjust that instead of adding yet another
> heuristic in parallel.
[Kasireddy, Vivek] I think the heuristic you are referring to is:
obj->base.size > ggtt->mappable_end / 2

Are you saying that I should do something like
obj->base.size > ggtt->mappable_end / 4
and return early? I guess I could do that and it would work in this case
but I thought it would make more sense to look at the available space
dynamically given that both the 8K FBs fail the
obj->base.size > ggtt->mappable_end / 2 check.

Thanks,
Vivek

>=20
> > diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i91=
5_vma.c
> > index 90546fa58fc1..551644dbfa8a 100644
> > --- a/drivers/gpu/drm/i915/i915_vma.c
> > +++ b/drivers/gpu/drm/i915/i915_vma.c
> > @@ -977,7 +977,7 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct
> i915_gem_ww_ctx *ww,
> >  		if (err)
> >  			goto err_active;
> >
> > -		if (i915_is_ggtt(vma->vm))
> > +		if (i915_is_ggtt(vma->vm) && flags & PIN_MAPPABLE)
> >  			__i915_vma_set_map_and_fenceable(vma);
> >  	}
> >
> > --
> > 2.31.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
