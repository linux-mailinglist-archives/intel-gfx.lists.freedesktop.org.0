Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95DA671A159
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 17:00:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0222310E56D;
	Thu,  1 Jun 2023 15:00:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7436810E56D
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jun 2023 15:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685631615; x=1717167615;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=gsorFYikw8eL+ogWOIBnuRuYvzGI8ejC7/oK64Esn0M=;
 b=aN4DLaMJempf0v502PFbmElcobFvpWRzt1Se7DyIbeN2HYEwNeoF66pn
 SDyh0SSVOkrINeDfhnI159XFJEDvyhVg8FNUmXEf/hz1HJxwHV453VngN
 7xfpHhEPPaYbxvnlA2m9vDmlHLqKaH9e43aCwra7kXuEw4Ob/gdcrlLCX
 KlOY8nzHj9kpICBuXkDw9YFEL9R//OMbofH5VSxCv3nY7s1VjhzxVdyZe
 tnU1hV/bP1aTyYrN/jta2DxXUkYQsQi3wI7w7m1J0ZJ3lEjmRLwXtCYE8
 TW7DEwlkZOGNl3vJEkGn+r/dxDkbb83IAg6wqL6EfLv/dheksKghZjNVb A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="355592827"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="355592827"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 07:59:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="1037532869"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="1037532869"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.9.133])
 ([10.213.9.133])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 07:59:58 -0700
Message-ID: <6d288d23-458d-5559-bc6b-efa1fc869dcf@intel.com>
Date: Thu, 1 Jun 2023 16:59:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.11.2
Content-Language: en-US
To: Tejas Upadhyay <tejas.upadhyay@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230601110959.1715927-1-tejas.upadhyay@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230601110959.1715927-1-tejas.upadhyay@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH V5] drm/i915/gt: Add workaround 14016712196
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

On 01.06.2023 13:09, Tejas Upadhyay wrote:
> For mtl, workaround suggests that, SW insert a
> dummy PIPE_CONTROL prior to PIPE_CONTROL which
> contains a post sync: Timestamp or Write Immediate.
> 
> Bspec: 72197
> 
> V5:
>    - Remove ret variable - Andi
> V4:
>    - Update commit message, avoid returing cs - Andi/Matt
> V3:
>    - Wrap dummy pipe control stuff in API - Andi
> V2:
>    - Fix  kernel test robot warnings
> 
> Closes: https://lore.kernel.org/oe-kbuild-all/202305121525.3EWdGoBY-lkp@intel.com/
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 38 ++++++++++++++++++++++++
>   1 file changed, 38 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> index e1c76e5bfa82..23857cc08eca 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> @@ -177,14 +177,40 @@ u32 *gen12_emit_aux_table_inv(struct intel_gt *gt, u32 *cs, const i915_reg_t inv
>   	return cs;
>   }
>   
> +static int mtl_dummy_pipe_control(struct i915_request *rq)
> +{
> +	/* Wa_14016712196 */
> +	if (IS_MTL_GRAPHICS_STEP(rq->engine->i915, M, STEP_A0, STEP_B0) ||
> +	    IS_MTL_GRAPHICS_STEP(rq->engine->i915, P, STEP_A0, STEP_B0)) {
> +		u32 *cs;
> +
> +		/* dummy PIPE_CONTROL + depth flush */
> +		cs = intel_ring_begin(rq, 6);
> +		if (IS_ERR(cs))
> +			return PTR_ERR(cs);
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
>   int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
>   {
>   	struct intel_engine_cs *engine = rq->engine;
>   
>   	if (mode & EMIT_FLUSH) {
>   		u32 flags = 0;
> +		int err;
>   		u32 *cs;
>   
> +		err = mtl_dummy_pipe_control(rq);
> +		if (err)
> +			return err;
> +
>   		flags |= PIPE_CONTROL_TILE_CACHE_FLUSH;
>   		flags |= PIPE_CONTROL_FLUSH_L3;
>   		flags |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
> @@ -217,6 +243,11 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
>   	if (mode & EMIT_INVALIDATE) {
>   		u32 flags = 0;
>   		u32 *cs, count;
> +		int err;
> +
> +		err = mtl_dummy_pipe_control(rq);
> +		if (err)
> +			return err;
>   
>   		flags |= PIPE_CONTROL_COMMAND_CACHE_INVALIDATE;
>   		flags |= PIPE_CONTROL_TLB_INVALIDATE;
> @@ -733,6 +764,13 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
>   		     PIPE_CONTROL_DC_FLUSH_ENABLE |
>   		     PIPE_CONTROL_FLUSH_ENABLE);
>   
> +	/* Wa_14016712196 */
> +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> +		/* dummy PIPE_CONTROL + depth flush */
> +		cs = gen12_emit_pipe_control(cs, 0,
> +					     PIPE_CONTROL_DEPTH_CACHE_FLUSH, 0);
> +
>   	if (GRAPHICS_VER(i915) == 12 && GRAPHICS_VER_FULL(i915) < IP_VER(12, 50))
>   		/* Wa_1409600907 */
>   		flags |= PIPE_CONTROL_DEPTH_STALL;

