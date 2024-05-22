Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E038CC63E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 20:22:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D2C310E02F;
	Wed, 22 May 2024 18:22:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D9lyXqsq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A0F910E02F
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2024 18:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716402174; x=1747938174;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=2zck2cMxDBS7ipH7j2j97UcukDAo5CBDJJxU3/VOvBQ=;
 b=D9lyXqsqFgC/POOgwOj0dCOwOwlQAxtY6PrXjYpF7MJ0tKl6R5L4NTju
 o8JWBvggbnJOS/2dV4U1w+9hVkoGEZhWBNdtgY+H1xW5a9QA1x94U2q7o
 JjXkRSkbvjnjG+gR+zUrxunSd9bBB5kxBPZJAhV/sQe3MCJC+ZIyzouJL
 y1ZMBo8xM4X2fDAOIwyzExerDaRzEOq44vfPmv4zJDk2wiKG4YvOssaG7
 oGWvcBFdEwqi6ntN5X6UeOg2Brz06jBZOvM1dmyAlqkV+mNdoneoyF4AL
 xHA6qoJ3ilnN3Ko92RsKRnJJ7e8jkZQyjyBWDa4jeYyyYSXG6oHw66SOR g==;
X-CSE-ConnectionGUID: Bf2yvEOkSmu0HCo8Vrfj/g==
X-CSE-MsgGUID: QJq9Z+S9SRqnnyTSeVUXuA==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="12514774"
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="12514774"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 11:22:54 -0700
X-CSE-ConnectionGUID: h9cqX7JjTGGgIoA9eSJAYA==
X-CSE-MsgGUID: RTMVgwhuTlKgiWMSoS9U2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="33360816"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 22 May 2024 11:22:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 May 2024 21:22:51 +0300
Date: Wed, 22 May 2024 21:22:51 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 01/21] drm/i915/dp_mst: Align TUs to avoid splitting
 symbols across MTPs
Message-ID: <Zk43-5RnbKCqwVe_@intel.com>
References: <20240520185822.3725844-1-imre.deak@intel.com>
 <20240520185822.3725844-2-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240520185822.3725844-2-imre.deak@intel.com>
X-Patchwork-Hint: comment
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 20, 2024 at 09:57:59PM +0300, Imre Deak wrote:
> Symbols consisting of multiple (4) TU timeslots may get split across
> MTPs when using 2 or 1 link lanes. Avoid this, as required by Bspec by
> aligning the allocated TUs to 2 when using 2 lanes and 4 when using 1
> lane.
> 
> Atm, we also have to align the PBNs used to allocate BW along the MST
> path, since DRM core keeps track of its own TU value, derived from the
> PBN and that TU value must match what the driver calculates.
> 
> On some platforms the alignment is only required on 8b/10b links, a
> follow-up patch will remove the limitation for those.
> 
> Bspec: 49266, 68922
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 27 ++++++++++++++++++---
>  1 file changed, 23 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index c772ba19c5477..c9c5d235744ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -207,6 +207,7 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  		int remote_bw_overhead;
>  		int link_bpp_x16;
>  		int remote_tu;
> +		fixed20_12 pbn;
>  
>  		drm_dbg_kms(&i915->drm, "Trying bpp %d\n", bpp);
>  
> @@ -237,11 +238,29 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  		 * crtc_state->dp_m_n.tu), provided that the driver doesn't
>  		 * enable SSC on the corresponding link.
>  		 */
> -		crtc_state->pbn = intel_dp_mst_calc_pbn(adjusted_mode->crtc_clock,
> -							link_bpp_x16,
> -							remote_bw_overhead);
> +		pbn.full = dfixed_const(intel_dp_mst_calc_pbn(adjusted_mode->crtc_clock,
> +							      link_bpp_x16,
> +							      remote_bw_overhead));
> +		remote_tu = DIV_ROUND_UP(pbn.full, mst_state->pbn_div.full);
>  
> -		remote_tu = DIV_ROUND_UP(dfixed_const(crtc_state->pbn), mst_state->pbn_div.full);
> +		/*
> +		 * Aligning the TUs ensures that symbols consisting of multiple
> +		 * (4) symbol cycles don't get split between two consecutive
> +		 * MTPs, as required by Bspec.
> +		 * TODO: remove the alignment restriction for 128b/132b links
> +		 * on some platforms, where Bspec allows this.
> +		 */
> +		remote_tu = ALIGN(remote_tu, 4 / crtc_state->lane_count);
> +
> +		/*
> +		 * Also align PBNs accordingly, since MST core will derive its
> +		 * own copy of TU from the PBN in drm_dp_atomic_find_time_slots().
> +		 * The above comment about the difference between the PBN
> +		 * allocated for the whole path and the TUs allocated for the
> +		 * first branch device's link also applies here.
> +		 */
> +		pbn.full = remote_tu * mst_state->pbn_div.full;
> +		crtc_state->pbn = dfixed_trunc(pbn);
>  
>  		drm_WARN_ON(&i915->drm, remote_tu < crtc_state->dp_m_n.tu);
>  		crtc_state->dp_m_n.tu = remote_tu;
> -- 
> 2.43.3

-- 
Ville Syrjälä
Intel
