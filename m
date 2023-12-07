Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1989808BAB
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 16:21:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 207E510E1F8;
	Thu,  7 Dec 2023 15:21:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C68C10E1F8
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Dec 2023 15:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701962471; x=1733498471;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=pTRYClk66qTLn+4W7O52j1zpm1DNwYGZmAF5nnh+2D8=;
 b=KVGotHonkKEjSC4VZEOSCSm60oo23PdZB21PcI32MSPjjNR3I1rCdJ/E
 OaLFycNANuGLj5tOIdoOU94SWYljIblQFK+aFAbeFoCz7kxAU2WD6i4MR
 0JX3JsuTKUgXfz/Pr+3CstFs7+X5ou8+6SfG9EHKk7ASHqijyKDYsUQC3
 /texTr4Dw3Xx/q9bMJ+7aqJxlmL3i9C/WAfeZ5aFelfXqsLz4J6C38+9m
 MrtxYEdaLiP4Eq8siSwE5Rac2pi0tohQyNb9eK1z2hRWtnrnkf1o+UHGs
 3cn1P/7OWBprWjqdqbmbWdYatw4r1+U3QfWb00SmkKeu9wtmJPNc1KYoY A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="1327299"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; 
   d="scan'208";a="1327299"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 07:21:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="765137941"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="765137941"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 07 Dec 2023 07:20:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Dec 2023 17:20:51 +0200
Date: Thu, 7 Dec 2023 17:20:51 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Subject: Re: [PATCH] drm/i915: Fix remapped stride with CCS on ADL+
Message-ID: <ZXHi04LMQs5l1MbD@intel.com>
References: <20231205180308.7505-1-ville.syrjala@linux.intel.com>
 <ZXHb8tTcavLV3J0a@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZXHb8tTcavLV3J0a@ideak-desk.fi.intel.com>
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
Cc: intel-gfx@lists.freedesktop.org,
 Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 07, 2023 at 04:51:30PM +0200, Imre Deak wrote:
> On Tue, Dec 05, 2023 at 08:03:08PM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > On ADL+ the hardware automagically calculates the CCS AUX surface
> > stride from the main surface stride, so when remapping we can't
> > really play a lot of tricks with the main surface stride, or else
> > the AUX surface stride would get miscalculated and no longer
> > match the actual data layout in memory.
> > 
> > Supposedly we could remap in 256 main surface tile units
> > (AUX page(4096)/cachline(64)*4(4x1 main surface tiles per
> > AUX cacheline)=256 main surface tiles), but the extra complexity
> > is probably not worth the hassle.
> > 
> > So let's just make sure our mapping stride is calculated from
> > the full framebuffer stride (instead of the framebuffer width).
> > This way the stride we program into PLANE_STRIDE will be the
> > original framebuffer stride, and thus there will be no change
> > to the AUX stride/layout.
> > 
> > Cc: Imre Deak <imre.deak@intel.com>
> > Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fb.c | 16 ++++++++++++++--
> >  1 file changed, 14 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> > index ab634a4c86d1..9f35bdce3eb8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> > @@ -1509,8 +1509,20 @@ static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, int color_p
> >  
> >  			size += remap_info->size;
> >  		} else {
> > -			unsigned int dst_stride = plane_view_dst_stride_tiles(fb, color_plane,
> > -									      remap_info->width);
> > +			unsigned int dst_stride;
> > +
> > +			/*
> > +			 * The hardware automagically calculates the CCS AUX surface
> > +			 * stride from the main surface stride so can't really remap a
> > +			 * smaller subset (unless we'd remap in whole AUX page units).
> > +			 */
> > +			if (intel_fb_needs_pot_stride_remap(fb) &&
> 
> This fix also applies at least to all !FLAT_CSS platforms. Since
> the stride remapping is disabled anyway on all platforms for CCS
> modifiers, the same should be done here as well?

We'll never get here for the ccs+!pot_stride_remap cases. So
I suppose it doesn't really matter how we express this.

But I think this check is the most correct one in the sense that
if we did want to come up with a way to do CCS remapping in the
!pot_stride_remap cases this simple approach wouldn't work anyway.
We'd end up here exactly because the original stride was too big
to begin with, so using to the original stride would solve
absolutely nothing.

> 
> > +			    intel_fb_is_ccs_modifier(fb->base.modifier))
> > +				dst_stride = remap_info->src_stride;
> > +			else
> > +				dst_stride = remap_info->width;
> > +
> > +			dst_stride = plane_view_dst_stride_tiles(fb, color_plane, dst_stride);
> >  
> >  			assign_chk_ovf(i915, remap_info->dst_stride, dst_stride);
> >  			color_plane_info->mapping_stride = dst_stride *
> > -- 
> > 2.41.0
> > 

-- 
Ville Syrjälä
Intel
