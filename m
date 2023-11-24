Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF987F74AB
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Nov 2023 14:16:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D40AB10E205;
	Fri, 24 Nov 2023 13:16:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D334C10E205
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Nov 2023 13:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700831808; x=1732367808;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=qJC3gOwJQP6g6MJRkCXMECVSHo7A4Qx6I0LluwaLX5E=;
 b=PIvAEb3P81SSEwd7lIjOrIiQe0uGHrsa5WdmbadwurC5xqoXAgdQru0J
 YGBM7UwpLetgYkJXJp3uCqE68dMwkG+q2RC+4iUanhg8P2nfyd2a7aG+A
 IuiRPT8CmsiQ59I6EzmuC4Cn6wx1jx2AmYXzpIe8dsCMgS8wdJygMyWBe
 KBrkzSgi7vaAjk5oxGKcI0zEXcAml0cfcg09oMzh5LHMyB/JBlsAhrU2m
 JXNFLICYcpBfJFU+qmDkxxPGz7miEfVjI69MYjDZDHip7OzYhPB3VQc1F
 6vGcC5WM5NF2vT1uWuB9ZLLu8NW7UACv8z16pghli4EdGb6BGLWFUw/uT w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="458908980"
X-IronPort-AV: E=Sophos;i="6.04,224,1695711600"; d="scan'208";a="458908980"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2023 05:16:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,224,1695711600"; 
   d="scan'208";a="8972549"
Received: from dashah-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.41.230])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2023 05:16:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231123042733.1027046-4-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231123042733.1027046-1-ankit.k.nautiyal@intel.com>
 <20231123042733.1027046-4-ankit.k.nautiyal@intel.com>
Date: Fri, 24 Nov 2023 15:16:42 +0200
Message-ID: <87bkbj9tqd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/dp_mst: Use helpers to get dsc
 min/max input bpc
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

On Thu, 23 Nov 2023, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Use helpers for source min/max input bpc with DSC.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     |  2 --
>  drivers/gpu/drm/i915/display/intel_dp.h     |  2 ++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 ++++-------
>  3 files changed, 6 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 37320cc4346f..0f5040c114b3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1622,7 +1622,6 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
>  	return -EINVAL;
>  }
>  
> -static
>  u8 intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)

It would probably be for the best to make these ints instead of u8.

BR,
Jani.

>  {
>  	if (!HAS_DSC(i915))
> @@ -2022,7 +2021,6 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
>  					   dsc_max_bpp, dsc_min_bpp, pipe_bpp, timeslots);
>  }
>  
> -static
>  u8 intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915)
>  {
>  	/* Min DSC Input BPC for ICL+ is 8 */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 05db46b111f2..931c5eb71cd0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -184,5 +184,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
>  					struct link_config_limits *limits);
>  
>  void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_connector *connector);
> +u8 intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915);
> +u8 intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915);
>  
>  #endif /* __INTEL_DP_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index d3d53e1b4489..337db31777df 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -293,17 +293,14 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
>  	int i, num_bpc;
>  	u8 dsc_bpc[3] = {};
>  	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
> -	u8 dsc_max_bpc;
> +	u8 dsc_max_bpc, dsc_min_bpc;
>  	int min_compressed_bpp, max_compressed_bpp;
>  
> -	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
> -	if (DISPLAY_VER(i915) >= 12)
> -		dsc_max_bpc = min_t(u8, 12, conn_state->max_requested_bpc);
> -	else
> -		dsc_max_bpc = min_t(u8, 10, conn_state->max_requested_bpc);
> +	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(i915);
> +	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
>  
>  	max_bpp = min_t(u8, dsc_max_bpc * 3, limits->pipe.max_bpp);
> -	min_bpp = limits->pipe.min_bpp;
> +	min_bpp = max_t(u8, dsc_min_bpc * 3, limits->pipe.min_bpp);
>  
>  	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
>  						       dsc_bpc);

-- 
Jani Nikula, Intel
