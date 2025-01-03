Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB312A00A72
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 15:22:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB92C10E8C9;
	Fri,  3 Jan 2025 14:22:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MvlncPii";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34B8010E8C9;
 Fri,  3 Jan 2025 14:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735914154; x=1767450154;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=6LCOmy0aqVV/PQtjeUnUqUXksDLPm5rhX6XDBAYI1kE=;
 b=MvlncPiiLrsFcJUclVQTxi7WNHOr8FF0/s0ZEPs0bhykQGmDSvNZko4p
 aEF2Frj+r/g3Kdg6jusjhaFl0KMaDBWHQr0J8sdMumyRA9Anqf+0Be3yL
 62Y9no5ainBZvNgOdFl+DLrP94PzKbPRP7yJsM3l+UWCE5yZXXG+NAdaT
 mrim4j6YLzSdXsx8rWS6mo5rlxntQgh5q76M/zIqNN67s5gkWpuNu9QOf
 2hMmJB0wCFvAEBZD42Nh1q4Y5EfFdbqH1h4NTAUnoFKVsKEQBlhEmaMf8
 eV7PEGrB+xpbOUBTFeNYsh/vsbbSlPnDi+pMZh7OAdZi9gH1v97RVbfF/ A==;
X-CSE-ConnectionGUID: fkUX2hmxT0eOX3nQkH0nyQ==
X-CSE-MsgGUID: uf8hp472TgO6YohTuKDSRw==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="46742207"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="46742207"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 06:22:34 -0800
X-CSE-ConnectionGUID: P9pnBLJXTUiB1oSZMHCbvg==
X-CSE-MsgGUID: sc4b2JZQT8SqRSkCi9CoDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="102316324"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 06:22:32 -0800
Date: Fri, 3 Jan 2025 16:23:20 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v3 10/16] drm/i915/ddi: write payload for 128b/132b SST
Message-ID: <Z3fy2I9EbuS-zwyQ@ideak-desk.fi.intel.com>
References: <cover.1735912293.git.jani.nikula@intel.com>
 <f27aefb555e1edcf94aea8f78021afb04faf8f33.1735912293.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f27aefb555e1edcf94aea8f78021afb04faf8f33.1735912293.git.jani.nikula@intel.com>
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

On Fri, Jan 03, 2025 at 03:52:33PM +0200, Jani Nikula wrote:
> Write the payload allocation table for 128b/132b SST. Use VCPID 1 and
> start from slot 0, with dp_m_n.tu slots.
> 
> This is preparation for enabling 128b/132b SST. This path is not
> reachable yet. Indeed, we don't yet compute TU for 128b/132b SST.
> 
> v2: Handle drm_dp_dpcd_write_payload() failures (Imre)
> 
> Reviewed-by: Imre Deak <imre.deak@intel.com> # v1

Reviewed-by: Imre Deak <imre.deak@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 80a76c1c2727..4bd35509ff7b 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2575,6 +2575,7 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  {
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
> +	int ret;
>  
>  	intel_dp_set_link_params(intel_dp,
>  				 crtc_state->port_clock,
> @@ -2669,6 +2670,14 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	/* 6.o Configure and enable FEC if needed */
>  	intel_ddi_enable_fec(encoder, crtc_state);
>  
> +	/* 7.a 128b/132b SST. */
> +	if (!is_mst && intel_dp_is_uhbr(crtc_state)) {
> +		/* VCPID 1, start slot 0 for 128b/132b, tu slots */
> +		ret = drm_dp_dpcd_write_payload(&intel_dp->aux, 1, 0, crtc_state->dp_m_n.tu);
> +		if (ret < 0)
> +			intel_dp_queue_modeset_retry_for_link(state, encoder, crtc_state);
> +	}
> +
>  	if (!is_mst)
>  		intel_dsc_dp_pps_write(encoder, crtc_state);
>  }
> @@ -2682,6 +2691,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
> +	int ret;
>  
>  	intel_dp_set_link_params(intel_dp,
>  				 crtc_state->port_clock,
> @@ -2808,6 +2818,13 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	/* 7.l Configure and enable FEC if needed */
>  	intel_ddi_enable_fec(encoder, crtc_state);
>  
> +	if (!is_mst && intel_dp_is_uhbr(crtc_state)) {
> +		/* VCPID 1, start slot 0 for 128b/132b, tu slots */
> +		ret = drm_dp_dpcd_write_payload(&intel_dp->aux, 1, 0, crtc_state->dp_m_n.tu);
> +		if (ret < 0)
> +			intel_dp_queue_modeset_retry_for_link(state, encoder, crtc_state);
> +	}
> +
>  	if (!is_mst)
>  		intel_dsc_dp_pps_write(encoder, crtc_state);
>  }
> -- 
> 2.39.5
> 
