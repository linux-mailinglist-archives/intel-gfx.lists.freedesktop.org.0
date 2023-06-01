Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE9C719818
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 12:01:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F48110E231;
	Thu,  1 Jun 2023 10:01:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF26B10E231
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jun 2023 10:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685613663; x=1717149663;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=dGF2w953eUVUUDf2jSDnhWGd9pv4edPd8ZOpufBVMRY=;
 b=ARmcql1KQX3pSc6nrEn670nq51uGzZznXn4OqZTs2tD27Jh1RGO4XCwT
 O6yl+OjB4cy8LFvoFlzUo90dopgex+n+ZSv0xvmhcAHScgn3WbhIzE7b7
 uZv3jRxQDW04EA8SVr+QKAdwrwrxB73KrHrXMYahfbIilpKKCVhpP7E0Q
 EZ75rPBUXMMHEuVdvfsN8VrM5Q0YSSeX7blw2OxK40Tv4mnHcs0AVCz/X
 xpDyWX6/mjUr9Rn4ih6mRBvnkSGk4cJwxNFdkStcfNl9ue6pH0+RkSP1N
 0+KWAnJqL1j9zkJUW063oBsF6SCA5NdsoPLFbKyfFlv7Q05zZ1TcP3C80 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="441875363"
X-IronPort-AV: E=Sophos;i="6.00,209,1681196400"; d="scan'208";a="441875363"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 03:01:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="772369830"
X-IronPort-AV: E=Sophos;i="6.00,209,1681196400"; d="scan'208";a="772369830"
Received: from mborsali-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.251.208.75])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 03:01:01 -0700
Date: Thu, 1 Jun 2023 12:00:58 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Message-ID: <ZHhsWkGpv+i384gP@ashyti-mobl2.lan>
References: <20230601091518.1698066-1-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230601091518.1698066-1-tejas.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH V4] drm/i915/gt: Add workaround 14016712196
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

On Thu, Jun 01, 2023 at 02:45:18PM +0530, Tejas Upadhyay wrote:
> For mtl, workaround suggests that, SW insert a
> dummy PIPE_CONTROL prior to PIPE_CONTROL which
> contains a post sync: Timestamp or Write Immediate.
> 
> Bspec: 72197
> 
> V4:
>   - Update commit message, avoid returing cs - Andi/Matt
> V3:
>   - Wrap dummy pipe control stuff in API - Andi
> V2:
>   - Fix  kernel test robot warnings
> 
> Closes: https://lore.kernel.org/oe-kbuild-all/202305121525.3EWdGoBY-lkp@intel.com/
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 40 ++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> index e1c76e5bfa82..9e3d4323f36f 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> @@ -177,14 +177,42 @@ u32 *gen12_emit_aux_table_inv(struct intel_gt *gt, u32 *cs, const i915_reg_t inv
>  	return cs;
>  }
>  
> +static int mtl_dummy_pipe_control(struct i915_request *rq)
> +{
> +	/* Wa_14016712196 */
> +	if (IS_MTL_GRAPHICS_STEP(rq->engine->i915, M, STEP_A0, STEP_B0) ||
> +	    IS_MTL_GRAPHICS_STEP(rq->engine->i915, P, STEP_A0, STEP_B0)) {
> +		int ret = 0;

I think this is not needed.

> +		u32 *cs;
> +
> +		/* dummy PIPE_CONTROL + depth flush */
> +		cs = intel_ring_begin(rq, 6);
> +		ret = IS_ERR(cs);

not needed.

> +		if (ret)
> +			return PTR_ERR(cs);

if (IS_ERR(cs))
	return PTR_ERR(cs);

with this change:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi

> +		cs = gen12_emit_pipe_control(cs,
> +					     0,
> +					     PIPE_CONTROL_DEPTH_CACHE_FLUSH,
> +					     LRC_PPHWSP_SCRATCH_ADDR);
> +		intel_ring_advance(rq, cs);
> +	}
> +
> +	return 0;
> +}
> +
>  int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
>  {
>  	struct intel_engine_cs *engine = rq->engine;
>  
>  	if (mode & EMIT_FLUSH) {
>  		u32 flags = 0;
> +		int err;
>  		u32 *cs;
>  
> +		err = mtl_dummy_pipe_control(rq);
> +		if (err)
> +			return err;
> +
>  		flags |= PIPE_CONTROL_TILE_CACHE_FLUSH;
>  		flags |= PIPE_CONTROL_FLUSH_L3;
>  		flags |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
> @@ -217,6 +245,11 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
>  	if (mode & EMIT_INVALIDATE) {
>  		u32 flags = 0;
>  		u32 *cs, count;
> +		int err;
> +
> +		err = mtl_dummy_pipe_control(rq);
> +		if (err)
> +			return err;
>  
>  		flags |= PIPE_CONTROL_COMMAND_CACHE_INVALIDATE;
>  		flags |= PIPE_CONTROL_TLB_INVALIDATE;
> @@ -733,6 +766,13 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
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
