Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 537441916C3
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 17:46:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93E8B89C3F;
	Tue, 24 Mar 2020 16:46:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1517389C3F;
 Tue, 24 Mar 2020 16:46:17 +0000 (UTC)
IronPort-SDR: sQTMTBqmLBh6E5VHQGrxshD8kRgnHMrPWaqyTyvDr41hgqPjflFmzmeZJVUN3hTkiIqlPxLkli
 m9dbI0AhkrhQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 09:46:16 -0700
IronPort-SDR: kKMtEeseRIYIhQjpik6PA4AGiFdFRrWZIA7AFIQyF9YTeFyJkUVZszdQK6JEnrqJo5qa1Usule
 fSrGwJJggrSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,301,1580803200"; d="scan'208";a="265219134"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 24 Mar 2020 09:46:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Mar 2020 18:46:10 +0200
Date: Tue, 24 Mar 2020 18:46:10 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Laxminarayan Bharadiya, Pankaj" <pankaj.laxminarayan.bharadiya@intel.com>
Message-ID: <20200324164610.GZ13686@intel.com>
References: <20200319102103.28895-1-pankaj.laxminarayan.bharadiya@intel.com>
 <20200319102103.28895-6-pankaj.laxminarayan.bharadiya@intel.com>
 <20200323144749.GV13686@intel.com>
 <E92BA18FDE0A5B43B7B3DA7FCA031286057CDD2B@BGSMSX107.gar.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E92BA18FDE0A5B43B7B3DA7FCA031286057CDD2B@BGSMSX107.gar.corp.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 5/5] drm/i915: Enable scaling filter for
 plane and CRTC
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
Cc: "daniels@collabora.com" <daniels@collabora.com>,
 David Airlie <airlied@linux.ie>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 24, 2020 at 03:32:09PM +0000, Laxminarayan Bharadiya, Pankaj wr=
ote:
> =

> =

> > -----Original Message-----
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Sent: 23 March 2020 20:18
> > To: Laxminarayan Bharadiya, Pankaj
> > <pankaj.laxminarayan.bharadiya@intel.com>
> > Cc: Lattannavar, Sameer <sameer.lattannavar@intel.com>;
> > jani.nikula@linux.intel.com; daniel@ffwll.ch; intel-gfx@lists.freedeskt=
op.org;
> > dri-devel@lists.freedesktop.org; daniels@collabora.com; Joonas Lahtinen
> > <joonas.lahtinen@linux.intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.co=
m>;
> > David Airlie <airlied@linux.ie>; Chris Wilson <chris@chris-wilson.co.uk=
>;
> > Maarten Lankhorst <maarten.lankhorst@linux.intel.com>; Souza, Jose
> > <jose.souza@intel.com>; Deak, Imre <imre.deak@intel.com>; Shankar, Uma
> > <uma.shankar@intel.com>
> > Subject: Re: [PATCH v2 5/5] drm/i915: Enable scaling filter for plane a=
nd CRTC
> > =

> > On Thu, Mar 19, 2020 at 03:51:03PM +0530, Pankaj Bharadiya wrote:
> > > GEN >=3D 10 hardware supports the programmable scaler filter.
> > >
> > > Attach scaling filter property for CRTC and plane for GEN >=3D 10
> > > hardwares and program scaler filter based on the selected filter type.
> > >
> > > changes since v1:
> > > * None
> > > Changes since RFC:
> > > * Enable properties for GEN >=3D 10 platforms (Ville)
> > > * Do not round off the crtc co-ordinate (Danial Stone, Ville)
> > > * Add new functions to handle scaling filter setup (Ville)
> > > * Remove coefficient set 0 hardcoding.
> > >
> > > Signed-off-by: Shashank Sharma <shashank.sharma@intel.com>
> > > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > > Signed-off-by: Pankaj Bharadiya
> > > <pankaj.laxminarayan.bharadiya@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 32
> > > ++++++++++++++++++--  drivers/gpu/drm/i915/display/intel_sprite.c  |
> > > 31 ++++++++++++++++++-
> > >  2 files changed, 60 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 791dd908aa89..4b3387ee332e 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -6309,6 +6309,25 @@ void
> > skl_scaler_setup_nearest_neighbor_filter(struct drm_i915_private *dev_p=
riv,
> > >  	}
> > >  }
> > >
> > > +static u32
> > > +skl_scaler_crtc_setup_filter(struct drm_i915_private *dev_priv, enum=
 pipe
> > pipe,
> > > +			  int id, int set, enum drm_crtc_scaling_filter filter) {
> > > +	u32 scaler_filter_ctl =3D PS_FILTER_MEDIUM;
> > > +
> > > +	if (filter =3D=3D DRM_CRTC_SCALING_FILTER_NEAREST_NEIGHBOR) {
> > > +		skl_scaler_setup_nearest_neighbor_filter(dev_priv, pipe, id,
> > > +							 set);
> > > +		scaler_filter_ctl =3D PS_FILTER_PROGRAMMED |
> > > +				PS_UV_VERT_FILTER_SELECT(set) |
> > > +				PS_UV_HORZ_FILTER_SELECT(set) |
> > > +				PS_Y_VERT_FILTER_SELECT(set) |
> > > +				PS_Y_HORZ_FILTER_SELECT(set);
> > > +
> > > +	}
> > > +	return scaler_filter_ctl;
> > =

> > This function does too many things.
> =

> I was thinking to have a common function which configures the filter and =
also
> provides the register bits (ps_ctrl) to select a desired filter so that w=
e need
> not have extra condition to figure out filter select register bits where =
this
> function is being called.
> How about renaming this function to some better name like  =

> skl_scaler_set_and_get_filter_select() or something else? =

> Or shall I breakdown this function into multiple functions?

I'd just inline the PS_CTRL stuff into the current function.

> =

> Any suggestions?
> =

> > =

> > > +}
> > > +
> > >  static void skl_pfit_enable(const struct intel_crtc_state
> > > *crtc_state)  {
> > >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > > @@ -6316,12 +6335,14 @@ static void skl_pfit_enable(const struct
> > intel_crtc_state *crtc_state)
> > >  	enum pipe pipe =3D crtc->pipe;
> > >  	const struct intel_crtc_scaler_state *scaler_state =3D
> > >  		&crtc_state->scaler_state;
> > > +	const struct drm_crtc_state *state =3D &crtc_state->uapi;
> > =

> > Pls don't add this kind of aliases. We're moving away from using the dr=
m_ types
> > as much as possible.
> =

> OK.
> =

> > =

> > >
> > >  	if (crtc_state->pch_pfit.enabled) {
> > >  		u16 uv_rgb_hphase, uv_rgb_vphase;
> > >  		int pfit_w, pfit_h, hscale, vscale;
> > >  		unsigned long irqflags;
> > >  		int id;
> > > +		int scaler_filter_ctl;
> > =

> > It's a register value so u32. I'd also
> =

> Yes, I missed it. Thanks for pointing out.
> =

> > s/scaler_filter_ctl/filter_select/ or something like that.
> > =

> > Alternatively we could just call it ps_ctrl and have it contain the ful=
l register
> > value for that particular register.
> =

> ps_ctrl sounds better, will use this name.
> =

> > =

> > >
> > >  		if (drm_WARN_ON(&dev_priv->drm,
> > >  				crtc_state->scaler_state.scaler_id < 0)) @@ -
> > 6340,8 +6361,12 @@
> > > static void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
> > >
> > >  		spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> > >
> > > -		intel_de_write_fw(dev_priv, SKL_PS_CTRL(pipe, id),
> > PS_SCALER_EN |
> > > -				  PS_FILTER_MEDIUM | scaler_state-
> > >scalers[id].mode);
> > > +		scaler_filter_ctl =3D
> > > +			skl_scaler_crtc_setup_filter(dev_priv, pipe, id, 0,
> > > +						state->scaling_filter);
> > > +		intel_de_write_fw(dev_priv, SKL_PS_CTRL(pipe, id),
> > > +				  PS_SCALER_EN | scaler_filter_ctl |
> > > +				  scaler_state->scalers[id].mode);
> > >  		intel_de_write_fw(dev_priv, SKL_PS_VPHASE(pipe, id),
> > >  				  PS_Y_PHASE(0) |
> > PS_UV_RGB_PHASE(uv_rgb_vphase));
> > >  		intel_de_write_fw(dev_priv, SKL_PS_HPHASE(pipe, id), @@ -
> > 16777,6
> > > +16802,9 @@ static int intel_crtc_init(struct drm_i915_private *dev_p=
riv,
> > enum pipe pipe)
> > >  		dev_priv->plane_to_crtc_mapping[i9xx_plane] =3D crtc;
> > >  	}
> > >
> > > +	if (INTEL_GEN(dev_priv) >=3D 10)
> > > +		drm_crtc_enable_scaling_filter(&crtc->base);
> > > +
> > >  	intel_color_init(crtc);
> > >
> > >  	intel_crtc_crc_init(crtc);
> > > diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c
> > > b/drivers/gpu/drm/i915/display/intel_sprite.c
> > > index deda351719db..ac3fd9843ace 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> > > @@ -395,6 +395,26 @@ skl_plane_max_stride(struct intel_plane *plane,
> > >  		return min(8192 * cpp, 32768);
> > >  }
> > >
> > > +static u32
> > > +skl_scaler_plane_setup_filter(struct drm_i915_private *dev_priv, enu=
m pipe
> > pipe,
> > > +			      int id, int set,
> > > +			      enum drm_plane_scaling_filter filter) {
> > > +	u32 scaler_filter_ctl =3D PS_FILTER_MEDIUM;
> > > +
> > > +	if (filter =3D=3D DRM_PLANE_SCALING_FILTER_NEAREST_NEIGHBOR) {
> > > +		skl_scaler_setup_nearest_neighbor_filter(dev_priv, pipe, id,
> > > +							 set);
> > > +		scaler_filter_ctl =3D PS_FILTER_PROGRAMMED |
> > > +				PS_UV_VERT_FILTER_SELECT(set) |
> > > +				PS_UV_HORZ_FILTER_SELECT(set) |
> > > +				PS_Y_VERT_FILTER_SELECT(set) |
> > > +				PS_Y_HORZ_FILTER_SELECT(set);
> > > +
> > > +	}
> > > +	return scaler_filter_ctl;
> > > +}
> > > +
> > =

> > We don't want such copy pasta between planes and crtcs.
> =

> Yeah, got it. =

> Will add a common enum drm_scaling_filter and use it.
> =

> Thanks,
> Pankaj
>  =

> > =

> > >  static void
> > >  skl_program_scaler(struct intel_plane *plane,
> > >  		   const struct intel_crtc_state *crtc_state, @@ -406,6 +426,7
> > @@
> > > skl_program_scaler(struct intel_plane *plane,
> > >  	int scaler_id =3D plane_state->scaler_id;
> > >  	const struct intel_scaler *scaler =3D
> > >  		&crtc_state->scaler_state.scalers[scaler_id];
> > > +	const struct drm_plane_state *state =3D &plane_state->uapi;
> > >  	int crtc_x =3D plane_state->uapi.dst.x1;
> > >  	int crtc_y =3D plane_state->uapi.dst.y1;
> > >  	u32 crtc_w =3D drm_rect_width(&plane_state->uapi.dst);
> > > @@ -413,6 +434,7 @@ skl_program_scaler(struct intel_plane *plane,
> > >  	u16 y_hphase, uv_rgb_hphase;
> > >  	u16 y_vphase, uv_rgb_vphase;
> > >  	int hscale, vscale;
> > > +	int scaler_filter_ctl;
> > >
> > >  	hscale =3D drm_rect_calc_hscale(&plane_state->uapi.src,
> > >  				      &plane_state->uapi.dst,
> > > @@ -439,8 +461,12 @@ skl_program_scaler(struct intel_plane *plane,
> > >  		uv_rgb_vphase =3D skl_scaler_calc_phase(1, vscale, false);
> > >  	}
> > >
> > > +	scaler_filter_ctl =3D
> > > +		skl_scaler_plane_setup_filter(dev_priv, pipe, scaler_id, 0,
> > > +					      state->scaling_filter);
> > >  	intel_de_write_fw(dev_priv, SKL_PS_CTRL(pipe, scaler_id),
> > > -			  PS_SCALER_EN | PS_PLANE_SEL(plane->id) | scaler-
> > >mode);
> > > +			  PS_SCALER_EN | PS_PLANE_SEL(plane->id) |
> > > +			  scaler->mode | scaler_filter_ctl);
> > >  	intel_de_write_fw(dev_priv, SKL_PS_VPHASE(pipe, scaler_id),
> > >  			  PS_Y_PHASE(y_vphase) |
> > PS_UV_RGB_PHASE(uv_rgb_vphase));
> > >  	intel_de_write_fw(dev_priv, SKL_PS_HPHASE(pipe, scaler_id), @@
> > > -3121,6 +3147,9 @@ skl_universal_plane_create(struct drm_i915_private
> > > *dev_priv,
> > >
> > >  	drm_plane_create_zpos_immutable_property(&plane->base, plane_id);
> > >
> > > +	if (INTEL_GEN(dev_priv) >=3D 10)
> > > +		drm_plane_enable_scaling_filter(&plane->base);
> > > +
> > >  	drm_plane_helper_add(&plane->base, &intel_plane_helper_funcs);
> > >
> > >  	return plane;
> > > --
> > > 2.23.0
> > =

> > --
> > Ville Syrj=E4l=E4
> > Intel

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
