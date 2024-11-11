Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C98C49C420C
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 16:40:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9408110E2ED;
	Mon, 11 Nov 2024 15:40:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z3wlX8nY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 358A610E166;
 Mon, 11 Nov 2024 15:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731339646; x=1762875646;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=htL5ZQbtw1U5owOMJMGNpZ7d1XDmGGzQLBTDQ8/M5vk=;
 b=Z3wlX8nYHtD28ZvJ00RnzpJrxEYiLnfETfx8VK+IBmn/IjY5TE9Z5z8C
 viueU7a7lqnMxcdd0unZqbI/ep1/xfOkDfEcKlBi5Iyz35p8AHr10aFMc
 QjZUbMWJ/vy2QeZG6fhMs7wyBw3bcgV6MAsgroRQUxrlBWjAXAD+W81BW
 KrsMRXDRHgG2r1lFRLkv4QeOdg0e0a3IIKXf4wpl1gf5kkxSANQcRYpel
 2HCl/76OX5409N6pf+KdB5UTKSXF3IiJYlLPf2im/+yyY3MnMBjxCDYcG
 REQCb0cBiDmnl8g1dd/iEOSAVqU1yDjqKNtIzwBAgiVGSX+7oNImbKDHQ Q==;
X-CSE-ConnectionGUID: gnAjMuaqSce3Y91aKL+J3Q==
X-CSE-MsgGUID: //q5E/PtTHeqH4xNm00FAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="31252750"
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="31252750"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 07:40:46 -0800
X-CSE-ConnectionGUID: jVVENhKIQDygM23BfD7i/g==
X-CSE-MsgGUID: mkEStklCQV6Fdg7R9N4vIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="86554769"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 07:40:45 -0800
Date: Mon, 11 Nov 2024 17:41:19 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ville.syrjala@linux.intel.com
Subject: Re: [PATCH 2/8] drm/i915/mst: rename intel_encoder to encoder
Message-ID: <ZzIln7qNNSzklUVv@ideak-desk.fi.intel.com>
References: <cover.1731011435.git.jani.nikula@intel.com>
 <7d1ce8b92af607603cb32e00b862014eebc05d20.1731011435.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7d1ce8b92af607603cb32e00b862014eebc05d20.1731011435.git.jani.nikula@intel.com>
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

On Thu, Nov 07, 2024 at 10:32:15PM +0200, Jani Nikula wrote:
> Switch to the modern style in fake mst encoder creation.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 46 ++++++++++-----------
>  1 file changed, 23 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 9670a48586ea..7b03ec571464 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1784,7 +1784,7 @@ static struct intel_dp_mst_encoder *
>  intel_dp_create_fake_mst_encoder(struct intel_digital_port *dig_port, enum pipe pipe)
>  {
>  	struct intel_dp_mst_encoder *intel_mst;
> -	struct intel_encoder *intel_encoder;
> +	struct intel_encoder *encoder;
>  	struct drm_device *dev = dig_port->base.base.dev;
>  
>  	intel_mst = kzalloc(sizeof(*intel_mst), GFP_KERNEL);
> @@ -1793,16 +1793,16 @@ intel_dp_create_fake_mst_encoder(struct intel_digital_port *dig_port, enum pipe
>  		return NULL;
>  
>  	intel_mst->pipe = pipe;
> -	intel_encoder = &intel_mst->base;
> +	encoder = &intel_mst->base;
>  	intel_mst->primary = dig_port;
>  
> -	drm_encoder_init(dev, &intel_encoder->base, &intel_dp_mst_enc_funcs,
> +	drm_encoder_init(dev, &encoder->base, &intel_dp_mst_enc_funcs,
>  			 DRM_MODE_ENCODER_DPMST, "DP-MST %c", pipe_name(pipe));
>  
> -	intel_encoder->type = INTEL_OUTPUT_DP_MST;
> -	intel_encoder->power_domain = dig_port->base.power_domain;
> -	intel_encoder->port = dig_port->base.port;
> -	intel_encoder->cloneable = 0;
> +	encoder->type = INTEL_OUTPUT_DP_MST;
> +	encoder->power_domain = dig_port->base.power_domain;
> +	encoder->port = dig_port->base.port;
> +	encoder->cloneable = 0;
>  	/*
>  	 * This is wrong, but broken userspace uses the intersection
>  	 * of possible_crtcs of all the encoders of a given connector
> @@ -1811,22 +1811,22 @@ intel_dp_create_fake_mst_encoder(struct intel_digital_port *dig_port, enum pipe
>  	 * To keep such userspace functioning we must misconfigure
>  	 * this to make sure the intersection is not empty :(
>  	 */
> -	intel_encoder->pipe_mask = ~0;
> -
> -	intel_encoder->compute_config = intel_dp_mst_compute_config;
> -	intel_encoder->compute_config_late = intel_dp_mst_compute_config_late;
> -	intel_encoder->disable = intel_mst_disable_dp;
> -	intel_encoder->post_disable = intel_mst_post_disable_dp;
> -	intel_encoder->post_pll_disable = intel_mst_post_pll_disable_dp;
> -	intel_encoder->update_pipe = intel_ddi_update_pipe;
> -	intel_encoder->pre_pll_enable = intel_mst_pre_pll_enable_dp;
> -	intel_encoder->pre_enable = intel_mst_pre_enable_dp;
> -	intel_encoder->enable = intel_mst_enable_dp;
> -	intel_encoder->audio_enable = intel_audio_codec_enable;
> -	intel_encoder->audio_disable = intel_audio_codec_disable;
> -	intel_encoder->get_hw_state = intel_dp_mst_enc_get_hw_state;
> -	intel_encoder->get_config = intel_dp_mst_enc_get_config;
> -	intel_encoder->initial_fastset_check = intel_dp_mst_initial_fastset_check;
> +	encoder->pipe_mask = ~0;
> +
> +	encoder->compute_config = intel_dp_mst_compute_config;
> +	encoder->compute_config_late = intel_dp_mst_compute_config_late;
> +	encoder->disable = intel_mst_disable_dp;
> +	encoder->post_disable = intel_mst_post_disable_dp;
> +	encoder->post_pll_disable = intel_mst_post_pll_disable_dp;
> +	encoder->update_pipe = intel_ddi_update_pipe;
> +	encoder->pre_pll_enable = intel_mst_pre_pll_enable_dp;
> +	encoder->pre_enable = intel_mst_pre_enable_dp;
> +	encoder->enable = intel_mst_enable_dp;
> +	encoder->audio_enable = intel_audio_codec_enable;
> +	encoder->audio_disable = intel_audio_codec_disable;
> +	encoder->get_hw_state = intel_dp_mst_enc_get_hw_state;
> +	encoder->get_config = intel_dp_mst_enc_get_config;
> +	encoder->initial_fastset_check = intel_dp_mst_initial_fastset_check;
>  
>  	return intel_mst;
>  
> -- 
> 2.39.5
> 
