Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08BF714F305
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 21:05:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E43476E23B;
	Fri, 31 Jan 2020 20:05:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 552F16E237
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 20:05:06 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 12:05:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,387,1574150400"; d="scan'208";a="262662639"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 31 Jan 2020 12:05:03 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 31 Jan 2020 22:05:03 +0200
Date: Fri, 31 Jan 2020 22:05:03 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20200131200503.GX13686@intel.com>
References: <20200131171547.25938-1-manasi.d.navare@intel.com>
 <20200131171547.25938-3-manasi.d.navare@intel.com>
 <20200131175323.GV13686@intel.com>
 <20200131194625.GA26562@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200131194625.GA26562@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/dp: Add all tiled and port
 sync conns to modeset
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

On Fri, Jan 31, 2020 at 11:46:25AM -0800, Manasi Navare wrote:
> On Fri, Jan 31, 2020 at 07:53:23PM +0200, Ville Syrj=E4l=E4 wrote:
> > On Fri, Jan 31, 2020 at 09:15:47AM -0800, Manasi Navare wrote:
> > > If one of the synced crtcs needs a full modeset, we need
> > > to make sure all the synced crtcs are forced a full
> > > modeset.
> > > =

> > > Suggested-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c |  88 +------------
> > >  drivers/gpu/drm/i915/display/intel_dp.c      | 131 +++++++++++++++++=
+-
> > >  2 files changed, 131 insertions(+), 88 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/g=
pu/drm/i915/display/intel_display.c
> > > index e638543f5f87..709a737638b6 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -13123,8 +13123,7 @@ intel_modeset_pipe_config(struct intel_crtc_s=
tate *pipe_config)
> > >  	struct drm_i915_private *i915 =3D to_i915(pipe_config->uapi.crtc->d=
ev);
> > >  	struct drm_connector *connector;
> > >  	struct drm_connector_state *connector_state;
> > > -	int base_bpp, ret;
> > > -	int i, tile_group_id =3D -1, num_tiled_conns =3D 0;
> > > +	int base_bpp, ret, i;
> > >  	bool retry =3D true;
> > >  =

> > >  	pipe_config->cpu_transcoder =3D
> > > @@ -14559,76 +14558,6 @@ static bool intel_cpu_transcoders_need_modes=
et(struct intel_atomic_state *state,
> > >  	return false;
> > >  }
> > >  =

> > > -static int
> > > -intel_modeset_all_tiles(struct intel_atomic_state *state, int tile_g=
rp_id)
> > > -{
> > > -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > > -	struct drm_connector *connector;
> > > -	struct drm_connector_list_iter conn_iter;
> > > -	int ret =3D 0;
> > > -
> > > -	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
> > > -	drm_for_each_connector_iter(connector, &conn_iter) {
> > > -		struct drm_connector_state *conn_state;
> > > -		struct drm_crtc_state *crtc_state;
> > > -
> > > -		if (!connector->has_tile ||
> > > -		    connector->tile_group->id !=3D tile_grp_id)
> > > -			continue;
> > > -		conn_state =3D drm_atomic_get_connector_state(&state->base,
> > > -							    connector);
> > > -		if (IS_ERR(conn_state)) {
> > > -			ret =3D  PTR_ERR(conn_state);
> > > -			break;
> > > -		}
> > > -
> > > -		if (!conn_state->crtc)
> > > -			continue;
> > > -
> > > -		crtc_state =3D drm_atomic_get_crtc_state(&state->base,
> > > -						       conn_state->crtc);
> > > -		if (IS_ERR(crtc_state)) {
> > > -			ret =3D PTR_ERR(crtc_state);
> > > -			break;
> > > -		}
> > > -		crtc_state->mode_changed =3D true;
> > > -		ret =3D drm_atomic_add_affected_connectors(&state->base,
> > > -							 conn_state->crtc);
> > > -		if (ret)
> > > -			break;
> > > -	}
> > > -	drm_connector_list_iter_end(&conn_iter);
> > > -
> > > -	return ret;
> > > -}
> > > -
> > > -static int
> > > -intel_atomic_check_tiled_conns(struct intel_atomic_state *state)
> > > -{
> > > -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > > -	struct drm_connector *connector;
> > > -	struct drm_connector_state *old_conn_state, *new_conn_state;
> > > -	int i, ret;
> > > -
> > > -	if (INTEL_GEN(dev_priv) < 11)
> > > -		return 0;
> > > -
> > > -	/* Is tiled, mark all other tiled CRTCs as needing a modeset */
> > > -	for_each_oldnew_connector_in_state(&state->base, connector,
> > > -					   old_conn_state, new_conn_state, i) {
> > > -		if (!connector->has_tile)
> > > -			continue;
> > > -		if (!intel_connector_needs_modeset(state, connector))
> > > -			continue;
> > > -
> > > -		ret =3D intel_modeset_all_tiles(state, connector->tile_group->id);
> > > -		if (ret)
> > > -			return ret;
> > > -	}
> > > -
> > > -	return 0;
> > > -}
> > > -
> > >  /**
> > >   * intel_atomic_check - validate state object
> > >   * @dev: drm device
> > > @@ -14656,21 +14585,6 @@ static int intel_atomic_check(struct drm_dev=
ice *dev,
> > >  	if (ret)
> > >  		goto fail;
> > >  =

> > > -	/**
> > > -	 * This check adds all the connectors in current state that belong =
to
> > > -	 * the same tile group to a full modeset.
> > > -	 * This function directly sets the mode_changed to true and we also=
 call
> > > -	 * drm_atomic_add_affected_connectors(). Hence we are not explicitly
> > > -	 * calling drm_atomic_helper_check_modeset() after this.
> > > -	 *
> > > -	 * Fixme: Handle some corner cases where one of the
> > > -	 * tiled connectors gets disconnected and tile info is lost but sin=
ce it
> > > -	 * was previously synced to other conn, we need to add that to the =
modeset.
> > > -	 */
> > > -	ret =3D intel_atomic_check_tiled_conns(state);
> > > -	if (ret)
> > > -		goto fail;
> > > -
> > >  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> > >  					    new_crtc_state, i) {
> > >  		if (!needs_modeset(new_crtc_state)) {
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/dr=
m/i915/display/intel_dp.c
> > > index f4dede6253f8..7eb4b3dbbcb3 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -6582,6 +6582,135 @@ void intel_dp_encoder_reset(struct drm_encode=
r *encoder)
> > >  	}
> > >  }
> > >  =

> > > +static int intel_modeset_tile_group(struct intel_atomic_state *state,
> > > +				    int tile_group_id)
> > > +{
> > > +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > > +	struct drm_connector_list_iter conn_iter;
> > > +	struct drm_connector *connector;
> > > +	int ret =3D 0;
> > > +
> > > +	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
> > > +	drm_for_each_connector_iter(connector, &conn_iter) {
> > > +		struct drm_connector_state *conn_state;
> > > +		struct intel_crtc_state *crtc_state;
> > > +		struct intel_crtc *crtc;
> > > +
> > > +		if (!connector->has_tile ||
> > > +		    connector->tile_group->id !=3D tile_group_id)
> > > +			continue;
> > > +
> > > +		conn_state =3D drm_atomic_get_connector_state(&state->base,
> > > +							    connector);
> > > +		if (IS_ERR(conn_state)) {
> > > +			ret =3D PTR_ERR(conn_state);
> > > +			break;
> > > +		}
> > > +
> > > +		crtc =3D to_intel_crtc(conn_state->crtc);
> > > +
> > > +		if (!crtc)
> > > +			continue;
> > > +
> > > +		crtc_state =3D intel_atomic_get_crtc_state(&state->base, crtc);
> > > +		if (IS_ERR(crtc_state)) {
> > > +			ret =3D PTR_ERR(crtc_state);
> > > +			break;
> > > +		}
> > > +
> > > +		crtc_state->uapi.mode_changed =3D true;
> > > +
> > > +		ret =3D drm_atomic_add_affected_planes(&state->base, &crtc->base);
> > > +		if (ret)
> > > +			break;
> > > +	}
> > > +	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
> > > +
> > > +	return ret;
> > > +}
> > > +
> > > +static int intel_modeset_affected_transcoders(struct intel_atomic_st=
ate *state, u8 transcoders)
> > > +{
> > > +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > > +	struct intel_crtc *crtc;
> > > +
> > > +	if (transcoders =3D=3D 0)
> > > +		return 0;
> > > +
> > > +	for_each_intel_crtc(&dev_priv->drm, crtc) {
> > > +		struct intel_crtc_state *crtc_state;
> > > +		int ret;
> > > +
> > > +		if ((transcoders & BIT(crtc->pipe)) =3D=3D 0)
> > > +			continue;
> > =

> > Dropping the EDP transcoder on the floor here. I think we should just do
> > the guaranteed correct thing and look at the cpu_transcoder instead.
> > Yes, that does mean we more or less end up adding all crtcs to the stat=
e =

> > whenever modesetting any synced crtc, but so be it. We can think of ways
> > to optimize that later.
> >
> =

> So should i not even do this check of trans & BIT(crtc->pipe) ? Instead j=
ust proceed
> to go get the crtc state and then check if trans & BIT(crtc_state->cpu_tr=
ans) ?

Yeah, I think that's fine for now. We can try to optimize it later if
needed.

> =

> Or should I keep this as is and then add the second loop like in your bra=
nch?
>  =

> > > +
> > > +		crtc_state =3D intel_atomic_get_crtc_state(&state->base, crtc);
> > > +		if (IS_ERR(crtc_state))
> > > +			return PTR_ERR(crtc_state);
> > > +
> > > +		if (!crtc_state->hw.enable)
> > > +			continue;
> > > +
> > > +		crtc_state->uapi.mode_changed =3D true;
> > > +
> > > +		ret =3D drm_atomic_add_affected_connectors(&state->base, &crtc->ba=
se);
> > > +		if (ret)
> > > +			return ret;
> > =

> > Missing add_affected_planes() here I think. Or was that guaranteed to be
> > done by the helper? Can't recall.
> >
> =

> No i think i missed it, will add that
>  =

> > > +
> > > +		WARN_ON((enum transcoder)crtc->pipe !=3D crtc_state->cpu_transcode=
r);
> > > +
> > > +		transcoders &=3D ~BIT(crtc_state->cpu_transcoder);
> > > +	}
> > > +
> > > +	WARN_ON(transcoders !=3D 0);
> > > +
> > > +	return 0;
> > > +
> > > +}
> > > +
> > > +static int intel_modeset_synced_crtcs(struct intel_atomic_state *sta=
te,
> > > +				      struct drm_connector *connector)
> > > +{
> > > +	const struct drm_connector_state *old_conn_state =3D
> > > +		drm_atomic_get_old_connector_state(&state->base, connector);
> > > +	const struct intel_crtc_state *old_crtc_state;
> > > +	struct intel_crtc *crtc;
> > > +
> > > +	crtc =3D to_intel_crtc(old_conn_state->crtc);
> > > +	if (!crtc)
> > > +		return 0;
> > > +
> > > +	old_crtc_state =3D intel_atomic_get_old_crtc_state(state, crtc);
> > > +
> > > +	if (!old_crtc_state->hw.active)
> > > +		return 0;
> > > +
> > > +	return intel_modeset_affected_transcoders(state,
> > > +						  (old_crtc_state->sync_mode_slaves_mask |
> > > +						   BIT(old_crtc_state->master_transcoder)) &
> > =

> > This seems to have the same master=3D=3DINVALID problem that we faced
> > elsewhere already.
> >
> =

> Yes will have to add the same check and add it only for master_trans !=3D=
 INVALID, will add that
>  =

> > > +						  ~BIT(old_crtc_state->cpu_transcoder));
> > =

> > I guess this part is redundant. Or can we somehow have our own
> > transcoder be included in sync_mode_slaves_mask/master_transcoder?
> >
> =

> Actually shouldnt it be:
> =

> if old_crtc_state->needs_modeset() {

That would need to be new_crtc_state. And yes we should skip this
(and also intel_modeset_tile_group()) when there's no modeset.

So the whole thing could probably look something like:
{
	intel_digital_connector_atomic_check();

	if (!intel_connector_needs_modeset(connector))
		return 0;

	if (tile)
		intel_modeset_tile_group()
	=

	intel_modeset_synced_crtcs();
}

> 	 then call intel_modeset_affected_transcoders(state,
> 							(old_crtc_state->sync_mode_slaves_mask |
> 							 BIT(old_crtc_state->master_transcoder)) &
> 							~BIT(old_crtc_state->cpu_transcoder));
> =

> dont understand why ~BIT(old_crtc_state->cpu_transcoder) is redundant? wh=
y do we need to =

> force modeset there if we add this needs_modeset check?
> =

> Manasi
> =

> > > +}
> > > +
> > > +static int intel_dp_connector_atomic_check(struct drm_connector *con=
n,
> > > +					   struct drm_atomic_state *_state)
> > > +{
> > > +	struct drm_i915_private *dev_priv =3D to_i915(conn->dev);
> > > +	struct intel_atomic_state *state =3D to_intel_atomic_state(_state);
> > > +	int ret;
> > > +
> > > +	ret =3D intel_digital_connector_atomic_check(conn, &state->base);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	if (INTEL_GEN(dev_priv) >=3D 11 && conn->has_tile) {
> > > +		ret =3D intel_modeset_tile_group(state, conn->tile_group->id);
> > > +		if (ret)
> > > +			return ret;
> > > +	}
> > > +
> > > +	return intel_modeset_synced_crtcs(state, conn);
> > =

> > No gen check... Ah, yeah we don't need it because the port sync state
> > will be INVALID/0.
> > =

> > > +}
> > > +
> > >  static const struct drm_connector_funcs intel_dp_connector_funcs =3D=
 {
> > >  	.force =3D intel_dp_force,
> > >  	.fill_modes =3D drm_helper_probe_single_connector_modes,
> > > @@ -6598,7 +6727,7 @@ static const struct drm_connector_helper_funcs =
intel_dp_connector_helper_funcs =3D
> > >  	.detect_ctx =3D intel_dp_detect,
> > >  	.get_modes =3D intel_dp_get_modes,
> > >  	.mode_valid =3D intel_dp_mode_valid,
> > > -	.atomic_check =3D intel_digital_connector_atomic_check,
> > > +	.atomic_check =3D intel_dp_connector_atomic_check,
> > >  };
> > >  =

> > >  static const struct drm_encoder_funcs intel_dp_enc_funcs =3D {
> > > -- =

> > > 2.19.1
> > =

> > -- =

> > Ville Syrj=E4l=E4
> > Intel

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
