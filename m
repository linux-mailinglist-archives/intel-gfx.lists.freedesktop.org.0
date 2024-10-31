Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF6B9B7947
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 12:03:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F81B10E861;
	Thu, 31 Oct 2024 11:03:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lXd+4JWr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4593210E861
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 11:03:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730372595; x=1761908595;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=+PR+r7bQLVdTKvawCru9E1yhE/rDi6XcqcWwVMAmJzE=;
 b=lXd+4JWrTJ7nGQDf0VN+SuTqKvjHMudydbYVNvkHtbHKjM92E+JhFyh5
 j5G2xNRGixIZMoK9UKmR49xVHStawVHIDE7ory51ylBwQIfRHvY0j3AmR
 wXKme/5Tcqe7YwOl1d6UKiXSOULj1Re3cLvoBu2QnkPWppdKOuDfJDpt1
 1eoVRhLCT0CI1coX7FRd3IFj6Y5VDCZmztUeT0fZnryxOlNreTTHIU+JX
 Rl4hi53fZ9hvcVzP+u3NkNuf64vPDMeKH/SaT1ro8gN939fUr8sDKGWj6
 uo6d3yHUkcvRZb5KPOa3MSJT7U3cG3ZcfleXPN06AboL0La/gJLLxZR6o w==;
X-CSE-ConnectionGUID: AXaLiJj5ROe0v4YIvhHYyQ==
X-CSE-MsgGUID: ernYW1uxS5SmYpoKkXe7EQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="32941139"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="32941139"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 04:03:15 -0700
X-CSE-ConnectionGUID: TYN47QlFTBa2qiaDO4b+CA==
X-CSE-MsgGUID: YSOwpsivTZi6O2BHmPyhTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="87136533"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 04:03:14 -0700
Date: Thu, 31 Oct 2024 13:03:47 +0200
From: Imre Deak <imre.deak@intel.com>
To: Luca Coelho <luca@coelho.fi>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 5/5] drm/i915/adlp+/dp_mst: Align master transcoder
 disabling with spec wrt. DP2 config
Message-ID: <ZyNkE9KNAohAOVh9@ideak-desk.fi.intel.com>
References: <20241030192313.4030617-1-imre.deak@intel.com>
 <20241030192313.4030617-6-imre.deak@intel.com>
 <a26cf220d39a9898a8856c042e5c70542bc41be1.camel@coelho.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a26cf220d39a9898a8856c042e5c70542bc41be1.camel@coelho.fi>
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

On Thu, Oct 31, 2024 at 12:56:15PM +0200, Luca Coelho wrote:
> On Wed, 2024-10-30 at 21:23 +0200, Imre Deak wrote:
> > On ADLP+ during modeset disabling, disable the DP2 configuration for MST
> > master transcoders as required by the specification.
> > 
> > Bspec: 55424, 54128, 65448, 68849
> 
> Just curious how this change is related to so many bspecs...?

The Display Port modeset sequences - where the programming step added
here is described - are different or at least described separately for
different platforms on the above pages.

> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index d82bc1bf8b68f..6adbc7d0b90d9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -3062,6 +3062,8 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
> >  
> >  	intel_dp_sink_set_fec_ready(intel_dp, old_crtc_state, false);
> >  
> > +	intel_ddi_config_transcoder_dp2(old_crtc_state, false);
> > +
> >  	/*
> >  	 * From TGL spec: "If single stream or multi-stream master transcoder:
> >  	 * Configure Transcoder Clock select to direct no clock to the
> 
> Regardless:
> 
> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
> 
> --
> Cheers,
> Luca.
