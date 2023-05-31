Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A67DE718779
	for <lists+intel-gfx@lfdr.de>; Wed, 31 May 2023 18:35:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2202610E102;
	Wed, 31 May 2023 16:35:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09CA110E102
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 16:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685550898; x=1717086898;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=QxY/cIelnwdIqd2rWTnEDvT99fNI0SLdYWwBibXO8S0=;
 b=PjidvxWfbFlNcmvHgAuPu43dfmVkw3SIxkp5MwGeuzNg2OhvQ4MRK+zT
 Zk48XufPoFP6I6jChXJ0qSOHdtoWEM5cJrfZqaFSyQewAai70vsepwWME
 EsHToUhYlltArBdZW+sJ2xpz/cygNyI8ARvINCxsHDY/6EseD8vZgTshZ
 KFWxN2Gi6e0I96utUAgptpMg0pDbN6vWkchn9RoaRNuxxqVwt1hbD8GXU
 GWYaquZ8/VbbOYcV4wcMYfaAWjhYjG8Pa6QEmzskybaBmK1bmn4IHllFw
 O3PmgJL2tihrZSCAo3IksXpTedCLPNVaODj4CTuw+b79ajPIB/2lgILbf Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="357683472"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="357683472"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 09:34:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="953694205"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="953694205"
Received: from itaraban-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.47.19])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 09:34:55 -0700
Date: Wed, 31 May 2023 18:34:52 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Message-ID: <ZHd3LNzcPOeX/EQj@ashyti-mobl2.lan>
References: <20230531143214.1650701-1-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230531143214.1650701-1-tejas.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH V3] drm/i915/gt: Add workaround 14016712196
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tejas,

On Wed, May 31, 2023 at 08:02:14PM +0530, Tejas Upadhyay wrote:
> Wa_14016712196 implementation for mtl
> 
> Bspec: 72197
> 
> V3:
>   - Wrap dummy pipe control stuff in API - Andi
> V2:
>   - Fix  kernel test robot warnings
> 
> Closes: https://lore.kernel.org/oe-kbuild-all/202305121525.3EWdGoBY-lkp@intel.com/
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 39 ++++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> index e1c76e5bfa82..206947f1fc7c 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> @@ -177,6 +177,30 @@ u32 *gen12_emit_aux_table_inv(struct intel_gt *gt, u32 *cs, const i915_reg_t inv
>  	return cs;
>  }
>  
> +static u32 *mtl_dummy_pipe_control(struct i915_request *rq)
> +{
> +	u32 *cs;
> +
> +	/* Wa_14016712196 */
> +	if (IS_MTL_GRAPHICS_STEP(rq->engine->i915, M, STEP_A0, STEP_B0) ||
> +	    IS_MTL_GRAPHICS_STEP(rq->engine->i915, P, STEP_A0, STEP_B0)) {
> +		int ret;
> +
> +		/* dummy PIPE_CONTROL + depth flush */
> +		cs = intel_ring_begin(rq, 6);
> +		ret = IS_ERR(cs);
> +		if (ret)
> +			return ERR_PTR(ret);
> +		cs = gen12_emit_pipe_control(cs,
> +					     0,
> +					     PIPE_CONTROL_DEPTH_CACHE_FLUSH,
> +					     LRC_PPHWSP_SCRATCH_ADDR);
> +		intel_ring_advance(rq, cs);
> +	}
> +
> +	return cs;

mmmhhh... the value of cs at the end is not used, unless it's an
error. Isn't it better to just have this function as a "static
int" that returns '0' or -errno?

This might also confuse some static analyzers, I guess.

Andi

> +}
> +
>  int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
>  {
>  	struct intel_engine_cs *engine = rq->engine;
> @@ -185,6 +209,10 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
>  		u32 flags = 0;
>  		u32 *cs;
>  
> +		cs = mtl_dummy_pipe_control(rq);
> +		if (IS_ERR(cs))
> +			return PTR_ERR(cs);
> +
>  		flags |= PIPE_CONTROL_TILE_CACHE_FLUSH;
>  		flags |= PIPE_CONTROL_FLUSH_L3;
>  		flags |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
> @@ -218,6 +246,10 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
>  		u32 flags = 0;
>  		u32 *cs, count;
>  
> +		cs = mtl_dummy_pipe_control(rq);
> +		if (IS_ERR(cs))
> +			return PTR_ERR(cs);
> +
>  		flags |= PIPE_CONTROL_COMMAND_CACHE_INVALIDATE;
>  		flags |= PIPE_CONTROL_TLB_INVALIDATE;
>  		flags |= PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE;
> @@ -733,6 +765,13 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
>  		     PIPE_CONTROL_DC_FLUSH_ENABLE |
>  		     PIPE_CONTROL_FLUSH_ENABLE);
>  
> +	/* Wa_14016712196 */
> +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> +		/* dummy PIPE_CONTROL + depth flush */
> +		cs = gen12_emit_pipe_control(cs, 0,
> +					     PIPE_CONTROL_DEPTH_CACHE_FLUSH, 0);
> +
>  	if (GRAPHICS_VER(i915) == 12 && GRAPHICS_VER_FULL(i915) < IP_VER(12, 50))
>  		/* Wa_1409600907 */
>  		flags |= PIPE_CONTROL_DEPTH_STALL;
> -- 
> 2.25.1
