Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD751C6AAC
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 10:00:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FACA6E82A;
	Wed,  6 May 2020 08:00:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C1E36E841
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 08:00:04 +0000 (UTC)
IronPort-SDR: 2FoKtcp7Y1CRDC4XtKbRL8L+0He2u0MqNOYeKYSS5UevXFupQOSTQ/ahRu6vRe60ZGvpt78pbg
 BYr+KBV0TYTA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 01:00:03 -0700
IronPort-SDR: Ud2fI9M+xjL3l9F0Mz71iZQkyvZYyZsGE+LJGy5qFQay0+505YNFhIfmcKgcNMxigV3UiA4ueg
 DQGxWOJNIe6Q==
X-IronPort-AV: E=Sophos;i="5.73,358,1583222400"; d="scan'208";a="434793324"
Received: from unknown (HELO intel.com) ([10.237.72.89])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 01:00:01 -0700
Date: Wed, 6 May 2020 10:55:44 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200506075544.GA16674@intel.com>
References: <20200505102247.32452-1-stanislav.lisovskiy@intel.com>
 <20200505102247.32452-3-stanislav.lisovskiy@intel.com>
 <20200505104246.GF6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505104246.GF6112@intel.com>
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

On Tue, May 05, 2020 at 01:42:46PM +0300, Ville Syrj=E4l=E4 wrote:
> On Tue, May 05, 2020 at 01:22:43PM +0300, Stanislav Lisovskiy wrote:
> > Introduce platform dependent SAGV checking in
> > combination with bandwidth state pipe SAGV mask.
> > =

> > v2, v3, v4, v5, v6: Fix rebase conflict
> > =

> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/intel_pm.c | 30 ++++++++++++++++++++++++++++--
> >  1 file changed, 28 insertions(+), 2 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/int=
el_pm.c
> > index da567fac7c93..c7d726a656b2 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -3853,6 +3853,24 @@ static bool intel_crtc_can_enable_sagv(const str=
uct intel_crtc_state *crtc_state
> >  	return true;
> >  }
> >  =

> > +static bool skl_crtc_can_enable_sagv(const struct intel_crtc_state *cr=
tc_state)
> > +{
> > +	struct intel_atomic_state *state =3D to_intel_atomic_state(crtc_state=
->uapi.state);
> > +	/*
> > +	 * SKL+ workaround: bspec recommends we disable SAGV when we have
> > +	 * more then one pipe enabled
> > +	 */
> > +	if (hweight8(state->active_pipes) > 1)
> > +		return false;
> =

> That stuff should no longer be here since we now have it done properly
> in intel_can_eanble_sagv().
> =

> > +
> > +	return intel_crtc_can_enable_sagv(crtc_state);
> > +}
> > +
> > +static bool icl_crtc_can_enable_sagv(const struct intel_crtc_state *cr=
tc_state)
> > +{
> > +	return intel_crtc_can_enable_sagv(crtc_state);
> > +}
> =

> This looks the wrong way around. IMO intel_crtc_can_enable_sagv()
> should rather call the skl vs. icl variants as needed. Although we
> don't yet have the icl variant so the oerdering of the patches is
> a bit weird.

This is done so, because icl and skl checking share the same code
to check if SAGV can be enabled, except active_pipes > 1 thing.

So that icl and skl can share the same code avoiding duplicating,
i.e if I put code from intel_crtc_can_enable_sagv to =

skl_crtc_can_enable_sagv, I will have to =

1) either duplicate this code to icl_crtc_can_enable_sagv(if I add remainin=
g active_pipes check to
skl)
2) use skl_crtc_can_enable_sagv from icl_crtc_can_enable_sagv,
but this active_pipes check will be still outside of this skl function,
which I don't find nice - to me the best way is to keep all skl
specific checks in a correspondent function.

So that is why I preferred to extract some common code to some separate
universal function which can be then used from both icl and skl functions:
from icl it is used "as is" and from skl it is intel_crtc_can_enable_sagv
+ this active_pipes check.

Currently anyway we of course have that active_pipes check in intel_can_ena=
ble_sagv
i.e already outside of skl_crtc_can_enable_sagv(where it should be imo),
so was your intention to leave it outside anyway?

Stan

> =

> > +
> >  bool intel_can_enable_sagv(const struct intel_bw_state *bw_state)
> >  {
> >  	if (bw_state->active_pipes && !is_power_of_2(bw_state->active_pipes))
> > @@ -3863,22 +3881,30 @@ bool intel_can_enable_sagv(const struct intel_b=
w_state *bw_state)
> >  =

> >  static int intel_compute_sagv_mask(struct intel_atomic_state *state)
> >  {
> > +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> >  	int ret;
> >  	struct intel_crtc *crtc;
> > -	struct intel_crtc_state *new_crtc_state;
> > +	const struct intel_crtc_state *new_crtc_state;
> >  	struct intel_bw_state *new_bw_state =3D NULL;
> >  	const struct intel_bw_state *old_bw_state =3D NULL;
> >  	int i;
> >  =

> >  	for_each_new_intel_crtc_in_state(state, crtc,
> >  					 new_crtc_state, i) {
> > +		bool can_sagv;
> > +
> >  		new_bw_state =3D intel_atomic_get_bw_state(state);
> >  		if (IS_ERR(new_bw_state))
> >  			return PTR_ERR(new_bw_state);
> >  =

> >  		old_bw_state =3D intel_atomic_get_old_bw_state(state);
> >  =

> > -		if (intel_crtc_can_enable_sagv(new_crtc_state))
> > +		if (INTEL_GEN(dev_priv) >=3D 11)
> > +			can_sagv =3D icl_crtc_can_enable_sagv(new_crtc_state);
> > +		else
> > +			can_sagv =3D skl_crtc_can_enable_sagv(new_crtc_state);
> > +
> > +		if (can_sagv)
> >  			new_bw_state->pipe_sagv_reject &=3D ~BIT(crtc->pipe);
> >  		else
> >  			new_bw_state->pipe_sagv_reject |=3D BIT(crtc->pipe);
> > -- =

> > 2.24.1.485.gad05a3d8e5
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
