Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48BEB4F7F03
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 14:30:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7950510E147;
	Thu,  7 Apr 2022 12:30:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 033ED10E9D7
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 12:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649334655; x=1680870655;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=hZZOTlithS0rfDXaqqTyKMQllQvT2Q5va1id2ZkUWns=;
 b=Y4lBWsU3yukbZEfGU1jU6XCEGxNKVCV6qjKoGwtq38iw0GV7ppoBrbUu
 PlEwHAVuFpunSMFwfykkGgw4WJs63FIbzFTQKH9fiRc8Slvkcbi6RFBwu
 yokdHdYOxLICBT7nJAcZCbJlpgNnViTa9f6SiFux54DzRW41taiAXb6nL
 T9toeXmgAFqmQkW1TITGi3j9TXl7+mOn4VCly4GcgrF9nFK3sPzLFBhbr
 CDCweUF8NqfeNq+Ac38qeJ/zDCN64Jsfo42G5TjIc6mDkDH4SOataqCEJ
 E4hYGPtm4cqyI/FEo4cpBWHmbCFNr1Rhd3o1TJ4dvoswFK+mUM9B3UYJS A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10309"; a="261302709"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="261302709"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 05:30:54 -0700
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="524905810"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 05:30:53 -0700
Date: Thu, 7 Apr 2022 15:31:35 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Message-ID: <20220407123135.GA31188@intel.com>
References: <20220404134918.729038-1-vinod.govindapillai@intel.com>
 <Yk2MAo+cfr3npN2O@intel.com> <20220406134526.GA22124@intel.com>
 <Yk2dQ7VIKWFHfFDl@intel.com> <20220406171446.GA22549@intel.com>
 <Yk3XQhkYplbMxkkM@intel.com> <20220407064350.GA24386@intel.com>
 <5b133d1f8fb9d6c96270e8c00f0ae978d28da9a8.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5b133d1f8fb9d6c96270e8c00f0ae978d28da9a8.camel@intel.com>
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 07, 2022 at 03:09:48PM +0300, Govindapillai, Vinod wrote:
> On Thu, 2022-04-07 at 09:43 +0300, Lisovskiy, Stanislav wrote:
> > On Wed, Apr 06, 2022 at 09:09:06PM +0300, Ville Syrjälä wrote:
> > > On Wed, Apr 06, 2022 at 08:14:58PM +0300, Lisovskiy, Stanislav wrote:
> > > > On Wed, Apr 06, 2022 at 05:01:39PM +0300, Ville Syrjälä wrote:
> > > > > On Wed, Apr 06, 2022 at 04:45:26PM +0300, Lisovskiy, Stanislav wrote:
> > > > > > On Wed, Apr 06, 2022 at 03:48:02PM +0300, Ville Syrjälä wrote:
> > > > > > > On Mon, Apr 04, 2022 at 04:49:18PM +0300, Vinod Govindapillai wrote:
> > > > > > > > In configurations with single DRAM channel, for usecases like
> > > > > > > > 4K 60 Hz, FIFO underruns are observed quite frequently. Looks
> > > > > > > > like the wm0 watermark values need to bumped up because the wm0
> > > > > > > > memory latency calculations are probably not taking the DRAM
> > > > > > > > channel's impact into account.
> > > > > > > >
> > > > > > > > As per the Bspec 49325, if the ddb allocation can hold at least
> > > > > > > > one plane_blocks_per_line we should have selected method2.
> > > > > > > > Assuming that modern HW versions have enough dbuf to hold
> > > > > > > > at least one line, set the wm blocks to equivalent to blocks
> > > > > > > > per line.
> > > > > > > >
> > > > > > > > cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > > > > > cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > > > > >
> > > > > > > > Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> > > > > > > > ---
> > > > > > > >  drivers/gpu/drm/i915/intel_pm.c | 19 ++++++++++++++++++-
> > > > > > > >  1 file changed, 18 insertions(+), 1 deletion(-)
> > > > > > > >
> > > > > > > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > > > > > > > index 8824f269e5f5..ae28a8c63ca4 100644
> > > > > > > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > > > > > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > > > > > > @@ -5474,7 +5474,24 @@ static void skl_compute_plane_wm(const struct intel_crtc_state
> > > > > > > > *crtc_state,
> > > > > > > >           }
> > > > > > > >   }
> > > > > > > >
> > > > > > > > - blocks = fixed16_to_u32_round_up(selected_result) + 1;
> > > > > > > > + /*
> > > > > > > > +  * Lets have blocks at minimum equivalent to plane_blocks_per_line
> > > > > > > > +  * as there will be at minimum one line for lines configuration.
> > > > > > > > +  *
> > > > > > > > +  * As per the Bspec 49325, if the ddb allocation can hold at least
> > > > > > > > +  * one plane_blocks_per_line, we should have selected method2 in
> > > > > > > > +  * the above logic. Assuming that modern versions have enough dbuf
> > > > > > > > +  * and method2 guarantees blocks equivalent to at least 1 line,
> > > > > > > > +  * select the blocks as plane_blocks_per_line.
> > > > > > > > +  *
> > > > > > > > +  * TODO: Revisit the logic when we have better understanding on DRAM
> > > > > > > > +  * channels' impact on the level 0 memory latency and the relevant
> > > > > > > > +  * wm calculations.
> > > > > > > > +  */
> > > > > > > > + blocks = skl_wm_has_lines(dev_priv, level) ?
> > > > > > > > +                 max_t(u32, fixed16_to_u32_round_up(selected_result) + 1,
> > > > > > > > +                           fixed16_to_u32_round_up(wp->plane_blocks_per_line)) :
> > > > > > > > +                 fixed16_to_u32_round_up(selected_result) + 1;
> > > > > > >
> > > > > > > That's looks rather convoluted.
> > > > > > >
> > > > > > >   blocks = fixed16_to_u32_round_up(selected_result) + 1;
> > > > > > > + /* blah */
> > > > > > > + if (has_lines)
> > > > > > > +   blocks = max(blocks, fixed16_to_u32_round_up(wp->plane_blocks_per_line));
> > > > > >
> > > > > > We probably need to do similar refactoring in the whole function ;-)
> > > > > >
> > > > > > > Also since Art said nothing like this should actually be needed
> > > > > > > I think the comment should make it a bit more clear that this
> > > > > > > is just a hack to work around the underruns with some single
> > > > > > > memory channel configurations.
> > > > > >
> > > > > > It is actually not quite a hack, because we are missing that condition
> > > > > > implementation from BSpec 49325, which instructs us to select method2
> > > > > > when ddb blocks allocation is known and that ratio is >= 1.
> > > > >
> > > > > The ddb allocation is not yet known, so we're implementing the
> > > > > algorithm 100% correctly.
> > > > >
> > > > > And this patch does not implement that misisng part anyway.
> > > >
> > > > Yes, as I understood method2 would just give amount of blocks to be
> > > > at least as dbuf blocks per line.
> > > >
> > > > Wonder whether should we actually fully implement this BSpec clause
> > > > and add it to the point where ddb allocation is known or are there
> > > > any obstacles to do that, besides having to reshuffle this function a bit?
> > >
> > > We need to calculate the wm to figure out how much ddb to allocate,
> > > and then we'd need the ddb allocation to figure out how to calculate
> > > the wm. Very much chicken vs. egg right there. We'd have to do some
> > > kind of hideous loop where we'd calculate everything twice. I don't
> > > really want to do that since I'd actually like to move the wm
> > > calculation to happen already much earlier during .check_plane()
> > > as that could reduce the amount of redundant wm calculations we
> > > are currently doing.
> >
> > I might be missing some details right now, but why do we need a ddb
> > allocation to count wms?
> >
> > I thought its like we usually calculate wm levels + min_ddb_allocation,
> > then based on that we do allocate min_ddb + extra for each plane.
> > This is correct that by this moment when we calculate wms we have only
> > min_ddb available, so if this level would be even enabled, we would
> > at least need min_ddb blocks.
> >
> > I think we could just use that min_ddb value here for that purpose,
> > because the condition anyway checks if
> > (plane buffer allocation / plane blocks per line) >=1 so, even if
> > if this wm level would be enabled plane buffer allocation would
> > be at least min_ddb _or higher_ - however that won't affect this
> > condition because even if it happens to be "plane buffer allocation
> > + some extra" the ratio would still be valid.
> > So if it executes for min_ddb / plane blocks per line, we can
> > probably safely state, further it will be also true.
> 
> min_ddb = 110% of the blocks calculated from the 2 methods (blocks + 10%)
> It depends on what method we choose. So I dont think we can use it for any assumptions.

Min_ddb is what matters for us because it is an actual ddb allocation we use,
but not the wm level.
As I understand (plane buffer allocation / plane blocks per line) >=1 validity depends
only if min_ddb can get lower after we do full allocation in skl_allocate_plane_ddb,
which can't be smaller than min_ddb.

The allocation algorithm works in such way that it tries to allocate at least min_ddb
, if it can't - wm level would be disabled.
However if it succeeds it might try to add some extra blocks to the allocation
(see skl_allocate_plane_ddb). 
So yes, even though we don't know the exact allocation in skl_compute_plane_wm - 
we can for sure assume it won't be less than min_ddb anyway, which means
that if min_ddb / plane_blocks_per_line >= 1 is true, it will be true also in further,
if that wm level would be at all enabled.

Stan


> 
> But in any case, I think this patch do not cause any harm in most of the usecases expected out of
> skl+ platforms which have enough dbuf!
> 
> Per plane ddb allocation happens based on the highest wm level min_ddb which can fit into the
> allocation. If one level is not fit, then that level + above package C state transitions are
> disabled.
> Now if you look at the logic to select which method to use - if the latency >= linetime, we select
> the large buffer method which guantees that there is atleast plane_blocks_per_line. So I think we
> can safely assume that latency for wake wm level will be mostly higher, which implies using the
> "large buffer" method.
> 
> So this change mostly limits to wm0. And hence should not impact ddb allocation, but the memory
> fetch bursts might happen slightly more frequently when the processor is in C0?
> 
> BR
> vinod
> 
> >
> > Stan
> >
> > > --
> > > Ville Syrjälä
> > > Intel
