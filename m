Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E41AB55768E
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 11:25:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 912101137B8;
	Thu, 23 Jun 2022 09:25:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6421F1137B8
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 09:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655976334; x=1687512334;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=MhN+MYfPJQ9UxV3cKQ+WOdPSlIIEyFMkc4+3aDI8k04=;
 b=Fe9LYPuXZ5xijpxRzLR59oQIitveDkOzVmaMj+QzwPxWEarhoBBctM6x
 /2hjmTvNVWp2WHeBMMqbKj2fTsXsAzXeRA4hd+j6zINxnnx+V5wYjm0RA
 3FWRx36AwxAx6J5eZlgmyItGDl0NC40PHb1i/0SH+g0PcG2c/PTzYXqSg
 Ns8txeh/o2cCr90LQfZRUnYPeeZ9TpY3ucME7PFgiNZCF+ydTw49F6T4b
 BB9Ef8PF1W6gCs1eB/MiDNDWk5uqJpQfJyAESfd4ok3F4drMv5cymTvOf
 cmGsD88iT7uOQggx/a276L8HBXNBpVeIV/YSiii7YzEJshVqNnxgYB+cT A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="278220321"
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="278220321"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 02:25:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="621248389"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga001.jf.intel.com with SMTP; 23 Jun 2022 02:25:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 Jun 2022 12:25:21 +0300
Date: Thu, 23 Jun 2022 12:25:21 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YrQxgbOEmVNnyPf8@intel.com>
References: <20220621123732.1118437-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220621123732.1118437-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/bios: debug log ddi port info
 after parsing
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

On Tue, Jun 21, 2022 at 03:37:32PM +0300, Jani Nikula wrote:
> The ddc pin and aux channel sanitization may disable DVI/HDMI and DP,
> respectively, of ports parsed earlier, in "last one wins" fashion. With
> parsing and printing interleaved, we'll end up logging support first and
> disabling later anyway.
> 
> Now that we've split ddi port info parsing and printing, take it further
> by doing the printing in a separate loop, fixing the logging.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index ab23324c0402..51dde5bfd956 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2670,8 +2670,6 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
>  
>  	sanitize_device_type(devdata, port);
>  
> -	print_ddi_port(devdata, port);
> -
>  	if (intel_bios_encoder_supports_dvi(devdata))
>  		sanitize_ddc_pin(devdata, port);
>  
> @@ -2689,12 +2687,18 @@ static bool has_ddi_port_info(struct drm_i915_private *i915)
>  static void parse_ddi_ports(struct drm_i915_private *i915)
>  {
>  	struct intel_bios_encoder_data *devdata;
> +	enum port port;
>  
>  	if (!has_ddi_port_info(i915))
>  		return;
>  
>  	list_for_each_entry(devdata, &i915->vbt.display_devices, node)
>  		parse_ddi_port(devdata);
> +
> +	for_each_port(port) {
> +		if (i915->vbt.ports[port])
> +			print_ddi_port(i915->vbt.ports[port], port);
> +	}
>  }
>  
>  static void
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
