Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF97F7BEB6C
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 22:17:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4181F10E2DF;
	Mon,  9 Oct 2023 20:17:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DE7210E2DF
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 20:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696882642; x=1728418642;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=2dBZc094kGGZNYqozHc6RbjFZZvpA6i4KeeuPwZ5mOc=;
 b=DdFbtivNKjvuVCnS9cL2bcsjChv9+nuXUvHtwKYQoppsHZAyHOFQVswV
 r3Fjv2vVkhQtFUSGwcXP6yir4uXQEajhSQ1QMdTxAH8Jjyogx8Ypjg0c8
 EFf+TA4hva6nB7dNypGHgXWa16VgwVwZWzTAyLixGC5Tl7jsSiNJUrFgp
 lhZrF3Vb5+ElCRr+OzmH6Ryy1HPUwykQfndF6lmtSN2C/s4Ih8mwlefFK
 Y/2KF6HzZ0FcMZh0WKEmYO5xAEznqg7fD/6xvhkRbV8Z4NPQCBpjqTf0D
 2p7x1N1FiEcAiDdkWIC1jfeGiaXZ6rNKhvbXMelKs9kjIKGNBpjsSHkKM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="383116440"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="383116440"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 13:17:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="823472204"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="823472204"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 13:17:21 -0700
Date: Mon, 9 Oct 2023 23:17:17 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZSRfzUmgHcpN8cAb@intel.com>
References: <20231006133727.1822579-1-imre.deak@intel.com>
 <20231006133727.1822579-8-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231006133727.1822579-8-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH 07/19] drm/i915/dp: Use connector DSC DPCD
 in intel_dp_supports_fec()
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 06, 2023 at 04:37:15PM +0300, Imre Deak wrote:
> Use the connector's DSC DPCD capabilities in intel_dp_supports_fec().
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 00f5fecdbf386..8450856e5618d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1370,10 +1370,11 @@ static bool intel_dp_source_supports_fec(struct intel_dp *intel_dp,
>  }
>  
>  static bool intel_dp_supports_fec(struct intel_dp *intel_dp,
> +				  const struct intel_connector *connector,
>  				  const struct intel_crtc_state *pipe_config)
>  {
>  	return intel_dp_source_supports_fec(intel_dp, pipe_config) &&
> -		drm_dp_sink_supports_fec(intel_dp->fec_capable);
> +		drm_dp_sink_supports_fec(connector->dp.fec_capability);
>  }
>  
>  static bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
> @@ -2110,12 +2111,14 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  {
>  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>  	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
> +	const struct intel_connector *connector =
> +		to_intel_connector(conn_state->connector);
>  	const struct drm_display_mode *adjusted_mode =
>  		&pipe_config->hw.adjusted_mode;
>  	int ret;
>  
>  	pipe_config->fec_enable = !intel_dp_is_edp(intel_dp) &&
> -		intel_dp_supports_fec(intel_dp, pipe_config);
> +		intel_dp_supports_fec(intel_dp, connector, pipe_config);
>  
>  	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
>  		return -EINVAL;
> -- 
> 2.39.2
> 
