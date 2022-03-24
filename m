Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 004074E63D3
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Mar 2022 14:01:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37A5D10E981;
	Thu, 24 Mar 2022 13:01:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6445410E980
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Mar 2022 13:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648126898; x=1679662898;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=QE0n90e7cCwV/cO2jG+ZV9HAzj6cVwqjjHvFSy++LGM=;
 b=n37JRJFtAcejoESjC/BhO17tK+G6deaNesaaMr10sGP2kYheBTKi21Gs
 1Ukn5fn3SmxInb/i2TbV5tLZgZZCP8rYGvxdDgeF8aaOmRffjDoL0nA5q
 xZ5RJ+0lFCxEQYB/1asgKU/UyH7xexn4BU9ceroHCnie9LnMB5lKB0NOE
 AfyLV6xfvRX1gu4C8ydg6aIqp1PF1iEccjcAn4cKavWuCANNERRSweCIh
 D6jMId3gKURPLiMlR9mqYXK01Bu1EH1ACH6XPF1W3Z0aPv+M7rkce6KED
 bOH/R28vjFvo/82qgw981TSZOZLdtppKnO1jOzZbQHnXTwln86vn6hA6i g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="258557746"
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="258557746"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 06:01:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="584067656"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga001.jf.intel.com with SMTP; 24 Mar 2022 06:01:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Mar 2022 15:01:28 +0200
Date: Thu, 24 Mar 2022 15:01:28 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <YjxrqLrsggg5sw0K@intel.com>
References: <20220324120438.1876445-1-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220324120438.1876445-1-uma.shankar@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [v4] drm/i915/display: Extend DP HDR support to hsw+
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

On Thu, Mar 24, 2022 at 05:34:38PM +0530, Uma Shankar wrote:
> HSW+ platforms are able to send out HDR Metadata SDP DIP
> packet as GMP. Hence, extending the support for HDR on DP
> encoders for the same.
> 
> v2: Limited to non eDP ports on hsw/bdw and removed it for
> lspcon as it is done separately (suggested by Ville)
> 
> v3: Added helper and limited eDP restriction to port A (Ville)
> 
> v4: Dropped some redundant checks (Ville)
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5389
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 21 ++++++++++++++++++++-
>  1 file changed, 20 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 9e19165fd175..fdcb169adb54 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4913,6 +4913,25 @@ bool intel_dp_is_port_edp(struct drm_i915_private *dev_priv, enum port port)
>  	return intel_bios_is_port_edp(dev_priv, port);
>  }
>  
> +static bool
> +has_gamut_metadata_dip(struct drm_i915_private *i915, enum port port)
> +{
> +	if (intel_bios_is_lspcon_present(i915, port))
> +		return false;
> +
> +	if (DISPLAY_VER(i915) >= 11)
> +		return true;
> +
> +	if (port == PORT_A)
> +		return false;
> +
> +	if (IS_HASWELL(i915) || IS_BROADWELL(i915) ||
> +	    DISPLAY_VER(i915) >= 9)
> +		return true;
> +
> +	return false;
> +}
> +
>  static void
>  intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connector)
>  {
> @@ -4939,7 +4958,7 @@ intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connect
>  		intel_attach_dp_colorspace_property(connector);
>  	}
>  
> -	if (IS_GEMINILAKE(dev_priv) || DISPLAY_VER(dev_priv) >= 11)
> +	if (has_gamut_metadata_dip(dev_priv, port))
>  		drm_object_attach_property(&connector->base,
>  					   connector->dev->mode_config.hdr_output_metadata_property,
>  					   0);
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
