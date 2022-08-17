Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C84596B1A
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 10:13:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E00011206D;
	Wed, 17 Aug 2022 08:12:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BE5C11214C
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 08:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660723966; x=1692259966;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ok/NeemBAwPZbF/TT7fU0YSvlhre9yyG3srbVD0h6+U=;
 b=IEWewz0P7qBRg+fhbmk/mAgF9Pg17XsgO/4UqP8F5Wn9a8Fxs3DXjDOk
 V0gIfL0ntXqI3RtVBKRsK1jZX47cNg5aVzM3ua3TBTPkS33nR58kYLr3s
 U0OeSpoK0knBtp2Gk8IvGyha5JUo4pYm41JCghWE+Hfl/M6mPkWePsBuZ
 oagBEp2WTvf2VnIzFoekRbPEfxqG4UsmXZv7QrRedjKaJ52Sy+vvxi9da
 AgE/SNhxv8vhw5ypZqzx3lR9zGnV1siregmVQFPf6GFRCroknkhwhAgto
 G3HH0uKbrJr5BoAIw4mdakEfUU4mh8I1jTCSFKwrkv15SaG7oSvj7LYoK Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="292431346"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="292431346"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 01:12:45 -0700
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="607349943"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 01:12:44 -0700
Date: Wed, 17 Aug 2022 11:13:20 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YvyjILz4bXhvPjdZ@intel.com>
References: <cover.1660664162.git.jani.nikula@intel.com>
 <b0f4f087866257d280eb97d6bcfcefd109cc5fa2.1660664162.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b0f4f087866257d280eb97d6bcfcefd109cc5fa2.1660664162.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [RESEND 1/3] drm/i915/dsi: filter invalid backlight
 and CABC ports
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

On Tue, Aug 16, 2022 at 06:37:20PM +0300, Jani Nikula wrote:
> Avoid using ports that aren't initialized in case the VBT backlight or
> CABC ports have invalid values. This fixes a NULL pointer dereference of
> intel_dsi->dsi_hosts[port] in such cases.
> 
> Cc: stable@vger.kernel.org
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Would be interesting to figure out which one of those actually fixed the
https://gitlab.freedesktop.org/drm/intel/-/issues/6476 issue, this one
or next one.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c | 7 +++++++
>  drivers/gpu/drm/i915/display/vlv_dsi.c | 7 +++++++
>  2 files changed, 14 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 5dcfa7feffa9..885c74f60366 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -2070,7 +2070,14 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
>  	else
>  		intel_dsi->ports = BIT(port);
>  
> +	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))
> +		intel_connector->panel.vbt.dsi.bl_ports &= intel_dsi->ports;
> +
>  	intel_dsi->dcs_backlight_ports = intel_connector->panel.vbt.dsi.bl_ports;
> +
> +	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.cabc_ports & ~intel_dsi->ports))
> +		intel_connector->panel.vbt.dsi.cabc_ports &= intel_dsi->ports;
> +
>  	intel_dsi->dcs_cabc_ports = intel_connector->panel.vbt.dsi.cabc_ports;
>  
>  	for_each_dsi_port(port, intel_dsi->ports) {
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> index b9b1fed99874..35136d26e517 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -1933,7 +1933,14 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
>  	else
>  		intel_dsi->ports = BIT(port);
>  
> +	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))
> +		intel_connector->panel.vbt.dsi.bl_ports &= intel_dsi->ports;
> +
>  	intel_dsi->dcs_backlight_ports = intel_connector->panel.vbt.dsi.bl_ports;
> +
> +	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.cabc_ports & ~intel_dsi->ports))
> +		intel_connector->panel.vbt.dsi.cabc_ports &= intel_dsi->ports;
> +
>  	intel_dsi->dcs_cabc_ports = intel_connector->panel.vbt.dsi.cabc_ports;
>  
>  	/* Create a DSI host (and a device) for each port. */
> -- 
> 2.34.1
> 
