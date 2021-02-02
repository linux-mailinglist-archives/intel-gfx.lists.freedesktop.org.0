Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 442BB30B7E1
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 07:31:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3062489D99;
	Tue,  2 Feb 2021 06:31:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 448A989D99
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 06:31:53 +0000 (UTC)
IronPort-SDR: CD9w9+83wU7kYePn+rIY/zSsgxtqel232atd1KhgTf5TC69YRT9s4Jsl5jbDyD0uiXYqLWuKc6
 AEGrUuh/JepQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="160570969"
X-IronPort-AV: E=Sophos;i="5.79,394,1602572400"; d="scan'208";a="160570969"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 22:31:52 -0800
IronPort-SDR: 7p+Y8KK6igUCjJVByLqgJBxGhFTFfCU2mUWyxV3q3zIz4UmHCru773jTREmZXU+JZIjwvBp3VE
 L1xsiKwdpqtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,394,1602572400"; d="scan'208";a="370379734"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 01 Feb 2021 22:31:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Feb 2021 08:31:48 +0200
Date: Tue, 2 Feb 2021 08:31:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Surendrakumar Upadhyay,
 TejaskumarX" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Message-ID: <YBjx1O/3jeFcRPDw@intel.com>
References: <20210127100830.162292-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <YBH0FJolpTwO+BJG@intel.com>
 <SN6PR11MB3421882AC3045B652D2CBDC4DFB59@SN6PR11MB3421.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN6PR11MB3421882AC3045B652D2CBDC4DFB59@SN6PR11MB3421.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Pandey, Hariom" <hariom.pandey@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 02, 2021 at 05:52:28AM +0000, Surendrakumar Upadhyay, Tejaskuma=
rX wrote:
> =

> =

> > -----Original Message-----
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Sent: 28 January 2021 04:46
> > To: Surendrakumar Upadhyay, TejaskumarX
> > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Pandey, Hariom
> > <hariom.pandey@intel.com>; Roper, Matthew D
> > <matthew.d.roper@intel.com>
> > Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen9bc: Handle TGP PCH during
> > suspend/resume
> > =

> > On Wed, Jan 27, 2021 at 03:38:30PM +0530, Tejas Upadhyay wrote:
> > > For Legacy S3 suspend/resume GEN9 BC needs to enable and setup TGP
> > > PCH.
> > >
> > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > Signed-off-by: Tejas Upadhyay
> > > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/i915_irq.c | 36
> > > ++++++++++++++++++++++++---------
> > >  1 file changed, 27 insertions(+), 9 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/i915_irq.c
> > > b/drivers/gpu/drm/i915/i915_irq.c index a31980f69120..6dcefc3e24ac
> > > 100644
> > > --- a/drivers/gpu/drm/i915/i915_irq.c
> > > +++ b/drivers/gpu/drm/i915/i915_irq.c
> > > @@ -3026,8 +3026,20 @@ static void gen8_irq_reset(struct
> > drm_i915_private *dev_priv)
> > >  	GEN3_IRQ_RESET(uncore, GEN8_DE_MISC_);
> > >  	GEN3_IRQ_RESET(uncore, GEN8_PCU_);
> > >
> > > -	if (HAS_PCH_SPLIT(dev_priv))
> > > +	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
> > > +		GEN3_IRQ_RESET(uncore, SDE);
> > > +	else if (HAS_PCH_SPLIT(dev_priv))
> > >  		ibx_irq_reset(dev_priv);
> > > +
> > > +	/* Wa_14010685332:cnp/cmp,tgp,adp */
> > > +	if (INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_CNP ||
> > > +	    (INTEL_PCH_TYPE(dev_priv) >=3D PCH_TGP &&
> > > +	    INTEL_PCH_TYPE(dev_priv) < PCH_DG1)) {
> > > +		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
> > > +				 SBCLK_RUN_REFCLK_DIS,
> > SBCLK_RUN_REFCLK_DIS);
> > > +		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
> > > +				 SBCLK_RUN_REFCLK_DIS, 0);
> > > +	}
> > =

> > Time to refactor instead of copypasta.
> Do you expect below? :
> =

> If ((INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_TGP) {
> 	intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
> 				 SBCLK_RUN_REFCLK_DIS,
> SBCLK_RUN_REFCLK_DIS);
> 		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
> 				 SBCLK_RUN_REFCLK_DIS, 0);
> }

I expect a new function instead of copy pasting this whole thing
into multiple places.

That said even the current code doesn't make any sense to me.
Take for instance this part:
        if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
	                GEN3_IRQ_RESET(uncore, SDE);
What is that PCH type check doing there? What weird PCH
type are we supposed to have that doesn't need this?

Also the Wa_14010685332 part looks a bit odd. Is it
correct that icp doesn't need that, but cnp and tgp
both do somehow? Can we even have cnp on icl+?

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
