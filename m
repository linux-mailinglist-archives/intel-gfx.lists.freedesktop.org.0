Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B17351C6AEA
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 10:08:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 428C66E4AF;
	Wed,  6 May 2020 08:08:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 806B86E4AF
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 08:08:39 +0000 (UTC)
IronPort-SDR: etp0Y6ze+nOhMwDzV5giJRKjMW6ANGByE6KgOFCUnh5v8MaUoq+hnvI+Ja92UIoYSKnCaqhzH5
 dNgC639tdesQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 01:08:37 -0700
IronPort-SDR: ShP1PSMvX6JECORgoK1L/43eq+4Q8bWEqoo1seyMU50pgWCB3ebl9tijAnAjYTUBTulGRiDcjG
 hers+37cSfQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,358,1583222400"; d="scan'208";a="251132147"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 06 May 2020 01:08:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 May 2020 11:08:34 +0300
Date: Wed, 6 May 2020 11:08:34 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <20200506080834.GL6112@intel.com>
References: <20200505102247.32452-1-stanislav.lisovskiy@intel.com>
 <20200505102247.32452-3-stanislav.lisovskiy@intel.com>
 <20200505104246.GF6112@intel.com>
 <20200506075544.GA16674@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506075544.GA16674@intel.com>
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

On Wed, May 06, 2020 at 10:55:44AM +0300, Lisovskiy, Stanislav wrote:
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

> This is done so, because icl and skl checking share the same code
> to check if SAGV can be enabled, except active_pipes > 1 thing.
> =

> So that icl and skl can share the same code avoiding duplicating,
> i.e if I put code from intel_crtc_can_enable_sagv to =

> skl_crtc_can_enable_sagv, I will have to =

> 1) either duplicate this code to icl_crtc_can_enable_sagv(if I add remain=
ing active_pipes check to
> skl)
> 2) use skl_crtc_can_enable_sagv from icl_crtc_can_enable_sagv,
> but this active_pipes check will be still outside of this skl function,
> which I don't find nice - to me the best way is to keep all skl
> specific checks in a correspondent function.
> =

> So that is why I preferred to extract some common code to some separate
> universal function which can be then used from both icl and skl functions:
> from icl it is used "as is" and from skl it is intel_crtc_can_enable_sagv
> + this active_pipes check.
> =

> Currently anyway we of course have that active_pipes check in intel_can_e=
nable_sagv
> i.e already outside of skl_crtc_can_enable_sagv(where it should be imo),
> so was your intention to leave it outside anyway?

My intention is that we eventually remove it altogeher. In the
meantime intel_can_enable_sagv() looks like the right place
for it.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
