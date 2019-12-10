Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D582D119127
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 20:55:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E20B76E174;
	Tue, 10 Dec 2019 19:55:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA42F6E174
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 19:55:30 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 11:55:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,300,1571727600"; d="scan'208";a="203308816"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 10 Dec 2019 11:55:27 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Dec 2019 21:55:27 +0200
Date: Tue, 10 Dec 2019 21:55:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20191210195527.GC1208@intel.com>
References: <20191112163812.22075-1-ville.syrjala@linux.intel.com>
 <20191112163812.22075-3-ville.syrjala@linux.intel.com>
 <8bd8a68e72804b48a1270877a8d62eeb8c4a08df.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8bd8a68e72804b48a1270877a8d62eeb8c4a08df.camel@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: ELiminate
 intel_pipe_to_cpu_transcoder() from assert_fdi_tx()
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

On Tue, Dec 10, 2019 at 06:19:24PM +0000, Souza, Jose wrote:
> On Tue, 2019-11-12 at 18:38 +0200, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Let's start to eliminate intel_pipe_to_cpu_transcoder() so that
> > we can get rid of one more crtc->config usage (which we will want
> > to nuke as well).
> > =

> > In the case of assert_fdi_tx() we know that we're never
> > dealing with the EDP transcoder so we can simply replace
> > this with a cast.
> =

> There still one EDP transcoder case when running in a HSW:
> =

> haswell_crtc_enable()
> 	lpt_pch_enable()
> 		lpt_enable_pch_transcoder()
> 			assert_fdi_tx_enabled()

The transcoder will never EDP. But this casting back and forth =

is a bit ugly. Maybe I should just kill these FDI TX asserts
from the hsw/bdw code...

> =

> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 10 +++++++---
> >  1 file changed, 7 insertions(+), 3 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index e7e5497e6f2e..cabd88337822 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1141,11 +1141,15 @@ static void assert_fdi_tx(struct
> > drm_i915_private *dev_priv,
> >  			  enum pipe pipe, bool state)
> >  {
> >  	bool cur_state;
> > -	enum transcoder cpu_transcoder =3D
> > intel_pipe_to_cpu_transcoder(dev_priv,
> > -								      p
> > ipe);
> >  =

> >  	if (HAS_DDI(dev_priv)) {
> > -		/* DDI does not have a specific FDI_TX register */
> > +		/*
> > +		 * DDI does not have a specific FDI_TX register.
> > +		 *
> > +		 * FDI is never hooked fed from EDP transcoder
> > +		 * so pipe->transcoder cast is fine here.
> > +		 */
> > +		enum transcoder cpu_transcoder =3D (enum transcoder)pipe;
> >  		u32 val =3D
> > I915_READ(TRANS_DDI_FUNC_CTL(cpu_transcoder));
> >  		cur_state =3D !!(val & TRANS_DDI_FUNC_ENABLE);
> >  	} else {

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
