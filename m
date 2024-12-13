Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B78F9F0805
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 10:37:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5647E10E330;
	Fri, 13 Dec 2024 09:37:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nehunCQ8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40E3F10E330;
 Fri, 13 Dec 2024 09:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734082643; x=1765618643;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=4z6lEZz3f30UEFdq8sT86qtSWe/4bm6v7mU0azEoiWc=;
 b=nehunCQ8C1wSbY5vVZbdqa8cWX8z3B5ORcW09aA7C37VGqI5SVCvyGXU
 2N6gbfB7jZKttxjaUxrd051JeURIcU7RiPMTUhS/ryWFZHv1GzjuPUF48
 +43ntuYJv2kjbQ2QMp78F+VSEYklWrtNCKqjDW60rndXY+31d4hRKhCxH
 eg24df4evPr+OnlMFEDbp4F7U9H8RfQhjqqf7m5Aw3LZ3IW2svB0am0G3
 fwxIRd7KuZ73n5iVIYhPCYgx0Xb5gJX+wRm8tMU1srJJGxMzKb9M7Z07l
 mZ0RNPMylNJ21aRlyyphzkyHdLSN+U/9XZsOTbW8LX8l/twacqb7+DX0I g==;
X-CSE-ConnectionGUID: XuvfX7VIQdipZjbtqVGUXg==
X-CSE-MsgGUID: oNNRovmtTI+fQqHxLyOOPw==
X-IronPort-AV: E=McAfee;i="6700,10204,11284"; a="51948734"
X-IronPort-AV: E=Sophos;i="6.12,230,1728975600"; d="scan'208";a="51948734"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 01:37:23 -0800
X-CSE-ConnectionGUID: beLDbQeQQsWDqTniBHXd5g==
X-CSE-MsgGUID: MbNb7OxHRLylb0p77xPCLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="119748503"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 01:37:16 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 imre.deak@intel.com
Subject: Re: [PATCH 11/14] drm/i915/dp_mst: Refactor pipe_bpp limits with
 dsc for mst
In-Reply-To: <20241204092642.1835807-12-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
 <20241204092642.1835807-12-ankit.k.nautiyal@intel.com>
Date: Fri, 13 Dec 2024 11:37:07 +0200
Message-ID: <87cyhvudoc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 04 Dec 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Similar to DP, set the dsc limits->pipe.max/min_bpp early for MST too.
> Use the limits while computing the compressed bpp.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

I think we should take this one step further with [1], basically
eradicating mst_stream_compute_config_limits(). Indeed, I'd like to get
that merged first.

BR,
Jani.



[1] https://lore.kernel.org/r/20241211144310.701895-1-jani.nikula@intel.com



> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp.h     |  3 +++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 +++++------
>  3 files changed, 9 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index fe0957e028bc..c5740b8d2315 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2504,7 +2504,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
>  	return true;
>  }
>  
> -static void
> +void
>  intel_dp_dsc_compute_pipe_bpp_limits(struct intel_dp *intel_dp,
>  				     struct link_config_limits *limits)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 4895b52d41e8..45b37d322565 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -200,6 +200,9 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
>  					const struct intel_crtc_state *crtc_state,
>  					bool dsc,
>  					struct link_config_limits *limits);
> +void
> +intel_dp_dsc_compute_pipe_bpp_limits(struct intel_dp *intel_dp,
> +				     struct link_config_limits *limits);
>  
>  void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_connector *connector);
>  bool intel_dp_has_gamut_metadata_dip(struct intel_encoder *encoder);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 795594191717..667006918bfd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -365,14 +365,10 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
>  	int i, num_bpc;
>  	u8 dsc_bpc[3] = {};
>  	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
> -	int dsc_max_bpc, dsc_min_bpc;
>  	int min_compressed_bpp, max_compressed_bpp;
>  
> -	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
> -	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc();
> -
> -	max_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
> -	min_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
> +	max_bpp = limits->pipe.max_bpp;
> +	min_bpp = limits->pipe.min_bpp;
>  
>  	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
>  						       dsc_bpc);
> @@ -574,6 +570,9 @@ mst_stream_compute_config_limits(struct intel_dp *intel_dp,
>  
>  	intel_dp_test_compute_config(intel_dp, crtc_state, limits);
>  
> +	if (dsc)
> +		intel_dp_dsc_compute_pipe_bpp_limits(intel_dp, limits);
> +
>  	if (!intel_dp_compute_config_link_bpp_limits(intel_dp,
>  						     crtc_state,
>  						     dsc,

-- 
Jani Nikula, Intel
