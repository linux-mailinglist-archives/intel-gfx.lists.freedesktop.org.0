Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF2A32AF03
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Mar 2021 04:14:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8890089FD4;
	Wed,  3 Mar 2021 03:14:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40DD889FD4
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Mar 2021 03:14:10 +0000 (UTC)
IronPort-SDR: Aa7nhRCG59ojuMovva7wjR8qgWhrpi/KIbDBnQEjw88IDfo9F3JMSFed3Gp6WEv17wQ4USAzxc
 Eh1GNzmBSOAQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="272080197"
X-IronPort-AV: E=Sophos;i="5.81,218,1610438400"; d="scan'208";a="272080197"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 19:14:09 -0800
IronPort-SDR: FjzM6/O1mEMkOd5v5oLVGESvFN8HGFgFhAQTGsn8rw1GCAWiyKi50Q199t5fxr8D1kPs8/DE75
 rVKTM7L+z59g==
X-IronPort-AV: E=Sophos;i="5.81,218,1610438400"; d="scan'208";a="369201436"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 19:14:09 -0800
Date: Tue, 2 Mar 2021 19:14:07 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20210303031407.GD2690983@mdroper-desk1.amr.corp.intel.com>
References: <20210303010728.3605269-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210303010728.3605269-1-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/gen12: Add recommended
 hardware tuning value
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

On Tue, Mar 02, 2021 at 05:07:25PM -0800, Lucas De Marchi wrote:
> From: Caz Yokoyama <caz.yokoyama@intel.com>
> 
> Follow Bspec 31870 to set recommended tuning values for certain GT
> register.  These values aren't workarounds per-se, but it's best to
> handle them in the same general area of the driver, especially since
> there may be real workarounds that update other bits of the same
> registers.
> 
> At the moment the only value we need to worry about is the
> TDS_TIMER setting in FF_MODE2.  This setting was previously
> described as "Wa_1604555607" on some platforms, but the spec
> tells us that we should continue to program this on all current
> gen12 platforms, even those that do not have that WA.
> 
> Bspec: 31870
> 
> Cc: Clinton Taylor <clinton.a.taylor@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Caz Yokoyama <caz.yokoyama@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

A couple minor nitpicks about the comments, but you can tweak those
while applying.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

There appear to be some other registers recommended on the same bspec
tuning page that we don't seem to be handling yet.  Will those be coming
as additional patches?

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 48 ++++++++++++++++-----
>  1 file changed, 37 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 3b4a7da60f0b..f6d9b849aa62 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -646,9 +646,38 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
>  	wa_masked_en(wal, GEN9_ROW_CHICKEN4, GEN11_DIS_PICK_2ND_EU);
>  }
>  
> +/*
> + * These settings aren't actually workarounds, but general tuning settings that
> + * need to be programmed on several platforms.
> + */
> +static void gen12_ctx_gt_tuning_init(struct intel_engine_cs *engine,
> +				     struct i915_wa_list *wal)
> +{
> +	/*
> +	 * Although some platforms refer to it as Wa_1604555607, we need to
> +	 * program it even on those that don't explicitly list that
> +	 * workaround.
> +	 *
> +	 * Note that the implementation of this workaround is further modified

Since we just got done saying that this technically isn't a workaround,
even though some of the older platforms still list it that way, I'd
re-word the comment here.  Maybe "Note that the programming of this
register is further modified..." would be more appropriate.

> +	 * according to the FF_MODE2 guidance given by Wa_1608008084:gen12.
> +	 *

Minor nitpick; the new paragraph start here makes it sound like we've
moved on to describing something else, rather than explaining what
Wa_1608008084:gen12 asks us to do.  I'd remove the blank line here and
start the next sentence with "Wa_1608008084 tells us..." to link the
statements together.


Matt

> +	 * FF_MODE2 register will return the wrong value when read. The default
> +	 * value for this register is zero for all fields and there are no bit
> +	 * masks. So instead of doing a RMW we should just write TDS timer
> +	 * value. For the same reason read verification is ignored.
> +	 */
> +	wa_add(wal,
> +	       FF_MODE2,
> +	       FF_MODE2_TDS_TIMER_MASK,
> +	       FF_MODE2_TDS_TIMER_128,
> +	       0);
> +}
> +
>  static void gen12_ctx_workarounds_init(struct intel_engine_cs *engine,
>  				       struct i915_wa_list *wal)
>  {
> +	gen12_ctx_gt_tuning_init(engine, wal);
> +
>  	/*
>  	 * Wa_1409142259:tgl
>  	 * Wa_1409347922:tgl
> @@ -675,19 +704,15 @@ static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
>  	gen12_ctx_workarounds_init(engine, wal);
>  
>  	/*
> -	 * Wa_1604555607:tgl,rkl
> +	 * Wa_16011163337
>  	 *
> -	 * Note that the implementation of this workaround is further modified
> -	 * according to the FF_MODE2 guidance given by Wa_1608008084:gen12.
> -	 * FF_MODE2 register will return the wrong value when read. The default
> -	 * value for this register is zero for all fields and there are no bit
> -	 * masks. So instead of doing a RMW we should just write the GS Timer
> -	 * and TDS timer values for Wa_1604555607 and Wa_16011163337.
> +	 * Like in gen12_ctx_gt_tuning_init(), read verification is ignored due
> +	 * to Wa_1608008084.
>  	 */
>  	wa_add(wal,
>  	       FF_MODE2,
> -	       FF_MODE2_GS_TIMER_MASK | FF_MODE2_TDS_TIMER_MASK,
> -	       FF_MODE2_GS_TIMER_224  | FF_MODE2_TDS_TIMER_128,
> +	       FF_MODE2_GS_TIMER_MASK,
> +	       FF_MODE2_GS_TIMER_224,
>  	       0);
>  }
>  
> @@ -707,12 +732,13 @@ static void dg1_ctx_workarounds_init(struct intel_engine_cs *engine,
>  	/*
>  	 * Wa_16011163337
>  	 *
> -	 * Like in tgl_ctx_workarounds_init(), read verification is ignored due
> +	 * Like in gen12_ctx_gt_tuning_init(), read verification is ignored due
>  	 * to Wa_1608008084.
>  	 */
>  	wa_add(wal,
>  	       FF_MODE2,
> -	       FF_MODE2_GS_TIMER_MASK, FF_MODE2_GS_TIMER_224, 0);
> +	       FF_MODE2_GS_TIMER_MASK,
> +	       FF_MODE2_GS_TIMER_224, 0);
>  }
>  
>  static void
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
