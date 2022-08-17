Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5607596B1B
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 10:13:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30273112490;
	Wed, 17 Aug 2022 08:13:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A1311122E1
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 08:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660723998; x=1692259998;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=1NaFZJcBPAr4eN464fxypplM0r7Voafi3SVV9MmvYKw=;
 b=MW/0SdXQCpBxfYkXwbzbwOIljzExuFUsWuB3sicf6VdIl3aerpIr5siY
 waEdelzkcIDBHKUfUqkBZeObU0w3MKx4Io3x19UkLTvw7szfHzRC5IQ9J
 F9KuFFggP0PyALcKG8mb3GIudWVhByFygkTebpKnPSyt3VlrtMKCHnslU
 cB3d0Oe6f2yRVhbGrIHxOdOT89geacP7o9dGRrrkkdz1u5jiN3RZSd8ir
 wXQp575WvxmEA6aoYVI7Wzwc/6q3oGW2VOT5j9UHamTNJ0RwbOviWacUq
 JCYUYclt7qaKsKG3BcgUFl+BoC7TwbzzijB5W/4cib7c63iGi0Ra8zwX3 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="279398874"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="279398874"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 01:13:17 -0700
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="696689375"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 01:13:16 -0700
Date: Wed, 17 Aug 2022 11:13:59 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YvyjR3x5kNAEfBOk@intel.com>
References: <cover.1660664162.git.jani.nikula@intel.com>
 <8c462718bcc7b36a83e09d0a5eef058b6bc8b1a2.1660664162.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8c462718bcc7b36a83e09d0a5eef058b6bc8b1a2.1660664162.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [RESEND 2/3] drm/i915/dsi: fix dual-link DSI
 backlight and CABC ports for display 11+
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 16, 2022 at 06:37:21PM +0300, Jani Nikula wrote:
> The VBT dual-link DSI backlight and CABC still use ports A and C, both
> in Bspec and code, while display 11+ DSI only supports ports A and
> B. Assume port C actually means port B for display 11+ when parsing VBT.
> 
> Bspec: 20154
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6476
> Cc: stable@vger.kernel.org
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 51dde5bfd956..198a2f4920cc 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1596,6 +1596,8 @@ static void parse_dsi_backlight_ports(struct drm_i915_private *i915,
>  				      struct intel_panel *panel,
>  				      enum port port)
>  {
> +	enum port port_bc = DISPLAY_VER(i915) >= 11 ? PORT_B : PORT_C;
> +
>  	if (!panel->vbt.dsi.config->dual_link || i915->vbt.version < 197) {
>  		panel->vbt.dsi.bl_ports = BIT(port);
>  		if (panel->vbt.dsi.config->cabc_supported)
> @@ -1609,11 +1611,11 @@ static void parse_dsi_backlight_ports(struct drm_i915_private *i915,
>  		panel->vbt.dsi.bl_ports = BIT(PORT_A);
>  		break;
>  	case DL_DCS_PORT_C:
> -		panel->vbt.dsi.bl_ports = BIT(PORT_C);
> +		panel->vbt.dsi.bl_ports = BIT(port_bc);
>  		break;
>  	default:
>  	case DL_DCS_PORT_A_AND_C:
> -		panel->vbt.dsi.bl_ports = BIT(PORT_A) | BIT(PORT_C);
> +		panel->vbt.dsi.bl_ports = BIT(PORT_A) | BIT(port_bc);
>  		break;
>  	}
>  
> @@ -1625,12 +1627,12 @@ static void parse_dsi_backlight_ports(struct drm_i915_private *i915,
>  		panel->vbt.dsi.cabc_ports = BIT(PORT_A);
>  		break;
>  	case DL_DCS_PORT_C:
> -		panel->vbt.dsi.cabc_ports = BIT(PORT_C);
> +		panel->vbt.dsi.cabc_ports = BIT(port_bc);
>  		break;
>  	default:
>  	case DL_DCS_PORT_A_AND_C:
>  		panel->vbt.dsi.cabc_ports =
> -					BIT(PORT_A) | BIT(PORT_C);
> +					BIT(PORT_A) | BIT(port_bc);
>  		break;
>  	}
>  }
> -- 
> 2.34.1
> 
