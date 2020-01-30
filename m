Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1DE14DC10
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 14:35:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F37789F2E;
	Thu, 30 Jan 2020 13:35:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBCA089F2E
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 13:35:24 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 05:35:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,382,1574150400"; d="scan'208";a="222795800"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 30 Jan 2020 05:35:21 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 30 Jan 2020 15:35:20 +0200
Date: Thu, 30 Jan 2020 15:35:20 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200130133520.GA13686@intel.com>
References: <20200123132659.725-1-anshuman.gupta@intel.com>
 <20200123132659.725-3-anshuman.gupta@intel.com>
 <20200123134057.GL13686@intel.com>
 <20200130120201.GG24118@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200130120201.GG24118@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [RFC 2/6] drm/i915: Remove (pipe == crtc->index)
 asummption
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 30, 2020 at 05:32:01PM +0530, Anshuman Gupta wrote:
> On 2020-01-23 at 15:40:57 +0200, Ville Syrj=E4l=E4 wrote:
> > On Thu, Jan 23, 2020 at 06:56:55PM +0530, Anshuman Gupta wrote:
> > > we can't have (pipe =3D=3D crtc->index) assumption in
> > > driver in order to support 3 non-contiguous
> > > display pipe system.
> > > =

> > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 10 ++++------
> > >  1 file changed, 4 insertions(+), 6 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/g=
pu/drm/i915/display/intel_display.c
> > > index 878d331b9e8c..afd8d43160c6 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -14070,11 +14070,11 @@ verify_single_dpll_state(struct drm_i915_pr=
ivate *dev_priv,
> > >  	if (new_crtc_state->hw.active)
> > >  		I915_STATE_WARN(!(pll->active_mask & crtc_mask),
> > >  				"pll active mismatch (expected pipe %c in active mask 0x%02x)\n",
> > > -				pipe_name(drm_crtc_index(&crtc->base)), pll->active_mask);
> > > +				pipe_name(crtc->pipe), pll->active_mask);
> > >  	else
> > >  		I915_STATE_WARN(pll->active_mask & crtc_mask,
> > >  				"pll active mismatch (didn't expect pipe %c in active mask 0x%02=
x)\n",
> > > -				pipe_name(drm_crtc_index(&crtc->base)), pll->active_mask);
> > > +				pipe_name(crtc->pipe), pll->active_mask);
> > >  =

> > >  	I915_STATE_WARN(!(pll->state.crtc_mask & crtc_mask),
> > >  			"pll enabled crtcs mismatch (expected 0x%x in 0x%02x)\n",
> > > @@ -14103,10 +14103,10 @@ verify_shared_dpll_state(struct intel_crtc =
*crtc,
> > >  =

> > >  		I915_STATE_WARN(pll->active_mask & crtc_mask,
> > >  				"pll active mismatch (didn't expect pipe %c in active mask)\n",
> > > -				pipe_name(drm_crtc_index(&crtc->base)));
> > > +				pipe_name(crtc->pipe));
> > >  		I915_STATE_WARN(pll->state.crtc_mask & crtc_mask,
> > >  				"pll enabled crtcs mismatch (found %x in enabled mask)\n",
> > > -				pipe_name(drm_crtc_index(&crtc->base)));
> > > +				pipe_name(crtc->pipe));
> > >  	}
> > >  }
> > >  =

> > > @@ -16485,8 +16485,6 @@ static int intel_crtc_init(struct drm_i915_pr=
ivate *dev_priv, enum pipe pipe)
> > >  =

> > >  	intel_color_init(crtc);
> > >  =

> > > -	WARN_ON(drm_crtc_index(&crtc->base) !=3D crtc->pipe);
> > > -
> > =

> > The first and second hunks don't really have anything to do with
> > each other. Also the WARN_ON() should not be removed until all the
> > assumptions are fixed.
> True there can be other assumptions as well, there are few, i have come t=
o know
> drm_handle_vblank(&dev_priv->drm, pipe) in gen8_de_irq_handler()

In fact it's in all irq handlers.

> drm_wait_one_vblank(&dev_priv->drm, pipe) in intel_wait_for_vblank(),

Good catch. Totally forgot about these.

> i will fix these assumptions is next update, are there any other similar =
kind of
> assumption on which u can throw some light to look for?
> I am not sure how does above WARN_ON helps to know all such kind of =

> assumptions, but it make sense to have it with FIXME.

It doesn't help finding them, what it does is make people realize
that they're running a driver which is known to be broken.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
