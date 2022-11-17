Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD1F62DCA8
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 14:24:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD3AA10E5F5;
	Thu, 17 Nov 2022 13:24:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49F2410E5F5
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 13:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668691494; x=1700227494;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=cdYYejThYZ9lF9ZuPbgEfez52sxRb1tKFNFHX/ck1bA=;
 b=Y2tgKzm8c6QDVbSzda8MTuuk2tdjr6tj6XfYQpcWk4I6nEJCtDBJs4ck
 3BbGn5Gw4qAdjR5M09njaaK7+QlCex5YVGg6TZyd4rPEfUMuyRBgJqaHf
 c4VbJvVFKZmo+N8QHO/k7yA/zQUJndegV3yZ/71o3gtS9es+eQE5lPvP+
 RnUDtJBX23witai096cPooL7xd06vVV5I373GUwMHvUzj4prafb+ZoG5o
 CCCQJelgqseIvT1zVmsj7t/9nWle/TG1JljJQ87gAmS5jEZjI5DoZkqlz
 6zA11HPQoDtDA1r+/7kPqL5YIA8f3J6dQjfeMn52JDuYCso5z88ynfJAo A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="339674664"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="339674664"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 05:24:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="745533022"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="745533022"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga002.fm.intel.com with SMTP; 17 Nov 2022 05:24:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Nov 2022 15:24:51 +0200
Date: Thu, 17 Nov 2022 15:24:51 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <Y3Y2I/JkAaTTzAHd@intel.com>
References: <20221114122251.21327-1-imre.deak@intel.com>
 <20221114122251.21327-10-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221114122251.21327-10-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v4 9/9] drm/i915/mtl+: Don't enable the
 AUX_IO power for non-eDP port main links
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

On Mon, Nov 14, 2022 at 02:22:51PM +0200, Imre Deak wrote:
> MTL+ requires the AUX_IO power for the main link only on eDP, so don't
> enable it in other cases.
> 
> v2:
> - Rebased on checking intel_encoder_can_psr() instead of crtc->has_psr.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 0231b273e1673..9bf303e166e1a 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -868,8 +868,9 @@ intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port,
>  	 */
>  	if (intel_encoder_can_psr(&dig_port->base))
>  		return intel_display_power_aux_io_domain(i915, dig_port->aux_ch);
> -	else if (intel_crtc_has_dp_encoder(crtc_state) ||
> -		 intel_phy_is_tc(i915, phy))
> +	else if (DISPLAY_VER(i915) < 14 &&
> +		 (intel_crtc_has_dp_encoder(crtc_state) ||

You want to keep that for now, and maybe remove later I guess?

Series looks OK to me.
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +		  intel_phy_is_tc(i915, phy)))
>  		return intel_aux_power_domain(dig_port);
>  	else
>  		return POWER_DOMAIN_INVALID;
> -- 
> 2.37.1

-- 
Ville Syrjälä
Intel
