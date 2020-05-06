Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0B41C6CA6
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 11:16:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04ED36E570;
	Wed,  6 May 2020 09:15:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7C796E570
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 09:15:56 +0000 (UTC)
IronPort-SDR: jABPr3AN/S9EgKoffsF1M14cwlJ1cyry2DSsYDGSGNLrbOBUBK2dW7NI1HgVEqIswjqPr21nVf
 UCwRas+P3Mqw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 02:15:56 -0700
IronPort-SDR: qQFb4M9JqJ5wsi8jHcDM1Hs6/Zb3Mh6KFdbm+JYK3s2S9VHBMUD4IVRdtgkyKaZPTxjQiW1cIp
 21xAAMSalIcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,358,1583222400"; d="scan'208";a="248848439"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 06 May 2020 02:15:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 May 2020 12:15:53 +0300
Date: Wed, 6 May 2020 12:15:53 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <20200506091553.GO6112@intel.com>
References: <20200505102247.32452-1-stanislav.lisovskiy@intel.com>
 <20200505102247.32452-3-stanislav.lisovskiy@intel.com>
 <20200505104246.GF6112@intel.com>
 <20200506075544.GA16674@intel.com>
 <20200506080834.GL6112@intel.com>
 <20200506084330.GA17010@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506084330.GA17010@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
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

On Wed, May 06, 2020 at 11:43:30AM +0300, Lisovskiy, Stanislav wrote:
> On Wed, May 06, 2020 at 11:08:34AM +0300, Ville Syrj=E4l=E4 wrote:
> > On Wed, May 06, 2020 at 10:55:44AM +0300, Lisovskiy, Stanislav wrote:
> > > On Tue, May 05, 2020 at 01:42:46PM +0300, Ville Syrj=E4l=E4 wrote:
> > > > On Tue, May 05, 2020 at 01:22:43PM +0300, Stanislav Lisovskiy wrote:
> > > > > Introduce platform dependent SAGV checking in
> > > > > combination with bandwidth state pipe SAGV mask.
> > > > > =

> > > > > v2, v3, v4, v5, v6: Fix rebase conflict
> > > > > =

> > > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/intel_pm.c | 30 +++++++++++++++++++++++++++=
+--
> > > > >  1 file changed, 28 insertions(+), 2 deletions(-)
> > > > > =

> > > > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i9=
15/intel_pm.c
> > > > > index da567fac7c93..c7d726a656b2 100644
> > > > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > > > @@ -3853,6 +3853,24 @@ static bool intel_crtc_can_enable_sagv(con=
st struct intel_crtc_state *crtc_state
> > > > >  	return true;
> > > > >  }
> > > > >  =

> > > > > +static bool skl_crtc_can_enable_sagv(const struct intel_crtc_sta=
te *crtc_state)
> > > > > +{
> > > > > +	struct intel_atomic_state *state =3D to_intel_atomic_state(crtc=
_state->uapi.state);
> > > > > +	/*
> > > > > +	 * SKL+ workaround: bspec recommends we disable SAGV when we ha=
ve
> > > > > +	 * more then one pipe enabled
> > > > > +	 */
> > > > > +	if (hweight8(state->active_pipes) > 1)
> > > > > +		return false;
> > > > =

> > > > That stuff should no longer be here since we now have it done prope=
rly
> > > > in intel_can_eanble_sagv().
> > > > =

> > > > > +
> > > > > +	return intel_crtc_can_enable_sagv(crtc_state);
> > > > > +}
> > > > > +
> > > > > +static bool icl_crtc_can_enable_sagv(const struct intel_crtc_sta=
te *crtc_state)
> > > > > +{
> > > > > +	return intel_crtc_can_enable_sagv(crtc_state);
> > > > > +}
> > > > =

> > > > This looks the wrong way around. IMO intel_crtc_can_enable_sagv()
> > > > should rather call the skl vs. icl variants as needed. Although we
> > > > don't yet have the icl variant so the oerdering of the patches is
> > > > a bit weird.
> > > =

> > > This is done so, because icl and skl checking share the same code
> > > to check if SAGV can be enabled, except active_pipes > 1 thing.
> > > =

> > > So that icl and skl can share the same code avoiding duplicating,
> > > i.e if I put code from intel_crtc_can_enable_sagv to =

> > > skl_crtc_can_enable_sagv, I will have to =

> > > 1) either duplicate this code to icl_crtc_can_enable_sagv(if I add re=
maining active_pipes check to
> > > skl)
> > > 2) use skl_crtc_can_enable_sagv from icl_crtc_can_enable_sagv,
> > > but this active_pipes check will be still outside of this skl functio=
n,
> > > which I don't find nice - to me the best way is to keep all skl
> > > specific checks in a correspondent function.
> > > =

> > > So that is why I preferred to extract some common code to some separa=
te
> > > universal function which can be then used from both icl and skl funct=
ions:
> > > from icl it is used "as is" and from skl it is intel_crtc_can_enable_=
sagv
> > > + this active_pipes check.
> > > =

> > > Currently anyway we of course have that active_pipes check in intel_c=
an_enable_sagv
> > > i.e already outside of skl_crtc_can_enable_sagv(where it should be im=
o),
> > > so was your intention to leave it outside anyway?
> > =

> > My intention is that we eventually remove it altogeher. In the
> > meantime intel_can_enable_sagv() looks like the right place
> > for it.
> =

> Wow, you were really fast replying :) Ok, then I just leave skl_crtc_can_=
enable_sagv,
> use it for icl and active_pipes check stays in intel_can_enable_sagv, how=
ever probably
> it will now need somekind of INTEL_GEN < 11 check, I guess.

If we want to enable sagv for multi-pipe on just icl+ first, yes.
I guess we can do that. I suggest making that a standalone patch
so we can easily revert it if things blow up. We can then let that
bake for a while and follow up later with nuking the single pipe
restriction for all platforms.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
