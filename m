Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C70BA2767D
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 16:52:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D42A10E6C3;
	Tue,  4 Feb 2025 15:51:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aV35Jp1/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6420610E6A6;
 Tue,  4 Feb 2025 15:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738684241; x=1770220241;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=1q+cGRDWZMp9aZYLXmoXDJIq8iYlBJc/JyAy1aeMcQ8=;
 b=aV35Jp1/kZkFaCrNqpc7nZYLV2SGzzRuCUHJV/7bu+cg2OMYxNZpnesX
 jURKuQt6XvY9Y/tb4Gc3WNKsu7KEqBcZ8VvJQtlFTkP3QIxwgl4zZ6QqO
 DvUbSzPIT+dRG+NWZ6OfG0lio4LnldhB+1PuQHCHSKFa+EK5AIgd51VvQ
 +4BuMTT7Yhi/PDawP+3/xk/oEOZ78QIk7+zg8+pPBD5KQW/tLfjyZ8Loo
 bW7w60T8GIV7a0N8ajjHKveAK3xHK8BCYVFuwtZPmU7fsRm0nMq4tGZKI
 Rwlsa9PlIBsQmdA83guJSzAQmweHpRFDjkiuC9WJyK4CjEP66DlDZ2hz1 w==;
X-CSE-ConnectionGUID: qYtvf7p5SxWnqk8fzE6H9g==
X-CSE-MsgGUID: Rz1kujX2Ska1i7u7QeoHbg==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="42055711"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="42055711"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 07:50:41 -0800
X-CSE-ConnectionGUID: BgoPVUTfTFigyR3hhd6PQA==
X-CSE-MsgGUID: herT1IQ5SBSEEiTL0w6s4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="110618451"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 07:50:39 -0800
Date: Tue, 4 Feb 2025 17:51:36 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/mst: fix INT_MAX to .4 fixed point conversion
 mistake
Message-ID: <Z6I3iNAjlZHnxxyf@ideak-desk.fi.intel.com>
References: <20250204153717.2996923-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250204153717.2996923-1-jani.nikula@intel.com>
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

On Tue, Feb 04, 2025 at 05:37:17PM +0200, Jani Nikula wrote:
> intel_dp_mtp_tu_compute_config() conversion to use .4 fixed point didn't
> take into account that intel_dp_mst_max_dpt_bpp() may return INT_MAX
> when the transport limitation is not relevant. Converting INT_MAX to .4
> fixed point results in -1.0, which then gets used as if it were a real
> max BPP value:
> 
> i915 0000:00:02.0: [drm:intel_dp_mtp_tu_compute_config [i915]] Limiting bpp to max DPT bpp (24.0000 -> -1.0000)
> i915 0000:00:02.0: [drm:intel_dp_mtp_tu_compute_config [i915]] Looking for slots in range min bpp 18.0000 max bpp -1.0000
> 
> Just return 0 for "no max DPT BPP", and handle it explicitly.
> 
> Fixes: 67782bf6e8a6 ("drm/i915/mst: Convert intel_dp_mtp_tu_compute_config() to .4 format")
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index b729e27cdde2..95abc6ea85eb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -111,7 +111,7 @@ static int intel_dp_mst_max_dpt_bpp(const struct intel_crtc_state *crtc_state,
>  		&crtc_state->hw.adjusted_mode;
>  
>  	if (!intel_dp_is_uhbr(crtc_state) || DISPLAY_VER(display) >= 20 || !dsc)
> -		return INT_MAX;
> +		return 0;
>  
>  	/*
>  	 * DSC->DPT interface width:
> @@ -248,7 +248,7 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>  	}
>  
>  	max_dpt_bpp_x16 = fxp_q4_from_int(intel_dp_mst_max_dpt_bpp(crtc_state, dsc));
> -	if (max_bpp_x16 > max_dpt_bpp_x16) {
> +	if (max_dpt_bpp_x16 && max_bpp_x16 > max_dpt_bpp_x16) {
>  		drm_dbg_kms(display->drm, "Limiting bpp to max DPT bpp (" FXP_Q4_FMT " -> " FXP_Q4_FMT ")\n",
>  			    FXP_Q4_ARGS(max_bpp_x16), FXP_Q4_ARGS(max_dpt_bpp_x16));
>  		max_bpp_x16 = max_dpt_bpp_x16;
> -- 
> 2.39.5
> 
