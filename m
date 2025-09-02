Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E49C7B40677
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 16:19:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 408BD10E74E;
	Tue,  2 Sep 2025 14:19:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mjl5GL6y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A02E610E13A;
 Tue,  2 Sep 2025 14:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756822739; x=1788358739;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=H1dl7Oksvy/cVqyITKju2y/9LIFHGAyDXn1ADopHKhw=;
 b=Mjl5GL6ynVbgOCuMsvEYUAcg7HJpYkanZxcmNaXiaviPesqdj+Ap2YNj
 QYQRZU+e/KOpGvZIG2Me+xDqr1pmKmSeG/63UKrLw/S9393qzBG9h4mby
 9VMmoxnS9V35Ewv+ZZ9zUH+8cD1nIvbd6hAyWXBjT8e7bDTqK09T+RwnN
 2TMGkRoH0aODAZl+UHorL0nzmx1RU+6sD+T+alPVHtP5ZdWwrWncRvKo5
 3V1N55O2Xlt2qXVfysUdfACHS8jlfSSwCwJEKPfKBY8ksMOKmu8NpFSZR
 R74naLpHuGe4pBtPWqmosTZUPbllYMQghiaH7svFFJrZleuwQ5qM6SpFy Q==;
X-CSE-ConnectionGUID: nOBpP9gYRFiDijmKrnPwJg==
X-CSE-MsgGUID: 6ba+8hlqRbyQLiI4sE3e1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="70479669"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="70479669"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 07:18:59 -0700
X-CSE-ConnectionGUID: ytgU0fB5QG2YpBr4coQdFQ==
X-CSE-MsgGUID: 63XsVmBFQUuWjDzQySucTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="176597459"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.118])
 by orviesa005.jf.intel.com with SMTP; 02 Sep 2025 07:18:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Sep 2025 17:18:55 +0300
Date: Tue, 2 Sep 2025 17:18:55 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 5/8] drm/i915/dram: Move 16Gb DIMM detection fully to the
 skl/icl codepaths
Message-ID: <aLb8z_qvltv07_wp@intel.com>
References: <20250902133113.18778-1-ville.syrjala@linux.intel.com>
 <20250902133113.18778-6-ville.syrjala@linux.intel.com>
 <234b7892c94b7974e2281812825c85ae56b50aac@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <234b7892c94b7974e2281812825c85ae56b50aac@intel.com>
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

On Tue, Sep 02, 2025 at 04:56:18PM +0300, Jani Nikula wrote:
> On Tue, 02 Sep 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Only skl (and derivatives) and icl need the 16Gb DIMM w/as, and we
> > do the real detection only on those platforms anyway. Move the initial
> > has_16gb_dimms assignment into those codepaths as well.
> >
> > Currently we are incorrectly always applying the 1 usec wm latency bump
> > on all mtl+ platforms due to this (the tgl/adl codepath did remember to
> > undo the assignment, but the mtl+ codepath didn't).
> 
> The commit message could have more clarity that we're fixing this here.
> 
> With that,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> I think after this we could also drop the "!display->platform.dg2 && "
> part in adjust_wm_latency():
> 
> 	if (!display->platform.dg2 && dram_info->has_16gb_dimms)
> 
> Can be a follow-up.

Currently we don't seem to allocate dram_info at all for dg2. So we
need some protection there to avoid oopsing. But I think I'll be
changing that to explictily check for the skl/icl platforms instead
since those are the only ones that need the w/a.

> 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/soc/intel_dram.c | 17 ++++++-----------
> >  1 file changed, 6 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> > index efb72e137748..bf3ba874f8c5 100644
> > --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> > +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> > @@ -406,6 +406,9 @@ skl_dram_get_channels_info(struct drm_i915_private *i915, struct dram_info *dram
> >  	u32 val;
> >  	int ret;
> >  
> > +	/* Assume 16Gb DIMMs are present until proven otherwise */
> > +	dram_info->has_16gb_dimms = true;
> > +
> >  	val = intel_uncore_read(&i915->uncore,
> >  				SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN);
> >  	ret = skl_dram_get_channel_info(i915, &ch0, 0, val);
> > @@ -435,6 +438,9 @@ skl_dram_get_channels_info(struct drm_i915_private *i915, struct dram_info *dram
> >  	drm_dbg_kms(&i915->drm, "Memory configuration is symmetric? %s\n",
> >  		    str_yes_no(dram_info->symmetric_memory));
> >  
> > +	drm_dbg_kms(&i915->drm, "16Gb DIMMs: %s\n",
> > +		    str_yes_no(dram_info->has_16gb_dimms));
> > +
> >  	return 0;
> >  }
> >  
> > @@ -673,8 +679,6 @@ static int gen11_get_dram_info(struct drm_i915_private *i915, struct dram_info *
> >  
> >  static int gen12_get_dram_info(struct drm_i915_private *i915, struct dram_info *dram_info)
> >  {
> > -	dram_info->has_16gb_dimms = false;
> > -
> >  	return icl_pcode_read_mem_global_info(i915, dram_info);
> >  }
> >  
> > @@ -736,12 +740,6 @@ int intel_dram_detect(struct drm_i915_private *i915)
> >  
> >  	i915->dram_info = dram_info;
> >  
> > -	/*
> > -	 * Assume 16Gb DIMMs are present until proven
> > -	 * otherwise, this w/a is not needed by bxt/glk.
> > -	 */
> > -	dram_info->has_16gb_dimms = !IS_BROXTON(i915) && !IS_GEMINILAKE(i915);
> > -
> >  	if (DISPLAY_VER(display) >= 14)
> >  		ret = xelpdp_get_dram_info(i915, dram_info);
> >  	else if (GRAPHICS_VER(i915) >= 12)
> > @@ -766,9 +764,6 @@ int intel_dram_detect(struct drm_i915_private *i915)
> >  
> >  	drm_dbg_kms(&i915->drm, "DRAM channels: %u\n", dram_info->num_channels);
> >  
> > -	drm_dbg_kms(&i915->drm, "16Gb DIMMs: %s\n",
> > -		    str_yes_no(dram_info->has_16gb_dimms));
> > -
> >  	return 0;
> >  }
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
