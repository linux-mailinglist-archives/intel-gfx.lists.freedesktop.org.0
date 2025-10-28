Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 807CCC15DB9
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Oct 2025 17:38:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C550110E605;
	Tue, 28 Oct 2025 16:38:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mIO/Jbmk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22AC710E605;
 Tue, 28 Oct 2025 16:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761669511; x=1793205511;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=NBKNVxKzSchoFsDQZ+CIAYYpBzslSrxebBnbGoE2Ebs=;
 b=mIO/JbmkM7zLnCXwRPRMn2fiy2Lm/csMDR5xFEZagdKNkChVkJGkdE0d
 dgyKKqXpHWOgS09SfHRwVz2GfUw4nBghq5BRDdMRUEez5FJ3RlMojpK7E
 1tLsqHLWER9yXj7YVlez895ffCl9nKUNg++njfu1uqBgwMAURcHP5zjV6
 z1DCK9dXmHprgmUEKYPakT1xmD/ilbfCyA/zbqDY7np3JCja2F9YFG4PT
 JBK3Vx9D2Efkjxvfsq1gWuA5F12q1CHEcVboCO56ogZ1zqfYY0FDhefe2
 Ljs/QeLQT1utuhv3jPbM26UJTjLaMNqS2EnGIgxxrfgrAGNIq3J8p3OAC w==;
X-CSE-ConnectionGUID: kPHM8l1QRtqKzCyBdwvvDQ==
X-CSE-MsgGUID: ak860GngTLWUXiR9xingKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="67418556"
X-IronPort-AV: E=Sophos;i="6.19,261,1754982000"; d="scan'208";a="67418556"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 09:38:30 -0700
X-CSE-ConnectionGUID: k4E1ZHFsRnmCv3mGZ+1Esw==
X-CSE-MsgGUID: V/hE/SbzSviboF6X9SySvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,261,1754982000"; d="scan'208";a="216277329"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.169])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 09:38:28 -0700
Date: Tue, 28 Oct 2025 18:38:26 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/i915/dsi: log send packet sequence errors
Message-ID: <aQDxgg586x37nUUO@intel.com>
References: <20251028155712.1824565-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251028155712.1824565-1-jani.nikula@intel.com>
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

On Tue, Oct 28, 2025 at 05:57:11PM +0200, Jani Nikula wrote:
> We might be getting send packet sequence errors and never know. Log
> them.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 24 ++++++++++++--------
>  1 file changed, 15 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> index 23402408e172..748e5462bd95 100644
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
> @@ -138,36 +139,41 @@ static const u8 *mipi_exec_send_packet(struct intel_dsi *intel_dsi,
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
> +	if (ret == -EOPNOTSUPP)

Do we know that the write functions never return this value?

> +		drm_dbg_kms(display->drm, "DSI read not supported\n");

Is there a reason you didn't make this a drm_err() as well?

We also have other debug messages related to unimplemented/unknown
sequences/etc that I think should all be drm_err(). Otherwise we'll
never find out if they're needed or not.

> +	else if (ret < 0)
> +		drm_err(display->drm, "DSI write failed with %pe\n", ERR_PTR(ret));
> +
>  	if (DISPLAY_VER(display) < 11)
>  		vlv_dsi_wait_for_fifo_empty(intel_dsi, port);
>  
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
