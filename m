Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6B5A22FB9
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 15:24:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70C5D10E992;
	Thu, 30 Jan 2025 14:24:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J6iX/Cki";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1985010E992;
 Thu, 30 Jan 2025 14:24:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738247088; x=1769783088;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=i2UPuQTVfcHmRwbQgLMZQbdI/4TEKSTNcfgAPI1Np/8=;
 b=J6iX/Ckiz+e77T/81nyBCSVPRfZOZMULiTZH+tfuQopXifqEmQNlK5yq
 7lrmXH1BxsJsEfNA93tq9lJWyZ3CBXbtEQoA/EUxHPi0SuAHw3XGIjx8Q
 rdZoS0hG07bBW15u7bwP09G2uCTcseUxOKoyokQIhBh6IfP785ztb1XqG
 p8d36dIQUEmvfpIbh+FCdqmzHkheGb867/vBiG5Zg4nDAQkWMShm1LAyh
 L5IKsGAfNTf5UvKkBfF19fqTxD5ZnIL/pAjdnnVGtIWsGdYCRQ6yF2GEU
 h8nDGqHIxQ3ZyYbvl/MCwmepchJGQdbaRX02sa3FnBwVbKiZMcAROmh18 A==;
X-CSE-ConnectionGUID: A8/FjT6gQdi/VqnJFXR7MQ==
X-CSE-MsgGUID: 4dTrqCFNSH+UFmeVk2eiRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="38954237"
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="38954237"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 06:24:30 -0800
X-CSE-ConnectionGUID: p0lG1YoQQL+4dAuePe8SBA==
X-CSE-MsgGUID: cwMzTeSpR0yW9qZVLKOeXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="109785938"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 06:24:29 -0800
Date: Thu, 30 Jan 2025 16:25:25 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 5/6] drm/i915/mst: remove unnecessary
 mst_stream_find_vcpi_slots_for_bpp()
Message-ID: <Z5uL1UKZIRe5fVWB@ideak-desk.fi.intel.com>
References: <cover.1738161945.git.jani.nikula@intel.com>
 <abdd205087dc2ab0bdae09d7374d5f262f605aba.1738161945.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <abdd205087dc2ab0bdae09d7374d5f262f605aba.1738161945.git.jani.nikula@intel.com>
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

On Wed, Jan 29, 2025 at 04:46:37PM +0200, Jani Nikula wrote:
> mst_stream_find_vcpi_slots_for_bpp() has become a thin wrapper that
> merely juggles parameters around. Remove it.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 23 ++++++---------------
>  1 file changed, 6 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 8786c8751c82..a4ed4f379d1e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -366,16 +366,6 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>  	return 0;
>  }
>  
> -static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
> -					      struct intel_crtc_state *crtc_state,
> -					      int max_bpp, int min_bpp,
> -					      struct drm_connector_state *conn_state,
> -					      int step, bool dsc)
> -{
> -	return intel_dp_mtp_tu_compute_config(intel_dp, crtc_state, conn_state,
> -					      min_bpp, max_bpp, step, dsc);
> -}
> -
>  static int mst_stream_compute_link_config(struct intel_dp *intel_dp,
>  					  struct intel_crtc_state *crtc_state,
>  					  struct drm_connector_state *conn_state,
> @@ -388,10 +378,10 @@ static int mst_stream_compute_link_config(struct intel_dp *intel_dp,
>  	 * FIXME: allocate the BW according to link_bpp, which in the case of
>  	 * YUV420 is only half of the pipe bpp value.
>  	 */
> -	return mst_stream_find_vcpi_slots_for_bpp(intel_dp, crtc_state,
> -						  fxp_q4_to_int(limits->link.max_bpp_x16),
> -						  fxp_q4_to_int(limits->link.min_bpp_x16),
> -						  conn_state, 2 * 3, false);
> +	return intel_dp_mtp_tu_compute_config(intel_dp, crtc_state, conn_state,
> +					      fxp_q4_to_int(limits->link.min_bpp_x16),
> +					      fxp_q4_to_int(limits->link.max_bpp_x16),
> +					      2 * 3, false);
>  }
>  
>  static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
> @@ -451,9 +441,8 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
>  	crtc_state->lane_count = limits->max_lane_count;
>  	crtc_state->port_clock = limits->max_rate;
>  
> -	return mst_stream_find_vcpi_slots_for_bpp(intel_dp, crtc_state, max_compressed_bpp,
> -						  min_compressed_bpp,
> -						  conn_state, 1, true);
> +	return intel_dp_mtp_tu_compute_config(intel_dp, crtc_state, conn_state,
> +					      min_compressed_bpp, max_compressed_bpp, 1, true);
>  }
>  
>  static int mst_stream_update_slots(struct intel_dp *intel_dp,
> -- 
> 2.39.5
> 
