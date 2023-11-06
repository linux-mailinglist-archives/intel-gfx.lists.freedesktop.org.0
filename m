Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4671E7E1BAB
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 09:07:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8542310E27D;
	Mon,  6 Nov 2023 08:07:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 024FA10E27D
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Nov 2023 08:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699258050; x=1730794050;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=9CC9Y+NWJM6Z1aqlzK5ffmn5sIaDg6TSm5pzokrPidU=;
 b=jCZbCTsLkm1BWqlNtHGalAP9EgeIDIPkytwwT2B28C6wx/zrRFvAqfb3
 zrUpSwsaXtpNb7ZNmWjL/9tX6VW3XRBwHlaIt2yMRX5Pm76VfdVRXK1dD
 hNcTKjBaX8MVzJtc9zlKpCMvWyG/qWAwmo78HvU4PgwxqPK+J348aHYoP
 0kbiyWQ5PnqYgtK9EhEX28GpS9E158M4ufhzb4v2c2J8+MMsNrZU4E8Ff
 RUX/q+ShpvVQsw04pMNw1YShG0KdWsduDdXkpSUOAO76PyTTGZI9rstR7
 Mp4RaaXMGNOTlTNTVQ9jrVhU4SaYzAVYX4xtDrn9ZwwVWRVre6raZnyya Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="7860840"
X-IronPort-AV: E=Sophos;i="6.03,280,1694761200"; 
   d="scan'208";a="7860840"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 00:07:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="755777546"
X-IronPort-AV: E=Sophos;i="6.03,280,1694761200"; d="scan'208";a="755777546"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 06 Nov 2023 00:07:27 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 Nov 2023 10:07:26 +0200
Date: Mon, 6 Nov 2023 10:07:26 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZUievhTqfoI-ApJL@intel.com>
References: <20231101114212.9345-1-ville.syrjala@linux.intel.com>
 <20231101114212.9345-4-ville.syrjala@linux.intel.com>
 <87bkcc2sez.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87bkcc2sez.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915: Extract mchbar_reg()
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 02, 2023 at 03:31:16PM +0200, Jani Nikula wrote:
> On Wed, 01 Nov 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Stop repeating the same logic to determine the correct
> > config space register for MCHBAR.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/soc/intel_gmch.c | 27 ++++++++++++++-------------
> >  1 file changed, 14 insertions(+), 13 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.c b/drivers/gpu/drm/i915/soc/intel_gmch.c
> > index f32e9f78770a..40874ebfb64c 100644
> > --- a/drivers/gpu/drm/i915/soc/intel_gmch.c
> > +++ b/drivers/gpu/drm/i915/soc/intel_gmch.c
> > @@ -33,18 +33,22 @@ int intel_gmch_bridge_setup(struct drm_i915_private *i915)
> >  					i915->gmch.pdev);
> >  }
> >  
> > +static int mchbar_reg(struct drm_i915_private *i915)
> > +{
> > +	return GRAPHICS_VER(i915) >= 4 ? MCHBAR_I965 : MCHBAR_I915;
> > +}
> > +
> >  /* Allocate space for the MCH regs if needed, return nonzero on error */
> >  static int
> >  intel_alloc_mchbar_resource(struct drm_i915_private *i915)
> >  {
> > -	int reg = GRAPHICS_VER(i915) >= 4 ? MCHBAR_I965 : MCHBAR_I915;
> >  	u32 temp_lo, temp_hi = 0;
> >  	u64 mchbar_addr;
> >  	int ret;
> >  
> >  	if (GRAPHICS_VER(i915) >= 4)
> > -		pci_read_config_dword(i915->gmch.pdev, reg + 4, &temp_hi);
> > -	pci_read_config_dword(i915->gmch.pdev, reg, &temp_lo);
> > +		pci_read_config_dword(i915->gmch.pdev, mchbar_reg(i915) + 4, &temp_hi);
> 
> How about having mchbar_hi_reg() and mchbar_lo_reg(), and drop the magic
> + 4 here and there?
> 
> Either way,

I left it as is for now. There's also that magic |1
in there that would deserve a symbolic name. Someone
bored  enough could perhaps tackle both issues together.

> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Thanks. Series pushed.

> 
> 
> > +	pci_read_config_dword(i915->gmch.pdev, mchbar_reg(i915), &temp_lo);
> >  	mchbar_addr = ((u64)temp_hi << 32) | temp_lo;
> >  
> >  	/* If ACPI doesn't have it, assume we need to allocate it ourselves */
> > @@ -68,10 +72,10 @@ intel_alloc_mchbar_resource(struct drm_i915_private *i915)
> >  	}
> >  
> >  	if (GRAPHICS_VER(i915) >= 4)
> > -		pci_write_config_dword(i915->gmch.pdev, reg + 4,
> > +		pci_write_config_dword(i915->gmch.pdev, mchbar_reg(i915) + 4,
> >  				       upper_32_bits(i915->gmch.mch_res.start));
> >  
> > -	pci_write_config_dword(i915->gmch.pdev, reg,
> > +	pci_write_config_dword(i915->gmch.pdev, mchbar_reg(i915),
> >  			       lower_32_bits(i915->gmch.mch_res.start));
> >  	return 0;
> >  }
> > @@ -79,7 +83,6 @@ intel_alloc_mchbar_resource(struct drm_i915_private *i915)
> >  /* Setup MCHBAR if possible, return true if we should disable it again */
> >  void intel_gmch_bar_setup(struct drm_i915_private *i915)
> >  {
> > -	int mchbar_reg = GRAPHICS_VER(i915) >= 4 ? MCHBAR_I965 : MCHBAR_I915;
> >  	u32 temp;
> >  	bool enabled;
> >  
> > @@ -92,7 +95,7 @@ void intel_gmch_bar_setup(struct drm_i915_private *i915)
> >  		pci_read_config_dword(i915->gmch.pdev, DEVEN, &temp);
> >  		enabled = !!(temp & DEVEN_MCHBAR_EN);
> >  	} else {
> > -		pci_read_config_dword(i915->gmch.pdev, mchbar_reg, &temp);
> > +		pci_read_config_dword(i915->gmch.pdev, mchbar_reg(i915), &temp);
> >  		enabled = temp & 1;
> >  	}
> >  
> > @@ -110,15 +113,13 @@ void intel_gmch_bar_setup(struct drm_i915_private *i915)
> >  		pci_write_config_dword(i915->gmch.pdev, DEVEN,
> >  				       temp | DEVEN_MCHBAR_EN);
> >  	} else {
> > -		pci_read_config_dword(i915->gmch.pdev, mchbar_reg, &temp);
> > -		pci_write_config_dword(i915->gmch.pdev, mchbar_reg, temp | 1);
> > +		pci_read_config_dword(i915->gmch.pdev, mchbar_reg(i915), &temp);
> > +		pci_write_config_dword(i915->gmch.pdev, mchbar_reg(i915), temp | 1);
> >  	}
> >  }
> >  
> >  void intel_gmch_bar_teardown(struct drm_i915_private *i915)
> >  {
> > -	int mchbar_reg = GRAPHICS_VER(i915) >= 4 ? MCHBAR_I965 : MCHBAR_I915;
> > -
> >  	if (i915->gmch.mchbar_need_disable) {
> >  		if (IS_I915G(i915) || IS_I915GM(i915)) {
> >  			u32 deven_val;
> > @@ -131,10 +132,10 @@ void intel_gmch_bar_teardown(struct drm_i915_private *i915)
> >  		} else {
> >  			u32 mchbar_val;
> >  
> > -			pci_read_config_dword(i915->gmch.pdev, mchbar_reg,
> > +			pci_read_config_dword(i915->gmch.pdev, mchbar_reg(i915),
> >  					      &mchbar_val);
> >  			mchbar_val &= ~1;
> > -			pci_write_config_dword(i915->gmch.pdev, mchbar_reg,
> > +			pci_write_config_dword(i915->gmch.pdev, mchbar_reg(i915),
> >  					       mchbar_val);
> >  		}
> >  	}
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
