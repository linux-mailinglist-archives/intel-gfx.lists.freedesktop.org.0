Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A315B4B1AAD
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 01:47:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94F4210E35D;
	Fri, 11 Feb 2022 00:47:25 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B232310E35D
 for <Intel-gfx@lists.freedesktop.org>; Fri, 11 Feb 2022 00:47:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644540444; x=1676076444;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/ADLHluQXVAQNxus/gUdnreuGTHrbvyc9UE8GLVPzu8=;
 b=d4pkG4nFsEzxQzokfBRgJ1cS7Z65Xd9/GGSsL48COoZ4qsU6AAH8/WQa
 gVyc3+8YnW4Vpsb/ocqA+AaVjyyPrL0s2J1IbfyiGu39/r/zaAk9E7N5f
 FuKTVKe5VajQBS5cY0UhuORUgYFcm4MjNxiuwTbKDQt4P3rSsuNHSs3IG
 YxQCjvy6DetLuT22yEJi6sX3pGkr3gZEQ7lLGMGnpbI8J8JNBJYBSTsJ7
 Gt4r+PdUT6Ed1j6UYbs3CmTMjkWlpnqpqojx9VbrpBPozMDbREN6l+vef
 c2NT/FpMFISZvnV4YOccnga2DJx5UcOb6SvU+pyw7IVu7z/oa02cT8yR8 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="247216715"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="247216715"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 16:47:23 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="486050118"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 16:47:22 -0800
Date: Thu, 10 Feb 2022 16:47:20 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: clinton.a.taylor@intel.com
Message-ID: <YgWyGI4jiZlSdzcS@mdroper-desk1.amr.corp.intel.com>
References: <20220211001342.16730-1-clinton.a.taylor@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220211001342.16730-1-clinton.a.taylor@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dg2: add Wa_14014947963
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
Cc: Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 10, 2022 at 04:13:42PM -0800, clinton.a.taylor@intel.com wrote:
> From: Clint Taylor <clinton.a.taylor@intel.com>
> 
> BSPEC: 46123
> v2: Address review feedback [MattR]
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
>  drivers/gpu/drm/i915/i915_reg.h             | 2 ++
>  2 files changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index b146a393cd79..c6b78529d149 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -689,6 +689,11 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
>  	    IS_DG2_GRAPHICS_STEP(engine->i915, G11, STEP_A0, STEP_B0))
>  		wa_masked_en(wal, GEN9_HALF_SLICE_CHICKEN7,
>  			     DG2_DISABLE_ROUND_ENABLE_ALLOW_FOR_SSLA);
> +
> +	/* wa_14014947963: DG2 G10 [B0..NONE] G11 [ALL] */
> +	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_B0, STEP_FOREVER) ||
> +		IS_DG2_G11(engine->i915))

It looks like this workaround also applies to DG2-G12 (all steppings),
so we'll need an "|| IS_DG2_G12(engine->i915)" added to the condition
here.

> +		wa_masked_field_set(wal, VF_PREEMPTION, PREEMPTION_VERTEX_COUNT, 0x4000);
>  }
>  
>  static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 87c92314ee26..bfbeebe57725 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9928,4 +9928,6 @@ enum skl_power_gate {
>  #define CLKGATE_DIS_MISC			_MMIO(0x46534)
>  #define  CLKGATE_DIS_MISC_DMASC_GATING_DIS	REG_BIT(21)
>  
> +#define VF_PREEMPTION			_MMIO(0x83a4)
> +#define  PREEMPTION_VERTEX_COUNT	REG_GENMASK(15, 0)

This should go in drivers/gpu/drm/i915/gt/intel_gt_regs.h now that we've
started splitting up the register file.



Matt

>  #endif /* _I915_REG_H_ */
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
