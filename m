Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66CAE30C51D
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 17:14:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDFD66E95B;
	Tue,  2 Feb 2021 16:14:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19ECA6E95B
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 16:14:24 +0000 (UTC)
IronPort-SDR: 3PJT4VhI/2AJejSHSfWbyaAgU7qHPZb8Vwc3ynvVRpPEsbYuTyRGq42o75RuGHr9zAYFWGUvXm
 HSrZfNkv7IXA==
X-IronPort-AV: E=McAfee;i="6000,8403,9883"; a="265712348"
X-IronPort-AV: E=Sophos;i="5.79,395,1602572400"; d="scan'208";a="265712348"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2021 08:14:11 -0800
IronPort-SDR: PKpA0Qduo2Gzy4hp98onCw4ktoae+C37eipd5WTLUtK4xdQ0PA16tqb4/zXshYtJBalJAUJqUT
 i88ORTMjIUBQ==
X-IronPort-AV: E=Sophos;i="5.79,395,1602572400"; d="scan'208";a="391540508"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2021 08:14:06 -0800
Date: Tue, 2 Feb 2021 18:14:00 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Surendrakumar Upadhyay,
 TejaskumarX" <tejaskumarx.surendrakumar.upadhyay@intel.com>, 
 Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20210202161400.GB578899@ideak-desk.fi.intel.com>
References: <20210127100830.162292-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <YBH0FJolpTwO+BJG@intel.com>
 <SN6PR11MB3421882AC3045B652D2CBDC4DFB59@SN6PR11MB3421.namprd11.prod.outlook.com>
 <YBjx1O/3jeFcRPDw@intel.com> <YBj7TmOwNCqwits7@intel.com>
 <SN6PR11MB3421EAB14C44008CE72F09E6DFB59@SN6PR11MB3421.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN6PR11MB3421EAB14C44008CE72F09E6DFB59@SN6PR11MB3421.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen9bc: Handle TGP PCH during
 suspend/resume
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
Reply-To: imre.deak@intel.com
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Pandey, Hariom" <hariom.pandey@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 02, 2021 at 08:59:20AM +0000, Surendrakumar Upadhyay, Tejaskuma=
rX wrote:
> =

> =

> > -----Original Message-----
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Sent: 02 February 2021 12:42
> > To: Surendrakumar Upadhyay, TejaskumarX
> > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Pandey, Hariom
> > <hariom.pandey@intel.com>
> > Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen9bc: Handle TGP PCH during
> > suspend/resume
> > =

> > On Tue, Feb 02, 2021 at 08:31:48AM +0200, Ville Syrj=E4l=E4 wrote:
> > > On Tue, Feb 02, 2021 at 05:52:28AM +0000, Surendrakumar Upadhyay,
> > TejaskumarX wrote:
> > > >
> > > >
> > > > > -----Original Message-----
> > > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > Sent: 28 January 2021 04:46
> > > > > To: Surendrakumar Upadhyay, TejaskumarX
> > > > > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > > > > Cc: intel-gfx@lists.freedesktop.org; Pandey, Hariom
> > > > > <hariom.pandey@intel.com>; Roper, Matthew D
> > > > > <matthew.d.roper@intel.com>
> > > > > Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen9bc: Handle TGP PCH
> > > > > during suspend/resume
> > > > >
> > > > > On Wed, Jan 27, 2021 at 03:38:30PM +0530, Tejas Upadhyay wrote:
> > > > > > For Legacy S3 suspend/resume GEN9 BC needs to enable and setup
> > > > > > TGP PCH.
> > > > > >
> > > > > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > > > > Signed-off-by: Tejas Upadhyay
> > > > > > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > > > > > ---
> > > > > >  drivers/gpu/drm/i915/i915_irq.c | 36
> > > > > > ++++++++++++++++++++++++---------
> > > > > >  1 file changed, 27 insertions(+), 9 deletions(-)
> > > > > >
> > > > > > diff --git a/drivers/gpu/drm/i915/i915_irq.c
> > > > > > b/drivers/gpu/drm/i915/i915_irq.c index
> > > > > > a31980f69120..6dcefc3e24ac
> > > > > > 100644
> > > > > > --- a/drivers/gpu/drm/i915/i915_irq.c
> > > > > > +++ b/drivers/gpu/drm/i915/i915_irq.c
> > > > > > @@ -3026,8 +3026,20 @@ static void gen8_irq_reset(struct drm_i9=
15_private *dev_priv)
> > > > > >  	GEN3_IRQ_RESET(uncore, GEN8_DE_MISC_);
> > > > > >  	GEN3_IRQ_RESET(uncore, GEN8_PCU_);
> > > > > >
> > > > > > -	if (HAS_PCH_SPLIT(dev_priv))
> > > > > > +	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
> > > > > > +		GEN3_IRQ_RESET(uncore, SDE);
> > > > > > +	else if (HAS_PCH_SPLIT(dev_priv))
> > > > > >  		ibx_irq_reset(dev_priv);
> > > > > > +
> > > > > > +	/* Wa_14010685332:cnp/cmp,tgp,adp */
> > > > > > +	if (INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_CNP ||
> > > > > > +	    (INTEL_PCH_TYPE(dev_priv) >=3D PCH_TGP &&
> > > > > > +	    INTEL_PCH_TYPE(dev_priv) < PCH_DG1)) {
> > > > > > +		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
> > > > > > +				 SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK_DIS);
> > > > > > +		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
> > > > > > +				 SBCLK_RUN_REFCLK_DIS, 0);
> > > > > > +	}
> > > > >
> > > > > Time to refactor instead of copypasta.
> > > > Do you expect below? :
> > > >
> > > > If ((INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_TGP) {
> > > > 	intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
> > > > 				 SBCLK_RUN_REFCLK_DIS,
> > > > SBCLK_RUN_REFCLK_DIS);
> > > > 		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
> > > > 				 SBCLK_RUN_REFCLK_DIS, 0);
> > > > }
> > >
> > > I expect a new function instead of copy pasting this whole thing into
> > > multiple places.
> > >
> > > That said even the current code doesn't make any sense to me.
> > > Take for instance this part:
> > >         if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
> > > 	                GEN3_IRQ_RESET(uncore, SDE); What is that PCH type
> > > check doing there? What weird PCH type are we supposed to have that
> > > doesn't need this?
> > >
> > > Also the Wa_14010685332 part looks a bit odd. Is it correct that icp
> > > doesn't need that, but cnp and tgp both do somehow? Can we even have
> > > cnp on icl+?
> > =

> > Hmm. Looking at it a bit more, that w/a seems to have something to do w=
ith
> > suspend/resume, so seems rather misplaced in irq_reset(). Should probab=
ly
> > just move the whole thing into a more appropriate place.
> > =

> GEN11+ needs these checks in irq_reset(). Please check irq_reset for
> GEN11. Now that customer like dell are expecting TGP PCH with gen9bc
> platforms, I have done similar PCH checking in irq_reset() for gen9bc.
> You mean these checks are at wrong place for GEN11 irq_reset() as
> well? Or you want one function doing these checks and calling it
> everywhere!

BSpec says about this WA for both ICL and TGL:
"""
Display driver should set and clear register offset 0xC2000 bit #7 as
last step in programming south display registers in preparation for
entering S0ix state, or set 0xC2000 bit #7 on S0ix entry and clear it on
S0ix exit.

"""

This means to me the WA is only relevant for S0ix and we can implement
it by setting/clearing 0xC2000 bit #7 right before entering/right after
exiting S0ix. This is done atm on PCH_ICP..PCH_MCC in
intel_display_power_suspend_late()/intel_display_power_resume_early(),
so I'd move the WA for all platforms there.

I assume the current code in irq_reset() was the first alternative to
implement the WA, but it wasn't enough. Not sure why, maybe there is a
south display register access after irq_reset() during suspend. Adding
Anshuman for an idea on that.

--Imre
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
