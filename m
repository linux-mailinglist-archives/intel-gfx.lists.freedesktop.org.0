Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E99C1FB62D
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 17:31:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C0A66E8F1;
	Tue, 16 Jun 2020 15:31:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43F2D6E8F1
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 15:31:13 +0000 (UTC)
IronPort-SDR: Yh5GR8XKPaK+x53oWl5QFTFVrIUvlkJJ/mwF0Le0wNpvxNQ/UGSyyTMw13DbaQBDPoYJ/y0Et6
 nwcTLEG2yZvg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 08:31:05 -0700
IronPort-SDR: giRZF9MKZCWcHjDftfEacaPaZYDRhKJ67TLPXoFsmhMo3yRPLZ89naDIAP/S0UOFBxbzAVGeSu
 KWaARAjzYAKw==
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; d="scan'208";a="420803766"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 08:31:03 -0700
Date: Tue, 16 Jun 2020 18:30:55 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200616153055.GA21389@ideak-desk.fi.intel.com>
References: <20200616141855.746-1-imre.deak@intel.com>
 <20200616141855.746-2-imre.deak@intel.com>
 <20200616152251.GW6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616152251.GW6112@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/dp_mst: Disable link training
 fallback on MST links
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 16, 2020 at 06:22:51PM +0300, Ville Syrj=E4l=E4 wrote:
> On Tue, Jun 16, 2020 at 05:18:51PM +0300, Imre Deak wrote:
> > We calculate the MST available bandwidth using the link's maximum rate
> > and lane count. This bandwidth won't be recalculated in response to a
> =

> Thw wording here is a bit ambiguousr as to who "we" is, and what exactly
> "link's maximum rate and lane count". I would try to clarify a bit that
> it's drm_dp_mst_topology.c who is mostly in error here by directly
> interpreting the max data rate/lanes from the DPCD.
> =

> Althoguh the i915 code is not wihtout faults, as it lacks any logic
> to modeset all the MST streams for this link when the link params
> change (except on tgl+ where the master/slave stuff should force
> all streams to do a modeset anyway).
> =

> > link training error and fallback setting, so modesets following a link
> > training error will calculate incorrect timing parameters (like the
> > transcoder's data M/N params or the number of MST TUs).
> > =

> > Prevent the above problem by disabling the link training fallback on MST
> > links for now, until the MST compute config can deal with changing link
> > parameters.
> > =

> > The misconfigured timing lead at least to a
> > 'Timed out waiting for DP idle patterns'
> > error.
> > =

> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: Manasi Navare <manasi.d.navare@intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 25 ++++++++++++++++++-------
> >  1 file changed, 18 insertions(+), 7 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/=
i915/display/intel_dp.c
> > index 42589cae766d..c585b002783a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -468,6 +468,13 @@ int intel_dp_get_link_train_fallback_values(struct=
 intel_dp *intel_dp,
> >  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> >  	int index;
> >  =

> > +	/*
> > +	 * TODO: Enable fallback on MST links once MST link compute can handle
> > +	 * the fallback params.
> > +	 */
> > +	if (intel_dp->is_mst)
> > +		return -1;
> =

> Should we duplicate the drm_error() from the other path here maybe?

Yes, will add it.

> =

> > +
> >  	index =3D intel_dp_rate_index(intel_dp->common_rates,
> >  				    intel_dp->num_common_rates,
> >  				    link_rate);
> > @@ -6163,7 +6170,17 @@ intel_dp_detect(struct drm_connector *connector,
> >  		goto out;
> >  	}
> >  =

> > -	if (intel_dp->reset_link_params) {
> > +	/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
> > +	if (INTEL_GEN(dev_priv) >=3D 11)
> > +		intel_dp_get_dsc_sink_cap(intel_dp);
> > +
> > +	intel_dp_configure_mst(intel_dp);
> > +
> > +	/*
> > +	 * TODO: Reset link params when switching to MST mode, until MST
> > +	 * supports link training fallback params.
> > +	 */
> > +	if (intel_dp->reset_link_params || intel_dp->is_mst) {
> =

> /me confused. Why do we need to touch this code?

It's possible to switch to MST mode after the link rate/lane count got
reduced by a link training error in SST mode.

> >  		/* Initial max link lane count */
> >  		intel_dp->max_link_lane_count =3D intel_dp_max_common_lane_count(int=
el_dp);
> >  =

> > @@ -6175,12 +6192,6 @@ intel_dp_detect(struct drm_connector *connector,
> >  =

> >  	intel_dp_print_rates(intel_dp);
> >  =

> > -	/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
> > -	if (INTEL_GEN(dev_priv) >=3D 11)
> > -		intel_dp_get_dsc_sink_cap(intel_dp);
> > -
> > -	intel_dp_configure_mst(intel_dp);
> > -
> >  	if (intel_dp->is_mst) {
> >  		/*
> >  		 * If we are in MST mode then this connector
> > -- =

> > 2.23.1
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
