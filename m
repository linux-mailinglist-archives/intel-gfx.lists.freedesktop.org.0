Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE1E4F60B7
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 16:02:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7E2110E14F;
	Wed,  6 Apr 2022 14:02:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5738F10E1A2
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Apr 2022 14:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649253765; x=1680789765;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=jAmLjQkOvXD1rNwNJOJHKBrmM/qqOc0FqPka05yFiRg=;
 b=nzAEfI6zAEZayzoWK4wdV1H6F5grTWFubbodoG8xvjvdGRdBsMetq/kj
 RQKREOCL1kFdbiWb1pjVEKEhiusnTJuhjyOepE+vOm4rBZJetNHcnY7Iu
 SqAoBQaXxTCsNRZAZS+dIf8FmByfcFRyMwAISbeynlNRlWjlrwFrcFuUE
 6C9ulRN9avGS7kB37/R9nMR0Z9uaI/+TkUUA5VQbbB9Lq9UmIK0dFd61T
 63gTa+DG861cWguTp5DSdOAmSjCl9HXnaoFJaD/8VTcW07wC8SC7m6Xvm
 /wy/6884MCVplb7+l6GPaAmTi4Mv6leyycJJjSgHV8ZUaZk0TvfEttgbh w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="261226440"
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="261226440"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 07:01:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="570528808"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga008.jf.intel.com with SMTP; 06 Apr 2022 07:01:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Apr 2022 17:01:39 +0300
Date: Wed, 6 Apr 2022 17:01:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <Yk2dQ7VIKWFHfFDl@intel.com>
References: <20220404134918.729038-1-vinod.govindapillai@intel.com>
 <Yk2MAo+cfr3npN2O@intel.com> <20220406134526.GA22124@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220406134526.GA22124@intel.com>
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

On Wed, Apr 06, 2022 at 04:45:26PM +0300, Lisovskiy, Stanislav wrote:
> On Wed, Apr 06, 2022 at 03:48:02PM +0300, Ville Syrjälä wrote:
> > On Mon, Apr 04, 2022 at 04:49:18PM +0300, Vinod Govindapillai wrote:
> > > In configurations with single DRAM channel, for usecases like
> > > 4K 60 Hz, FIFO underruns are observed quite frequently. Looks
> > > like the wm0 watermark values need to bumped up because the wm0
> > > memory latency calculations are probably not taking the DRAM
> > > channel's impact into account.
> > > 
> > > As per the Bspec 49325, if the ddb allocation can hold at least
> > > one plane_blocks_per_line we should have selected method2.
> > > Assuming that modern HW versions have enough dbuf to hold
> > > at least one line, set the wm blocks to equivalent to blocks
> > > per line.
> > > 
> > > cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > 
> > > Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/intel_pm.c | 19 ++++++++++++++++++-
> > >  1 file changed, 18 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > > index 8824f269e5f5..ae28a8c63ca4 100644
> > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > @@ -5474,7 +5474,24 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
> > >  		}
> > >  	}
> > >  
> > > -	blocks = fixed16_to_u32_round_up(selected_result) + 1;
> > > +	/*
> > > +	 * Lets have blocks at minimum equivalent to plane_blocks_per_line
> > > +	 * as there will be at minimum one line for lines configuration.
> > > +	 *
> > > +	 * As per the Bspec 49325, if the ddb allocation can hold at least
> > > +	 * one plane_blocks_per_line, we should have selected method2 in
> > > +	 * the above logic. Assuming that modern versions have enough dbuf
> > > +	 * and method2 guarantees blocks equivalent to at least 1 line,
> > > +	 * select the blocks as plane_blocks_per_line.
> > > +	 *
> > > +	 * TODO: Revisit the logic when we have better understanding on DRAM
> > > +	 * channels' impact on the level 0 memory latency and the relevant
> > > +	 * wm calculations.
> > > +	 */
> > > +	blocks = skl_wm_has_lines(dev_priv, level) ?
> > > +			max_t(u32, fixed16_to_u32_round_up(selected_result) + 1,
> > > +				  fixed16_to_u32_round_up(wp->plane_blocks_per_line)) :
> > > +			fixed16_to_u32_round_up(selected_result) + 1;
> > 
> > That's looks rather convoluted.
> > 
> >   blocks = fixed16_to_u32_round_up(selected_result) + 1;
> > + /* blah */
> > + if (has_lines)
> > +	blocks = max(blocks, fixed16_to_u32_round_up(wp->plane_blocks_per_line));
> 
> We probably need to do similar refactoring in the whole function ;-)
> 
> > 
> > Also since Art said nothing like this should actually be needed
> > I think the comment should make it a bit more clear that this
> > is just a hack to work around the underruns with some single
> > memory channel configurations.
> 
> It is actually not quite a hack, because we are missing that condition
> implementation from BSpec 49325, which instructs us to select method2
> when ddb blocks allocation is known and that ratio is >= 1.

The ddb allocation is not yet known, so we're implementing the
algorithm 100% correctly.

And this patch does not implement that misisng part anyway.

> 
> Mean this one:
> 
> "If ('plane buffer allocation' is known and (plane buffer allocation / plane blocks per line) >=1)
> Selected Result Blocks = Method 2"
> 
> Stan
> 
> > 
> > 
> > >  	lines = div_round_up_fixed16(selected_result,
> > >  				     wp->plane_blocks_per_line);
> > >  
> > > -- 
> > > 2.25.1
> > 
> > -- 
> > Ville Syrjälä
> > Intel

-- 
Ville Syrjälä
Intel
