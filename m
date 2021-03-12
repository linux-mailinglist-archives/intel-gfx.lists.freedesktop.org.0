Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DDF13395FC
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Mar 2021 19:16:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C85FD6ED23;
	Fri, 12 Mar 2021 18:16:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF9536ED23
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Mar 2021 18:16:22 +0000 (UTC)
IronPort-SDR: IZxx5yRknQG24x21OhQU/Y2HSzD9tnraGFRuvZU8MPj/gjx9QwUHOW2VxDOjxfFaJU0mEwjWyY
 BpdgaPXlRSuA==
X-IronPort-AV: E=McAfee;i="6000,8403,9921"; a="252888076"
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="252888076"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 10:16:22 -0800
IronPort-SDR: t81XZxVR4FsLTGX7OVZ1EdvjMc6EW2vuVDsasljYAmCYzlDjPlTgZEvm9ttJPK9Dz82G92FaG3
 BbBsrtMT+xFw==
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="600673560"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 10:16:21 -0800
Date: Fri, 12 Mar 2021 10:16:20 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
Message-ID: <20210312181620.GT2690983@mdroper-desk1.amr.corp.intel.com>
References: <20210311182612.17004-1-swathi.dhanavanthri@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210311182612.17004-1-swathi.dhanavanthri@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add Wa_14011060649
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

On Thu, Mar 11, 2021 at 10:26:12AM -0800, Swathi Dhanavanthri wrote:
> This is a permanent workaround for TGL,RKL,DG1 and ADLS.
> 
> Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 23 +++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h             |  3 +++
>  2 files changed, 26 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 3b4a7da60f0b..683a0446337a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1117,11 +1117,34 @@ icl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
>  			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
>  }
>  
> +/*
> + * This is a common function for WA 14011060649
> + */

This comment doesn't really add anything useful; the function name
itself makes it clear that it applies to WA 14011060649.

A more useful thing to comment on here is that although this workaround
programs some per-engine registers, those register values persist
through engine resets which is why this doesn't get added to a
per-engine workaround list; it should only be applied on the GT
workaround list.

With an updated comment,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> +static void
> +wa_14011060649(struct drm_i915_private *i915, struct i915_wa_list *wal)
> +{
> +	struct intel_engine_cs *engine;
> +	struct intel_gt *gt = &i915->gt;
> +	int id;
> +
> +	for_each_engine(engine, gt, id) {
> +		if ((engine->class != VIDEO_DECODE_CLASS) ||
> +		    (engine->instance % 2))
> +			continue;
> +
> +		wa_write_or(wal, VDBOX_CGCTL3F10(engine->mmio_base),
> +			    IECPUNIT_CLKGATE_DIS);
> +	}
> +}
> +
>  static void
>  gen12_gt_workarounds_init(struct drm_i915_private *i915,
>  			  struct i915_wa_list *wal)
>  {
>  	wa_init_mcr(i915, wal);
> +
> +	/* Wa_14011060649:tgl,rkl,dg1,adls */
> +	wa_14011060649(i915, wal);
>  }
>  
>  static void
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index e5dd0203991b..cc60556306e2 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2715,6 +2715,9 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>  #define RING_INDIRECT_CTX_OFFSET(base)	_MMIO((base) + 0x1c8) /* gen8+ */
>  #define RING_CTX_TIMESTAMP(base)	_MMIO((base) + 0x3a8) /* gen8+ */
>  
> +#define VDBOX_CGCTL3F10(base)		_MMIO((base) + 0x3f10)
> +#define   IECPUNIT_CLKGATE_DIS		REG_BIT(22)
> +
>  #define ERROR_GEN6	_MMIO(0x40a0)
>  #define GEN7_ERR_INT	_MMIO(0x44040)
>  #define   ERR_INT_POISON		(1 << 31)
> -- 
> 2.20.1
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
