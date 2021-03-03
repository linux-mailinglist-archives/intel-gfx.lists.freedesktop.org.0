Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 691BD32AF53
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Mar 2021 04:23:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70EE16E3DF;
	Wed,  3 Mar 2021 03:23:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 239F06E3DF
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Mar 2021 03:23:19 +0000 (UTC)
IronPort-SDR: z315RQmvZfJXKpp1xdMRNiOmo82+M/OWv3c3HpJkPwGuOqp9uj/Uj3Y0UwNhtC/b++0FL6vsL5
 uYerWqMeCQWg==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="187144382"
X-IronPort-AV: E=Sophos;i="5.81,218,1610438400"; d="scan'208";a="187144382"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 19:23:18 -0800
IronPort-SDR: dTCX6e5riRIhnf37/276hjvO29qMSB3PoYDfoEeQCmz2NkbgtLwR1W87ZrnmTLQOn3jt6uIojJ
 FyC+Qsefs63g==
X-IronPort-AV: E=Sophos;i="5.81,218,1610438400"; d="scan'208";a="399333268"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 19:23:18 -0800
Date: Tue, 2 Mar 2021 19:23:17 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20210303032317.GF2690983@mdroper-desk1.amr.corp.intel.com>
References: <20210303010728.3605269-1-lucas.demarchi@intel.com>
 <20210303010728.3605269-3-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210303010728.3605269-3-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Wa_14010826681 does the same
 as Wa_22010271021
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

On Tue, Mar 02, 2021 at 05:07:27PM -0800, Lucas De Marchi wrote:
> From: Caz Yokoyama <caz.yokoyama@intel.com>
> 
> Add a comment marking Wa_14010826681 as the same as Wa_22010271021
> for easy verification.
> 
> Bspec: 54508, 52890
> 
> Cc: Clinton Taylor <clinton.a.taylor@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Caz Yokoyama <caz.yokoyama@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 9e6e405aabac..e678fa8d2ab9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1682,7 +1682,8 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  
>  		/*
>  		 * Wa_1606700617:tgl,dg1
> -		 * Wa_22010271021:tgl,rkl,dg1, adl-s
> +		 * Wa_22010271021:tgl,rkl,dg1,adl-s
> +		 * Wa_14010826681:tgl,dg1
>  		 */
>  		wa_masked_en(wal,
>  			     GEN9_CS_DEBUG_MODE1,
> -- 
> 2.30.1
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
