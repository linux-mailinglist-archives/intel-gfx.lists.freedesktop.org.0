Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24AEC5EDDA2
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 15:25:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4130D10E79A;
	Wed, 28 Sep 2022 13:25:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38A8610E798
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 13:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664371532; x=1695907532;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=iEgcXunwlwneZnJ57ZhM7P6ZxpSH6yfASJ8aq2Fmi9o=;
 b=j3pavsib+qMYAICF2DCZQqATdOXEKAgbSbJo5Wyt8T8HbV9YdLA2/cGb
 ZzO88EKmLqnB8LW7e1tikpoGwYHOMIiL51Fop52sQYjDy+CcN3Ij2SN6u
 RX2WDcgTwuhz0EwFJQHd3nBO00FsLQs4INa147mMdynGP6KjcpWlIKREv
 Coc8kx15g1pXGQUWBubtVkhDEIfxKg+HOGoHBX17Wpo/bJ+l3LrcTj48K
 6WjSe0TDej54UDwSkob8BIZZ6jqo0pqY0KoNUFGB0YRYwK+pjUXdmkhde
 r3Qumo4vhXD7/mjjsS3nkMDjduTf2beHH+Agz1TchFCPL9A4XkPF869x/ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="363439960"
X-IronPort-AV: E=Sophos;i="5.93,352,1654585200"; d="scan'208";a="363439960"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 06:25:31 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="725950801"
X-IronPort-AV: E=Sophos;i="5.93,352,1654585200"; d="scan'208";a="725950801"
Received: from ashyti-mobl2.igk.intel.com (HELO intel.com) ([172.28.182.107])
 by fmsmga002-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Sep 2022 06:25:29 -0700
Date: Wed, 28 Sep 2022 15:25:27 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <YzRLRxRbveo3m7Qn@ashyti-mobl2.lan>
References: <20220927171313.6553-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220927171313.6553-1-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Flush to global observation
 point before breadcrumb write
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

Hi Nirmoy and Prathap,

On Tue, Sep 27, 2022 at 07:13:13PM +0200, Nirmoy Das wrote:
> From: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> 
> Add flag to pipecontrol instruction to ensure in-flight writes are
> flushed to global observation point. Also split the pipecontrol
> instruction like we have in gen8.
> 
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/5886
> Signed-off-by: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi

> ---
>  drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 29 +++++++++++++++++-------
>  1 file changed, 21 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> index e49fa6fa6aee..31a2fbd8c4a8 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> @@ -583,6 +583,8 @@ u32 *gen8_emit_fini_breadcrumb_xcs(struct i915_request *rq, u32 *cs)
>  u32 *gen8_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
>  {
>  	cs = gen8_emit_pipe_control(cs,
> +				    PIPE_CONTROL_CS_STALL |
> +				    PIPE_CONTROL_TLB_INVALIDATE |
>  				    PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
>  				    PIPE_CONTROL_DEPTH_CACHE_FLUSH |
>  				    PIPE_CONTROL_DC_FLUSH_ENABLE,
> @@ -600,15 +602,21 @@ u32 *gen8_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
>  
>  u32 *gen11_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
>  {
> +	cs = gen8_emit_pipe_control(cs,
> +				    PIPE_CONTROL_CS_STALL |
> +				    PIPE_CONTROL_TLB_INVALIDATE |
> +				    PIPE_CONTROL_TILE_CACHE_FLUSH |
> +				    PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
> +				    PIPE_CONTROL_DEPTH_CACHE_FLUSH |
> +				    PIPE_CONTROL_DC_FLUSH_ENABLE,
> +				    0);
> +
> +	/*XXX: Look at gen8_emit_fini_breadcrumb_rcs */
>  	cs = gen8_emit_ggtt_write_rcs(cs,
>  				      rq->fence.seqno,
>  				      hwsp_offset(rq),
> -				      PIPE_CONTROL_CS_STALL |
> -				      PIPE_CONTROL_TILE_CACHE_FLUSH |
> -				      PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
> -				      PIPE_CONTROL_DEPTH_CACHE_FLUSH |
> -				      PIPE_CONTROL_DC_FLUSH_ENABLE |
> -				      PIPE_CONTROL_FLUSH_ENABLE);
> +				      PIPE_CONTROL_FLUSH_ENABLE |
> +				      PIPE_CONTROL_CS_STALL);
>  
>  	return gen8_emit_fini_breadcrumb_tail(rq, cs);
>  }
> @@ -715,6 +723,7 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
>  {
>  	struct drm_i915_private *i915 = rq->engine->i915;
>  	u32 flags = (PIPE_CONTROL_CS_STALL |
> +		     PIPE_CONTROL_TLB_INVALIDATE |
>  		     PIPE_CONTROL_TILE_CACHE_FLUSH |
>  		     PIPE_CONTROL_FLUSH_L3 |
>  		     PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
> @@ -731,11 +740,15 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
>  	else if (rq->engine->class == COMPUTE_CLASS)
>  		flags &= ~PIPE_CONTROL_3D_ENGINE_FLAGS;
>  
> +	cs = gen12_emit_pipe_control(cs, PIPE_CONTROL0_HDC_PIPELINE_FLUSH, flags, 0);
> +
> +	/*XXX: Look at gen8_emit_fini_breadcrumb_rcs */
>  	cs = gen12_emit_ggtt_write_rcs(cs,
>  				       rq->fence.seqno,
>  				       hwsp_offset(rq),
> -				       PIPE_CONTROL0_HDC_PIPELINE_FLUSH,
> -				       flags);
> +				       0,
> +				       PIPE_CONTROL_FLUSH_ENABLE |
> +				       PIPE_CONTROL_CS_STALL);
>  
>  	return gen12_emit_fini_breadcrumb_tail(rq, cs);
>  }
> -- 
> 2.37.3
