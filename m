Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FAB073E115
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 15:53:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5014910E20A;
	Mon, 26 Jun 2023 13:53:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F35FD10E20A
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 13:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687787586; x=1719323586;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=YNCRDpv0ZROzPXORzYfsY8DM4Jo6J26S/B/xtatNh6w=;
 b=Uy7+PljKubXH46Xw92dTCh6lVqaMmArHW5CAYL71jxOcZE7tTTcch/9G
 +rOjKRX1uevGcnOeB+MDVosNgwS7nm1H+/qtip5QVAoJD0bZL3H/QAo1+
 yaNLO2BrnKDin9Kj6N68bVKnFUQK7NJ8SdOYCnF6Si+Tl6DLrfmOk8No/
 +YliSd+Gz9EFltZPBCG5a5wN+6BQpFJJB21TaPEsd579GHJZNiDLg5zDa
 NpnNSp+Tln0KxwjaRUE38eJtXPmOunOpvHD9UmaIisAgoLSZ1mfvntL8o
 OEH4iSpHyqgzVT0vbd3yj/iymHJ0YGN0Yr99qt1IiTcIUrXyai3e6MQER w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="358767718"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="358767718"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 06:52:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="781444927"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="781444927"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 06:52:27 -0700
Date: Mon, 26 Jun 2023 16:52:20 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Luca Coelho <luca@coelho.fi>
Message-ID: <ZJmYFA8eAcl/TmzQ@intel.com>
References: <20230626082821.2085-1-stanislav.lisovskiy@intel.com>
 <e1bef6bb59b788b737ed9f461b2aa525f46d2e8b.camel@coelho.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e1bef6bb59b788b737ed9f461b2aa525f46d2e8b.camel@coelho.fi>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fail if DSC compression
 requirement is less than platform supports
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

On Mon, Jun 26, 2023 at 03:18:52PM +0300, Luca Coelho wrote:
> On Mon, 2023-06-26 at 11:28 +0300, Stanislav Lisovskiy wrote:
> > Currently we just clamp that value to the highest supported one, however that
> > means, we are not able to fit this into our available bandwidth range, so we
> > might see glitches or FIFO underruns.
> > While choosing less compressed bpp than min bpp required to handle the mode is
> > harmless and might even save some bandwidth, choosing higher compressed bpp than
> > min bpp required to handle the required mode config, can cause issues.
> > So in that case lets just conclude that even with DSC, we are not able to comply
> > with bandwidth requirements and fail.
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 11 ++++++++++-
> >  1 file changed, 10 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 9f40da20e88d..8696a1f02805 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -713,8 +713,17 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
> >  
> >  		/*
> >  		 * According to BSpec, 27 is the max DSC output bpp,
> > -		 * 8 is the min DSC output bpp
> > +		 * 8 is the min DSC output bpp.
> > +		 * While we can still clamp higher bpp values to 27, saving bandwidth,
> > +		 * if it is required to oompress up to bpp < 8, means we can't do
> 
> Small typo, "compress".

Thanks for spotting

> 
> 
> > +		 * that and probably means we can't fit the required mode, even with
> > +		 * DSC enabled.
> >  		 */
> > +		if (bits_per_pixel < 8) {
> > +			drm_dbg_kms(&i915->drm, "Unsupported BPP %u, min 8\n",
> > +				    bits_per_pixel);
> > +			return 0;
> > +		}
> >  		bits_per_pixel = clamp_t(u32, bits_per_pixel, 8, 27);
> 
> I guess you don't need to clamp anymore but could use min_t(u32,
> bits_per_pixel, 27) now, right? Actually, you don't even need to type
> it, so min(bits_per_pixel, 27) should suffice.

Yep, was thinking about that, was willing to leave clamp just as an additional
check "just in case", but probably you are right. 

Stan

> 
> 
> >  	} else {
> >  		/* Find the nearest match in the array of known BPPs from VESA */
> 
> --
> Cheers,
> Luca.
