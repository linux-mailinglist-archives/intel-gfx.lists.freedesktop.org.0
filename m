Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC13D3C1DF4
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 05:53:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6EBE6E95B;
	Fri,  9 Jul 2021 03:53:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B37046E95B
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jul 2021 03:53:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10039"; a="196918283"
X-IronPort-AV: E=Sophos;i="5.84,225,1620716400"; d="scan'208";a="196918283"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 20:53:22 -0700
X-IronPort-AV: E=Sophos;i="5.84,225,1620716400"; d="scan'208";a="411656455"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 20:53:22 -0700
Date: Thu, 8 Jul 2021 20:53:21 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <20210709035321.GC951094@mdroper-desk1.amr.corp.intel.com>
References: <20210708231821.9163-1-anusha.srivatsa@intel.com>
 <20210708231821.9163-9-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210708231821.9163-9-anusha.srivatsa@intel.com>
Subject: Re: [Intel-gfx] [PATCH 08/10] drm/i915/bxt: Use revid->stepping
 tables
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

On Thu, Jul 08, 2021 at 04:18:19PM -0700, Anusha Srivatsa wrote:
> Switch BXT to use a revid->stepping table as we're trying to do on all
> platforms going forward.
> 
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_step.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
> index c4ce02d22828..99c0d3df001b 100644
> --- a/drivers/gpu/drm/i915/intel_step.c
> +++ b/drivers/gpu/drm/i915/intel_step.c
> @@ -31,6 +31,15 @@ static const struct intel_step_info skl_revid_step_tbl[] = {
>  	[0xA] = { .gt_step = STEP_I1, .display_step = STEP_I1 },
>  };
>  
> +static const struct intel_step_info bxt_revids[] = {
> +	[0] = { .gt_step = STEP_A0 },
> +	[1] = { .gt_step = STEP_A1 },
> +	[2] = { .gt_step = STEP_A2 },
> +	[6] = { .gt_step = STEP_B0 },
> +	[7] = { .gt_step = STEP_B1 },
> +	[8] = { .gt_step = STEP_B2 },

I realize the mistake originates from the #define's that you're
replacing with these tables, but the values in this table aren't the
correct GT/display steppings, but rather the SoC stepping; that's the
wrong thing for us to be matching on for workarounds, DMC versions, etc.
You want to use column #4 of the bspec table, not column #2.

Also we need to update this to use the proper revisions from the bspec;
most of the ones you have here were temporary placeholders before the
platform was released and the actual revisions that showed up in real
hardware are higher than any of your table entries.  If we take into
account the right-most column of the bspec we'd actually want:

        static  const struct intel_step_info bxt_revids[] = {
                [0xA] = { .gt_step = STEP_C0 },
                [0xB] = { .gt_step = STEP_C0 },
                [0xC] = { .gt_step = STEP_D0 },
                [0xD] = { .gt_step = STEP_E0 },
        };


Matt

> +};
> +
>  static const struct intel_step_info kbl_revid_step_tbl[] = {
>  	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
>  	[1] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
> @@ -129,6 +138,9 @@ void intel_step_init(struct drm_i915_private *i915)
>  	} else if (IS_KABYLAKE(i915)) {
>  		revids = kbl_revid_step_tbl;
>  		size = ARRAY_SIZE(kbl_revid_step_tbl);
> +	} else if (IS_BROXTON(i915)) {
> +		revids = bxt_revids;
> +		size = ARRAY_SIZE(bxt_revids);
>  	} else if (IS_SKYLAKE(i915)) {
>  		revids = skl_revid_step_tbl;
>  		size = ARRAY_SIZE(skl_revid_step_tbl);
> -- 
> 2.32.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

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
