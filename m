Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3AF23EDEC3
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Aug 2021 22:49:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD6196E05C;
	Mon, 16 Aug 2021 20:49:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B15866E05C
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Aug 2021 20:49:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="215971564"
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; d="scan'208";a="215971564"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 13:49:29 -0700
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; d="scan'208";a="592940364"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 13:49:29 -0700
Date: Mon, 16 Aug 2021 13:49:27 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210816204927.GK1556418@mdroper-desk1.amr.corp.intel.com>
References: <20210813123330.31431-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210813123330.31431-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: DG2 intermediate DP source
 rates are different from CNL+
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Aug 13, 2021 at 03:33:30PM +0300, Jani Nikula wrote:
> DG2 has 243000 but not 648000.

Am I looking in the wrong place?  When I check the bspec page I still
see:

        eDP/DP link bit rates: 1.62, 2.16, 2.7, 3.24, 4.32, 5.4, 6.48,
        8.1 GHz, SSC and Non-SSC

which matches the ICL rates list (i.e., 648000 included, but no
reference to 243000).


Matt

> 
> Bspec: 54034
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 75d4ebc66941..e21de08fea32 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -247,6 +247,9 @@ static void
>  intel_dp_set_source_rates(struct intel_dp *intel_dp)
>  {
>  	/* The values must be in increasing order */
> +	static const int dg2_rates[] = {
> +		162000, 216000, 243000, 270000, 324000, 432000, 540000, 810000,
> +	};
>  	static const int icl_rates[] = {
>  		162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000
>  	};
> @@ -272,7 +275,10 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>  	drm_WARN_ON(&dev_priv->drm,
>  		    intel_dp->source_rates || intel_dp->num_source_rates);
>  
> -	if (DISPLAY_VER(dev_priv) >= 11) {
> +	if (IS_DG2(dev_priv)) {
> +		source_rates = dg2_rates;
> +		size = ARRAY_SIZE(dg2_rates);
> +	} else if (DISPLAY_VER(dev_priv) >= 11) {
>  		source_rates = icl_rates;
>  		size = ARRAY_SIZE(icl_rates);
>  		if (IS_JSL_EHL(dev_priv))
> -- 
> 2.20.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
