Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A60974F6689
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 19:14:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DBA510E0A8;
	Wed,  6 Apr 2022 17:14:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D4A410E1A8
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Apr 2022 17:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649265261; x=1680801261;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Szqw/OdpSI4s/NOlCjUkDc9IMQj+lvgHe6MPSpKcTJQ=;
 b=NvZPPo6MmN9UYadRyPTVwCLwwghGtC47O4Zf4BdFdBuobLUrBxd6hwxK
 PMRncdV2k9zmFbB1jYhHXueUmmpdFYa1pIVWpqhvpjEmbk/8LEo6eLkc5
 glA3GMTeP49YDUQz6VKwXSknY/qFsjdN33QTk2DWttEtIVmsSwQQbNeiw
 AGSe7tyl5AuFDm9hiaRc0QIPfpTtRHsfU36v4UK5N/zg5MK4HL0jtuKoZ
 vkIGKzuEO/KP+FbbkCBRnMhGIHZ9lKCrfEkDwA9VOm6ODn9+aJrridBCl
 qnNKwVQ64hkMwyvcsgCJDED2d0zeMPho9V+vSSTetAxHdaMz6JtZVvQEw A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="243245354"
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="243245354"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 10:14:19 -0700
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="505817967"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 10:14:16 -0700
Date: Wed, 6 Apr 2022 20:14:58 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20220406171446.GA22549@intel.com>
References: <20220404134918.729038-1-vinod.govindapillai@intel.com>
 <Yk2MAo+cfr3npN2O@intel.com> <20220406134526.GA22124@intel.com>
 <Yk2dQ7VIKWFHfFDl@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Yk2dQ7VIKWFHfFDl@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: program wm blocks to at least
 blocks required per line
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

On Wed, Apr 06, 2022 at 05:01:39PM +0300, Ville Syrjälä wrote:
> On Wed, Apr 06, 2022 at 04:45:26PM +0300, Lisovskiy, Stanislav wrote:
> > On Wed, Apr 06, 2022 at 03:48:02PM +0300, Ville Syrjälä wrote:
> > > On Mon, Apr 04, 2022 at 04:49:18PM +0300, Vinod Govindapillai wrote:
> > > > In configurations with single DRAM channel, for usecases like
> > > > 4K 60 Hz, FIFO underruns are observed quite frequently. Looks
> > > > like the wm0 watermark values need to bumped up because the wm0
> > > > memory latency calculations are probably not taking the DRAM
> > > > channel's impact into account.
> > > > 
> > > > As per the Bspec 49325, if the ddb allocation can hold at least
> > > > one plane_blocks_per_line we should have selected method2.
> > > > Assuming that modern HW versions have enough dbuf to hold
> > > > at least one line, set the wm blocks to equivalent to blocks
> > > > per line.
> > > > 
> > > > cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > 
> > > > Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/intel_pm.c | 19 ++++++++++++++++++-
> > > >  1 file changed, 18 insertions(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > > > index 8824f269e5f5..ae28a8c63ca4 100644
> > > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > > @@ -5474,7 +5474,24 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
> > > >  		}
> > > >  	}
> > > >  
> > > > -	blocks = fixed16_to_u32_round_up(selected_result) + 1;
> > > > +	/*
> > > > +	 * Lets have blocks at minimum equivalent to plane_blocks_per_line
> > > > +	 * as there will be at minimum one line for lines configuration.
> > > > +	 *
> > > > +	 * As per the Bspec 49325, if the ddb allocation can hold at least
> > > > +	 * one plane_blocks_per_line, we should have selected method2 in
> > > > +	 * the above logic. Assuming that modern versions have enough dbuf
> > > > +	 * and method2 guarantees blocks equivalent to at least 1 line,
> > > > +	 * select the blocks as plane_blocks_per_line.
> > > > +	 *
> > > > +	 * TODO: Revisit the logic when we have better understanding on DRAM
> > > > +	 * channels' impact on the level 0 memory latency and the relevant
> > > > +	 * wm calculations.
> > > > +	 */
> > > > +	blocks = skl_wm_has_lines(dev_priv, level) ?
> > > > +			max_t(u32, fixed16_to_u32_round_up(selected_result) + 1,
> > > > +				  fixed16_to_u32_round_up(wp->plane_blocks_per_line)) :
> > > > +			fixed16_to_u32_round_up(selected_result) + 1;
> > > 
> > > That's looks rather convoluted.
> > > 
> > >   blocks = fixed16_to_u32_round_up(selected_result) + 1;
> > > + /* blah */
> > > + if (has_lines)
> > > +	blocks = max(blocks, fixed16_to_u32_round_up(wp->plane_blocks_per_line));
> > 
> > We probably need to do similar refactoring in the whole function ;-)
> > 
> > > 
> > > Also since Art said nothing like this should actually be needed
> > > I think the comment should make it a bit more clear that this
> > > is just a hack to work around the underruns with some single
> > > memory channel configurations.
> > 
> > It is actually not quite a hack, because we are missing that condition
> > implementation from BSpec 49325, which instructs us to select method2
> > when ddb blocks allocation is known and that ratio is >= 1.
> 
> The ddb allocation is not yet known, so we're implementing the
> algorithm 100% correctly.
> 
> And this patch does not implement that misisng part anyway.

Yes, as I understood method2 would just give amount of blocks to be
at least as dbuf blocks per line.

Wonder whether should we actually fully implement this BSpec clause 
and add it to the point where ddb allocation is known or are there 
any obstacles to do that, besides having to reshuffle this function a bit?

Stan

> 
> > 
> > Mean this one:
> > 
> > "If ('plane buffer allocation' is known and (plane buffer allocation / plane blocks per line) >=1)
> > Selected Result Blocks = Method 2"
> > 
> > Stan
> > 
> > > 
> > > 
> > > >  	lines = div_round_up_fixed16(selected_result,
> > > >  				     wp->plane_blocks_per_line);
> > > >  
> > > > -- 
> > > > 2.25.1
> > > 
> > > -- 
> > > Ville Syrjälä
> > > Intel
> 
> -- 
> Ville Syrjälä
> Intel
