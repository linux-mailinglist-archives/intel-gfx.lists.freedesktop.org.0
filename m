Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8033EDF74
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Aug 2021 23:44:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A97789FED;
	Mon, 16 Aug 2021 21:44:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D9E389FED
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Aug 2021 21:44:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="203147260"
X-IronPort-AV: E=Sophos;i="5.84,327,1620716400"; d="scan'208";a="203147260"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 14:44:28 -0700
X-IronPort-AV: E=Sophos;i="5.84,327,1620716400"; d="scan'208";a="462172040"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 14:44:27 -0700
Date: Mon, 16 Aug 2021 14:44:26 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Apoorva Singh <apoorva1.singh@intel.com>
Message-ID: <20210816214426.GM1556418@mdroper-desk1.amr.corp.intel.com>
References: <20210816045229.423234-1-ayaz.siddiqui@intel.com>
 <20210816045229.423234-4-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210816045229.423234-4-ayaz.siddiqui@intel.com>
Subject: Re: [Intel-gfx] [PATCH V2 3/5] drm/i915/gt: Set BLIT_CCTL reg to
 un-cached
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

On Mon, Aug 16, 2021 at 10:22:27AM +0530, Ayaz A Siddiqui wrote:
> From: Apoorva Singh <apoorva1.singh@intel.com>
> 
> Blitter commands which does not have MOCS fields rely on
> cacheability of BlitterCacheControlRegister which was mapped
> to index 0 by default.Once we changed the MOCS value of
> index 0 to L3 WB, tests like gem_linear_blits started failing
> due to change in cacheability from UC to WB.
> 
> Program and place the BlitterCacheControlRegister in
> build_aux_regs().

As noted on the previous patch, I think it might be simpler to add this
register to the engine's context workaround list.  You'd need to do so
before the check for RENDER_CLASS in the __intel_engine_init_ctx_wa, but
I think overall it might be simpler than adding a separate table to add
these extra engine context settings.

Note that we also have some other "fake" workarounds coming that will do
something similar.  For example,
  https://patchwork.freedesktop.org/patch/448804/?series=92135&rev=10


Matt

> 
> Signed-off-by: Apoorva Singh <apoorva1.singh@intel.com>
> Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_mocs.c | 13 +++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h      |  7 +++++++
>  2 files changed, 20 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
> index 92141cf6f9a79..df3c5d550c46a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> @@ -372,6 +372,17 @@ add_aux_reg(struct drm_i915_aux_table *aux,
>  	return x;
>  }
>  
> +static struct drm_i915_aux_table *
> +add_blit_cctl_override(struct drm_i915_aux_table *aux, u8 idx)
> +{
> +	return add_aux_reg(aux,
> +			   "BLIT_CCTL",
> +			   BLIT_CCTL(0),
> +			   BLIT_CCTL_MOCS(idx, idx),
> +			   BLIT_CCTL_DST_MOCS_MASK | BLIT_CCTL_SRC_MOCS_MASK,
> +			   true);
> +}
> +
>  static struct drm_i915_aux_table *
>  add_cmd_cctl_override(struct drm_i915_aux_table *aux, u8 idx)
>  {
> @@ -398,6 +409,8 @@ build_aux_regs(const struct intel_engine_cs *engine,
>  		 * uncached index.
>  		 */
>  		aux = add_cmd_cctl_override(aux, mocs->uc_index);
> +		if (engine->class == COPY_ENGINE_CLASS && mocs->uc_index)
> +			aux = add_blit_cctl_override(aux, mocs->uc_index);
>  	}
>  
>  	return aux;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index c8e2ca1b20796..de3cc9d66ffaa 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2567,6 +2567,13 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>  		      REG_FIELD_PREP(CMD_CCTL_WRITE_OVERRIDE_MASK, (write) << 1) | \
>  		      REG_FIELD_PREP(CMD_CCTL_READ_OVERRIDE_MASK, (read) << 1))
>  
> +#define BLIT_CCTL(base)	_MMIO((base) + 0x204)
> +#define   BLIT_CCTL_DST_MOCS_MASK	REG_GENMASK(14, 8)
> +#define   BLIT_CCTL_SRC_MOCS_MASK	REG_GENMASK(6, 0)
> +#define   BLIT_CCTL_DST_MOCS_SHIFT	8
> +#define   BLIT_CCTL_MOCS(dst, src)							\
> +	((((dst) << 1) << BLIT_CCTL_DST_MOCS_SHIFT) | ((src) << 1))
> +
>  #define RING_RESET_CTL(base)	_MMIO((base) + 0xd0)
>  #define   RESET_CTL_CAT_ERROR	   REG_BIT(2)
>  #define   RESET_CTL_READY_TO_RESET REG_BIT(1)
> -- 
> 2.26.2
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
