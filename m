Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F2E348F22C
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jan 2022 22:57:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CF5510E249;
	Fri, 14 Jan 2022 21:57:48 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7872F10E249
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jan 2022 21:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642197466; x=1673733466;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=X+Qb9pSLm8qKVS0+c4ISQxT9iYCibdR58B1puUeXYow=;
 b=Gq9LmjYbnfxrO4lzsaU7W+h+MS2vkS8PJNVcfmawaWmjdDxtzBoebltE
 dy8I88QGdi7ijMBAYWfvMqtOFDruORLQxqnYB/fkV1t5iucPsWMjlqW/v
 ZVeXk/LBRf51XhWhhkP6o6g/ulxnEuGm9up6R3OECpxRETl/yhJ6Kx1XA
 SOC1ogK6VKOQxVLjV5CXZ0+FuVX8Jwr6LSmAgxpMGTkQ5uhvaA+Bmavr1
 j7pgQRHJMQ8WbGF05fgvA58US3W+SpSzo5Caf0oEQw9Tj7kS1rPmy0Hml
 4iHN9yrxu4RFqrYEVp4PkZQy22TTeEbHeV0PVlycIxNpeXB5dFbCWGJ49 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10227"; a="330685622"
X-IronPort-AV: E=Sophos;i="5.88,289,1635231600"; d="scan'208";a="330685622"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2022 13:57:45 -0800
X-IronPort-AV: E=Sophos;i="5.88,289,1635231600"; d="scan'208";a="475924969"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2022 13:57:45 -0800
Date: Fri, 14 Jan 2022 13:57:44 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: clinton.a.taylor@intel.com
Message-ID: <YeHx2ILVVFVvAmbV@mdroper-desk1.amr.corp.intel.com>
References: <20220114194131.21999-1-clinton.a.taylor@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220114194131.21999-1-clinton.a.taylor@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: add Wa_14015023722
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

On Fri, Jan 14, 2022 at 11:41:31AM -0800, clinton.a.taylor@intel.com wrote:
> From: Clint Taylor <clinton.a.taylor@intel.com>
> 
> BSPEC: 46123
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
>  drivers/gpu/drm/i915/i915_reg.h             | 4 ++++
>  2 files changed, 9 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 6a4372c3a3c5..5cdacfa8aefc 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -688,6 +688,11 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
>  	    IS_DG2_GRAPHICS_STEP(engine->i915, G11, STEP_A0, STEP_B0))
>  		wa_masked_en(wal, GEN9_HALF_SLICE_CHICKEN7,
>  			     DG2_DISABLE_ROUND_ENABLE_ALLOW_FOR_SSLA);
> +
> +	/* wa_14015023722: DG2 G11 [B0..NONE] */

We generally want to refer to workarounds by their lineage number rather
than by their per-platform bug IDs.  In this case the lineage number of
the workaround is Wa_14014947963.

> +	if (IS_DG2_GRAPHICS_STEP(engine->i915, G11, STEP_B0, STEP_FOREVER))

It looks like this workaround applies to DG2-G10 for B0 and beyond, so
the condition above should say "G10" rather than G11.  It also applies
to G11 and G12 for _all_ steppings.  I haven't sent the patch that adds
the G12 subplatform yet, but I'll do that soon.  In the meantime, you'll
want an "|| IS_DG2_G11(engine->i915)" added to the condition since it
applies to all steppings of that subplatform.

> +		wa_masked_en(wal, VF_PREEMPTION, PREEMPTION_VERTEX_4000);

wa_masked_en() will turn on any bits in PREEMPTION_VERTEX_4000 (i.e.,
bit 14 in this case), but won't clear any of the other bits that might
already be set in hardware.  I think you want to use

    wa_masked_field_set(wal, VF_PREEMPTION, PREEMPTION_VERTEX_COUNT, 0x4000)

so that the bits 15:0 become exactly 0x4000 rather than just having bit
14 turned on.  I also think it's fine to just pass a literal 0x4000 for
the final parameter rather than PREEMPTION_VERTEX_4000 in this case
since it is just a count and not representing a special enum value or
anything.


Matt

> +
>  }
>  
>  static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index ef6bc8180073..5805a45920b3 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -11934,4 +11934,8 @@ enum skl_power_gate {
>  #define SLICE_COMMON_ECO_CHICKEN1		_MMIO(0x731C)
>  #define   MSC_MSAA_REODER_BUF_BYPASS_DISABLE	REG_BIT(14)
>  
> +#define VF_PREEMPTION			_MMIO(0x83a4)
> +#define  PREEMPTION_VERTEX_COUNT	REG_GENMASK(15, 0)
> +#define  PREEMPTION_VERTEX_4000		REG_FIELD_PREP(PREEMPTION_VERTEX_COUNT, 0x4000)
> +
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
