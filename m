Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4C3C1931F
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 09:51:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86FAA10E769;
	Wed, 29 Oct 2025 08:51:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OgnNYy+E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9289C10E768;
 Wed, 29 Oct 2025 08:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761727914; x=1793263914;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=hbjuSb9OtemJ0UhMBirAuChtFuq27pZLUHZS2Tbm19Q=;
 b=OgnNYy+E8uYaCcAvazI7+vvBCqUGz7CIR8MZvBLxuzZOqqFy3NsMvtqy
 VESG5GJY7AcYfqTdh8IPKlPYweqc32iGMfdimOPI1BsXCE7wB6dF34mHQ
 96tVkHoOV1CyaoK88UlIwKwnDKMo1KxFULf/VfVbJUH7tOjMkrwb+U4Lu
 F41rhu8FF/lLght+XKnOXl73tsDZdy7BYKaSC6ASG1C7yM9+AmjQMd951
 kajIObfc312wnJvXlBYW+CKLathrN7K1EGLogZOx/rjhK3DZRktOF1IWy
 ZBEPtq6/BU53oFeJwiDUDPuPk0YqJ98mjtjS6ziItsF2XewmGgXXVVlZk g==;
X-CSE-ConnectionGUID: oyoJoX4mRXSdc2Rvr573CQ==
X-CSE-MsgGUID: nn6odVH2QFqP8lEUiG4ZYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="67679415"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="67679415"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 01:51:53 -0700
X-CSE-ConnectionGUID: +OXUpLA8TSeGre3Mx5Ctng==
X-CSE-MsgGUID: JYvO87/pT2CtGP1u+wlJDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,263,1754982000"; d="scan'208";a="184838367"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.242])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 01:51:52 -0700
Date: Wed, 29 Oct 2025 10:51:49 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 1/2] drm/i915/dsi: log send packet sequence errors
Message-ID: <aQHVpSHJjRW0PYjw@intel.com>
References: <20251029084603.2254982-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251029084603.2254982-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Wed, Oct 29, 2025 at 10:46:02AM +0200, Jani Nikula wrote:
> We might be getting send packet sequence errors and never know. Log them
> as errors. Also upgrade the not supported read commands to errors.
> 
> v2: Also error log -EOPNOTSUPP (Ville)
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 22 ++++++++++++--------
>  1 file changed, 13 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> index 23402408e172..63837406d99b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> @@ -106,6 +106,7 @@ static const u8 *mipi_exec_send_packet(struct intel_dsi *intel_dsi,
>  	u8 type, flags, seq_port;
>  	u16 len;
>  	enum port port;
> +	ssize_t ret;
>  
>  	drm_dbg_kms(display->drm, "\n");
>  
> @@ -138,36 +139,39 @@ static const u8 *mipi_exec_send_packet(struct intel_dsi *intel_dsi,
>  
>  	switch (type) {
>  	case MIPI_DSI_GENERIC_SHORT_WRITE_0_PARAM:
> -		mipi_dsi_generic_write(dsi_device, NULL, 0);
> +		ret = mipi_dsi_generic_write(dsi_device, NULL, 0);
>  		break;
>  	case MIPI_DSI_GENERIC_SHORT_WRITE_1_PARAM:
> -		mipi_dsi_generic_write(dsi_device, data, 1);
> +		ret = mipi_dsi_generic_write(dsi_device, data, 1);
>  		break;
>  	case MIPI_DSI_GENERIC_SHORT_WRITE_2_PARAM:
> -		mipi_dsi_generic_write(dsi_device, data, 2);
> +		ret = mipi_dsi_generic_write(dsi_device, data, 2);
>  		break;
>  	case MIPI_DSI_GENERIC_READ_REQUEST_0_PARAM:
>  	case MIPI_DSI_GENERIC_READ_REQUEST_1_PARAM:
>  	case MIPI_DSI_GENERIC_READ_REQUEST_2_PARAM:
> -		drm_dbg_kms(display->drm, "Generic Read not yet implemented or used\n");
> +		ret = -EOPNOTSUPP;
>  		break;
>  	case MIPI_DSI_GENERIC_LONG_WRITE:
> -		mipi_dsi_generic_write(dsi_device, data, len);
> +		ret = mipi_dsi_generic_write(dsi_device, data, len);
>  		break;
>  	case MIPI_DSI_DCS_SHORT_WRITE:
> -		mipi_dsi_dcs_write_buffer(dsi_device, data, 1);
> +		ret = mipi_dsi_dcs_write_buffer(dsi_device, data, 1);
>  		break;
>  	case MIPI_DSI_DCS_SHORT_WRITE_PARAM:
> -		mipi_dsi_dcs_write_buffer(dsi_device, data, 2);
> +		ret = mipi_dsi_dcs_write_buffer(dsi_device, data, 2);
>  		break;
>  	case MIPI_DSI_DCS_READ:
> -		drm_dbg_kms(display->drm, "DCS Read not yet implemented or used\n");
> +		ret = -EOPNOTSUPP;
>  		break;
>  	case MIPI_DSI_DCS_LONG_WRITE:
> -		mipi_dsi_dcs_write_buffer(dsi_device, data, len);
> +		ret = mipi_dsi_dcs_write_buffer(dsi_device, data, len);
>  		break;
>  	}
>  
> +	if (ret < 0)
> +		drm_err(display->drm, "DSI send packet failed with %pe\n", ERR_PTR(ret));
> +
>  	if (DISPLAY_VER(display) < 11)
>  		vlv_dsi_wait_for_fifo_empty(intel_dsi, port);
>  
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
