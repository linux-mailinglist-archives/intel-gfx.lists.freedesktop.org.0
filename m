Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E479056B5
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2024 17:22:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A66510E899;
	Wed, 12 Jun 2024 15:22:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JEqtNmxc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73D8710E893
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2024 15:22:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718205748; x=1749741748;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=cO/FhvhzfianH4qU9qjlidDMCmLR/rF0m34UZ8+7n2k=;
 b=JEqtNmxcvSvHxF7THKk1kgTVWsgGktYGS/zqf1vi901m2JT24FUaMufv
 1mw8RJjViYYx/d0eE9/HdNvFXhUmzgVUQbwG5WqfFBAelN62IoorvAWvQ
 gJ+GoH9VHwhB+P+8VOKZO6uCn/o04mqSxEQovt8Z+D+GXjwGtZrVzzUTU
 9SAa4RTnwN8i3gg3CBTFsyvur4Q0a56rN6ySBYl66SiEY6mFMG+kn+mdG
 uzdo7Ap87uYaBYoRM6gK1ToiqijJjg2VeDgBdKl+neOWBlC3mBqbYbOR2
 y2rtKcgT+9lX+npYtT5xszn+haXOhdUgUYrDb6eTd5LM5a+E2z/040HeE Q==;
X-CSE-ConnectionGUID: HFOtjzwARb2tvRF59bV/Bw==
X-CSE-MsgGUID: HMv4rQWqTfurTkypSdh/0A==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="25556192"
X-IronPort-AV: E=Sophos;i="6.08,233,1712646000"; d="scan'208";a="25556192"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2024 08:22:28 -0700
X-CSE-ConnectionGUID: uHvYCGazTqW/6AmKIN63zg==
X-CSE-MsgGUID: HxB6hWeoTXuDqcV+tKG6lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,233,1712646000"; d="scan'208";a="39888638"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2024 08:22:26 -0700
Date: Wed, 12 Jun 2024 18:22:33 +0300
From: Imre Deak <imre.deak@intel.com>
To: Luca Coelho <luca@coelho.fi>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/dp_mst: Fix DSC input BPP computation
Message-ID: <Zmm9ORwXa94lCLNH@ideak-desk.fi.intel.com>
References: <20240611153351.3013235-1-imre.deak@intel.com>
 <8714585171d2fe7b8df27971486f44747fc94786.camel@coelho.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8714585171d2fe7b8df27971486f44747fc94786.camel@coelho.fi>
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

On Wed, Jun 12, 2024 at 04:35:36PM +0300, Luca Coelho wrote:
> Hi Imre,
> 
> On Tue, 2024-06-11 at 18:33 +0300, Imre Deak wrote:
> > The branch or sink device decompressing a stream may have a limitation
> > on the input/uncompressed BPP, which is lower than the base line BPP
> > (determined by the sink's EDID). In some cases a stream with an input
> > BPP higher than this limit will be converted automatically by the device
> > decompressing the stream, by truncating the BPP, however in some cases
> > - seen at least in Dell dock's DP->HDMI converters - the decompression
> > will fail.
> > 
> > Fix the above by limiting the input BPP correctly. This is done already
> > correctly for SST outputs.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 00fdcbc28e9b7..15c20bedea091 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -349,6 +349,8 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
> >  	if (max_bpp > sink_max_bpp)
> >  		max_bpp = sink_max_bpp;
> >  
> > +	crtc_state->pipe_bpp = max_bpp;
> > +
> >  	max_compressed_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
> >  								  crtc_state,
> >  								  max_bpp / 3);
> 
> Wouldn't it be better to make the assignment in
> intel_dp_dsc_sink_max_compressed_bpp(), since that function is already
> making modifications to crtc_state?

Agreed, this is less than ideal atm. The whole MST DSC state computation
would need a refactor, at least to sanitize it wrt. the MST/non-DSC and
the SST DSC counterparts (also planned by others). Hence, it made sense
to keep this fix simple.

Also, the rational I saw for this way was that the input/uncompressed
bpp (max_bpp above), which isn't relavant in the non-DSC case, is
computed in intel_dp_dsc_mst_compute_link_config() and
intel_dp_mst_find_vcpi_slots_for_bpp() would only compute the
output/compressed bpp (relevant to both DSC and non-DSC case). Imo in
the end the computation for these two cases should be separated into
their own functions, instead of passing a 'bool dsc' param to a common
function handling both cases.

> There is another caller, but I think it may benefit from the same check.

For the non-DSC case the above limit doesn't apply (at least I'm not
aware of it).

> But this is just a nitpick.  Either way, you have:
> 
> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

Thanks!

> 
> --
> Cheers,
> Luca.
