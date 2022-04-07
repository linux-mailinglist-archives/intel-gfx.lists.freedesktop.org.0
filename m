Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF994F767D
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 08:43:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A94110E589;
	Thu,  7 Apr 2022 06:43:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 898C210E589
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 06:43:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649313790; x=1680849790;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=MS4girB4+HudbLyRn3pHUccwIMLaR7QE3U7M4WACJuM=;
 b=DUe/AgQM8QMJ/xm4+p8ChJaaTrTvr87YyJpsAltaCZE0lvxTrEVKs667
 kK2J2Qz52Ugdj/t/BM6n/26w4Z09dHdjpqj8nfjo/hHYnsapJyjFo5Yua
 UvH7SHvijbgw9IaPtFfuzrsyRhiDQMmPvX7hLt3ZxkGOb3XIxBNli7Jw5
 BB3QKrY0/hSffxLeZK0JR3G1sM+dLWkIA8rpkqLLOXm4EOOI2EJflV3od
 M93yvU6t/XGSQqFPptPqo7GBrc9U03b99eVCzLn850B84+nB5RTUK99mL
 NtI9zVDx/bD8l3T0tuPEDMMVDPjcRzgVk7zgUFpZwSh5ScjhvNHip/f1s g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="243377980"
X-IronPort-AV: E=Sophos;i="5.90,241,1643702400"; d="scan'208";a="243377980"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 23:43:10 -0700
X-IronPort-AV: E=Sophos;i="5.90,241,1643702400"; d="scan'208";a="588690879"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 23:43:08 -0700
Date: Thu, 7 Apr 2022 09:43:50 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20220407064350.GA24386@intel.com>
References: <20220404134918.729038-1-vinod.govindapillai@intel.com>
 <Yk2MAo+cfr3npN2O@intel.com> <20220406134526.GA22124@intel.com>
 <Yk2dQ7VIKWFHfFDl@intel.com> <20220406171446.GA22549@intel.com>
 <Yk3XQhkYplbMxkkM@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Yk3XQhkYplbMxkkM@intel.com>
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

On Wed, Apr 06, 2022 at 09:09:06PM +0300, Ville Syrjälä wrote:
> On Wed, Apr 06, 2022 at 08:14:58PM +0300, Lisovskiy, Stanislav wrote:
> > On Wed, Apr 06, 2022 at 05:01:39PM +0300, Ville Syrjälä wrote:
> > > On Wed, Apr 06, 2022 at 04:45:26PM +0300, Lisovskiy, Stanislav wrote:
> > > > On Wed, Apr 06, 2022 at 03:48:02PM +0300, Ville Syrjälä wrote:
> > > > > On Mon, Apr 04, 2022 at 04:49:18PM +0300, Vinod Govindapillai wrote:
> > > > > > In configurations with single DRAM channel, for usecases like
> > > > > > 4K 60 Hz, FIFO underruns are observed quite frequently. Looks
> > > > > > like the wm0 watermark values need to bumped up because the wm0
> > > > > > memory latency calculations are probably not taking the DRAM
> > > > > > channel's impact into account.
> > > > > > 
> > > > > > As per the Bspec 49325, if the ddb allocation can hold at least
> > > > > > one plane_blocks_per_line we should have selected method2.
> > > > > > Assuming that modern HW versions have enough dbuf to hold
> > > > > > at least one line, set the wm blocks to equivalent to blocks
> > > > > > per line.
> > > > > > 
> > > > > > cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > > > cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > > > 
> > > > > > Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> > > > > > ---
> > > > > >  drivers/gpu/drm/i915/intel_pm.c | 19 ++++++++++++++++++-
> > > > > >  1 file changed, 18 insertions(+), 1 deletion(-)
> > > > > > 
> > > > > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > > > > > index 8824f269e5f5..ae28a8c63ca4 100644
> > > > > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > > > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > > > > @@ -5474,7 +5474,24 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
> > > > > >  		}
> > > > > >  	}
> > > > > >  
> > > > > > -	blocks = fixed16_to_u32_round_up(selected_result) + 1;
> > > > > > +	/*
> > > > > > +	 * Lets have blocks at minimum equivalent to plane_blocks_per_line
> > > > > > +	 * as there will be at minimum one line for lines configuration.
> > > > > > +	 *
> > > > > > +	 * As per the Bspec 49325, if the ddb allocation can hold at least
> > > > > > +	 * one plane_blocks_per_line, we should have selected method2 in
> > > > > > +	 * the above logic. Assuming that modern versions have enough dbuf
> > > > > > +	 * and method2 guarantees blocks equivalent to at least 1 line,
> > > > > > +	 * select the blocks as plane_blocks_per_line.
> > > > > > +	 *
> > > > > > +	 * TODO: Revisit the logic when we have better understanding on DRAM
> > > > > > +	 * channels' impact on the level 0 memory latency and the relevant
> > > > > > +	 * wm calculations.
> > > > > > +	 */
> > > > > > +	blocks = skl_wm_has_lines(dev_priv, level) ?
> > > > > > +			max_t(u32, fixed16_to_u32_round_up(selected_result) + 1,
> > > > > > +				  fixed16_to_u32_round_up(wp->plane_blocks_per_line)) :
> > > > > > +			fixed16_to_u32_round_up(selected_result) + 1;
> > > > > 
> > > > > That's looks rather convoluted.
> > > > > 
> > > > >   blocks = fixed16_to_u32_round_up(selected_result) + 1;
> > > > > + /* blah */
> > > > > + if (has_lines)
> > > > > +	blocks = max(blocks, fixed16_to_u32_round_up(wp->plane_blocks_per_line));
> > > > 
> > > > We probably need to do similar refactoring in the whole function ;-)
> > > > 
> > > > > 
> > > > > Also since Art said nothing like this should actually be needed
> > > > > I think the comment should make it a bit more clear that this
> > > > > is just a hack to work around the underruns with some single
> > > > > memory channel configurations.
> > > > 
> > > > It is actually not quite a hack, because we are missing that condition
> > > > implementation from BSpec 49325, which instructs us to select method2
> > > > when ddb blocks allocation is known and that ratio is >= 1.
> > > 
> > > The ddb allocation is not yet known, so we're implementing the
> > > algorithm 100% correctly.
> > > 
> > > And this patch does not implement that misisng part anyway.
> > 
> > Yes, as I understood method2 would just give amount of blocks to be
> > at least as dbuf blocks per line.
> > 
> > Wonder whether should we actually fully implement this BSpec clause 
> > and add it to the point where ddb allocation is known or are there 
> > any obstacles to do that, besides having to reshuffle this function a bit?
> 
> We need to calculate the wm to figure out how much ddb to allocate,
> and then we'd need the ddb allocation to figure out how to calculate
> the wm. Very much chicken vs. egg right there. We'd have to do some
> kind of hideous loop where we'd calculate everything twice. I don't
> really want to do that since I'd actually like to move the wm
> calculation to happen already much earlier during .check_plane()
> as that could reduce the amount of redundant wm calculations we
> are currently doing.

I might be missing some details right now, but why do we need a ddb
allocation to count wms?

I thought its like we usually calculate wm levels + min_ddb_allocation,
then based on that we do allocate min_ddb + extra for each plane.
This is correct that by this moment when we calculate wms we have only
min_ddb available, so if this level would be even enabled, we would
at least need min_ddb blocks.

I think we could just use that min_ddb value here for that purpose,
because the condition anyway checks if 
(plane buffer allocation / plane blocks per line) >=1 so, even if
if this wm level would be enabled plane buffer allocation would
be at least min_ddb _or higher_ - however that won't affect this 
condition because even if it happens to be "plane buffer allocation
+ some extra" the ratio would still be valid.
So if it executes for min_ddb / plane blocks per line, we can
probably safely state, further it will be also true.

Stan

> 
> -- 
> Ville Syrjälä
> Intel
