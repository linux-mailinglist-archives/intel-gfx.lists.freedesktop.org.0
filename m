Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6ED4B5538F
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Sep 2025 17:30:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BE9210EC96;
	Fri, 12 Sep 2025 15:30:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kl+7OCmU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88A4910EC96
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Sep 2025 15:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757691022; x=1789227022;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=KJpy4HC65agyn5JcludnZN0CeLyVdWBxByNFcvp4q/A=;
 b=Kl+7OCmU5JavV/qv9LH/uCW3GFuHsxO+4/NKtRxVHzblXDNzNKwyXWG1
 TVId8dWTL2jl09FwGJTeUks/DUD53nIwuFiC2XbPSbjOaxPjS4+itsyr6
 13CmYtioO9TncCgdAQRKUa/TTpo+J2Iu7lJ/UZPOg6OH/l6Wx/de7DZE+
 k+gflxKFxmvc9ZGEW32Nb3aq4Qz7u0b2VLVGNLJVSK2oUcuNHVpX663aq
 NI1gZM9oMPLmLCbMLE7tRPoJe6sZ+YoHODbbbw15r83w64SZbuAdfS4ce
 LWC8C4CBmy7NFQM4k/gcUFbdliFe2eI3HO5RsP33X5+lbT1NbJT25r9zm Q==;
X-CSE-ConnectionGUID: +9Crj2anTkGYRFvTO3fAbg==
X-CSE-MsgGUID: Snhh9nBKSaWvJmS97TZUEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="59078213"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="59078213"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 08:30:21 -0700
X-CSE-ConnectionGUID: e5ooKAAeQuCUHT8DWXCLTA==
X-CSE-MsgGUID: okJRnH11T767ioryuKDUwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="178338228"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.171])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 08:30:19 -0700
Date: Fri, 12 Sep 2025 18:30:16 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Gupta, saurabhg" <saurabhg.gupta@intel.com>,
 "Zuo, Alex" <alex.zuo@intel.com>,
 "Manna, Animesh" <animesh.manna@intel.com>
Subject: Re: [PATCH] drm/i915/display: Simplify modular operations with vtotal
Message-ID: <aMQ8iKlCbT5dlYQm@intel.com>
References: <20250911153921.9038-2-jonathan.cavitt@intel.com>
 <e696008aa8675e2ff33f478b3ff47032c8c7ae36@intel.com>
 <CH0PR11MB5444919A7E9C4CF1A430672CE508A@CH0PR11MB5444.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CH0PR11MB5444919A7E9C4CF1A430672CE508A@CH0PR11MB5444.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Fri, Sep 12, 2025 at 02:29:17PM +0000, Cavitt, Jonathan wrote:
> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com> 
> Sent: Friday, September 12, 2025 1:56 AM
> To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Gupta, saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@intel.com>; Cavitt, Jonathan <jonathan.cavitt@intel.com>; ville.syrjala@linux.intel.com; Manna, Animesh <animesh.manna@intel.com>
> Subject: Re: [PATCH] drm/i915/display: Simplify modular operations with vtotal
> > 
> > On Thu, 11 Sep 2025, Jonathan Cavitt <jonathan.cavitt@intel.com> wrote:
> > > There are a couple of modulus operations in the i915 display code with
> > > vtotal as the divisor that add vtotal to the dividend.  In modular
> > > arithmetic, adding the divisor to the dividend is equivalent to adding
> > > zero to the dividend, so this addition can be dropped.
> > 
> > The result might become negative with this?
> > 
> > BR,
> > Jani.
> > 
> > >
> > > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > Cc: Animesh Manna <animesh.manna@intel.com>
> > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dsb.c    | 4 ++--
> > >  drivers/gpu/drm/i915/display/intel_vblank.c | 2 +-
> > >  2 files changed, 3 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> > > index dee44d45b668..67315116839b 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> > > @@ -173,7 +173,7 @@ static int dsb_scanline_to_hw(struct intel_atomic_state *state,
> > >  		intel_pre_commit_crtc_state(state, crtc);
> > >  	int vtotal = dsb_vtotal(state, crtc);
> > >  
> > > -	return (scanline + vtotal - intel_crtc_scanline_offset(crtc_state)) % vtotal;
> > > +	return (scanline - intel_crtc_scanline_offset(crtc_state)) % vtotal;
> 
> intel_crtc_scanline_offset returns -1, 1, or 2.  So the result here could only be negative if
> the value of scanline is less than 2.
> 
> > >  }
> > >  
> > >  /*
> > > @@ -482,7 +482,7 @@ static void assert_dsl_ok(struct intel_atomic_state *state,
> > >  	 * Waiting for the entire frame doesn't make sense,
> > >  	 * (IN==don't wait, OUT=wait forever).
> > >  	 */
> > > -	drm_WARN(crtc->base.dev, (end - start + vtotal) % vtotal == vtotal - 1,
> > > +	drm_WARN(crtc->base.dev, (end - start) % vtotal == vtotal - 1,
> 
> This can only be negative if start is less than end, which doesn't seem possible.
> 
> > >  		 "[CRTC:%d:%s] DSB %d bad scanline window wait: %d-%d (vt=%d)\n",
> > >  		 crtc->base.base.id, crtc->base.name, dsb->id,
> > >  		 start, end, vtotal);
> > > diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> > > index c15234c1d96e..bcfca2fcef3c 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> > > @@ -288,7 +288,7 @@ static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
> > >  	 * See update_scanline_offset() for the details on the
> > >  	 * scanline_offset adjustment.
> > >  	 */
> > > -	return (position + vtotal + crtc->scanline_offset) % vtotal;
> > > +	return (position + crtc->scanline_offset) % vtotal;
> 
> crtc->scanline_offset = intel_crtc_scanline_offset(crtc_state).
> And position = intel_de_read_fw(display, PIPEDSL(display, pipe)) & PIPEDSL_LINE_MASK.
> Finally, #define   PIPEDSL_LINE_MASK	REG_GENMASK(19, 0)
> So, unless position = 0 on display versions 1 or 2 (where intel_crtc_scanline_offset returns -1), this cannot be negative.

Scanlines can be anything from 0 to vtotal-1.
So nak on this patch.

> 
> ...
> Wait, if crtc->scanline_offset = intel_crtc_scanline_offset(crtc_state), then why are we recalculating
> it in dsb_scanline_to_hw?  That should also probably be fixed, but not in this patch.

Not sure what you think needs fixing. dsb_scanline_to_hw() is the
inverse of most other uses of scanline_offset.

> -Jonathan Cavitt
> 
> > >  }
> > >  
> > >  /*
> > 
> > -- 
> > Jani Nikula, Intel
> > 

-- 
Ville Syrjälä
Intel
