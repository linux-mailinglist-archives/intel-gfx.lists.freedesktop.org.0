Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D292225AB34
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Sep 2020 14:34:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 239D689DF9;
	Wed,  2 Sep 2020 12:34:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E890689DF9
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Sep 2020 12:34:42 +0000 (UTC)
IronPort-SDR: tyZ7u03Tb6y9Fl0tdgFA0ORi0OVZGop11P2zHyqqRDvau2+wxyJW0llsqlllBzWzcIBcU92bhi
 GIG2i8ntYTzA==
X-IronPort-AV: E=McAfee;i="6000,8403,9731"; a="137422020"
X-IronPort-AV: E=Sophos;i="5.76,383,1592895600"; d="scan'208";a="137422020"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2020 05:34:42 -0700
IronPort-SDR: biFn2D+cRCudaigQ9GmZXklXmlK/BbTIyQfpJGXswS901hWz0nQ4s/d8JmUyJ53yfqgrJCkCse
 T0HYzWf/A+ng==
X-IronPort-AV: E=Sophos;i="5.76,383,1592895600"; d="scan'208";a="446511429"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2020 05:34:40 -0700
Date: Wed, 2 Sep 2020 15:34:50 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200902123450.GA26079@intel.com>
References: <20200901151036.1312357-1-kai.vehmanen@linux.intel.com>
 <20200902103109.GM6112@intel.com>
 <20200902121201.GA26007@intel.com>
 <20200902121708.GQ6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200902121708.GQ6112@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix regression leading to display
 audio probe failure on GLK
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

On Wed, Sep 02, 2020 at 03:17:08PM +0300, Ville Syrj=E4l=E4 wrote:
> On Wed, Sep 02, 2020 at 03:12:01PM +0300, Lisovskiy, Stanislav wrote:
> > On Wed, Sep 02, 2020 at 01:31:09PM +0300, Ville Syrj=E4l=E4 wrote:
> > > On Tue, Sep 01, 2020 at 06:10:36PM +0300, Kai Vehmanen wrote:
> > > > In commit 4f0b4352bd26 ("drm/i915: Extract cdclk requirements check=
ing
> > > > to separate function") the order of force_min_cdclk_changed check a=
nd
> > > > intel_modeset_checks(), was reversed. This broke the mechanism to
> > > > immediately force a new CDCLK minimum, and lead to driver probe
> > > > errors for display audio on GLK platform with 5.9-rc1 kernel. Fix
> > > > the issue by moving intel_modeset_checks() call later.
> > > =

> > > Yep. I eyeed this same code recently and noticed the same bug.
> > > The one thing I didn't yet figure out is whether there is some
> > > subtle ordering requirement that was the reason for the change.
> > > But considering intel_modeset_checks() doesn't really do much
> > > anymore I think it should be safe.
> > > =

> > > Sadly CI has been lumping all underrun errors under some ancient
> > > bugs, so no one noticed that things started to fail when this
> > > regression was introduced :(
> > > =

> > > Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > What surprises me here, is that the actual patch has been sent
> > and merged during late spring I think and we figure out that there was
> > a regression only by now. =

> > For example I figured out this only today. When I was doing that change=
, =

> > was actually aware that the change is actually quite significant as =

> > it changes the way how we deal with CDCLK, however those were necessary =

> > as we had a massive FIFO underrun issues at the moment. However CI didn=
't
> > show any problems, so we went ahead with this.
> =

> I spotted some CI logs that show underruns due to this regression,
> but the results just got lumped in with other older underrun bugs,
> and thus CI results were always "success" :/
> =

> I think we need to kill off all underrun related CI filters and
> start from scratch. Otherwise new bugs will keep slipping through.

Another concern I have here, as I understand now intel_modeset_checks
will be put again after wm/ddb and bw calculations - won't this =

cause any additional issues?

Also you now have modeset checks still before that force_min_cdclk
condition check which is now in intel_modeset_calc_cdclk.
My idea was to put all CDCLK related calculations and checks into
same function. However this could be a bad idea, so should you may
be just extract force_min_cdclk check condition back from intel_modeset_cal=
c_cdclk
to the original place where it was?

I'm just now thinking in terms of not breaking anything else now...

Stan

> =

> > =

> > > =

> > > > =

> > > > Fixes: 4f0b4352bd26 ("drm/i915: Extract cdclk requirements checking=
 to separate function)"
> > > > BugLink: https://github.com/thesofproject/linux/issues/2410
> > > > Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_display.c | 10 ++++------
> > > >  1 file changed, 4 insertions(+), 6 deletions(-)
> > > > =

> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers=
/gpu/drm/i915/display/intel_display.c
> > > > index 7d50b7177d40..8caeed23037c 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > @@ -15009,12 +15009,6 @@ static int intel_atomic_check(struct drm_d=
evice *dev,
> > > >  	if (dev_priv->wm.distrust_bios_wm)
> > > >  		any_ms =3D true;
> > > >  =

> > > > -	if (any_ms) {
> > > > -		ret =3D intel_modeset_checks(state);
> > > > -		if (ret)
> > > > -			goto fail;
> > > > -	}
> > > > -
> > > >  	intel_fbc_choose_crtc(dev_priv, state);
> > > >  	ret =3D calc_watermark_data(state);
> > > >  	if (ret)
> > > > @@ -15029,6 +15023,10 @@ static int intel_atomic_check(struct drm_d=
evice *dev,
> > > >  		goto fail;
> > > >  =

> > > >  	if (any_ms) {
> > > > +		ret =3D intel_modeset_checks(state);
> > > > +		if (ret)
> > > > +			goto fail;
> > > > +
> > > >  		ret =3D intel_modeset_calc_cdclk(state);
> > > >  		if (ret)
> > > >  			return ret;
> > > > -- =

> > > > 2.27.0
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
