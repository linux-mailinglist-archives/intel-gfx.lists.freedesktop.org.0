Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4BF3AF628B
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jul 2025 21:24:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2E3B10E783;
	Wed,  2 Jul 2025 19:24:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SVgzzTV4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20B3910E786;
 Wed,  2 Jul 2025 19:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751484271; x=1783020271;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=pV9qCx0q/+Zff/47+E8y5EAEyK8IAB7AlpZW1ZXFXGY=;
 b=SVgzzTV4xPkYZDbmfwJ9KNJ+2Hsr5JzspBmCCHLXXvT3sSuLrjyTTGxa
 pC+yfCzuZKPJP7UPoQlgP73d0J86YKwuEr2IGH/zRaKnw+PwdJAkWloh2
 bGRtBh4FycmdxDP7VwCxG+pguI543mkVZHgrMdtT2tq5BgndTWkakDncs
 D8S4xwDB2N/PRARALgLBszxQ9ZYGf3xhNUDbUP3z5ipAr6NTrbmMpGX2f
 +4v3ytIPr2LRveQRWcRq5bbvtH/3YPd0+QdMewHO+THUodcGjjU8nsxY+
 Dv17AB6Vkv211Cn/NbHYN4TnfsX7bt802E9p7jCBhKFXimUMGZzUe5lWB g==;
X-CSE-ConnectionGUID: a889IV4JS+mz8X2PoY05sw==
X-CSE-MsgGUID: mpeQvHocQwatcIylHpxtwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11482"; a="41424127"
X-IronPort-AV: E=Sophos;i="6.16,282,1744095600"; d="scan'208";a="41424127"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 12:24:31 -0700
X-CSE-ConnectionGUID: uPKyeRiTR2+mYeFEZH0C6A==
X-CSE-MsgGUID: T3+U14vXTzq2ZMS7TRHT5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,282,1744095600"; d="scan'208";a="159854208"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.30])
 by orviesa005.jf.intel.com with SMTP; 02 Jul 2025 12:24:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Jul 2025 22:24:26 +0300
Date: Wed, 2 Jul 2025 22:24:26 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>
Subject: Re: [PATCH] drm/i915/display: Add upper limit check for pixel clock
Message-ID: <aGWHanRhse9y2MjV@intel.com>
References: <20250702042754.3335382-1-chaitanya.kumar.borah@intel.com>
 <d3b2de8c5eac5e1214cc35609a78cdff32c0afa1@intel.com>
 <SJ1PR11MB61290B4DE08CCB4DC32F71F1B940A@SJ1PR11MB6129.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <SJ1PR11MB61290B4DE08CCB4DC32F71F1B940A@SJ1PR11MB6129.namprd11.prod.outlook.com>
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

On Wed, Jul 02, 2025 at 09:42:04AM +0000, Borah, Chaitanya Kumar wrote:
> 
> 
> > -----Original Message-----
> > From: Jani Nikula <jani.nikula@linux.intel.com>
> > Sent: Wednesday, July 2, 2025 2:01 PM
> > To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> > xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > Cc: Deak, Imre <imre.deak@intel.com>; ville.syrjala@linux.intel.com; Shankar,
> > Uma <uma.shankar@intel.com>; Borah, Chaitanya Kumar
> > <chaitanya.kumar.borah@intel.com>
> > Subject: Re: [PATCH] drm/i915/display: Add upper limit check for pixel clock
> > 
> > On Wed, 02 Jul 2025, Chaitanya Kumar Borah
> > <chaitanya.kumar.borah@intel.com> wrote:
> > > Add upper limit check for pixel clock by platform. Limits don't apply
> > > when DSC is enabled.
> > >
> > > For the currently supported versions of HDMI, pixel clock is already
> > > limited to 600Mhz so nothing needs to be done there as of now.
> > >
> > > BSpec: 49199, 68912
> > >
> > > Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++++++
> > > drivers/gpu/drm/i915/display/intel_display.h |  1 +
> > >  drivers/gpu/drm/i915/display/intel_dp.c      |  3 +++
> > >  3 files changed, 16 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 456fc4b04cda..bf0faff50c2e 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -7902,6 +7902,18 @@ void intel_setup_outputs(struct intel_display
> > *display)
> > >  	drm_helper_move_panel_connectors_to_head(display->drm);
> > >  }
> > >
> > > +int intel_dotclock_limit(struct intel_display *display) {
> > > +	if (DISPLAY_VERx100(display) == 3002)
> > > +		return 937500;
> > > +	else if (DISPLAY_VER(display) >= 30)
> > > +		return 1350000;
> > > +	else if (DISPLAY_VER(display) >= 13)
> > > +		return 1200000;
> > > +	else
> > > +		return 1100000;
> > > +}
> > 
> > How does this relate to display->cdclk.max_dotclk_freq that's computed in
> > intel_compute_max_dotclk(display)?
> > 
> 
> The Bspec defines this limit as "maximum validated frequency" and asks to limit the pixel clock accordingly when DSC is not enabled.
> At least for PTL it is 97.65 % of the mathematically calculated maximum pixel clock (pixel per clock * max cdclk).
> 
> I am not sure if intel_cdclk_guardband() used in intel_compute_max_dotclk() was intended for something similar. However, since the limit only applies
> when dsc is not enabled it made sense to me that we apply this limit during intel_dp_mode_valid () instead of doing it in intel_compute_max_dotclk().

I think what we need is something like:
- implement the DSC bubble stuff and account for it in both
  cdclk calculations and mode validation
- implement this non-dsc cdclk limit checks also in a way that
  covers both (also needs to cover all output types, not just DP).
  I suspect the DSC bubble stuff might always end up more restrictive
  than this, so perhaps this could just be covered by adjusting the
  cdclk guardband

-- 
Ville Syrjälä
Intel
