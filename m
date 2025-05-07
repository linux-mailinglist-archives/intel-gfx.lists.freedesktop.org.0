Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8970AAE490
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 17:24:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C05F410E837;
	Wed,  7 May 2025 15:24:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GNv6W5Xh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B22F10E834;
 Wed,  7 May 2025 15:24:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746631468; x=1778167468;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=eSl3q65Uwaz3GC8gX7iomAGKBuEZ0Xqa9VUFov8mcPI=;
 b=GNv6W5Xhd//AF98/tPbuNBXSGB5+Leaf5EDVqrhO1WYSmGk5wDYpcPip
 pPPZ+VUhKmmPOymyRuW4h0PGDt/xp9UHmZt2BnwC3P1OYHAePWJC4h+zt
 TeQwdplPtGI3+tMGSRh3/fXlPxM8+yfFGWUyE2QxHYilNakO+GBWfZPAu
 ETIvuquuTo6ILWv5StNA7+Ec2sS663gFv/z3M/+86fDHRDtxJGbxOAYCw
 mGvqre1OBzrZKTDGZ92PrTSDJtMF+MOsV6liMD/59pv5Dz2//aMa50WOQ
 OFnHPILqRl8EK5CiXMs0aCPdz3wtiDSvlDd+qj1EpVyFTz2EkityjGLfQ w==;
X-CSE-ConnectionGUID: NkTSVUGDRiCbzquAL/uNzg==
X-CSE-MsgGUID: cRvYhNdmQ16pq2/iRrbk1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="58998800"
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="58998800"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 08:24:27 -0700
X-CSE-ConnectionGUID: pWpsq9tETlikladTVXyJhg==
X-CSE-MsgGUID: 1b0BPo9eRzK1d9vKc2Tlnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="136011684"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.218])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 08:24:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/dp: Fix determining SST/MST mode during MTP TU
 state computation
In-Reply-To: <20250507151953.251846-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250507151953.251846-1-imre.deak@intel.com>
Date: Wed, 07 May 2025 18:24:24 +0300
Message-ID: <87cyckv3yv.fsf@intel.com>
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

On Wed, 07 May 2025, Imre Deak <imre.deak@intel.com> wrote:
> Determining the SST/MST mode during state computation must be done based
> on the output type stored in the CRTC state, which in turn is set once
> based on the modeset connector's SST vs. MST type and will not change as
> long as the connector is using the CRTC. OTOH the MST mode indicated by
> the given connector's intel_dp::is_mst flag can change independently of
> the above output type, based on what sink is at any moment plugged to
> the connector.
>
> Fix the state computation accordingly.
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Fixes: f6971d7427c2 ("drm/i915/mst: adapt intel_dp_mtp_tu_compute_config() for 128b/132b SST")
> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/4607
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Thanks for fixing this.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index aeda59f5fa7a4..30f5636d18b7d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -253,7 +253,7 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>  		to_intel_connector(conn_state->connector);
>  	const struct drm_display_mode *adjusted_mode =
>  		&crtc_state->hw.adjusted_mode;
> -	bool is_mst = intel_dp->is_mst;
> +	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
>  	int bpp_x16, slots = -EINVAL;
>  	int dsc_slice_count = 0;
>  	int max_dpt_bpp_x16;

-- 
Jani Nikula, Intel
