Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 181712A8220
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 16:23:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 722A56EDB3;
	Thu,  5 Nov 2020 15:23:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 338496ED7E
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Nov 2020 15:23:36 +0000 (UTC)
IronPort-SDR: p6OeRycIBlDZfUsA1WMPmz3QXHeDcbCC3OxYnofrdF5pkVNI+6bjuU6pzfbGg3/0osQ2qT2gbg
 P9MpemnKW/pw==
X-IronPort-AV: E=McAfee;i="6000,8403,9795"; a="231024027"
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="231024027"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 07:23:35 -0800
IronPort-SDR: jWry1KfDUaDgt/Gv8LFOHWj3NCHiLD+FuyoQx0mwK9O3idh0hgJXOyD0V1qp7lGE9k69ZEhxQi
 EfZOoFRAHomw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="397283235"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 05 Nov 2020 07:23:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 05 Nov 2020 17:23:33 +0200
Date: Thu, 5 Nov 2020 17:23:33 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20201105152333.GX6112@intel.com>
References: <20201102211906.4893-1-manasi.d.navare@intel.com>
 <20201102211906.4893-5-manasi.d.navare@intel.com>
 <20201105152131.GW6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201105152131.GW6112@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v5 5/6] drm/i915/dp: Prep for bigjoiner
 atomic check
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 05, 2020 at 05:21:31PM +0200, Ville Syrj=E4l=E4 wrote:
> On Mon, Nov 02, 2020 at 01:19:05PM -0800, Manasi Navare wrote:
> > No functional changes here. Just pass intel_atomic_state
> > along with crtc_state to certain atomic_check functions.
> > This will lay the foundation for adding bigjoiner master/slave
> > states in atomic check.
> > =

> > v2:
> > * More prep with intel_atomic_state (Ville)
> > =

> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_atomic.c  |  9 +++++----
> >  drivers/gpu/drm/i915/display/intel_atomic.h  |  3 ++-
> >  drivers/gpu/drm/i915/display/intel_display.c | 21 ++++++++++++--------
> >  3 files changed, 20 insertions(+), 13 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/=
drm/i915/display/intel_atomic.c
> > index 86be032bcf96..e243ce97b534 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> > @@ -270,14 +270,15 @@ void intel_crtc_free_hw_state(struct intel_crtc_s=
tate *crtc_state)
> >  	intel_crtc_put_color_blobs(crtc_state);
> >  }
> >  =

> > -void intel_crtc_copy_color_blobs(struct intel_crtc_state *crtc_state)
> > +void intel_crtc_copy_color_blobs(struct intel_crtc_state *crtc_state,
> > +				 const struct intel_crtc_state *from_crtc_state)
> >  {
> >  	drm_property_replace_blob(&crtc_state->hw.degamma_lut,
> > -				  crtc_state->uapi.degamma_lut);
> > +				  from_crtc_state->uapi.degamma_lut);
> >  	drm_property_replace_blob(&crtc_state->hw.gamma_lut,
> > -				  crtc_state->uapi.gamma_lut);
> > +				  from_crtc_state->uapi.gamma_lut);
> >  	drm_property_replace_blob(&crtc_state->hw.ctm,
> > -				  crtc_state->uapi.ctm);
> > +				  from_crtc_state->uapi.ctm);
> =

> This patch still seems to do two totally separate things:
> 1) pass intel_atomic_State all over (for which there was another
>    patch in the series as well?)

Looks like it was patch 4. So I would just squash all those changes from
here into patch 4.

> 2) this intel_crtc_copy_color_blobs() change
> =

> I would split these up because the commit message doesn't
> even mention the second change.
> =

> Each part looks fine on its own so with a proper split they are
> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> >  }
> >  =

> >  /**
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic.h b/drivers/gpu/=
drm/i915/display/intel_atomic.h
> > index 285de07011dc..62a3365ed5e6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic.h
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic.h
> > @@ -43,7 +43,8 @@ struct drm_crtc_state *intel_crtc_duplicate_state(str=
uct drm_crtc *crtc);
> >  void intel_crtc_destroy_state(struct drm_crtc *crtc,
> >  			       struct drm_crtc_state *state);
> >  void intel_crtc_free_hw_state(struct intel_crtc_state *crtc_state);
> > -void intel_crtc_copy_color_blobs(struct intel_crtc_state *crtc_state);
> > +void intel_crtc_copy_color_blobs(struct intel_crtc_state *crtc_state,
> > +				 const struct intel_crtc_state *from_crtc_state);
> >  struct drm_atomic_state *intel_atomic_state_alloc(struct drm_device *d=
ev);
> >  void intel_atomic_state_free(struct drm_atomic_state *state);
> >  void intel_atomic_state_clear(struct drm_atomic_state *state);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 0bea90cdf242..ab10dfe705e4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -13459,13 +13459,17 @@ static bool check_digital_port_conflicts(stru=
ct intel_atomic_state *state)
> >  }
> >  =

> >  static void
> > -intel_crtc_copy_uapi_to_hw_state_nomodeset(struct intel_crtc_state *cr=
tc_state)
> > +intel_crtc_copy_uapi_to_hw_state_nomodeset(struct intel_atomic_state *=
state,
> > +					   struct intel_crtc_state *crtc_state)
> >  {
> > -	intel_crtc_copy_color_blobs(crtc_state);
> > +	const struct intel_crtc_state *from_crtc_state =3D crtc_state;
> > +
> > +	intel_crtc_copy_color_blobs(crtc_state, from_crtc_state);
> >  }
> >  =

> >  static void
> > -intel_crtc_copy_uapi_to_hw_state(struct intel_crtc_state *crtc_state)
> > +intel_crtc_copy_uapi_to_hw_state(struct intel_atomic_state *state,
> > +				 struct intel_crtc_state *crtc_state)
> >  {
> >  	crtc_state->hw.enable =3D crtc_state->uapi.enable;
> >  	crtc_state->hw.active =3D crtc_state->uapi.active;
> > @@ -13473,7 +13477,7 @@ intel_crtc_copy_uapi_to_hw_state(struct intel_c=
rtc_state *crtc_state)
> >  	crtc_state->hw.pipe_mode =3D crtc_state->hw.adjusted_mode =3D crtc_st=
ate->uapi.adjusted_mode;
> >  	crtc_state->hw.scaling_filter =3D crtc_state->uapi.scaling_filter;
> >  =

> > -	intel_crtc_copy_uapi_to_hw_state_nomodeset(crtc_state);
> > +	intel_crtc_copy_uapi_to_hw_state_nomodeset(state, crtc_state);
> >  }
> >  =

> >  static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *=
crtc_state)
> > @@ -13496,7 +13500,8 @@ static void intel_crtc_copy_hw_to_uapi_state(st=
ruct intel_crtc_state *crtc_state
> >  }
> >  =

> >  static int
> > -intel_crtc_prepare_cleared_state(struct intel_crtc_state *crtc_state)
> > +intel_crtc_prepare_cleared_state(struct intel_atomic_state *state,
> > +				 struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > @@ -13528,7 +13533,7 @@ intel_crtc_prepare_cleared_state(struct intel_c=
rtc_state *crtc_state)
> >  	memcpy(crtc_state, saved_state, sizeof(*crtc_state));
> >  	kfree(saved_state);
> >  =

> > -	intel_crtc_copy_uapi_to_hw_state(crtc_state);
> > +	intel_crtc_copy_uapi_to_hw_state(state, crtc_state);
> >  =

> >  	return 0;
> >  }
> > @@ -15233,12 +15238,12 @@ static int intel_atomic_check(struct drm_devi=
ce *dev,
> >  					    new_crtc_state, i) {
> >  		if (!needs_modeset(new_crtc_state)) {
> >  			/* Light copy */
> > -			intel_crtc_copy_uapi_to_hw_state_nomodeset(new_crtc_state);
> > +			intel_crtc_copy_uapi_to_hw_state_nomodeset(state, new_crtc_state);
> >  =

> >  			continue;
> >  		}
> >  =

> > -		ret =3D intel_crtc_prepare_cleared_state(new_crtc_state);
> > +		ret =3D intel_crtc_prepare_cleared_state(state, new_crtc_state);
> >  		if (ret)
> >  			goto fail;
> >  =

> > -- =

> > 2.19.1
> =

> -- =

> Ville Syrj=E4l=E4
> Intel

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
