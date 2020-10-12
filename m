Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 435C628C47D
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 00:04:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A203F89D5B;
	Mon, 12 Oct 2020 22:04:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 870F76E824
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 22:04:19 +0000 (UTC)
IronPort-SDR: fkmqJvKsl6qV4kBRdH2M/DXlcJii+R0r4oKzyUS+P0d+XhPZVg3JpzGRzc49SALarNZsCSixWD
 MFEJXHDcsHzg==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="145129053"
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="145129053"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 15:04:18 -0700
IronPort-SDR: 49RHFBBevCwzJEZL1UZXABsRyhuwBbGvci+sO17gAbCi3csZB0Rnu2GrqK+C8Q1Fg39vp84q/a
 +UhemrwoD3bA==
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="355931725"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 15:04:18 -0700
Date: Mon, 12 Oct 2020 15:04:17 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20201012220417.GH3805439@mdroper-desk1.amr.corp.intel.com>
References: <20201012212959.871513-1-lucas.demarchi@intel.com>
 <20201012212959.871513-3-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201012212959.871513-3-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH v7 02/15] drm/i915/cnl: skip PW_DDI_F on
 certain skus
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 12, 2020 at 02:29:46PM -0700, Lucas De Marchi wrote:
> The skus guarded by IS_CNL_WITH_PORT_F() have port F and thus they need
> those power wells. The others don't have those. Up to now we were
> just overriding the number of power wells on !IS_CNL_WITH_PORT_F(),
> relying on those power wells to be the last ones. Now that we have logic
> in place to skip power wells by id, use it instead.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  .../drm/i915/display/intel_display_power.c    | 19 +++++++------------
>  .../drm/i915/display/intel_display_power.h    |  2 ++
>  2 files changed, 9 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 5b7f2b67791e..7437c7a79e5f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -3650,7 +3650,7 @@ static const struct i915_power_well_desc cnl_power_wells[] = {
>  		.name = "DDI F IO power well",
>  		.domains = CNL_DISPLAY_DDI_F_IO_POWER_DOMAINS,
>  		.ops = &hsw_power_well_ops,
> -		.id = DISP_PW_ID_NONE,
> +		.id = CNL_DISP_PW_DDI_F_IO,
>  		{
>  			.hsw.regs = &hsw_power_well_regs,
>  			.hsw.idx = CNL_PW_CTL_IDX_DDI_F,
> @@ -3660,7 +3660,7 @@ static const struct i915_power_well_desc cnl_power_wells[] = {
>  		.name = "AUX F",
>  		.domains = CNL_DISPLAY_AUX_F_POWER_DOMAINS,
>  		.ops = &hsw_power_well_ops,
> -		.id = DISP_PW_ID_NONE,
> +		.id = CNL_DISP_PW_DDI_F_AUX,
>  		{
>  			.hsw.regs = &hsw_power_well_regs,
>  			.hsw.idx = CNL_PW_CTL_IDX_AUX_F,
> @@ -4640,17 +4640,12 @@ int intel_power_domains_init(struct drm_i915_private *dev_priv)
>  		err = set_power_wells(power_domains, tgl_power_wells);
>  	} else if (IS_GEN(dev_priv, 11)) {
>  		err = set_power_wells(power_domains, icl_power_wells);
> -	} else if (IS_CANNONLAKE(dev_priv)) {
> +	} else if (IS_CNL_WITH_PORT_F(dev_priv)) {
>  		err = set_power_wells(power_domains, cnl_power_wells);
> -
> -		/*
> -		 * DDI and Aux IO are getting enabled for all ports
> -		 * regardless the presence or use. So, in order to avoid
> -		 * timeouts, lets remove them from the list
> -		 * for the SKUs without port F.
> -		 */
> -		if (!IS_CNL_WITH_PORT_F(dev_priv))
> -			power_domains->power_well_count -= 2;
> +	} else if (IS_CANNONLAKE(dev_priv)) {
> +		err = set_power_wells_mask(power_domains, cnl_power_wells,
> +					   BIT_ULL(CNL_DISP_PW_DDI_F_IO) |
> +					   BIT_ULL(CNL_DISP_PW_DDI_F_AUX));
>  	} else if (IS_GEMINILAKE(dev_priv)) {
>  		err = set_power_wells(power_domains, glk_power_wells);
>  	} else if (IS_BROXTON(dev_priv)) {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> index 54c20c76057e..824590c5401f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -101,6 +101,8 @@ enum i915_power_well_id {
>  	SKL_DISP_PW_MISC_IO,
>  	SKL_DISP_PW_1,
>  	SKL_DISP_PW_2,
> +	CNL_DISP_PW_DDI_F_IO,
> +	CNL_DISP_PW_DDI_F_AUX,
>  	ICL_DISP_PW_3,
>  	SKL_DISP_DC_OFF,
>  };
> -- 
> 2.28.0
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
