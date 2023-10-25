Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D83FC7D6C4D
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 14:50:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D52510E666;
	Wed, 25 Oct 2023 12:50:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49B5510E65D
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 12:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698238230; x=1729774230;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8taXk9d8dDqVCmFn7qhn74+1CDDAAIOfz4zkFuEdF3I=;
 b=jk6BW3Q1B6owVkhBS8J9u9eLlSVWg2cijhKLcW3R4ZEVmxbx7aUtiawJ
 FUO0Ofz8v48R9G4mB7TxPmo2+/aDkGZkTgbzlj0oXVOAzLu7EC47QNUT8
 vBrRbqFaebCDuaJfj1iS1jwWjALCz1lz5/wBmztaPajxCIN02KPFcEj/1
 RCt+g/+fmyN6/q06UqXfRzfHrRQw25F9W42zXMtRClGgx/8M9QYyoemKa
 9wv8BGGi4nVYhDJ8jKwWPNtKWITaHBF9iLMllKzOOU0BHsVya0WFI9oCe
 JTGweTHG7y0f8xAvk9VpDC/Wgde4AUXmbFyd66G9URzX/38syeltyIFmG g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="386182198"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="386182198"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 05:50:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="735381596"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="735381596"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga006.jf.intel.com with SMTP; 25 Oct 2023 05:50:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Oct 2023 15:50:25 +0300
Date: Wed, 25 Oct 2023 15:50:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <ZTkPEZVq8aIgyUI3@intel.com>
References: <20231025121318.2732051-1-ankit.k.nautiyal@intel.com>
 <20231025121318.2732051-5-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231025121318.2732051-5-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/dp: Limit max_requested_bpc
 based on src DSC bpc limits
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 25, 2023 at 05:43:18PM +0530, Ankit Nautiyal wrote:
> At the moment the max requested bpc is limited to 6 to 10/12.
> For platforms that support DSC, min and max src bpc with DSC are
> different.
> 
> Account for DSC bpc limitations, when setting min and max value for
> max_requested_bpc property.

NAK. DSC capabiliies change dynamically, the property does not.

> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index abc718f1a878..1935b9014b12 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5907,8 +5907,17 @@ intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connect
>  	intel_attach_broadcast_rgb_property(connector);
>  	if (HAS_GMCH(dev_priv))
>  		drm_connector_attach_max_bpc_property(connector, 6, 10);
> -	else if (DISPLAY_VER(dev_priv) >= 5)
> -		drm_connector_attach_max_bpc_property(connector, 6, 12);
> +	else if (DISPLAY_VER(dev_priv) >= 5) {
> +		int min_bpc = 6, max_bpc = 12;
> +		struct intel_connector *intel_connector = to_intel_connector(connector);
> +
> +		if (HAS_DSC(dev_priv) && drm_dp_sink_supports_dsc(intel_connector->dp.dsc_dpcd)) {
> +			min_bpc = intel_dp_dsc_min_src_input_bpc(dev_priv);
> +			max_bpc = intel_dp_dsc_max_src_input_bpc(dev_priv);
> +		}
> +
> +		drm_connector_attach_max_bpc_property(connector, min_bpc, max_bpc);
> +	}
>  
>  	/* Register HDMI colorspace for case of lspcon */
>  	if (intel_bios_encoder_is_lspcon(dp_to_dig_port(intel_dp)->base.devdata)) {
> -- 
> 2.40.1

-- 
Ville Syrjälä
Intel
