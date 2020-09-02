Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F28325AAE0
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Sep 2020 14:11:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEB0C6E48F;
	Wed,  2 Sep 2020 12:11:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C5BE6E48F
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Sep 2020 12:11:52 +0000 (UTC)
IronPort-SDR: EJ3R24w9fp7HDbXrMHpk7pICXo2BdqNiOcRAqBZjTShZcsTRackkU1VEuyip8h2KQJShpj8AJn
 B/6nmR4KQanA==
X-IronPort-AV: E=McAfee;i="6000,8403,9731"; a="145060605"
X-IronPort-AV: E=Sophos;i="5.76,383,1592895600"; d="scan'208";a="145060605"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2020 05:11:51 -0700
IronPort-SDR: WG5dOI2rQs6DqYkeKCxPMP4jf6jz6k9OWdBbKcQlnvdBWDnThLxZ9if/DFgDy05ODpa9m3aJLR
 01p9SEyuDbBA==
X-IronPort-AV: E=Sophos;i="5.76,383,1592895600"; d="scan'208";a="477615630"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2020 05:11:49 -0700
Date: Wed, 2 Sep 2020 15:12:01 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200902121201.GA26007@intel.com>
References: <20200901151036.1312357-1-kai.vehmanen@linux.intel.com>
 <20200902103109.GM6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200902103109.GM6112@intel.com>
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

On Wed, Sep 02, 2020 at 01:31:09PM +0300, Ville Syrj=E4l=E4 wrote:
> On Tue, Sep 01, 2020 at 06:10:36PM +0300, Kai Vehmanen wrote:
> > In commit 4f0b4352bd26 ("drm/i915: Extract cdclk requirements checking
> > to separate function") the order of force_min_cdclk_changed check and
> > intel_modeset_checks(), was reversed. This broke the mechanism to
> > immediately force a new CDCLK minimum, and lead to driver probe
> > errors for display audio on GLK platform with 5.9-rc1 kernel. Fix
> > the issue by moving intel_modeset_checks() call later.
> =

> Yep. I eyeed this same code recently and noticed the same bug.
> The one thing I didn't yet figure out is whether there is some
> subtle ordering requirement that was the reason for the change.
> But considering intel_modeset_checks() doesn't really do much
> anymore I think it should be safe.
> =

> Sadly CI has been lumping all underrun errors under some ancient
> bugs, so no one noticed that things started to fail when this
> regression was introduced :(
> =

> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

What surprises me here, is that the actual patch has been sent
and merged during late spring I think and we figure out that there was
a regression only by now. =

For example I figured out this only today. When I was doing that change, =

was actually aware that the change is actually quite significant as =

it changes the way how we deal with CDCLK, however those were necessary =

as we had a massive FIFO underrun issues at the moment. However CI didn't
show any problems, so we went ahead with this.

> =

> > =

> > Fixes: 4f0b4352bd26 ("drm/i915: Extract cdclk requirements checking to =
separate function)"
> > BugLink: https://github.com/thesofproject/linux/issues/2410
> > Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 10 ++++------
> >  1 file changed, 4 insertions(+), 6 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 7d50b7177d40..8caeed23037c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -15009,12 +15009,6 @@ static int intel_atomic_check(struct drm_devic=
e *dev,
> >  	if (dev_priv->wm.distrust_bios_wm)
> >  		any_ms =3D true;
> >  =

> > -	if (any_ms) {
> > -		ret =3D intel_modeset_checks(state);
> > -		if (ret)
> > -			goto fail;
> > -	}
> > -
> >  	intel_fbc_choose_crtc(dev_priv, state);
> >  	ret =3D calc_watermark_data(state);
> >  	if (ret)
> > @@ -15029,6 +15023,10 @@ static int intel_atomic_check(struct drm_devic=
e *dev,
> >  		goto fail;
> >  =

> >  	if (any_ms) {
> > +		ret =3D intel_modeset_checks(state);
> > +		if (ret)
> > +			goto fail;
> > +
> >  		ret =3D intel_modeset_calc_cdclk(state);
> >  		if (ret)
> >  			return ret;
> > -- =

> > 2.27.0
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
