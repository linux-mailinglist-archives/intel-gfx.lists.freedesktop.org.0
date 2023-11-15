Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6FF7EC3EF
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 14:42:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C719C10E05B;
	Wed, 15 Nov 2023 13:42:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D68D810E05B
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 13:42:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700055746; x=1731591746;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=kiAQbakITRqCADLO3GRtdPleyF7mb6ulEjZKadyPZRA=;
 b=jp0+RECxDvcGnG6FEF2vKAqxe/QpuOeZvnuGJB4uN8e6B4ifVdIwzjzH
 hz5TKn0bYDpsoOV6t18NLyBhGd4zoJRujX8udBe5YscRapGH1Dz++PSjA
 NMXnx7cqtpDVGhXgBUbDqHE8cte+Kb8SD9EEtXkP1/m7KmTXC3y/6bW4X
 2yuRpcY7VbU34IUjqoDu0DPFEYMTsT7poRZTlyr0v1hKPbN0l98z7EE45
 Oj8DOD41Gwgj1wxuu0VCsawbUAJwpVWI7s2OjFjkH46N7kXE37xtqa2lm
 EFBV3ijL70dxFYMuzjWKvz2hY90wsLE1Ryg4mxhkICQEp20oOSfrCMJ9w Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="455166704"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="455166704"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 05:42:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="794155224"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="794155224"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 05:42:25 -0800
Date: Wed, 15 Nov 2023 15:42:24 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <ZVTKwKtzxXo0ZEcM@ideak-desk.fi.intel.com>
References: <20231113201110.510724-1-imre.deak@intel.com>
 <87v8a4so8u.fsf@intel.com>
 <ZVNxKGcc86jIQ8/a@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZVNxKGcc86jIQ8/a@ideak-desk.fi.intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/dp: Account for channel coding
 efficiency on UHBR links
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 14, 2023 at 03:07:52PM +0200, Imre Deak wrote:
> On Tue, Nov 14, 2023 at 11:00:49AM +0200, Jani Nikula wrote:
> > On Mon, 13 Nov 2023, Imre Deak <imre.deak@intel.com> wrote:
> > > Apply the correct BW allocation overhead and channel coding efficiency
> > > on UHBR link rates, similarly to DP1.4 link rates.
> > >
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 10 ----------
> > >  1 file changed, 10 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 3effafcbb411a..24aebdb715e7d 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -2398,16 +2398,6 @@ add_bw_alloc_overhead(int link_clock, int bw_overhead,
> > >  	int ch_coding_efficiency =
> > >  		drm_dp_bw_channel_coding_efficiency(is_uhbr);
> > 
> > Why do we have this and intel_dp_max_data_rate() separately?
> 
> This function calculates an m/n ratio for a given pixel/data rate,
> applying both the allocation overhead (FEC, SSC, etc.) and the channel
> coding efficiency. intel_dp_max_data_rate() calculates a maximum data
> rate applying only the channel coding efficiency.
> 
> I think intel_dp_max_data_rate() could be simplified, so the two
> functions use the same channel coding efficiency to:
> 
>     DIV_ROUND_UP_ULL(mul_u32_u32(max_link_rate_kbps * max_lanes,
>     				 drm_dp_bw_channel_coding_efficiency(is_uhbr)),
> 		     1000000ULL * 8)

Actually, it does make sense to reuse intel_dp_max_data_rate() in 
intel_link_compute_m_n() -> add_bw_alloc_overhead(), I'll send a new
version with that (and the above simplification).
> 
> --Imre
> 
> > 
> > BR,
> > Jani.
> > 
> > 
> > >  
> > > -	/*
> > > -	 * TODO: adjust for actual UHBR channel coding efficiency and BW
> > > -	 * overhead.
> > > -	 */
> > > -	if (is_uhbr) {
> > > -		*data_m = pixel_data_rate;
> > > -		*data_n = link_data_rate * 8 / 10;
> > > -		return;
> > > -	}
> > > -
> > >  	*data_m = DIV_ROUND_UP_ULL(mul_u32_u32(pixel_data_rate, bw_overhead),
> > >  				   1000000);
> > >  	*data_n = DIV_ROUND_DOWN_ULL(mul_u32_u32(link_data_rate, ch_coding_efficiency),
> > 
> > -- 
> > Jani Nikula, Intel
