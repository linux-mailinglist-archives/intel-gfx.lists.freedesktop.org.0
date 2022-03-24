Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD614E629E
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Mar 2022 12:42:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2292D10E890;
	Thu, 24 Mar 2022 11:42:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 625FD10E890
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Mar 2022 11:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648122125; x=1679658125;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DfrlZLEddSFkeMhpe+QDere4fkGGZKmjprc/ioCDNFo=;
 b=OWsBynuPmBIaC+iSLvMc5HDIQ2ne2D0cOs4h6//4dAZrmK7cILEcmNKx
 VXWcYDsj9Ze+QVHNgNSVQsCoa8v9juWTDAIRZIpeQebHBBK0oOGW4bebb
 id77fmMMVFIp/LkNIs4VLGzk+SyclQ3Um2lHf2yO0OmhglqTRf5KFMm+b
 taEKpWNzLFzRqQPDXYzf6wMHG3aHDXXFEowLjhhDdjCLP5BwI0nEkohEY
 e3IssX1rAXeVD4iBBmvbBdZ6OFvBHkqbDXIJHrqvVHQE993P8Qj8vRZuM
 0Gi5QdNO6bITr/ybSKWlpVfYQz3TYwPzXQvZgDelpCo8UCdovar/XFq6j A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="238958803"
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="238958803"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 04:42:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="552836369"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga007.fm.intel.com with SMTP; 24 Mar 2022 04:42:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Mar 2022 13:42:02 +0200
Date: Thu, 24 Mar 2022 13:42:02 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <YjxZCqrQ9Rxw4CJx@intel.com>
References: <20220324110959.1857869-1-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220324110959.1857869-1-uma.shankar@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [v3] drm/i915/display: Extend DP HDR support to hsw+
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

On Thu, Mar 24, 2022 at 04:39:59PM +0530, Uma Shankar wrote:
> HSW+ platforms are able to send out HDR Metadata SDP DIP
> packet as GMP. Hence, extending the support for HDR on DP
> encoders for the same.
> 
> v2: Limited to non eDP ports on hsw/bdw and removed it for
> lspcon as it is done separately (suggested by Ville)
> 
> v3: Added helper and limited eDP restriction to port A (Ville)
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5389
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 22 +++++++++++++++++++++-
>  1 file changed, 21 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 9e19165fd175..c993d82c7ec9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4913,6 +4913,26 @@ bool intel_dp_is_port_edp(struct drm_i915_private *dev_priv, enum port port)
>  	return intel_bios_is_port_edp(dev_priv, port);
>  }
>  
> +static bool
> +has_gamut_metadata_dip(struct drm_i915_private *dev_priv,

s/dev_priv/i915/ for modern style

> +		       struct intel_dp *intel_dp, enum port port)
> +{
> +	if (intel_bios_is_lspcon_present(dev_priv, port))
> +		return false;
> +
> +	if (DISPLAY_VER(dev_priv) >= 10 && !IS_GEMINILAKE(dev_priv))
> +		return true;

DISPLAY_VER >= 11

> +
> +	if (port == PORT_A && intel_dp_is_edp(intel_dp))

The is_edp check is still wrong. Should be just port==A.
Also allows you to drop the intel_dp argument to the function.

> +		return false;
> +
> +	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv) ||
> +	    IS_GEMINILAKE(dev_priv) || DISPLAY_VER(dev_priv) >= 9)
> +		return true;

The IS_GLK check is redundant.

> +
> +	return false;
> +}
> +
>  static void
>  intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connector)
>  {
> @@ -4939,7 +4959,7 @@ intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connect
>  		intel_attach_dp_colorspace_property(connector);
>  	}
>  
> -	if (IS_GEMINILAKE(dev_priv) || DISPLAY_VER(dev_priv) >= 11)
> +	if (has_gamut_metadata_dip(dev_priv, intel_dp, port))
>  		drm_object_attach_property(&connector->base,
>  					   connector->dev->mode_config.hdr_output_metadata_property,
>  					   0);
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
