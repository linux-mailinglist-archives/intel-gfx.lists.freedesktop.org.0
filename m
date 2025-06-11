Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46ECEAD58A3
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 16:25:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81DA410E694;
	Wed, 11 Jun 2025 14:25:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Eq0f0gup";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C002310E694;
 Wed, 11 Jun 2025 14:25:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749651950; x=1781187950;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=bCi9AxQxdhpUmL1fnTC/ite/GO6fZmbu0zkZxIyERsg=;
 b=Eq0f0guprFuHwDN3KM3VKR/gz+nkj81YU5GtLB1Aa28UrcbrWoMZXMAV
 MxnHZJxlRe0zAuz/96Msl90XiJJLD+FybRGKIfiq97tc8k4vxI9Y+8kEY
 OLtA+cSZ+CfenNHuoxGdsollJ9IcdOdGp7T+3kpebLLiERRhnZp0Pg1GL
 bOe+lgrq4VXj0po3TBg2WLvCzUbGzt46jK3cOk53jTNslWkRaSsFJv2Xd
 xBJZ4QQYybgg3pcc3HifEttu6wRtwMa7pFb0zL294hHxcYXMlP1kBiXAo
 TsJjjwTwuTYyaXo8ijwgtc7HTVUAdl/hAvg9STVcNigTujbdb0SI0aLl+ A==;
X-CSE-ConnectionGUID: M0e4rhHART2JGn1x3ketDg==
X-CSE-MsgGUID: WYLkLtbuQH2uSrhJtOu94g==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="55463477"
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="55463477"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 07:25:50 -0700
X-CSE-ConnectionGUID: txiLxA1pTqa6tLiZIT1XkA==
X-CSE-MsgGUID: /lQzbgN4QbOjhn3FCbsqcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="152488765"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.24])
 by orviesa005.jf.intel.com with SMTP; 11 Jun 2025 07:25:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Jun 2025 17:25:46 +0300
Date: Wed, 11 Jun 2025 17:25:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v4 12/21] drm/i915/dmc: Reload PIPEDMC MMIO registers for
 pipe C/D on PTL+
Message-ID: <aEmR6oxcFPhNOod4@intel.com>
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
 <20250609141046.6244-13-ville.syrjala@linux.intel.com>
 <DM4PR11MB63609BA53894388FB862C0E8F46AA@DM4PR11MB6360.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM4PR11MB63609BA53894388FB862C0E8F46AA@DM4PR11MB6360.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 10, 2025 at 11:24:58PM +0000, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjala
> > Sent: Monday, June 9, 2025 7:41 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: intel-xe@lists.freedesktop.org
> > Subject: [PATCH v4 12/21] drm/i915/dmc: Reload PIPEDMC MMIO registers for
> > pipe C/D on PTL+
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > On PTL+ the PIPEDMC on pipes C/D loses its MMIO state occasionally.
> > Not quite sure what the specific sequence is that makes this happen (eg. simply
> > disbling PG2 doesn't seem to be enough to trigger this on its own).
> 
> Nit: Typo in disabling
> 
> > Reload the MMIO registers for the affected pipes when enabling the PIPEDMC. So
> > far I've not see this happen on PTL pipe A/B, nor on any pipe on any other
> > platform.
> > 
> > The DMC program RAM doesn't appear to need manual restoring, though Windows
> > appears to be doing exactly that on most platforms (for some of the pipes). None
> > of this is properly documented anywhere it seems.
> 
> Yeah can't find any documentation for the same. Lets go with the empirical behaviour,
> will try to get this updated in spec as well.

CI did catch the fact that TGL/derivatives lose the entire pipe DMC state
when PG1 is disabled, and the main DMC does not restore any of it. I'll
cook up some extra patches to deal with that. The pipe DMC is only
needed for LACE on these platforms, so could perhaps just not load it at
all, but I think I'll keep it around just in case we ever want to
implement some LACE stuff at some point.

> 
> Looks Good to me.
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dmc.c | 23 +++++++++++++++++------
> >  1 file changed, 17 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> > b/drivers/gpu/drm/i915/display/intel_dmc.c
> > index 5a43298cd0e7..247e88265cf3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -578,6 +578,17 @@ static u32 dmc_mmiodata(struct intel_display *display,
> >  		return dmc->dmc_info[dmc_id].mmiodata[i];
> >  }
> > 
> > +static void intel_dmc_load_mmio(struct intel_display *display, enum
> > +intel_dmc_id dmc_id) {
> > +	struct intel_dmc *dmc = display_to_dmc(display);
> > +	int i;
> > +
> > +	for (i = 0; i < dmc->dmc_info[dmc_id].mmio_count; i++) {
> > +		intel_de_write(display, dmc->dmc_info[dmc_id].mmioaddr[i],
> > +			       dmc_mmiodata(display, dmc, dmc_id, i));
> > +	}
> > +}
> > +
> >  void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe)  {
> >  	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe); @@ -585,6
> > +596,10 @@ void intel_dmc_enable_pipe(struct intel_display *display, enum pipe
> > pipe)
> >  	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(display, dmc_id))
> >  		return;
> > 
> > +	/* on PTL pipe C/D PIPEDMC MMIO state is lost sometimes */
> > +	if (DISPLAY_VER(display) >= 30 && pipe >= PIPE_C)
> > +		intel_dmc_load_mmio(display, dmc_id);
> > +
> >  	if (DISPLAY_VER(display) >= 20) {
> >  		intel_de_write(display, PIPEDMC_INTERRUPT(pipe),
> > pipedmc_interrupt_mask(display));
> >  		intel_de_write(display, PIPEDMC_INTERRUPT_MASK(pipe),
> > ~pipedmc_interrupt_mask(display));
> > @@ -710,12 +725,8 @@ void intel_dmc_load_program(struct intel_display
> > *display)
> > 
> >  	preempt_enable();
> > 
> > -	for_each_dmc_id(dmc_id) {
> > -		for (i = 0; i < dmc->dmc_info[dmc_id].mmio_count; i++) {
> > -			intel_de_write(display, dmc-
> > >dmc_info[dmc_id].mmioaddr[i],
> > -				       dmc_mmiodata(display, dmc, dmc_id, i));
> > -		}
> > -	}
> > +	for_each_dmc_id(dmc_id)
> > +		intel_dmc_load_mmio(display, dmc_id);
> > 
> >  	power_domains->dc_state = 0;
> > 
> > --
> > 2.49.0
> 

-- 
Ville Syrjälä
Intel
