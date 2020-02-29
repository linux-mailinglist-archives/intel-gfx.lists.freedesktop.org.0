Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C94A17441A
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Feb 2020 02:15:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F47C6E027;
	Sat, 29 Feb 2020 01:15:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AD1D6E027
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Feb 2020 01:15:08 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 17:15:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,498,1574150400"; d="scan'208";a="385660394"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga004.jf.intel.com with ESMTP; 28 Feb 2020 17:15:07 -0800
Date: Fri, 28 Feb 2020 17:15:07 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200229011507.GG174531@mdroper-desk1.amr.corp.intel.com>
References: <20200227220101.321671-1-jose.souza@intel.com>
 <20200227220101.321671-9-jose.souza@intel.com>
 <20200228212511.GD174531@mdroper-desk1.amr.corp.intel.com>
 <d92a0232b0c7df363fc37cdfcccf48a39c5f4d0c.camel@intel.com>
 <20200229002942.GF174531@mdroper-desk1.amr.corp.intel.com>
 <3130c4f150e09504a2161cebbf1ac2eda7adf825.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3130c4f150e09504a2161cebbf1ac2eda7adf825.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 09/11] drm/i915/tgl: Restrict
 Wa_1408615072 to A0 stepping
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

On Fri, Feb 28, 2020 at 04:45:43PM -0800, Souza, Jose wrote:
> On Fri, 2020-02-28 at 16:29 -0800, Matt Roper wrote:
> > On Fri, Feb 28, 2020 at 04:04:17PM -0800, Souza, Jose wrote:
> > > On Fri, 2020-02-28 at 13:25 -0800, Matt Roper wrote:
> > > > On Thu, Feb 27, 2020 at 02:00:59PM -0800, Jos=E9 Roberto de Souza
> > > > wrote:
> > > > > It is fixed in B0 stepping.
> > > > > =

> > > > > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/intel_pm.c | 5 +++--
> > > > >  1 file changed, 3 insertions(+), 2 deletions(-)
> > > > > =

> > > > > diff --git a/drivers/gpu/drm/i915/intel_pm.c
> > > > > b/drivers/gpu/drm/i915/intel_pm.c
> > > > > index 22aa205793e5..a101d8072b5b 100644
> > > > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > > > @@ -6838,8 +6838,9 @@ static void tgl_init_clock_gating(struct
> > > > > drm_i915_private *dev_priv)
> > > > >  	unsigned int i;
> > > > >  =

> > > > >  	/* Wa_1408615072:tgl */
> > > > > -	intel_uncore_rmw(&dev_priv->uncore,
> > > > > UNSLICE_UNIT_LEVEL_CLKGATE2,
> > > > > -			 0, VSUNIT_CLKGATE_DIS_TGL);
> > > > > +	if (IS_TGL_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_A0))
> > > > > +		intel_uncore_rmw(&dev_priv->uncore,
> > > > > UNSLICE_UNIT_LEVEL_CLKGATE2,
> > > > > +				 0, VSUNIT_CLKGATE_DIS_TGL);
> > > > =

> > > > I think this workaround is also implemented in the wrong
> > > > location.  This
> > > > is a render engine register (part of the 94D0-951C render
> > > > forcewake
> > > > range on bspec 52078) and part of the MCR range (bspec 52079), so
> > > > we
> > > > should program this in the engine_wa_init rather than the clock
> > > > gating
> > > > function.
> > > > =

> > > > The ICL/EHL version (which we based the TGL WA on) is also in the
> > > > wrong
> > > > place for the same reasons.
> > > > =

> > > > At some point we should probably audit all the other
> > > > GT/engine/MCR
> > > > registers we're dealing with in the init_clock_gating functions
> > > > and
> > > > move
> > > > them out to more appropriate places.
> > > =

> > > What about this note in BSpec 52078:
> > > * Note: Some CP registers (0x9400-0x97FF) are replicated in all
> > > domains, thus both render and media domains must be awake.
> > =

> > Well, the uncore functions will still take care of grabbing both
> > forcewakes for registers like these (so that the register writes are
> > applied to all the multicast register instances that live behind that
> > register offset), so everything that needs to be will be powered up.
> > Based on the information about the workaround, it sounds like it's
> > only
> > actually the render engine it really matters for though.
> =

> The WA explicity says to set 0x94E4 so other engines would need it too.

xcs_engine_wa_init() is the equivalent for other engines if we want to
make sure the multicast register is also re-written when we do a
single-engine reset on the media engines.

Although I see that just yesterday one of the architects filed bspec
issue 23662 which also relates to this register range...we may want to
wait and see how the bspec winds up getting clarified there before
moving this workaround around.

> =

> > =

> > If we do this change in init_clock_gating, I don't believe it gets
> > re-applied on single-engine resets, so we lose the workaround.  If we
> > do
> > this in the rcs engine's WA function, then those will be re-applied
> =

> For what I checked if display is not involved in the reset it would not
> be applied, so a better and easier sollution would be make it be
> executed when display is not involved.
> =

> CCing some GT folks.

Although init_clock_gating is part of the display vtable, it has a mix
of GT and display stuff today.  It's not really the right place to be
doing GT stuff, but since we haven't moved various workarounds out to
more correct places, we have a somewhat hacky workaround today of also
calling intel_init_clock_gating() in:

 * intel_finish_reset()
 * i915_drm_resume()
 * i915_gem_init()  (comment here admits we need to fix this)

to try to make sure that the GT-related stuff gets re-applied at some of
the points where it would otherwise be lost (GPU resets and system power
management).  But the intel_finish_reset() in the list above is dealing
with full GPU resets, not single-engine resets.

intel_engine_apply_workarounds() on the other hand gets called from
intel_engine_resume(), and that's called during intel_engine_reset() so
the workarounds applied by it (i.e., the stuff in rcs_engine_wa_init
and xcs_engine_wa_init) will be re-applied when you just reset a single
engine in isolation.


Matt

> =

> > =

> > > Otherwise we have a huge problem, doing just a quick search I found
> > > this 2 registers bellow that we are programing from
> > > init_clock_gating()
> > > in the same range.
> > > =

> > > #define GEN8_UCGCTL6				_MMIO(0x9430)
> > > #define GEN7_MISCCPCTL				_MMIO(0x9424)
> > =

> > Yeah, I suspect there are multiple workarounds we're not actually
> > handling properly today (but as long as you don't suffer an engine
> > hang
> > & reset, you'll probably never notice).
> > =

> > IIRC, there's a fixme comment somewhere in the code saying we should
> > move all
> > the non-display stuff our of init_clock_gating to move appropriate
> > locations too.
> > =

> > =

> > =

> > Matt
> > =

> > > > =

> > > > Matt
> > > > =

> > > > >  =

> > > > >  	/* This is not a WA. Enable VD HCP & MFX_ENC powergate
> > > > > */
> > > > >  	for (i =3D 0; i < I915_MAX_VCS; i++) {
> > > > > -- =

> > > > > 2.25.1
> > > > > =

> > > > > _______________________________________________
> > > > > Intel-gfx mailing list
> > > > > Intel-gfx@lists.freedesktop.org
> > > > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
