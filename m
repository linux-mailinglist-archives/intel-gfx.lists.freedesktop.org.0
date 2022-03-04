Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4545D4CCC9D
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 05:38:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F117B10E44A;
	Fri,  4 Mar 2022 04:38:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BA4910E44A
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Mar 2022 04:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646368721; x=1677904721;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Aa42u9bzoTURobG6ASVbs3tE9w5m4dTpj+8aNMOH7s4=;
 b=LIcU4VU2XKSJkuvmlc6kDHrRKKGZq/P+w6pCixAONbKC6DZz3yMsZZUV
 oawWOCIKnHRsBg16MfQMCJ6b6KXrDtrh40kqRn+jBypnLSpKH7pSZ0LM4
 L/q25l6l/13Rm/97xzhOErjmCOzvGPDWHx2BSLGRzxKD58HFGZWT64X8+
 uU5LLyQyl+GFYDJiSMhXTsCEFPvM/s4S1PtAXDGsbAu3GJjesEvPEE0oa
 X4+veNkawJqv7tLrPAPUipTgLm5NhPRFU72UPYeN4o84naiA/E5N6WxV9
 6NcElM6kz2fVh5NfZb1+lPZIi1mTmCwhkfqtxATe9dwi6tb6T1Cxw0bmz A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="234501726"
X-IronPort-AV: E=Sophos;i="5.90,154,1643702400"; d="scan'208";a="234501726"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 20:38:40 -0800
X-IronPort-AV: E=Sophos;i="5.90,154,1643702400"; d="scan'208";a="642380195"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 20:38:40 -0800
Date: Thu, 3 Mar 2022 20:38:39 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Message-ID: <YiGXz5h9Hv1xs9ia@mdroper-desk1.amr.corp.intel.com>
References: <20220303113252.212873-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220303113252.212873-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adl-n: Add stepping info
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

On Thu, Mar 03, 2022 at 05:02:52PM +0530, Tejas Upadhyay wrote:
> Add ADL-N stepping-substepping info in
> accordance to BSpec.
> 
> Bspec: 68397
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_step.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
> index 4fd69ecd1481..74e8e4680028 100644
> --- a/drivers/gpu/drm/i915/intel_step.c
> +++ b/drivers/gpu/drm/i915/intel_step.c
> @@ -131,6 +131,10 @@ static const struct intel_step_info adls_rpls_revids[] = {
>  	[0xC] = { COMMON_GT_MEDIA_STEP(D0), .display_step = STEP_C0 },
>  };
>  
> +static const struct intel_step_info adlp_n_revids[] = {
> +	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_D0 },
> +};
> +
>  void intel_step_init(struct drm_i915_private *i915)
>  {
>  	const struct intel_step_info *revids = NULL;
> @@ -150,6 +154,9 @@ void intel_step_init(struct drm_i915_private *i915)
>  	} else if (IS_XEHPSDV(i915)) {
>  		revids = xehpsdv_revids;
>  		size = ARRAY_SIZE(xehpsdv_revids);
> +	} else if (IS_ADLP_N(i915)) {
> +		revids = adlp_n_revids;
> +		size = ARRAY_SIZE(adlp_n_revids);
>  	} else if (IS_ALDERLAKE_P(i915)) {
>  		revids = adlp_revids;
>  		size = ARRAY_SIZE(adlp_revids);
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
