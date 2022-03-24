Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C974E6139
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Mar 2022 10:42:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CC1210E853;
	Thu, 24 Mar 2022 09:42:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B75910E853
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Mar 2022 09:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648114921; x=1679650921;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=WOGNepIdr7MAjMVPOg5tGCoR3Mr8y9UCMaASV2BxoBI=;
 b=SW8BI3Tp1kpxc+lR/EQxaHBS1hDtbyY3ed1A5a99Ia44Mz5hXIUe9Ohy
 SHSayPM9MNAxFYAuomFnks2O86qZewUYdw0N8FeusnA3ORdA0XcdqyYBI
 T0bwfkDRMa5KIUaPN0rD2qMxrnu6bi8n3NS26m132S9EqpJG3guRKWlS+
 P8Pt3wYvREh9eC86vZNEzpVUOqb9xSE/caCU7+CYzT17rchs64OYiOF4d
 opTz2VJqK8OoMa1Zc6LyW97xKqpsIan9d03jUpO+Eq8SHsnHPSZG+6Hf0
 az2HxegRSEOJ/r/NY3suDTmFzTIivK1xdMT1AnkcVnahB6AR0Z/oLCuZ4 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="238932467"
X-IronPort-AV: E=Sophos;i="5.90,206,1643702400"; d="scan'208";a="238932467"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 02:42:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="552805296"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga007.fm.intel.com with SMTP; 24 Mar 2022 02:41:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Mar 2022 11:41:58 +0200
Date: Thu, 24 Mar 2022 11:41:58 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <Yjw85i48eTsRZk1C@intel.com>
References: <20220324091215.1784426-1-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220324091215.1784426-1-uma.shankar@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [v2] drm/i915/display: Extend DP HDR support to hsw+
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

On Thu, Mar 24, 2022 at 02:42:15PM +0530, Uma Shankar wrote:
> HSW+ platforms are able to send out HDR Metadata SDP DIP
> packet as GMP. Hence, extending the support for HDR on DP
> encoders for the same.
> 
> v2: Limited to non eDP ports on hsw/bdw and removed it for
> lspcon as it is done separately (suggested by Ville)
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5389
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 9e19165fd175..09382b6133bc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4939,10 +4939,12 @@ intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connect
>  		intel_attach_dp_colorspace_property(connector);
>  	}
>  
> -	if (IS_GEMINILAKE(dev_priv) || DISPLAY_VER(dev_priv) >= 11)
> -		drm_object_attach_property(&connector->base,
> -					   connector->dev->mode_config.hdr_output_metadata_property,
> -					   0);
> +	if (!intel_bios_is_lspcon_present(dev_priv, port))
> +		if (((IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) &&
> +		     !intel_dp_is_edp(intel_dp)) || DISPLAY_VER(dev_priv) >= 9)

s/is_edp/port==A/

I would put all of that into a helper (has_gamut_metadata_dip() or
something) to make it actually legible.

> +			drm_object_attach_property(&connector->base,
> +					connector->dev->mode_config.hdr_output_metadata_property,
> +					0);
>  
>  	if (intel_dp_is_edp(intel_dp)) {
>  		u32 allowed_scalers;
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
