Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7A87EB093
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 14:07:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93A1D10E202;
	Tue, 14 Nov 2023 13:07:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA28910E202
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Nov 2023 13:07:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699967274; x=1731503274;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=pSl0ezsO8ROnWkFFIXtNMuY3IdvSdf1xtHI2bxXFBw4=;
 b=bMvkbjurV9iVbwDJ6YEhEloZ+xw5pOytYat3pHpiPiczgb2ggTWUcdoX
 ui3DHwpZXb/8czxrezF8sE61uFZ1AhAhaFllWaE7V3wzfyRWqg5HyEyj4
 VSsJH6kOdkWitrX3CqkRbMMLGRo5cQHeWTDCCNC8Ww82mtf/pD5ka4KoY
 IgLafmxXng3Bq2KkLd/U/LsC2AWZrm+ZTfYIx9w1FgEreWkkhimbpdp+s
 sfPvQoN7Iz4z3ii0J9Np4a9Aj4jOdUsrT+avlqVgSA2mGsD50LOY3i6Y2
 7YJiEcOHBuyzuLZF0MVjVg78/E8v1YfLfqqqpTbKeDslkl4IrwTu2eqnp Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="390443337"
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; d="scan'208";a="390443337"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 05:07:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="855273524"
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; d="scan'208";a="855273524"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 05:07:53 -0800
Date: Tue, 14 Nov 2023 15:07:52 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZVNxKGcc86jIQ8/a@ideak-desk.fi.intel.com>
References: <20231113201110.510724-1-imre.deak@intel.com>
 <87v8a4so8u.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87v8a4so8u.fsf@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 14, 2023 at 11:00:49AM +0200, Jani Nikula wrote:
> On Mon, 13 Nov 2023, Imre Deak <imre.deak@intel.com> wrote:
> > Apply the correct BW allocation overhead and channel coding efficiency
> > on UHBR link rates, similarly to DP1.4 link rates.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 10 ----------
> >  1 file changed, 10 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 3effafcbb411a..24aebdb715e7d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -2398,16 +2398,6 @@ add_bw_alloc_overhead(int link_clock, int bw_overhead,
> >  	int ch_coding_efficiency =
> >  		drm_dp_bw_channel_coding_efficiency(is_uhbr);
> 
> Why do we have this and intel_dp_max_data_rate() separately?

This function calculates an m/n ratio for a given pixel/data rate,
applying both the allocation overhead (FEC, SSC, etc.) and the channel
coding efficiency. intel_dp_max_data_rate() calculates a maximum data
rate applying only the channel coding efficiency.

I think intel_dp_max_data_rate() could be simplified, so the two
functions use the same channel coding efficiency to:

    DIV_ROUND_UP_ULL(mul_u32_u32(max_link_rate_kbps * max_lanes,
    				 drm_dp_bw_channel_coding_efficiency(is_uhbr)),
		     1000000ULL * 8)

--Imre

> 
> BR,
> Jani.
> 
> 
> >  
> > -	/*
> > -	 * TODO: adjust for actual UHBR channel coding efficiency and BW
> > -	 * overhead.
> > -	 */
> > -	if (is_uhbr) {
> > -		*data_m = pixel_data_rate;
> > -		*data_n = link_data_rate * 8 / 10;
> > -		return;
> > -	}
> > -
> >  	*data_m = DIV_ROUND_UP_ULL(mul_u32_u32(pixel_data_rate, bw_overhead),
> >  				   1000000);
> >  	*data_n = DIV_ROUND_DOWN_ULL(mul_u32_u32(link_data_rate, ch_coding_efficiency),
> 
> -- 
> Jani Nikula, Intel
