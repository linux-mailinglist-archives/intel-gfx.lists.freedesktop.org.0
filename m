Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D913FE59C
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 01:21:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89E6E89915;
	Wed,  1 Sep 2021 23:21:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC97089915
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Sep 2021 23:21:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="206119668"
X-IronPort-AV: E=Sophos;i="5.84,370,1620716400"; d="scan'208";a="206119668"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 16:21:45 -0700
X-IronPort-AV: E=Sophos;i="5.84,370,1620716400"; d="scan'208";a="510625688"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 16:21:45 -0700
Date: Wed, 1 Sep 2021 16:21:43 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Apoorva Singh <apoorva1.singh@intel.com>
Message-ID: <20210901232143.GD461228@mdroper-desk1.amr.corp.intel.com>
References: <20210830162240.3891502-1-ayaz.siddiqui@intel.com>
 <20210830162240.3891502-5-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210830162240.3891502-5-ayaz.siddiqui@intel.com>
Subject: Re: [Intel-gfx] [PATCH V3 4/8] drm/i915/gt: Set BLIT_CCTL reg to
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

On Mon, Aug 30, 2021 at 09:52:36PM +0530, Ayaz A Siddiqui wrote:
> From: Apoorva Singh <apoorva1.singh@intel.com>
> 
> Blitter commands which do not have MOCS fields rely on
> cacheability of BlitterCacheControlRegister which was mapped
> to index 0 by default.Once we changed the MOCS value of
> index 0 to L3 WB, tests like gem_linear_blits started failing
> due to a change in cacheability from UC to WB.
> 
> Program and place the BlitterCacheControlRegister in
> build_aux_regs().
> 
> Signed-off-by: Apoorva Singh <apoorva1.singh@intel.com>
> Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_mocs.c | 13 +++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h      |  7 +++++++
>  2 files changed, 20 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
> index 403bd48362b19..82eafa8d22453 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> @@ -386,6 +386,17 @@ add_aux_reg(struct drm_i915_aux_table *aux,
>  	return x;
>  }
>  
> +static struct drm_i915_aux_table *
> +add_blit_cctl_override(struct drm_i915_aux_table *aux, u8 idx)
> +{
> +	return add_aux_reg(aux,
> +			   REG_ENGINE_CONTEXT,
> +			   "BLIT_CCTL",
> +			   BLIT_CCTL(0),
> +			   BLIT_CCTL_MOCS(idx, idx),
> +			   0);
> +}
> +
>  static struct drm_i915_aux_table *
>  add_cmd_cctl_override(struct drm_i915_aux_table *aux, u8 idx)
>  {
> @@ -412,6 +423,8 @@ build_aux_regs(const struct intel_engine_cs *engine,
>  		 * a entry in drm_i915_aux_table link list.
>  		 */
>  		aux = add_cmd_cctl_override(aux, mocs->uc_index);
> +		if (engine->class == COPY_ENGINE_CLASS)
> +			aux = add_blit_cctl_override(aux, mocs->uc_index);
>  	}
>  	return aux;
>  }
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index df7a4550fb50f..207e0ada179b2 100644
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

It would be preferable to write this as

        #define   BLIT_CCTL_MOCS(dst, src) (\
                REG_FIELD_PREP(BLIT_CCTL_DST_MOCS_MASK, (dst << 1)) | \
                REG_FIELD_PREP(BLIT_CCTL_SRC_MOCS_MASK, (src << 1)) \
        )

You can drop BLIT_CCTL_DST_MOCS_SHIFT too then.


In general the changes in this patch and patch #3 look okay, but they
may need to be reworked slightly if we change the general design of the
aux table framework based on the review feedback there.


Matt

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
