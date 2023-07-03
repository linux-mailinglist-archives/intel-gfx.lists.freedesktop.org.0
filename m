Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB577457B8
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jul 2023 10:51:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1C2210E1DD;
	Mon,  3 Jul 2023 08:51:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CA7A10E1DD
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jul 2023 08:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688374263; x=1719910263;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=4VoEaeWXarMFgyE15l66cX/OI2BZplKR5Ujn7W89w1Q=;
 b=MKugGo4jmpPG897cOqcfO8cpFOHjqKHuR90sH3h/PrxwXuU3BS8H69eI
 Mvf3ZdJnp2ucjIlFo8T2oCsbMK9Q055EbFdquZDV8PFoeQa4Udv3fup6I
 /j6x4m/uTBga/G8k1L2O0PodNp1ccD0fRVMpA5NXv/k6STPT03poU04WW
 RkiJUgH8edGGzrVhWUpuleN8laGNORox474d2E5Xb9/GFmWLZBacYdZKg
 n/iChxJOhGvlTBrTn/hC1o4NS9TajONHXH3N/lSi95HTwYWVzQ8sEMgkU
 Jwsb8Yl8mukjkC0ZNm+5HD3/qze5j/JST6bkrIozUxKT92qySEDvmAnLi g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="360308991"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="360308991"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2023 01:51:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="863006804"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="863006804"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2023 01:51:00 -0700
Date: Mon, 3 Jul 2023 11:50:53 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <ZKKL7caI1mOQbxQE@intel.com>
References: <20230628100816.16528-1-stanislav.lisovskiy@intel.com>
 <d8d0502b-df19-7986-16cc-00051bee530a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d8d0502b-df19-7986-16cc-00051bee530a@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't rely that 2 VDSC engines
 are always enough for pixel rate
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

On Mon, Jul 03, 2023 at 10:23:00AM +0530, Nautiyal, Ankit K wrote:
> 
> On 6/28/2023 3:38 PM, Stanislav Lisovskiy wrote:
> > We are currently having FIFO underruns happening for kms_dsc test case,
> > problem is that, we check if curreny cdclk is >= pixel rate only if
> > there is a single VDSC engine enabled(i.e dsc_split=false) however if
> > we happen to have 2 VDSC engines enabled, we just kinda rely that this
> > would be automatically enough.
> > However pixel rate can be even >= than VDSC clock(cdclk) * 2, so in that
> > case even with 2 VDSC engines enabled, we still need to tweak it up.
> > So lets compare pixel rate with cdclk * slice count(VDSC engine count) and
> 
> Is it not that we use slice count for the number of DSC slices in which the
> horizontal scanline count is divided. So this can be 1,2, 4.
> 
> Whereas VDSC engine count is the number of VDSC engines the stream is
> splitted.
> 
> IIUC for a case where number of horizontal DSC slices is 4 and we use 2 VDSC
> engines, each VDSC engine will get two slices and slice width will be
> HACTIVE/4.
> 
> Perhaps what we want to do is to compare pixel rate with cdclk * (number of
> vdsc engine count = dsc_split ? 2 : 1)

Yes, we of course need amount of DSC engines here, however I was wondering is there
any other way to get amount of VDSC engines used more precisely, except just assuming
"2" if dsc_split is set to true?

As I understand amount of slices will always be >= amount of VDSC engines, however of course
if we will have 2 slices for each VDSC engines - that would be too optimistic.
However I just really don't want to hardcode "2" here.
Need to check if there is any other way..

Stan

> 
> Regards,
> 
> Ankit
> 
> 
> > check if it still requires bumping up.
> > Previously we had to bump up CDCLK many times for similar reasons.
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_cdclk.c | 9 +++++++--
> >   1 file changed, 7 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 4207863b7b2a..5880dcb11588 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -2607,9 +2607,14 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
> >   	 * When we decide to use only one VDSC engine, since
> >   	 * each VDSC operates with 1 ppc throughput, pixel clock
> >   	 * cannot be higher than the VDSC clock (cdclk)
> > +	 * If there 2 VDSC engines, then pixel clock can't be higher than
> > +	 * VDSC clock(cdclk) * 2. However even that can still be not enough.
> > +	 * Slice count reflects amount of VDSC engines,
> > +	 * so lets use that to determine, if need still need to tweak CDCLK higher.
> >   	 */
> > -	if (crtc_state->dsc.compression_enable && !crtc_state->dsc.dsc_split)
> > -		min_cdclk = max(min_cdclk, (int)crtc_state->pixel_rate);
> > +	if (crtc_state->dsc.compression_enable)
> > +		min_cdclk = max_t(int, min_cdclk * crtc_state->dsc.slice_count,
> > +			          crtc_state->pixel_rate);
> >   	/*
> >   	 * HACK. Currently for TGL/DG2 platforms we calculate
