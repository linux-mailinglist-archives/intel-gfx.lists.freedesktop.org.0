Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A33620D01A
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2020 18:21:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9014589DA4;
	Mon, 29 Jun 2020 16:21:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D015089DA4
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jun 2020 16:21:39 +0000 (UTC)
IronPort-SDR: HFU8EXdh9MF7Mi9zPSkEgR5d9+Z6h6e9yjdxJa9PBxINMJstYL+VSAdZdW8rV8auW/xd4/6uDY
 N3+Ld4Tp1EAQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="143475521"
X-IronPort-AV: E=Sophos;i="5.75,295,1589266800"; d="scan'208";a="143475521"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2020 09:21:38 -0700
IronPort-SDR: A8R8eTMiSkf+bPonRe1GCtvFvj2y3PDv5RnfsTJlZiYfOO8nOhkyuGUeLMYCc7nHMY9EwDw/5d
 b+3XVKjn9cGA==
X-IronPort-AV: E=Sophos;i="5.75,295,1589266800"; d="scan'208";a="303125383"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com (HELO
 intel.com) ([10.237.72.190])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2020 09:21:36 -0700
Date: Mon, 29 Jun 2020 19:20:46 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200629162046.GA605@intel.com>
References: <20200625200003.12436-1-ville.syrjala@linux.intel.com>
 <20200626091606.GA29269@intel.com>
 <20200626134641.GZ6112@intel.com> <20200626151336.GA6490@intel.com>
 <20200626180306.GC6112@intel.com> <20200629082432.GA1826@intel.com>
 <20200629154805.GD6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200629154805.GD6112@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Clamp linetime wm to <64usec
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

On Mon, Jun 29, 2020 at 06:48:05PM +0300, Ville Syrj=E4l=E4 wrote:
> On Mon, Jun 29, 2020 at 11:24:53AM +0300, Lisovskiy, Stanislav wrote:
> > On Sat, Jun 27, 2020 at 07:57:31PM +0300, Ville Syrj=E4l=E4 wrote:
> > > On Fri, Jun 26, 2020 at 06:13:36PM +0300, Lisovskiy, Stanislav wrote:
> > > > On Fri, Jun 26, 2020 at 04:46:41PM +0300, Ville Syrj=E4l=E4 wrote:
> > > > > On Fri, Jun 26, 2020 at 12:16:06PM +0300, Lisovskiy, Stanislav wr=
ote:
> > > > > > On Thu, Jun 25, 2020 at 11:00:03PM +0300, Ville Syrjala wrote:
> > > > > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > > > =

> > > > > > > The linetime watermark is a 9 bit value, which gives us
> > > > > > > a maximum linetime of just below 64 usec. If the linetime
> > > > > > > exceeds that value we currently just discard the high bits
> > > > > > > and program the rest into the register, which angers the
> > > > > > > state checker.
> > > > > > > =

> > > > > > > To avoid that let's just clamp the value to the max. I believe
> > > > > > > it should be perfectly fine to program a smaller linetime wm
> > > > > > > than strictly required, just means the hardware may fetch data
> > > > > > > sooner than strictly needed. We are further reassured by the
> > > > > > > fact that with DRRS the spec tells us to program the smaller
> > > > > > > of the two linetimes corresponding to the two refresh rates.
> > > > > > > =

> > > > > > > Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > > > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.c=
om>
> > > > > > > ---
> > > > > > >  drivers/gpu/drm/i915/display/intel_display.c | 18 ++++++++++=
++------
> > > > > > >  1 file changed, 12 insertions(+), 6 deletions(-)
> > > > > > > =

> > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/d=
rivers/gpu/drm/i915/display/intel_display.c
> > > > > > > index a11bb675f9b3..d486d675166f 100644
> > > > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > @@ -12581,12 +12581,15 @@ static u16 hsw_linetime_wm(const st=
ruct intel_crtc_state *crtc_state)
> > > > > > >  {
> > > > > > >  	const struct drm_display_mode *adjusted_mode =3D
> > > > > > >  		&crtc_state->hw.adjusted_mode;
> > > > > > > +	int linetime_wm;
> > > > > > >  =

> > > > > > >  	if (!crtc_state->hw.enable)
> > > > > > >  		return 0;
> > > > > > >  =

> > > > > > > -	return DIV_ROUND_CLOSEST(adjusted_mode->crtc_htotal * 1000 =
* 8,
> > > > > > > -				 adjusted_mode->crtc_clock);
> > > > > > > +	linetime_wm =3D DIV_ROUND_CLOSEST(adjusted_mode->crtc_htota=
l * 1000 * 8,
> > > > > > > +					adjusted_mode->crtc_clock);
> > > > > > > +
> > > > > > > +	return min(linetime_wm, 0x1ff);
> > > > > > =

> > > > > > Are we actually doing the right thing here? I just mean that we=
 get value
> > > > > > 543 in the bug because pixel rate is 14874 which doesn't seem c=
orrect.
> > > > > =

> > > > > As explained in the commit msg programming this to lower than nec=
essary
> > > > > value should be totally fine. It just won't be optimal.
> > > > > =

> > > > > The values in the jira (was there an actual gitlab bug for this b=
tw?)
> > > > > look quite sensible to me. Some kind of low res 848xsomething mod=
e with
> > > > > dotclock of 14.874 Mhz, which gives us that linetime of ~68 usec.
> > > > =

> > > > Htotal from modeline "848x480": 30 14874 848 896 928 1008 480 483 4=
88 494 0x40 0x9
> > > > is 1008.
> > > > =

> > > > According to the formula above htotal(1008)*1000*8 / 14874(crtc_clo=
ck) =3D 542.154
> > > > =

> > > > So what's the catch? :)
> > > =

> > > What catch? Looks totally consistent to me.
> > =

> > I meant as I understood from your comment we were supposed to get 68 us=
ec linetime, not
> > 542.
> =

> It's in units of .125 usec, or put another way .3 binary fixed point.

Yep, found this in BSpec already for WM_LINETIME reg. =

  =

> =

> > =

> > Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > =

> > > =

> > > > =

> > > > Stan
> > > > > =

> > > > > > =

> > > > > > Stan
> > > > > > >  }
> > > > > > >  =

> > > > > > >  static u16 hsw_ips_linetime_wm(const struct intel_crtc_state=
 *crtc_state,
> > > > > > > @@ -12594,12 +12597,15 @@ static u16 hsw_ips_linetime_wm(cons=
t struct intel_crtc_state *crtc_state,
> > > > > > >  {
> > > > > > >  	const struct drm_display_mode *adjusted_mode =3D
> > > > > > >  		&crtc_state->hw.adjusted_mode;
> > > > > > > +	int linetime_wm;
> > > > > > >  =

> > > > > > >  	if (!crtc_state->hw.enable)
> > > > > > >  		return 0;
> > > > > > >  =

> > > > > > > -	return DIV_ROUND_CLOSEST(adjusted_mode->crtc_htotal * 1000 =
* 8,
> > > > > > > -				 cdclk_state->logical.cdclk);
> > > > > > > +	linetime_wm =3D DIV_ROUND_CLOSEST(adjusted_mode->crtc_htota=
l * 1000 * 8,
> > > > > > > +					cdclk_state->logical.cdclk);
> > > > > > > +
> > > > > > > +	return min(linetime_wm, 0x1ff);
> > > > > > >  }
> > > > > > >  =

> > > > > > >  static u16 skl_linetime_wm(const struct intel_crtc_state *cr=
tc_state)
> > > > > > > @@ -12608,7 +12614,7 @@ static u16 skl_linetime_wm(const stru=
ct intel_crtc_state *crtc_state)
> > > > > > >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.de=
v);
> > > > > > >  	const struct drm_display_mode *adjusted_mode =3D
> > > > > > >  		&crtc_state->hw.adjusted_mode;
> > > > > > > -	u16 linetime_wm;
> > > > > > > +	int linetime_wm;
> > > > > > >  =

> > > > > > >  	if (!crtc_state->hw.enable)
> > > > > > >  		return 0;
> > > > > > > @@ -12620,7 +12626,7 @@ static u16 skl_linetime_wm(const stru=
ct intel_crtc_state *crtc_state)
> > > > > > >  	if (IS_GEN9_LP(dev_priv) && dev_priv->ipc_enabled)
> > > > > > >  		linetime_wm /=3D 2;
> > > > > > >  =

> > > > > > > -	return linetime_wm;
> > > > > > > +	return min(linetime_wm, 0x1ff);
> > > > > > >  }
> > > > > > >  =

> > > > > > >  static int hsw_compute_linetime_wm(struct intel_atomic_state=
 *state,
> > > > > > > -- =

> > > > > > > 2.26.2
> > > > > > > =

> > > > > =

> > > > > -- =

> > > > > Ville Syrj=E4l=E4
> > > > > Intel
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
