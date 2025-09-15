Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E79DB580B6
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Sep 2025 17:31:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 171E010E4F2;
	Mon, 15 Sep 2025 15:31:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cHLUGlhy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBD0A10E366
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Sep 2025 15:31:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757950310; x=1789486310;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=xFayWD/RJtGD1FOC7XKTb/SamAHteq9b1xqeBEGOxV8=;
 b=cHLUGlhyf7V6e0rwbTBj13q3Vn4rYucB6rqp/5uKGvQavXVXwoDeshez
 rr7EPTuDsiMnZjUvyvk68B0HV5zs32OKkDOCvP4/Z3ZUnVBdqEXQCyYCY
 qJ2edtdM5Maz2pp1gaGQGIjZKm4hr9pflSDKYAiuKEVl9JQqajJEO/MsW
 AbG95ErBKmd90xj8W08B9yIpVrJik+ZCPpewezmP3tLd1AK6y+bqaYVCD
 350LqO/HR670aVURQhPS7cW+S79/XvPi4I+TKRUD728lruBLOCrs9Drpz
 qUw4cE6GxJhbgi9KqoEVqDtTXtlt10/x3v9smoUO/jU6TMoGbk3jEVTxX A==;
X-CSE-ConnectionGUID: 3AGYQVUISa+tbJSv68Bp2w==
X-CSE-MsgGUID: rhui3ha3Q6mgMuGQWqWqLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60265506"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60265506"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 08:31:50 -0700
X-CSE-ConnectionGUID: E9J2afaqS+6VcFx6ZdgjvA==
X-CSE-MsgGUID: yK44QgBQR1WmeDF/uvuctw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="174286501"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.90])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 08:31:47 -0700
Date: Mon, 15 Sep 2025 18:31:44 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Gupta, saurabhg" <saurabhg.gupta@intel.com>,
 "Zuo, Alex" <alex.zuo@intel.com>,
 "Manna, Animesh" <animesh.manna@intel.com>
Subject: Re: [PATCH] drm/i915/display: Simplify modular operations with vtotal
Message-ID: <aMgxYLU0zygLGG-n@intel.com>
References: <20250911153921.9038-2-jonathan.cavitt@intel.com>
 <e696008aa8675e2ff33f478b3ff47032c8c7ae36@intel.com>
 <CH0PR11MB5444919A7E9C4CF1A430672CE508A@CH0PR11MB5444.namprd11.prod.outlook.com>
 <aMQ8iKlCbT5dlYQm@intel.com>
 <CH0PR11MB5444745443F2BBB579122BD1E515A@CH0PR11MB5444.namprd11.prod.outlook.com>
 <aMgt6ZwVR2DcyO9u@intel.com>
 <CH0PR11MB54442CEC556F80FF85FDE19CE515A@CH0PR11MB5444.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CH0PR11MB54442CEC556F80FF85FDE19CE515A@CH0PR11MB5444.namprd11.prod.outlook.com>
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

On Mon, Sep 15, 2025 at 03:21:03PM +0000, Cavitt, Jonathan wrote:
> -----Original Message-----
> From: Ville Syrjälä <ville.syrjala@linux.intel.com> 
> Sent: Monday, September 15, 2025 8:17 AM
> To: Cavitt, Jonathan <jonathan.cavitt@intel.com>
> Cc: Nikula, Jani <jani.nikula@intel.com>; intel-gfx@lists.freedesktop.org; Gupta, saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@intel.com>; Manna, Animesh <animesh.manna@intel.com>
> Subject: Re: [PATCH] drm/i915/display: Simplify modular operations with vtotal
> > 
> > On Mon, Sep 15, 2025 at 02:49:22PM +0000, Cavitt, Jonathan wrote:
> > > -----Original Message-----
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com> 
> > > Sent: Friday, September 12, 2025 8:30 AM
> > > To: Cavitt, Jonathan <jonathan.cavitt@intel.com>
> > > Cc: Nikula, Jani <jani.nikula@intel.com>; intel-gfx@lists.freedesktop.org; Gupta, saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@intel.com>; Manna, Animesh <animesh.manna@intel.com>
> > > Subject: Re: [PATCH] drm/i915/display: Simplify modular operations with vtotal
> > > > 
> > > > On Fri, Sep 12, 2025 at 02:29:17PM +0000, Cavitt, Jonathan wrote:
> > > > > -----Original Message-----
> > > > > From: Nikula, Jani <jani.nikula@intel.com> 
> > > > > Sent: Friday, September 12, 2025 1:56 AM
> > > > > To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedesktop.org
> > > > > Cc: Gupta, saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@intel.com>; Cavitt, Jonathan <jonathan.cavitt@intel.com>; ville.syrjala@linux.intel.com; Manna, Animesh <animesh.manna@intel.com>
> > > > > Subject: Re: [PATCH] drm/i915/display: Simplify modular operations with vtotal
> > > > > > 
> > > > > > On Thu, 11 Sep 2025, Jonathan Cavitt <jonathan.cavitt@intel.com> wrote:
> > > > > > > There are a couple of modulus operations in the i915 display code with
> > > > > > > vtotal as the divisor that add vtotal to the dividend.  In modular
> > > > > > > arithmetic, adding the divisor to the dividend is equivalent to adding
> > > > > > > zero to the dividend, so this addition can be dropped.
> > > > > > 
> > > > > > The result might become negative with this?
> > > > > > 
> > > > > > BR,
> > > > > > Jani.
> > > > > > 
> > > > > > >
> > > > > > > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > > > > > > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > > > > Cc: Animesh Manna <animesh.manna@intel.com>
> > > > > > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > > > > > ---
> > > > > > >  drivers/gpu/drm/i915/display/intel_dsb.c    | 4 ++--
> > > > > > >  drivers/gpu/drm/i915/display/intel_vblank.c | 2 +-
> > > > > > >  2 files changed, 3 insertions(+), 3 deletions(-)
> > > > > > >
> > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> > > > > > > index dee44d45b668..67315116839b 100644
> > > > > > > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> > > > > > > @@ -173,7 +173,7 @@ static int dsb_scanline_to_hw(struct intel_atomic_state *state,
> > > > > > >  		intel_pre_commit_crtc_state(state, crtc);
> > > > > > >  	int vtotal = dsb_vtotal(state, crtc);
> > > > > > >  
> > > > > > > -	return (scanline + vtotal - intel_crtc_scanline_offset(crtc_state)) % vtotal;
> > > > > > > +	return (scanline - intel_crtc_scanline_offset(crtc_state)) % vtotal;
> > > > > 
> > > > > intel_crtc_scanline_offset returns -1, 1, or 2.  So the result here could only be negative if
> > > > > the value of scanline is less than 2.
> > > > > 
> > > > > > >  }
> > > > > > >  
> > > > > > >  /*
> > > > > > > @@ -482,7 +482,7 @@ static void assert_dsl_ok(struct intel_atomic_state *state,
> > > > > > >  	 * Waiting for the entire frame doesn't make sense,
> > > > > > >  	 * (IN==don't wait, OUT=wait forever).
> > > > > > >  	 */
> > > > > > > -	drm_WARN(crtc->base.dev, (end - start + vtotal) % vtotal == vtotal - 1,
> > > > > > > +	drm_WARN(crtc->base.dev, (end - start) % vtotal == vtotal - 1,
> > > > > 
> > > > > This can only be negative if start is less than end, which doesn't seem possible.
> > > > > 
> > > > > > >  		 "[CRTC:%d:%s] DSB %d bad scanline window wait: %d-%d (vt=%d)\n",
> > > > > > >  		 crtc->base.base.id, crtc->base.name, dsb->id,
> > > > > > >  		 start, end, vtotal);
> > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> > > > > > > index c15234c1d96e..bcfca2fcef3c 100644
> > > > > > > --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> > > > > > > @@ -288,7 +288,7 @@ static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
> > > > > > >  	 * See update_scanline_offset() for the details on the
> > > > > > >  	 * scanline_offset adjustment.
> > > > > > >  	 */
> > > > > > > -	return (position + vtotal + crtc->scanline_offset) % vtotal;
> > > > > > > +	return (position + crtc->scanline_offset) % vtotal;
> > > > > 
> > > > > crtc->scanline_offset = intel_crtc_scanline_offset(crtc_state).
> > > > > And position = intel_de_read_fw(display, PIPEDSL(display, pipe)) & PIPEDSL_LINE_MASK.
> > > > > Finally, #define   PIPEDSL_LINE_MASK	REG_GENMASK(19, 0)
> > > > > So, unless position = 0 on display versions 1 or 2 (where intel_crtc_scanline_offset returns -1), this cannot be negative.
> > > > 
> > > > Scanlines can be anything from 0 to vtotal-1.
> > > > So nak on this patch.
> > > > 
> > > > > 
> > > > > ...
> > > > > Wait, if crtc->scanline_offset = intel_crtc_scanline_offset(crtc_state), then why are we recalculating
> > > > > it in dsb_scanline_to_hw?  That should also probably be fixed, but not in this patch.
> > > > 
> > > > Not sure what you think needs fixing. dsb_scanline_to_hw() is the
> > > > inverse of most other uses of scanline_offset.
> > > 
> > > Well, yes, we subtract it instead of adding it.
> > > 
> > > But like, in dsb_scanline_to_hw:
> > > 
> > > """
> > > return (scanline + vtotal - intel_crtc_scanline_offset(crtc_state)) % vtotal;
> > > """
> > > 
> > > Can this not be simplified to:
> > > 
> > > """
> > > return (scanline + vtotal - crtc->scanline_offset) % vtotal;
> > > """
> > > 
> > > ?
> > 
> > No. crtc->scanline_offset may not be correct at that point in time.
> 
> Is it guaranteed to be accurate in __intel_get_crtc_scanline()?

Yes, for the purpose that it's used there.

> 
> Because that's the only place crtc->scanline_offset is read.
> -Jonathan Cavitt
> 
> > 
> > -- 
> > Ville Syrjälä
> > Intel
> > 

-- 
Ville Syrjälä
Intel
