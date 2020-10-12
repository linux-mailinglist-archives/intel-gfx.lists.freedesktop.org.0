Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E1F28C474
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 00:02:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B19F6E81F;
	Mon, 12 Oct 2020 22:02:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 084956E81F
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 22:02:29 +0000 (UTC)
IronPort-SDR: 23zBOWgZTvqxuVKr2zf0PzF2KgQiOJM+xsoBgURl5tLCeJKxsGJ7i1KnoI/oEtVETlu0anH2TG
 zysiNttxv7zg==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="165024352"
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="165024352"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 15:02:29 -0700
IronPort-SDR: lsnuirWAiIB+Ap+cExCAPp+iXDp4HXEc/sYffH/846Cyoe2tA7J47hEerz08IW47iPaPl7Tq1M
 Bcc9mhOd0pRg==
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="519753392"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 15:02:29 -0700
Date: Mon, 12 Oct 2020 15:02:28 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20201012220228.GG3805439@mdroper-desk1.amr.corp.intel.com>
References: <20201012212959.871513-1-lucas.demarchi@intel.com>
 <20201012212959.871513-2-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201012212959.871513-2-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH v7 01/15] drm/i915/display: allow to skip
 certain power wells
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

On Mon, Oct 12, 2020 at 02:29:45PM -0700, Lucas De Marchi wrote:
> From: Aditya Swarup <aditya.swarup@intel.com>
> 
> This allows us to skip power wells on a platform allowing it to re-use
> the table from another one instead of having to create a new table from
> scratch that is basically a copy with a few removals.
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Suggested-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
> [ Adapt to base ignore logic on pw id rather than adding a new field,
>   as suggested by Imre ]
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  .../drm/i915/display/intel_display_power.c    | 24 ++++++++++++++-----
>  1 file changed, 18 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 7277e58b01f1..5b7f2b67791e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -4554,13 +4554,18 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
>  static int
>  __set_power_wells(struct i915_power_domains *power_domains,
>  		  const struct i915_power_well_desc *power_well_descs,
> -		  int power_well_count)
> +		  int power_well_descs_sz, u64 skip_mask)
>  {
>  	struct drm_i915_private *i915 = container_of(power_domains,
>  						     struct drm_i915_private,
>  						     power_domains);
>  	u64 power_well_ids = 0;
> -	int i;
> +	int power_well_count = 0;
> +	int i, plt_idx = 0;
> +
> +	for (i = 0; i < power_well_descs_sz; i++)
> +		if (!(BIT_ULL(power_well_descs[i].id) & skip_mask))
> +			power_well_count++;
>  
>  	power_domains->power_well_count = power_well_count;
>  	power_domains->power_wells =
> @@ -4570,10 +4575,14 @@ __set_power_wells(struct i915_power_domains *power_domains,
>  	if (!power_domains->power_wells)
>  		return -ENOMEM;
>  
> -	for (i = 0; i < power_well_count; i++) {
> +	for (i = 0; i < power_well_descs_sz; i++) {
>  		enum i915_power_well_id id = power_well_descs[i].id;
>  
> -		power_domains->power_wells[i].desc = &power_well_descs[i];
> +		if (BIT_ULL(id) & skip_mask)
> +			continue;
> +
> +		power_domains->power_wells[plt_idx++].desc =
> +			&power_well_descs[i];
>  
>  		if (id == DISP_PW_ID_NONE)
>  			continue;
> @@ -4586,9 +4595,12 @@ __set_power_wells(struct i915_power_domains *power_domains,
>  	return 0;
>  }
>  
> -#define set_power_wells(power_domains, __power_well_descs) \
> +#define set_power_wells_mask(power_domains, __power_well_descs, skip_mask) \
>  	__set_power_wells(power_domains, __power_well_descs, \
> -			  ARRAY_SIZE(__power_well_descs))
> +			  ARRAY_SIZE(__power_well_descs), skip_mask)
> +
> +#define set_power_wells(power_domains, __power_well_descs) \
> +	set_power_wells_mask(power_domains, __power_well_descs, 0)
>  
>  /**
>   * intel_power_domains_init - initializes the power domain structures
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
