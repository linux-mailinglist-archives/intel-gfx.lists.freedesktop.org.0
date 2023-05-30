Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9851C716F59
	for <lists+intel-gfx@lfdr.de>; Tue, 30 May 2023 23:05:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D52BA10E428;
	Tue, 30 May 2023 21:05:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38C7310E431
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 May 2023 21:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685480749; x=1717016749;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=jmPe0G5tFF61577OT7698lk2qdRVaxrY+8Zsa6BK+M8=;
 b=RGt5g3bwWumpb/vcnCujkqAptAwgfAHH/fG/yczUMT2Ui/20teISFfnu
 42dNDO4VNwKFB8DgnM2qcpbR6sfhOTrvH/ajR2GTuCfhguXfjfczuS4OH
 E5aZhu9mPeRWpSVF831RTkw3vcPfFD8MWHdWDg/Cfjf+WY8/kJbBSGDpR
 BYyX0fXwKRIzfGvfKhcSr+SVWNmYOhndXeLBvc9Eo5rprtVqTZaNh/Gnb
 HMO3U0KIS2x4cUsXrSmIJVUH3v/JMXBXbiPdmNJv0VUeYYPRWPq2B6rNl
 0YJYysAgn/xfgkkMPU50o+cSBnP/8PoDMqNjd2NmEwKXehjziHnDD4JHY Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="344551772"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="344551772"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 14:05:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="771718843"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="771718843"
Received: from amyachev-mobl3.ccr.corp.intel.com (HELO intel.com)
 ([10.252.53.184])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 14:05:42 -0700
Date: Tue, 30 May 2023 23:05:40 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Message-ID: <ZHZlJFaIZNOTmFVN@ashyti-mobl2.lan>
References: <20230517132230.1102553-1-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230517132230.1102553-1-tejas.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/gt: Add workaround 14016712196
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

On Wed, May 17, 2023 at 06:52:30PM +0530, Tejas Upadhyay wrote:
> Wa_14016712196 implementation for mtl
> 
> Bspec: 72197
> 
> V2:
>   - Fix  kernel test robot warnings
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202305121525.3EWdGoBY-lkp@intel.com/
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 41 ++++++++++++++++++++++++
>  1 file changed, 41 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> index e1c76e5bfa82..737eb515544b 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> @@ -177,14 +177,38 @@ u32 *gen12_emit_aux_table_inv(struct intel_gt *gt, u32 *cs, const i915_reg_t inv
>  	return cs;
>  }
>  
> +static int mtl_dummy_pipe_control(struct i915_request *rq, u32 *cs)
> +{
> +	if (IS_ERR(cs))
> +		return PTR_ERR(cs);
> +	cs = gen12_emit_pipe_control(cs,
> +				     0,
> +				     PIPE_CONTROL_DEPTH_CACHE_FLUSH,
> +				     LRC_PPHWSP_SCRATCH_ADDR);
> +	intel_ring_advance(rq, cs);
> +
> +	return 0;
> +}
> +
>  int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
>  {
>  	struct intel_engine_cs *engine = rq->engine;
> +	int err;
>  
>  	if (mode & EMIT_FLUSH) {
>  		u32 flags = 0;
>  		u32 *cs;
>  
> +		/* Wa_14016712196 */
> +		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> +		    IS_MTL_GRAPHICS_STEP(engine->i915, P, STEP_A0, STEP_B0)) {
> +			/* dummy PIPE_CONTROL + depth flush */
> +			cs = intel_ring_begin(rq, 6);
> +			err = mtl_dummy_pipe_control(rq, cs);
> +			if (err)
> +				return err;
> +		}
> +
>  		flags |= PIPE_CONTROL_TILE_CACHE_FLUSH;
>  		flags |= PIPE_CONTROL_FLUSH_L3;
>  		flags |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
> @@ -218,6 +242,16 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
>  		u32 flags = 0;
>  		u32 *cs, count;
>  
> +		/* Wa_14016712196 */
> +		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> +		    IS_MTL_GRAPHICS_STEP(engine->i915, P, STEP_A0, STEP_B0)) {
> +			/* dummy PIPE_CONTROL + depth flush */
> +			cs = intel_ring_begin(rq, 6);
> +			err = mtl_dummy_pipe_control(rq, cs);
> +			if (err)
> +				return err;
> +		}
> +

as the two blocks are basically identical, why not put both of
them inside mtl_dummy_pipe_control() and you would basically have
something like:

		/* Wa_14016712196 */
		cs = mtl_dummy_pipe_control(rq, cs);
		if (IS_ERR(cs))
			return PTR_ERR(cs);

Besides, you check the err value from intel_ring_begin inside
mtl_dummy_pipe_control(), which looks a bit weird to me.

I'm wondering, though, if we can put both dummy pipe and real
pipe in the same command and advance the ring only once at the
end... nevermind.

Andi
