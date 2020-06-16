Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB181FB797
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 17:49:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F0566E8FF;
	Tue, 16 Jun 2020 15:49:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A40D6E8FF
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 15:49:31 +0000 (UTC)
IronPort-SDR: qEShJVvD1i6gpHsVrXDT4/WmjePqaNWRsJ1BlySaiZ2PtPe4sRhPEsL+Y7GqGubMdH1piY+AuL
 fR/VUG4kABgA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 08:49:30 -0700
IronPort-SDR: ZywqA/23C90LLm7xZqA5bDeB7dbslzWHhpRXzsn95trlrSn/ROOZUirmzgtyVp9dimcqo5KZXN
 8XxagHeerWjA==
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; d="scan'208";a="449884951"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 08:49:28 -0700
Date: Tue, 16 Jun 2020 18:49:20 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200616154920.GB21389@ideak-desk.fi.intel.com>
References: <20200616141855.746-1-imre.deak@intel.com>
 <20200616141855.746-2-imre.deak@intel.com>
 <20200616152251.GW6112@intel.com>
 <20200616153055.GA21389@ideak-desk.fi.intel.com>
 <20200616153930.GX6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616153930.GX6112@intel.com>
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

On Tue, Jun 16, 2020 at 06:39:30PM +0300, Ville Syrj=E4l=E4 wrote:
> On Tue, Jun 16, 2020 at 06:30:55PM +0300, Imre Deak wrote:
> > On Tue, Jun 16, 2020 at 06:22:51PM +0300, Ville Syrj=E4l=E4 wrote:
> > > On Tue, Jun 16, 2020 at 05:18:51PM +0300, Imre Deak wrote:
> > > > We calculate the MST available bandwidth using the link's maximum r=
ate
> > > > and lane count. This bandwidth won't be recalculated in response to=
 a
> > > =

> > > Thw wording here is a bit ambiguousr as to who "we" is, and what exac=
tly
> > > "link's maximum rate and lane count". I would try to clarify a bit th=
at
> > > it's drm_dp_mst_topology.c who is mostly in error here by directly
> > > interpreting the max data rate/lanes from the DPCD.
> > > =

> > > Althoguh the i915 code is not wihtout faults, as it lacks any logic
> > > to modeset all the MST streams for this link when the link params
> > > change (except on tgl+ where the master/slave stuff should force
> > > all streams to do a modeset anyway).
> > > =

> > > > link training error and fallback setting, so modesets following a l=
ink
> > > > training error will calculate incorrect timing parameters (like the
> > > > transcoder's data M/N params or the number of MST TUs).
> > > > =

> > > > Prevent the above problem by disabling the link training fallback o=
n MST
> > > > links for now, until the MST compute config can deal with changing =
link
> > > > parameters.
> > > > =

> > > > The misconfigured timing lead at least to a
> > > > 'Timed out waiting for DP idle patterns'
> > > > error.
> > > > =

> > > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > Cc: Manasi Navare <manasi.d.navare@intel.com>
> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dp.c | 25 ++++++++++++++++++---=
----
> > > >  1 file changed, 18 insertions(+), 7 deletions(-)
> > > > =

> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/=
drm/i915/display/intel_dp.c
> > > > index 42589cae766d..c585b002783a 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > @@ -468,6 +468,13 @@ int intel_dp_get_link_train_fallback_values(st=
ruct intel_dp *intel_dp,
> > > >  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> > > >  	int index;
> > > >  =

> > > > +	/*
> > > > +	 * TODO: Enable fallback on MST links once MST link compute can h=
andle
> > > > +	 * the fallback params.
> > > > +	 */
> > > > +	if (intel_dp->is_mst)
> > > > +		return -1;
> > > =

> > > Should we duplicate the drm_error() from the other path here maybe?
> > =

> > Yes, will add it.
> > =

> > > =

> > > > +
> > > >  	index =3D intel_dp_rate_index(intel_dp->common_rates,
> > > >  				    intel_dp->num_common_rates,
> > > >  				    link_rate);
> > > > @@ -6163,7 +6170,17 @@ intel_dp_detect(struct drm_connector *connec=
tor,
> > > >  		goto out;
> > > >  	}
> > > >  =

> > > > -	if (intel_dp->reset_link_params) {
> > > > +	/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
> > > > +	if (INTEL_GEN(dev_priv) >=3D 11)
> > > > +		intel_dp_get_dsc_sink_cap(intel_dp);
> > > > +
> > > > +	intel_dp_configure_mst(intel_dp);
> > > > +
> > > > +	/*
> > > > +	 * TODO: Reset link params when switching to MST mode, until MST
> > > > +	 * supports link training fallback params.
> > > > +	 */
> > > > +	if (intel_dp->reset_link_params || intel_dp->is_mst) {
> > > =

> > > /me confused. Why do we need to touch this code?
> > =

> > It's possible to switch to MST mode after the link rate/lane count got
> > reduced by a link training error in SST mode.
> =

> But then we should have a long hpd and reset_link_params should be set
> anyway no?

I meant switching the mode for the same sink as it would change its
DP_MST_CAP. I'm not sure if a long HPD is required in that case. Also if
we had a long HPD after a mode change couldn't a modeset run before the
next intel_dp_detect() call could reset the link params?

> > =

> > > >  		/* Initial max link lane count */
> > > >  		intel_dp->max_link_lane_count =3D intel_dp_max_common_lane_count=
(intel_dp);
> > > >  =

> > > > @@ -6175,12 +6192,6 @@ intel_dp_detect(struct drm_connector *connec=
tor,
> > > >  =

> > > >  	intel_dp_print_rates(intel_dp);
> > > >  =

> > > > -	/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
> > > > -	if (INTEL_GEN(dev_priv) >=3D 11)
> > > > -		intel_dp_get_dsc_sink_cap(intel_dp);
> > > > -
> > > > -	intel_dp_configure_mst(intel_dp);
> > > > -
> > > >  	if (intel_dp->is_mst) {
> > > >  		/*
> > > >  		 * If we are in MST mode then this connector
> > > > -- =

> > > > 2.23.1
> > > =

> > > -- =

> > > Ville Syrj=E4l=E4
> > > Intel
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
