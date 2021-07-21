Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43AEA3D19C7
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 00:34:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 719636E899;
	Wed, 21 Jul 2021 22:34:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D79B6E899;
 Wed, 21 Jul 2021 22:34:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="211528592"
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="211528592"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 15:34:15 -0700
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="564877475"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 15:34:14 -0700
Date: Wed, 21 Jul 2021 15:34:13 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20210721223413.GL4174536@mdroper-desk1.amr.corp.intel.com>
References: <20210720232014.3302645-1-lucas.demarchi@intel.com>
 <20210720232014.3302645-2-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210720232014.3302645-2-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/gt: fix platform prefix
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
Cc: intel-gfx@lists.freedesktop.org, Tomas Winkler <tomas.winkler@intel.com>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 20, 2021 at 04:20:11PM -0700, Lucas De Marchi wrote:
> gen8_clear_engine_error_register() is actually not used by
> GRAPHICS_VER >= 8, since for those we are using another register that is
> not engine-dependent. Fix the platform prefix, to make clear we are not
> using any GEN6_RING_FAULT_REG_* one GRAPHICS_VER >= 8.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_gt.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index e714e21c0a4d..a8efdd44e9cf 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -205,7 +205,7 @@ static void clear_register(struct intel_uncore *uncore, i915_reg_t reg)
>  	intel_uncore_rmw(uncore, reg, 0, 0);
>  }
>  
> -static void gen8_clear_engine_error_register(struct intel_engine_cs *engine)
> +static void gen6_clear_engine_error_register(struct intel_engine_cs *engine)
>  {
>  	GEN6_RING_FAULT_REG_RMW(engine, RING_FAULT_VALID, 0);
>  	GEN6_RING_FAULT_REG_POSTING_READ(engine);
> @@ -251,7 +251,7 @@ intel_gt_clear_error_registers(struct intel_gt *gt,
>  		enum intel_engine_id id;
>  
>  		for_each_engine_masked(engine, gt, engine_mask, id)
> -			gen8_clear_engine_error_register(engine);
> +			gen6_clear_engine_error_register(engine);
>  	}
>  }
>  
> -- 
> 2.31.1
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
