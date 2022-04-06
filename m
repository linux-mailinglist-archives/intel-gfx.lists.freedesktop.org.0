Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F9A4F6896
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 20:09:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9A5010E1E2;
	Wed,  6 Apr 2022 18:09:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BB7710E1E2
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Apr 2022 18:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649268550; x=1680804550;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FtAcXzhrE2Clew7xH2wu5qTIT+0h7PcBvooEWNI1xbI=;
 b=T8IQjUXylJZRXQqTMcZproEBhfeM1m+j89jvlHvDJPTwfZgawruTfpA+
 XSn2yyzW2I5wx3bLVsnasogRszhkl+7OS1gD0zorco4TMB5T1sF3yfv3O
 Xc8KkQtKkfxT9cLFUnHN3buzRiLq/Zt0gPPvinbZnar7XSFs4fBmyccqM
 4NkRJsRB46LppL0nKnxF2jJcFCIRtB607of3qASRbjfEEcJnJcFDTH5tg
 yn6GR3lXrp+/CDus86PW4zeqGEVuZ7XnoGA+fncT7wuQGWT95UXKkymgZ
 OHBCVIi61aGiKjLo8GGD5ufPqQ9+zfwxVRj0w5dqmBZzNmqY07osUSjv3 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="324288758"
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="324288758"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 11:09:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="697475130"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga001.fm.intel.com with SMTP; 06 Apr 2022 11:09:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Apr 2022 21:09:06 +0300
Date: Wed, 6 Apr 2022 21:09:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <Yk3XQhkYplbMxkkM@intel.com>
References: <20220404134918.729038-1-vinod.govindapillai@intel.com>
 <Yk2MAo+cfr3npN2O@intel.com> <20220406134526.GA22124@intel.com>
 <Yk2dQ7VIKWFHfFDl@intel.com> <20220406171446.GA22549@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220406171446.GA22549@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Apr 06, 2022 at 08:14:58PM +0300, Lisovskiy, Stanislav wrote:
> On Wed, Apr 06, 2022 at 05:01:39PM +0300, Ville Syrjälä wrote:
> > On Wed, Apr 06, 2022 at 04:45:26PM +0300, Lisovskiy, Stanislav wrote:
> > > On Wed, Apr 06, 2022 at 03:48:02PM +0300, Ville Syrjälä wrote:
> > > > On Mon, Apr 04, 2022 at 04:49:18PM +0300, Vinod Govindapillai wrote:
> > > > > In configurations with single DRAM channel, for usecases like
> > > > > 4K 60 Hz, FIFO underruns are observed quite frequently. Looks
> > > > > like the wm0 watermark values need to bumped up because the wm0
> > > > > memory latency calculations are probably not taking the DRAM
> > > > > channel's impact into account.
> > > > > 
> > > > > As per the Bspec 49325, if the ddb allocation can hold at least
> > > > > one plane_blocks_per_line we should have selected method2.
> > > > > Assuming that modern HW versions have enough dbuf to hold
> > > > > at least one line, set the wm blocks to equivalent to blocks
> > > > > per line.
> > > > > 
> > > > > cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > > cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > > 
> > > > > Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/intel_pm.c | 19 ++++++++++++++++++-
> > > > >  1 file changed, 18 insertions(+), 1 deletion(-)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > > > > index 8824f269e5f5..ae28a8c63ca4 100644
> > > > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > > > @@ -5474,7 +5474,24 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
> > > > >  		}
> > > > >  	}
> > > > >  
> > > > > -	blocks = fixed16_to_u32_round_up(selected_result) + 1;
> > > > > +	/*
> > > > > +	 * Lets have blocks at minimum equivalent to plane_blocks_per_line
> > > > > +	 * as there will be at minimum one line for lines configuration.
> > > > > +	 *
> > > > > +	 * As per the Bspec 49325, if the ddb allocation can hold at least
> > > > > +	 * one plane_blocks_per_line, we should have selected method2 in
> > > > > +	 * the above logic. Assuming that modern versions have enough dbuf
> > > > > +	 * and method2 guarantees blocks equivalent to at least 1 line,
> > > > > +	 * select the blocks as plane_blocks_per_line.
> > > > > +	 *
> > > > > +	 * TODO: Revisit the logic when we have better understanding on DRAM
> > > > > +	 * channels' impact on the level 0 memory latency and the relevant
> > > > > +	 * wm calculations.
> > > > > +	 */
> > > > > +	blocks = skl_wm_has_lines(dev_priv, level) ?
> > > > > +			max_t(u32, fixed16_to_u32_round_up(selected_result) + 1,
> > > > > +				  fixed16_to_u32_round_up(wp->plane_blocks_per_line)) :
> > > > > +			fixed16_to_u32_round_up(selected_result) + 1;
> > > > 
> > > > That's looks rather convoluted.
> > > > 
> > > >   blocks = fixed16_to_u32_round_up(selected_result) + 1;
> > > > + /* blah */
> > > > + if (has_lines)
> > > > +	blocks = max(blocks, fixed16_to_u32_round_up(wp->plane_blocks_per_line));
> > > 
> > > We probably need to do similar refactoring in the whole function ;-)
> > > 
> > > > 
> > > > Also since Art said nothing like this should actually be needed
> > > > I think the comment should make it a bit more clear that this
> > > > is just a hack to work around the underruns with some single
> > > > memory channel configurations.
> > > 
> > > It is actually not quite a hack, because we are missing that condition
> > > implementation from BSpec 49325, which instructs us to select method2
> > > when ddb blocks allocation is known and that ratio is >= 1.
> > 
> > The ddb allocation is not yet known, so we're implementing the
> > algorithm 100% correctly.
> > 
> > And this patch does not implement that misisng part anyway.
> 
> Yes, as I understood method2 would just give amount of blocks to be
> at least as dbuf blocks per line.
> 
> Wonder whether should we actually fully implement this BSpec clause 
> and add it to the point where ddb allocation is known or are there 
> any obstacles to do that, besides having to reshuffle this function a bit?

We need to calculate the wm to figure out how much ddb to allocate,
and then we'd need the ddb allocation to figure out how to calculate
the wm. Very much chicken vs. egg right there. We'd have to do some
kind of hideous loop where we'd calculate everything twice. I don't
really want to do that since I'd actually like to move the wm
calculation to happen already much earlier during .check_plane()
as that could reduce the amount of redundant wm calculations we
are currently doing.

-- 
Ville Syrjälä
Intel
