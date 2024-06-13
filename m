Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E085D9069C2
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2024 12:15:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04CB610EA02;
	Thu, 13 Jun 2024 10:14:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LgztLhzh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 027EE10EA01
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2024 10:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718273697; x=1749809697;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=EMPOSupvGN1mYtDmXcoKKsmdq8bOiXedQIcEGe0KjvM=;
 b=LgztLhzh3QX798aPgR4jOlodg6xOCSFxjX3cLN/rErzdAYa2KUMCiu1w
 NA6I//OYT+Q9cf6l655DtJUGLkFF0veChvEHjrQVPzX9bhRHQAE7+8KXm
 1VM/n+DLQZ2cy1b8UC4/olUqZyx23ZGTAumE0RmhQsdtEOQinmbZYpURL
 CHhcKHI0yPbZ40DPepZAh3W6AtELNXZDbpc382PyrGB2sbiampNsTGsLy
 b6pC+eKYXLKhkleI9t6IVJueP9NpYVkgQ+tF3Fm/I4Gbq6hF/XRJ/IWX4
 HwqyrhOD20hEbuM9BWAYhBwDqRWXc8vqoPY/ZiLT3U62nWXAIygJzAaEH A==;
X-CSE-ConnectionGUID: 3da2M1brT/qOmZWr+nWfmg==
X-CSE-MsgGUID: jqbYs4JWSp6ShRWYVGiqyA==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="25661903"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="25661903"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 03:14:57 -0700
X-CSE-ConnectionGUID: Owjm4+WHQaOwL8ubQBX1Tw==
X-CSE-MsgGUID: 1BcGTQ8aTl+RS+7yiMDKNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="44475805"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 03:14:56 -0700
Date: Thu, 13 Jun 2024 13:15:03 +0300
From: Imre Deak <imre.deak@intel.com>
To: Luca Coelho <luca@coelho.fi>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/dp_mst: Fix DSC input BPP computation
Message-ID: <ZmrGp42/yAW0U5a9@ideak-desk.fi.intel.com>
References: <20240611153351.3013235-1-imre.deak@intel.com>
 <8714585171d2fe7b8df27971486f44747fc94786.camel@coelho.fi>
 <Zmm9ORwXa94lCLNH@ideak-desk.fi.intel.com>
 <2bb88a2fef174083b3fe31d4cdf53b7dd3ca95ac.camel@coelho.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2bb88a2fef174083b3fe31d4cdf53b7dd3ca95ac.camel@coelho.fi>
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

On Thu, Jun 13, 2024 at 01:25:59AM +0300, Luca Coelho wrote:
> On Wed, 2024-06-12 at 18:22 +0300, Imre Deak wrote:
> > On Wed, Jun 12, 2024 at 04:35:36PM +0300, Luca Coelho wrote:
> > > Hi Imre,
> > > 
> > > On Tue, 2024-06-11 at 18:33 +0300, Imre Deak wrote:
> > > > The branch or sink device decompressing a stream may have a limitation
> > > > on the input/uncompressed BPP, which is lower than the base line BPP
> > > > (determined by the sink's EDID). In some cases a stream with an input
> > > > BPP higher than this limit will be converted automatically by the device
> > > > decompressing the stream, by truncating the BPP, however in some cases
> > > > - seen at least in Dell dock's DP->HDMI converters - the decompression
> > > > will fail.
> > > > 
> > > > Fix the above by limiting the input BPP correctly. This is done already
> > > > correctly for SST outputs.
> > > > 
> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 ++
> > > >  1 file changed, 2 insertions(+)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > index 00fdcbc28e9b7..15c20bedea091 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > @@ -349,6 +349,8 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
> > > >  	if (max_bpp > sink_max_bpp)
> > > >  		max_bpp = sink_max_bpp;
> > > >  
> > > > +	crtc_state->pipe_bpp = max_bpp;
> > > > +
> > > >  	max_compressed_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
> > > >  								  crtc_state,
> > > >  								  max_bpp / 3);
> > > 
> > > Wouldn't it be better to make the assignment in
> > > intel_dp_dsc_sink_max_compressed_bpp(), since that function is already
> > > making modifications to crtc_state?
> > 
> > Agreed, this is less than ideal atm. The whole MST DSC state computation
> > would need a refactor, at least to sanitize it wrt. the MST/non-DSC and
> > the SST DSC counterparts (also planned by others). Hence, it made sense
> > to keep this fix simple.
> 
> I'm totally for simple fixes!
> 
> 
> > Also, the rational I saw for this way was that the input/uncompressed
> > bpp (max_bpp above), which isn't relavant in the non-DSC case, is
> > computed in intel_dp_dsc_mst_compute_link_config() and
> > intel_dp_mst_find_vcpi_slots_for_bpp() would only compute the
> > output/compressed bpp (relevant to both DSC and non-DSC case). Imo in
> > the end the computation for these two cases should be separated into
> > their own functions, instead of passing a 'bool dsc' param to a common
> > function handling both cases.
> 
> Makes sense.  It's best to avoid this sort of boolean that changes the
> function's semantics.
> 
> 
> > > There is another caller, but I think it may benefit from the same check.
> > 
> > For the non-DSC case the above limit doesn't apply (at least I'm not
> > aware of it).
> 
> Yeah, but AFAICT, in this case, it wouldn't really matter, right? The
> remote's max_bpp would never be greater than the current one in this
> case.

The above max_bpp value depends on DSC DPCD registers in the sink. These
registers are not valid in the non-DSC case (contain 0), but there this
limit doesn't either make sense since the sink does not do a
decompression. IOW, this limit is specific to the decompression function
within the sink or branch and not to the panel's color depth capability
(stored in the sink's EDID).

> > > But this is just a nitpick.  Either way, you have:
> > > 
> > > Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
> > 
> > Thanks!
> 
> --
> Cheers,
> Luca.
