Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A37EA622A8D
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 12:29:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88FB210E0D6;
	Wed,  9 Nov 2022 11:29:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5283410E0AD
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 11:29:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667993386; x=1699529386;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=21+ozEGudrMHnILyh/T5gvPO5UiXqdcU/7sld0dx4Lg=;
 b=LYLciETCjuBlC5V8suUmm4Jm/Q1qAySduipwaaM0AfHcP0AzL7h1fhFl
 cKZUTpvmxla1YX11ANGaMzBy2of5Xd4diPF6ELH28wy8qGJwcdxY+C1L5
 fcLI9wY511b3WQ1qUn1nZaU62dyrZTp02Ido906QFCQIQWxh5ocMfSExO
 Pme5xxWJlpXzg0zFOwWIWRt7VlUea1x66UXXJBr4+sYTVMr/iYPlScqn+
 sdqFDCnWnqL4G3wc08M8swT8KsEgvyXwKMrceDtEJfhK4u6cp+q1jbfJc
 xi/AWXTI7L3xoNyQBIOujxjfkP5HZweFlUeth2SEZEaCkSbSwJo8IgFIi w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="294328354"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="294328354"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 03:29:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="636709863"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="636709863"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 09 Nov 2022 03:29:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Nov 2022 13:29:42 +0200
Date: Wed, 9 Nov 2022 13:29:42 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <Y2uPJq+bVG9xm71J@intel.com>
References: <20221104222642.815560-1-anusha.srivatsa@intel.com>
 <Y2rpZ/8Li/186jR1@mdroper-desk1.amr.corp.intel.com>
 <CY4PR1101MB21662FF152C69CF61E943118F83F9@CY4PR1101MB2166.namprd11.prod.outlook.com>
 <Y2rzPj+6AR2PVjbi@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y2rzPj+6AR2PVjbi@mdroper-desk1.amr.corp.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Do both crawl and
 squash when changing cdclk
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
 "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 08, 2022 at 04:24:30PM -0800, Matt Roper wrote:
> On Tue, Nov 08, 2022 at 03:56:23PM -0800, Srivatsa, Anusha wrote:
> > 
> > 
> > > -----Original Message-----
> > > From: Roper, Matthew D <matthew.d.roper@intel.com>
> > > Sent: Tuesday, November 8, 2022 3:43 PM
> > > To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; Vivekanandan, Balasubramani
> > > <balasubramani.vivekanandan@intel.com>
> > > Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Do both crawl and
> > > squash when changing cdclk
> > > 
> > > On Fri, Nov 04, 2022 at 03:26:41PM -0700, Anusha Srivatsa wrote:
> > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > >
> > > > For MTL, changing cdclk from between certain frequencies has both
> > > > squash and crawl. Use the current cdclk config and the new(desired)
> > > > cdclk config to construtc a mid cdclk config.
> > > > Set the cdclk twice:
> > > > - Current cdclk -> mid cdclk
> > > > - mid cdclk -> desired cdclk
> > > >
> > > > v2: Add check in intel_modeset_calc_cdclk() to avoid cdclk change via
> > > > modeset for platforms that support squash_crawl sequences(Ville)
> > > >
> > > > v3: Add checks for:
> > > > - scenario where only slow clock is used and cdclk is actually 0
> > > > (bringing up display).
> > > > - PLLs are on before looking up the waveform.
> > > > - Squash and crawl capability checks.(Ville)
> > > >
> > > > v4: Rebase
> > > > - Move checks to be more consistent (Ville)
> > > > - Add comments (Bala)
> > > > v5:
> > > > - Further small changes. Move checks around.
> > > > - Make if-else better looking (Ville)
> > > >
> > > > v6: MTl should not follow PUnit mailbox communication as the rest of
> > > > gen11+ platforms.(Anusha)
> > > >
> > > > Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
> > > > Cc: Balasubramani Vivekanandan
> > > <balasubramani.vivekanandan@intel.com>
> > > > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_cdclk.c | 161
> > > > +++++++++++++++++----
> > > >  1 file changed, 133 insertions(+), 28 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > > index eada931cb1c8..d1e0763513be 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > > @@ -1716,37 +1716,74 @@ static void dg2_cdclk_squash_program(struct
> > > drm_i915_private *i915,
> > > >  	intel_de_write(i915, CDCLK_SQUASH_CTL, squash_ctl);  }
> > > >
> > > > -static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > > > -			  const struct intel_cdclk_config *cdclk_config,
> > > > -			  enum pipe pipe)
> > > > +static int cdclk_squash_divider(u16 waveform) {
> > > > +	return hweight16(waveform ?: 0xffff); }
> > > > +
> > > > +static bool cdclk_crawl_and_squash(struct drm_i915_private *i915,
> > > 
> > > Bikeshed:  maybe name this "cdclk_compute_crawl_squash_midpoint" to
> > > help clarify that we're just computing stuff here and not actually
> > > programming the hardware in this function?
> > > 
> > > That naming would also help clarify why we're returning false if we crawl but
> > > don't squash or vice versa (i.e., there's no midpoint in those cases).
> > 
> > Makes sense.
> > 
> > > > +				   const struct intel_cdclk_config
> > > *old_cdclk_config,
> > > > +				   const struct intel_cdclk_config
> > > *new_cdclk_config,
> > > > +				   struct intel_cdclk_config *mid_cdclk_config)
> > > {
> > > > +	u16 old_waveform, new_waveform, mid_waveform;
> > > > +	int size = 16;
> > > > +	int div = 2;
> > > > +
> > > > +	/* Return if both Squash and Crawl are not present */
> > > > +	if (!HAS_CDCLK_CRAWL(i915) || !HAS_CDCLK_SQUASH(i915))
> > > > +		return false;
> > > > +
> > > > +	old_waveform = cdclk_squash_waveform(i915, old_cdclk_config-
> > > >cdclk);
> > > > +	new_waveform = cdclk_squash_waveform(i915, new_cdclk_config-
> > > >cdclk);
> > > > +
> > > > +	/* Return if Squash only or Crawl only is the desired action */
> > > > +	if (old_cdclk_config->vco <= 0 || new_cdclk_config->vco <= 0 ||
> > > 
> > > Isn't vco unsigned?  "== 0" should be fine here I think.
> > 
> > You mean the new_cdclk_config->vco right?
> 
> Both of them I think.  The vco field of intel_cdclk_config can't take on
> negative values because it's defined as unsigned:
> 
>         struct intel_cdclk_config {
>                 unsigned int cdclk, vco, ref, bypass;
>                 u8 voltage_level;
>         };

Hmm. I guess I used the vco=-1 in sanitize() as a way to 
effectively write vco=~0, the point of which was force the
PLL to be fully disabled first regardless of what its
current state is.

But now that I look at that we might have an issue with
platforms that support crawling. We wrote that code as if
vco is signed so it's actually going to take the crawl
path now that it looks like the PLL was prevsiously on.
I think we need to add an explicit check to not do
the crawl for the vco=~0/-1 case...

-- 
Ville Syrjälä
Intel
