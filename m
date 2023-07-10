Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2BC74D0B0
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jul 2023 10:57:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A73710E170;
	Mon, 10 Jul 2023 08:57:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26CC810E170
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jul 2023 08:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688979419; x=1720515419;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=mmrpZu9JJzRIDVSH7M3ZMjg8o15XExIonZZ695exOes=;
 b=l9u5CVkixW6O1Y8SNm+oWSaE5gSVUSP4F9FeVVCsJ5/VEoUgfrgGA9is
 CWxXKvqM4zhW9JiTjknpKt0JcfwSKeyLYQM1qXMAICd/SpDFaom3hEAP0
 IwAvLXBFN9WUCdqvgtiqXhrImiwIGNZH9WEWjLHyo40/gbQUsHAdjE3VP
 ZRjHzvmePBRFHQ2qyucCcx65guGIOdbH+7tWcA1Q4NI0sdcNEKhnACXMB
 XlBpu/qdDFrYNQjho5I59i+Cbxgt4mgO3UrQrVlkK/v7pMP87cxrCGZzb
 uUU5ClwrRD8wV7DAdF+uShCjyn+UHWCLInSxOlMEelIToP7TBCkQYLpWO w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="349091899"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="349091899"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 01:56:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="723930738"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="723930738"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 01:56:53 -0700
Date: Mon, 10 Jul 2023 11:56:45 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <ZKvHzUYyPxmLO3p7@intel.com>
References: <20230704131758.14024-1-stanislav.lisovskiy@intel.com>
 <20230704131758.14024-3-stanislav.lisovskiy@intel.com>
 <4b91b2d0-22b4-9437-3b28-a778b34500bd@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4b91b2d0-22b4-9437-3b28-a778b34500bd@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Don't rely that 2 VDSC
 engines are always enough for pixel rate
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

On Mon, Jul 10, 2023 at 11:37:56AM +0530, Nautiyal, Ankit K wrote:
> 
> On 7/4/2023 6:47 PM, Stanislav Lisovskiy wrote:
> > We are currently having FIFO underruns happening for kms_dsc test case,
> > problem is that, we check if curreny cdclk is >= pixel rate only if
> > there is a single VDSC engine enabled(i.e dsc_split=false) however if
> > we happen to have 2 VDSC engines enabled, we just kinda rely that this
> > would be automatically enough.
> > However pixel rate can be even >= than VDSC clock(cdclk) * 2, so in that
> > case even with 2 VDSC engines enabled, we still need to tweak it up.
> > So lets compare pixel rate with cdclk * slice count(VDSC engine count) and
> 
> Since we are not using slice count, we can just mention VDSC engine count.

Agree, thanks for spotting.

> 
> 
> > check if it still requires bumping up.
> > Previously we had to bump up CDCLK many times for similar reasons.
> > 
> > v2: - Use new intel_dsc_get_num_vdsc_instances to determine number of VDSC
> >        engines, instead of slice count(Ankit Nautiyal)
> > v3: - s/u8/int/ (Jani Nikula)
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_cdclk.c | 13 +++++++++++--
> >   1 file changed, 11 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 4207863b7b2a..bfa1c5d589ba 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -37,6 +37,7 @@
> >   #include "intel_pci_config.h"
> >   #include "intel_pcode.h"
> >   #include "intel_psr.h"
> > +#include "intel_vdsc.h"
> >   #include "vlv_sideband.h"
> >   /**
> > @@ -2607,9 +2608,17 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
> >   	 * When we decide to use only one VDSC engine, since
> >   	 * each VDSC operates with 1 ppc throughput, pixel clock
> >   	 * cannot be higher than the VDSC clock (cdclk)
> > +	 * If there 2 VDSC engines, then pixel clock can't be higher than
> > +	 * VDSC clock(cdclk) * 2. However even that can still be not enough.
> > +	 * Slice count reflects amount of VDSC engines,
> As mentioned above, we can remove slice_count, as we are using VDSC engine
> count.
> > +	 * so lets use that to determine, if need still need to tweak CDCLK higher.
> 
> 
> >   	 */
> > -	if (crtc_state->dsc.compression_enable && !crtc_state->dsc.dsc_split)
> > -		min_cdclk = max(min_cdclk, (int)crtc_state->pixel_rate);
> > +	if (crtc_state->dsc.compression_enable) {
> > +		int num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
> > +
> > +		min_cdclk = max_t(int, min_cdclk,
> > +			          crtc_state->pixel_rate / num_vdsc_instances);
> 
> I was wondering if we should use DIV_ROUND_UP(crtc_state->pixel_rate /
> num_vdsc_instances), since min_cdclk should be more than this value.
> 
> Though practically Pixel rate in Khz / num of vdsc instances, wont need to
> roundup, so perhaps we might not require this. I leave it up to you.

Yep was thinking about that too. Practically DIV_ROUND_UP(pixel_rate, num_vdsc_instances)
means pixel_rate + (2 - 1) / 2 here, so we might get + 1 Khz here. Considering that
values in cdclk_table differ by 1000's of kHz, when we are looking for value which is >=
this is quite unlikely to be a problem.
For this to be a problem we need to have CDCLK to be lets say 345601, then once we divide by
2, we get 172800, which is 345600, if multiplied by 2. 

However we still might want to add that, just to be on safe side.

Stan

> 
> 
> With the above changes in documentation, this is:
> 
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> 
> 
> > +	}
> >   	/*
> >   	 * HACK. Currently for TGL/DG2 platforms we calculate
