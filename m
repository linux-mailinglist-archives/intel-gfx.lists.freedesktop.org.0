Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A044B43C31F
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 08:41:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA94F6E52E;
	Wed, 27 Oct 2021 06:41:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED5236E52E
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Oct 2021 06:41:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="293549613"
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="293549613"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 23:41:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="529506649"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga001.jf.intel.com with ESMTP; 26 Oct 2021 23:41:26 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 26 Oct 2021 23:41:25 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 26 Oct 2021 23:41:25 -0700
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.2242.012;
 Tue, 26 Oct 2021 23:41:25 -0700
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>, "Navare, Manasi D"
 <manasi.d.navare@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/gem: Don't try to map and fence
 8K/bigjoiner scanout buffers
Thread-Index: AQHXyjYnoVmxfW4AB0i6+wmo8PjY06vlcp+AgADpiYA=
Date: Wed, 27 Oct 2021 06:41:25 +0000
Message-ID: <f35abfc540b9475b9f31121653586bed@intel.com>
References: <20211026063811.1375040-1-vivek.kasireddy@intel.com>
 <YXfFOw8jQMiOzTy9@intel.com>
In-Reply-To: <YXfFOw8jQMiOzTy9@intel.com>
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

Hi Ville,

>=20
> On Mon, Oct 25, 2021 at 11:38:11PM -0700, Vivek Kasireddy wrote:
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
> > commit and flip event is 7, 24 (7 + 16.66), 7, 24..... suggesting that
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
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > Cc: Manasi Navare <manasi.d.navare@intel.com>
> > Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fb_pin.c  | 11 +++++++++--
> >  drivers/gpu/drm/i915/display/intel_overlay.c | 11 ++++++++---
> >  drivers/gpu/drm/i915/gem/i915_gem_domain.c   |  6 ++++--
> >  drivers/gpu/drm/i915/gem/i915_gem_object.h   |  3 ++-
> >  4 files changed, 23 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> > index 3f77f3013584..53c156d9a9f9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> > @@ -144,7 +144,7 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *=
fb,
> >
> >  	if (!ret) {
> >  		vma =3D i915_gem_object_pin_to_display_plane(obj, &ww, alignment,
> > -							   view, pinctl);
> > +							   view, pinctl, uses_fence);
> >  		if (IS_ERR(vma)) {
> >  			ret =3D PTR_ERR(vma);
> >  			goto err_unpin;
> > @@ -218,9 +218,16 @@ int intel_plane_pin_fb(struct intel_plane_state *p=
lane_state)
> >  		INTEL_INFO(dev_priv)->display.cursor_needs_physical;
> >
> >  	if (!intel_fb_uses_dpt(fb)) {
> > +		struct intel_crtc *crtc =3D to_intel_crtc(plane_state->hw.crtc);
> > +		struct intel_crtc_state *crtc_state =3D
> > +					to_intel_crtc_state(crtc->base.state);
> > +		bool uses_fence =3D intel_plane_uses_fence(plane_state);
> > +		bool is_bigjoiner =3D crtc_state->bigjoiner ||
> > +				    crtc_state->bigjoiner_slave;
>=20
> Bigjoiner is just an implementation detail. It is not the cause of any
> of this.
[Kasireddy, Vivek] Right, bigjoiner/8K is just exposing the underlying issu=
e; which is
that sometimes, large objects/scanout buffers that fail range overflow chec=
ks and thus
are not mappable/fenceable keep getting evicted and reinserted leading to l=
atencies.=20
I guess I could mark an object/vma as permanently un-mappable/un-fenceable =
and try
not to map it subsequently but this would result in one scanout buffer that=
 is mappable
but others that are not. Would this be acceptable -- assuming we are pagefl=
ipping
between multiple FBs?
Any ideas on solving this issue cleanly?

Thanks,
Vivek
=20
>=20
> > +
> >  		vma =3D intel_pin_and_fence_fb_obj(fb, phys_cursor,
> >  						 &plane_state->view.gtt,
> > -						 intel_plane_uses_fence(plane_state),
> > +						 uses_fence && !is_bigjoiner,
> >  						 &plane_state->flags);
> >  		if (IS_ERR(vma))
> >  			return PTR_ERR(vma);
> > diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c
> b/drivers/gpu/drm/i915/display/intel_overlay.c
> > index 7e3f5c6ca484..e9563b40b911 100644
> > --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> > +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> > @@ -755,10 +755,14 @@ static u32 overlay_cmd_reg(struct
> drm_intel_overlay_put_image *params)
> >  	return cmd;
> >  }
> >
> > -static struct i915_vma *intel_overlay_pin_fb(struct drm_i915_gem_objec=
t *new_bo)
> > +static struct i915_vma *intel_overlay_pin_fb(struct drm_i915_gem_objec=
t *new_bo,
> > +					     struct intel_overlay *overlay)
> >  {
> >  	struct i915_gem_ww_ctx ww;
> >  	struct i915_vma *vma;
> > +	const struct intel_plane_state *plane_state =3D
> > +		to_intel_plane_state(overlay->crtc->base.primary->state);
> > +	bool uses_fence =3D intel_plane_uses_fence(plane_state);
> >  	int ret;
> >
> >  	i915_gem_ww_ctx_init(&ww, true);
> > @@ -766,7 +770,8 @@ static struct i915_vma *intel_overlay_pin_fb(struct
> drm_i915_gem_object *new_bo)
> >  	ret =3D i915_gem_object_lock(new_bo, &ww);
> >  	if (!ret) {
> >  		vma =3D i915_gem_object_pin_to_display_plane(new_bo, &ww, 0,
> > -							   NULL, PIN_MAPPABLE);
> > +							   NULL, PIN_MAPPABLE,
> > +							   uses_fence);
> >  		ret =3D PTR_ERR_OR_ZERO(vma);
> >  	}
> >  	if (ret =3D=3D -EDEADLK) {
> > @@ -802,7 +807,7 @@ static int intel_overlay_do_put_image(struct intel_=
overlay
> *overlay,
> >
> >  	atomic_inc(&dev_priv->gpu_error.pending_fb_pin);
> >
> > -	vma =3D intel_overlay_pin_fb(new_bo);
> > +	vma =3D intel_overlay_pin_fb(new_bo, overlay);
> >  	if (IS_ERR(vma)) {
> >  		ret =3D PTR_ERR(vma);
> >  		goto out_pin_section;
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> > index b684a62bf3b0..b9108f13cc49 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> > @@ -375,7 +375,8 @@ i915_gem_object_pin_to_display_plane(struct
> drm_i915_gem_object *obj,
> >  				     struct i915_gem_ww_ctx *ww,
> >  				     u32 alignment,
> >  				     const struct i915_ggtt_view *view,
> > -				     unsigned int flags)
> > +				     unsigned int flags,
> > +				     bool uses_fence)
> >  {
> >  	struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
> >  	struct i915_vma *vma;
> > @@ -411,7 +412,8 @@ i915_gem_object_pin_to_display_plane(struct
> drm_i915_gem_object *obj,
> >  	 */
> >  	vma =3D ERR_PTR(-ENOSPC);
> >  	if ((flags & PIN_MAPPABLE) =3D=3D 0 &&
> > -	    (!view || view->type =3D=3D I915_GGTT_VIEW_NORMAL))
> > +	    (!view || view->type =3D=3D I915_GGTT_VIEW_NORMAL) &&
> > +	    uses_fence)
> >  		vma =3D i915_gem_object_ggtt_pin_ww(obj, ww, view, 0, alignment,
> >  						  flags | PIN_MAPPABLE |
> >  						  PIN_NONBLOCK);
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > index a5479ac7a4ad..e83564fa57ca 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > @@ -534,7 +534,8 @@ i915_gem_object_pin_to_display_plane(struct
> drm_i915_gem_object *obj,
> >  				     struct i915_gem_ww_ctx *ww,
> >  				     u32 alignment,
> >  				     const struct i915_ggtt_view *view,
> > -				     unsigned int flags);
> > +				     unsigned int flags,
> > +				     bool uses_fence);
> >
> >  void i915_gem_object_make_unshrinkable(struct drm_i915_gem_object *obj=
);
> >  void i915_gem_object_make_shrinkable(struct drm_i915_gem_object *obj);
> > --
> > 2.31.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
