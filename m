Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8266820B353
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 16:15:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD9936ECA7;
	Fri, 26 Jun 2020 14:15:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDDA96ECA7
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 14:15:50 +0000 (UTC)
IronPort-SDR: uXpBBsNMWGeq9h2sKg8uYwLmNNUhfZnfWDIZf4lkDng5DY1CZUaxzoDm+2LqOxGLghyUABJSwO
 vDryNxzFQyQQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="144423898"
X-IronPort-AV: E=Sophos;i="5.75,283,1589266800"; d="scan'208";a="144423898"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 07:15:50 -0700
IronPort-SDR: pHQ7yYRfNMx6nCpfpdiYFVIL1DcypIMJVLbtPPls8A0ZYHRWLRb5uQTEKkWO0mzH4pxyP/2WVb
 v5pujr3B3/Cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,283,1589266800"; d="scan'208";a="264223151"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
 by fmsmga007.fm.intel.com with ESMTP; 26 Jun 2020 07:15:49 -0700
Received: from irsmsx603.ger.corp.intel.com (163.33.146.9) by
 IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 26 Jun 2020 15:15:49 +0100
Received: from irsmsx603.ger.corp.intel.com (163.33.146.9) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 26 Jun 2020 15:15:48 +0100
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9]) by
 irsmsx603.ger.corp.intel.com ([163.33.146.9]) with mapi id 15.01.1713.004;
 Fri, 26 Jun 2020 15:15:48 +0100
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Clamp linetime wm to <64usec
Thread-Index: AQHWSytUTwoQFFf+AEeNgcZAL3fSaajqjb0AgABLmoCAABU+wP//8RMAgAASRvA=
Date: Fri, 26 Jun 2020 14:15:48 +0000
Message-ID: <5169160f469d48d3b0a84aa2ef7fcb21@intel.com>
References: <20200625200003.12436-1-ville.syrjala@linux.intel.com>
 <20200626091606.GA29269@intel.com> <20200626134641.GZ6112@intel.com>
 <967d55ae9ac24745ae4fde4ca846a475@intel.com>
 <20200626140918.GB6112@intel.com>
In-Reply-To: <20200626140918.GB6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-reaction: no-action
dlp-product: dlpe-windows
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi, =


> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: perjantai 26. kes=E4kuuta 2020 17.09
> To: Saarinen, Jani <jani.saarinen@intel.com>
> Cc: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915: Clamp linetime wm to <64usec
> =

> On Fri, Jun 26, 2020 at 02:03:23PM +0000, Saarinen, Jani wrote:
> > Hi,
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Ville Syrj=E4l=E4
> > > Sent: perjantai 26. kes=E4kuuta 2020 16.47
> > > To: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org
> > > Subject: Re: [Intel-gfx] [PATCH] drm/i915: Clamp linetime wm to
> > > <64usec
> > >
> > > On Fri, Jun 26, 2020 at 12:16:06PM +0300, Lisovskiy, Stanislav wrote:
> > > > On Thu, Jun 25, 2020 at 11:00:03PM +0300, Ville Syrjala wrote:
> > > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > >
> > > > > The linetime watermark is a 9 bit value, which gives us a
> > > > > maximum linetime of just below 64 usec. If the linetime exceeds
> > > > > that value we currently just discard the high bits and program
> > > > > the rest into the register, which angers the state checker.
> > > > >
> > > > > To avoid that let's just clamp the value to the max. I believe
> > > > > it should be perfectly fine to program a smaller linetime wm
> > > > > than strictly required, just means the hardware may fetch data
> > > > > sooner than strictly needed. We are further reassured by the
> > > > > fact that with DRRS the spec tells us to program the smaller of
> > > > > the two linetimes corresponding to the two refresh rates.
> > > > >
> > > > > Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_display.c | 18
> > > > > ++++++++++++------
> > > > >  1 file changed, 12 insertions(+), 6 deletions(-)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > index a11bb675f9b3..d486d675166f 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > @@ -12581,12 +12581,15 @@ static u16 hsw_linetime_wm(const
> > > > > struct intel_crtc_state *crtc_state)  {
> > > > >  	const struct drm_display_mode *adjusted_mode =3D
> > > > >  		&crtc_state->hw.adjusted_mode;
> > > > > +	int linetime_wm;
> > > > >
> > > > >  	if (!crtc_state->hw.enable)
> > > > >  		return 0;
> > > > >
> > > > > -	return DIV_ROUND_CLOSEST(adjusted_mode->crtc_htotal * 1000 *
> > > 8,
> > > > > -				 adjusted_mode-
> > > >crtc_clock);
> > > > > +	linetime_wm =3D DIV_ROUND_CLOSEST(adjusted_mode->crtc_htotal *
> > > 1000 * 8,
> > > > > +
> > > 	adjusted_mode->crtc_clock);
> > > > > +
> > > > > +	return min(linetime_wm, 0x1ff);
> > > >
> > > > Are we actually doing the right thing here? I just mean that we
> > > > get value
> > > > 543 in the bug because pixel rate is 14874 which doesn't seem corre=
ct.
> > >
> > > As explained in the commit msg programming this to lower than
> > > necessary value should be totally fine. It just won't be optimal.
> > >
> > > The values in the jira (was there an actual gitlab bug for this
> > > btw?) look quite sensible
> > No, there is no gtilab issue as no tiled display at CI.
> =

> Can't see what this has to do with tiled displays. I guess we're talking =
about some
> specific display that just happens to have that super slow mode?
Perhaps, issue where seen in Dell UP2715K. =


> =

> >
> > > to me. Some kind of low res 848xsomething mode with dotclock of
> > > 14.874 Mhz, which gives us that linetime of ~68 usec.
> > >
> > > >
> > > > Stan
> > > > >  }
> > > > >
> > > > >  static u16 hsw_ips_linetime_wm(const struct intel_crtc_state
> > > > > *crtc_state, @@ -12594,12 +12597,15 @@ static u16
> > > > > hsw_ips_linetime_wm(const struct intel_crtc_state *crtc_state,  {
> > > > >  	const struct drm_display_mode *adjusted_mode =3D
> > > > >  		&crtc_state->hw.adjusted_mode;
> > > > > +	int linetime_wm;
> > > > >
> > > > >  	if (!crtc_state->hw.enable)
> > > > >  		return 0;
> > > > >
> > > > > -	return DIV_ROUND_CLOSEST(adjusted_mode->crtc_htotal * 1000 *
> > > 8,
> > > > > -				 cdclk_state-
> > > >logical.cdclk);
> > > > > +	linetime_wm =3D DIV_ROUND_CLOSEST(adjusted_mode->crtc_htotal *
> > > 1000 * 8,
> > > > > +
> > > 	cdclk_state->logical.cdclk);
> > > > > +
> > > > > +	return min(linetime_wm, 0x1ff);
> > > > >  }
> > > > >
> > > > >  static u16 skl_linetime_wm(const struct intel_crtc_state
> > > > > *crtc_state) @@ -12608,7 +12614,7 @@ static u16
> > > > > skl_linetime_wm(const
> > > struct intel_crtc_state *crtc_state)
> > > > >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > > > >  	const struct drm_display_mode *adjusted_mode =3D
> > > > >  		&crtc_state->hw.adjusted_mode;
> > > > > -	u16 linetime_wm;
> > > > > +	int linetime_wm;
> > > > >
> > > > >  	if (!crtc_state->hw.enable)
> > > > >  		return 0;
> > > > > @@ -12620,7 +12626,7 @@ static u16 skl_linetime_wm(const struct
> > > intel_crtc_state *crtc_state)
> > > > >  	if (IS_GEN9_LP(dev_priv) && dev_priv->ipc_enabled)
> > > > >  		linetime_wm /=3D 2;
> > > > >
> > > > > -	return linetime_wm;
> > > > > +	return min(linetime_wm, 0x1ff);
> > > > >  }
> > > > >
> > > > >  static int hsw_compute_linetime_wm(struct intel_atomic_state
> > > > > *state,
> > > > > --
> > > > > 2.26.2
> > > > >
> > >
> > > --
> > > Ville Syrj=E4l=E4
> > > Intel
> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> --
> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
