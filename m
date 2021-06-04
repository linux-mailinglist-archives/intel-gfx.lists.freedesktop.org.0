Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5924039C371
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Jun 2021 00:25:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13FEB6E413;
	Fri,  4 Jun 2021 22:25:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B8D46E413
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jun 2021 22:25:48 +0000 (UTC)
IronPort-SDR: +bDcnIQBD8tZPSDcFP1t2RccdCMDmEfLdDLeBdW5NF9U1lRTwDrgm+rVYHKh4HKMam0ToYaeCQ
 60uJeclDsb8A==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="191714092"
X-IronPort-AV: E=Sophos;i="5.83,249,1616482800"; d="scan'208";a="191714092"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 15:25:47 -0700
IronPort-SDR: ZHkddQLPcAuACky/5qD4dttPld6Ef6vFEgyCzIgrPYBPb9LPvvTsbIyvqYzuL92gpHDa+rmFI8
 gwBuX4P6dSjw==
X-IronPort-AV: E=Sophos;i="5.83,249,1616482800"; d="scan'208";a="484076399"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 15:25:47 -0700
Date: Fri, 4 Jun 2021 15:25:46 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Nataraj Deshpande <nataraj.deshpande@intel.com>
Message-ID: <20210604222546.GY6936@mdroper-desk1.amr.corp.intel.com>
References: <20210604221425.154917-1-nataraj.deshpande@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210604221425.154917-1-nataraj.deshpande@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adl_p: Extend Wa_1606931601 for
 ADL-P
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
Cc: intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 04, 2021 at 03:14:25PM -0700, Nataraj Deshpande wrote:
> Helps to fixe skia test failures on adl_p platform.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Nataraj Deshpande <nataraj.deshpande@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 62cb9ee5bfc3..38efc1e0ccfa 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1633,9 +1633,9 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  			    GEN7_DISABLE_SAMPLER_PREFETCH);
>  	}
>  
> -	if (IS_ALDERLAKE_S(i915) || IS_DG1(i915) ||
> +	if (IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) || IS_DG1(i915) ||
>  	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
> -		/* Wa_1606931601:tgl,rkl,dg1,adl-s */
> +		/* Wa_1606931601:tgl,rkl,dg1,adl-s,adl-p */
>  		wa_masked_en(wal, GEN7_ROW_CHICKEN2, GEN12_DISABLE_EARLY_READ);
>  
>  		/*
> -- 
> 2.29.0
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
