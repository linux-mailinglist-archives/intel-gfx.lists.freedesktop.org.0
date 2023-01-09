Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 067F966273F
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jan 2023 14:36:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18D2C10E156;
	Mon,  9 Jan 2023 13:36:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F227B10E0A3
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Jan 2023 13:36:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673271406; x=1704807406;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=7/kjzh+IPOEoWT9z/vbIqmegz6tSnTcr1G/JeWMpq7g=;
 b=ZjzrHEpP95bJCxX9mvzVmJJfONzUT2z23Ywwyh0qm1E2tXozAMsK3L5S
 ecgmiaXoGCcXubpggTaSFtBtvtt9dM5Lu/5GDeli4V2fkWQulE70nPUb2
 n4U5CnjLXNe0VHo/z6zoJedBpK2ss+s614WNWcVzUsXLuTb66qtzkHfj2
 uJDK1YRqv54084cfp/IjmFTgdiENgfH+Q0cgnGyDEONMZiclAiC2PmLYo
 OM5FGhmPLR2atAbGb0ZP4v+DOfxzhOjARtRUJztdjh8LChkoUgUhttoWX
 uBCGlq+/1rhy1p5+yFPjJpc2LJxCuXOeV+2OA/X8In3zU7WmTlmHJxm+P g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10584"; a="409116058"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="409116058"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 05:36:46 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10584"; a="689028800"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="689028800"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 05:36:45 -0800
Date: Mon, 9 Jan 2023 15:36:36 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <Y7wYZGjMAMK27SRU@intel.com>
References: <20230102132306.9663-1-stanislav.lisovskiy@intel.com>
 <Y7RUWCLR8oxywAzI@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y7RUWCLR8oxywAzI@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix timeslots argument for DP DSC
 SST case
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 03, 2023 at 11:14:16AM -0500, Rodrigo Vivi wrote:
> On Mon, Jan 02, 2023 at 03:23:06PM +0200, Stanislav Lisovskiy wrote:
> > We now accept timeslots param exactly how the variable
> > sounds: amount of timeslots, but not ratio timeslots/64.
> > So for SST case(when we have all timeslots for use), it
> > should be 64, but not 1.
> 
> I noticed that at intel_dp_dsc_get_output_bpp() we have this comment:
> 
>          * for SST -> TimeSlotsPerMTP is 1,
> 
> and there's a bunch of math used with this timeslots, but none of them
> is a direct division by 64.

Yep "TimeSlotsPerMTP is 1" already means that this is a ratio. We have 64
timeslots alltogether and obviously for SST we have all of them.

To be honest that comment above isn't way too informative, I've had to dig
into the spec and calculate everything by myself before I could figure out
what is going on here.

For the Link Total Bw can be calculated like this:

Link Total Bw = link_symbol_clock * lane_count * 8

Amount of Bw we need for the current mode is:

Required bpp = mode_clock * bpp

For generic MST case, amount BW we have is split to 64 timeslots,
i.e each 1 timeslot has Bw:

1 Timeslot Bw = Link Total Bw / 64 = (link_symbol_clock * lane_count * 8) / 64

Given amount if timeslots the bw which we will get is:

Link Total Bw * (timeslots / 64) =  (link_symbol_clock * lane_count * 8 * timeslots) / 64

However required Bw is as said above: Required Bw = mode_clock * bpp

Thus in order to figure out the max bpp we can afford, we need to solve
equation:

Link Total Bw * (timeslots / 64) = mode_clock * bpp

i.e bpp = (Link Total Bw * timeslots) / (mode_clock * 64)

=> bpp = (link_symbol_clock * lane_count * 8 * timeslots) / (mode_clock * 64)

which can be simplified to:

bpp = (link_symbol_clock * lane_count * timeslots) / (mode_clock * 8)

In order for this to work timeslots should be actual amount of timeslots
but not the ratio.

> 
> So I wonder if a refactor to reflect the "perMTP" is not needed there.
> Or the reverse math instead of passing the 64 directly.
> 
> > This caused some issues in the tests.
> 
> could you also expand on what tests?
> any "References:" link to cibuglog or so?

Asked from CI, but as I understand quite a lot of tests are affected,
like _many_ :))
Will add the link.

Stan

> 
> Oh, any "Fixes:" tag as well?
> 
> Thanks for the patch,
> Rodrigo.
> 
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 13baf3cb5f934..362fb394d613c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1696,7 +1696,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
> >  			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
> >  			    str_yes_no(intel_dp->force_dsc_en));
> >  		ret = intel_dp_dsc_compute_config(intel_dp, pipe_config,
> > -						  conn_state, &limits, 1, true);
> > +						  conn_state, &limits, 64, true);
> >  		if (ret < 0)
> >  			return ret;
> >  	}
> > -- 
> > 2.37.3
> > 
