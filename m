Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A8B21C6231
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 22:41:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 498066E10A;
	Tue,  5 May 2020 20:41:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C4CA6E10A
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2020 20:41:43 +0000 (UTC)
IronPort-SDR: ceUU8QDcysqc8OMVscpqyKi3482g6rQW0ZZkXH1ARYhmtwnboO2CaYlCF2AG8kDODqmJSmFscG
 SWo0OwLvnlbA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2020 13:41:42 -0700
IronPort-SDR: P+kBZnCF+skaSN7H2w6wxCNG26BOdCMyZyMuBCxcmsZvvIwPswXbKa7R7J0ilnNZD4PrqqECuT
 NhQKIKHy7A8Q==
X-IronPort-AV: E=Sophos;i="5.73,356,1583222400"; d="scan'208";a="434630662"
Received: from unknown (HELO intel.com) ([10.237.72.89])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2020 13:41:41 -0700
Date: Tue, 5 May 2020 23:37:23 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200505203723.GA14228@intel.com>
References: <20200505102247.32452-1-stanislav.lisovskiy@intel.com>
 <20200505102247.32452-3-stanislav.lisovskiy@intel.com>
 <20200505104246.GF6112@intel.com> <20200505110116.GH6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505110116.GH6112@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v27 2/6] drm/i915: Separate icl and skl SAGV
 checking
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

On Tue, May 05, 2020 at 02:01:16PM +0300, Ville Syrj=E4l=E4 wrote:
> On Tue, May 05, 2020 at 01:42:46PM +0300, Ville Syrj=E4l=E4 wrote:
> > On Tue, May 05, 2020 at 01:22:43PM +0300, Stanislav Lisovskiy wrote:
> > > Introduce platform dependent SAGV checking in
> > > combination with bandwidth state pipe SAGV mask.
> > > =

> > > v2, v3, v4, v5, v6: Fix rebase conflict
> > > =

> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/intel_pm.c | 30 ++++++++++++++++++++++++++++--
> > >  1 file changed, 28 insertions(+), 2 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/i=
ntel_pm.c
> > > index da567fac7c93..c7d726a656b2 100644
> > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > @@ -3853,6 +3853,24 @@ static bool intel_crtc_can_enable_sagv(const s=
truct intel_crtc_state *crtc_state
> > >  	return true;
> > >  }
> > >  =

> > > +static bool skl_crtc_can_enable_sagv(const struct intel_crtc_state *=
crtc_state)
> > > +{
> > > +	struct intel_atomic_state *state =3D to_intel_atomic_state(crtc_sta=
te->uapi.state);
> > > +	/*
> > > +	 * SKL+ workaround: bspec recommends we disable SAGV when we have
> > > +	 * more then one pipe enabled
> > > +	 */
> > > +	if (hweight8(state->active_pipes) > 1)
> > > +		return false;
> > =

> > That stuff should no longer be here since we now have it done properly
> > in intel_can_eanble_sagv().
> > =

> > > +
> > > +	return intel_crtc_can_enable_sagv(crtc_state);
> > > +}
> > > +
> > > +static bool icl_crtc_can_enable_sagv(const struct intel_crtc_state *=
crtc_state)
> > > +{
> > > +	return intel_crtc_can_enable_sagv(crtc_state);
> > > +}
> > =

> > This looks the wrong way around. IMO intel_crtc_can_enable_sagv()
> > should rather call the skl vs. icl variants as needed. Although we
> > don't yet have the icl variant so the oerdering of the patches is
> > a bit weird.
> =

> Do we even need an icl variant actually? Does it use the skl or tgl
> way of checking for sagv yes vs. no?

As I undestand icl implementation should be pretty much the same as
skl, except that icl doesn't have this one active pipe limitation
thing.


Stan
> =

> > =

> > > +
> > >  bool intel_can_enable_sagv(const struct intel_bw_state *bw_state)
> > >  {
> > >  	if (bw_state->active_pipes && !is_power_of_2(bw_state->active_pipes=
))
> > > @@ -3863,22 +3881,30 @@ bool intel_can_enable_sagv(const struct intel=
_bw_state *bw_state)
> > >  =

> > >  static int intel_compute_sagv_mask(struct intel_atomic_state *state)
> > >  {
> > > +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > >  	int ret;
> > >  	struct intel_crtc *crtc;
> > > -	struct intel_crtc_state *new_crtc_state;
> > > +	const struct intel_crtc_state *new_crtc_state;
> > >  	struct intel_bw_state *new_bw_state =3D NULL;
> > >  	const struct intel_bw_state *old_bw_state =3D NULL;
> > >  	int i;
> > >  =

> > >  	for_each_new_intel_crtc_in_state(state, crtc,
> > >  					 new_crtc_state, i) {
> > > +		bool can_sagv;
> > > +
> > >  		new_bw_state =3D intel_atomic_get_bw_state(state);
> > >  		if (IS_ERR(new_bw_state))
> > >  			return PTR_ERR(new_bw_state);
> > >  =

> > >  		old_bw_state =3D intel_atomic_get_old_bw_state(state);
> > >  =

> > > -		if (intel_crtc_can_enable_sagv(new_crtc_state))
> > > +		if (INTEL_GEN(dev_priv) >=3D 11)
> > > +			can_sagv =3D icl_crtc_can_enable_sagv(new_crtc_state);
> > > +		else
> > > +			can_sagv =3D skl_crtc_can_enable_sagv(new_crtc_state);
> > > +
> > > +		if (can_sagv)
> > >  			new_bw_state->pipe_sagv_reject &=3D ~BIT(crtc->pipe);
> > >  		else
> > >  			new_bw_state->pipe_sagv_reject |=3D BIT(crtc->pipe);
> > > -- =

> > > 2.24.1.485.gad05a3d8e5
> > =

> > -- =

> > Ville Syrj=E4l=E4
> > Intel
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
