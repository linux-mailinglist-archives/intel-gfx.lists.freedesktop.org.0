Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FC42D6648
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 20:22:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C2016EB04;
	Thu, 10 Dec 2020 19:22:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F2ED6EAD3
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 19:22:30 +0000 (UTC)
IronPort-SDR: GygTgYVSObQMnRog+Y0zzj7X9/sa3FwGJRfyIAmH/oVOGXe/zkmr8gkCdEVDD32/BcKFQIebUy
 O2p1HrBC+KGw==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="170813403"
X-IronPort-AV: E=Sophos;i="5.78,409,1599548400"; d="scan'208";a="170813403"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 11:22:30 -0800
IronPort-SDR: 6lJ+6dh/wEhWUnqJEU9S/wqouQ4aLho7td3xKPnl50qPSMkzVu/2M8zXwT3EUYTRvoOBjNzIw3
 uLBcsVIDilUA==
X-IronPort-AV: E=Sophos;i="5.78,409,1599548400"; d="scan'208";a="553432945"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 11:22:29 -0800
Date: Thu, 10 Dec 2020 11:16:44 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201210191644.GA6255@sdutt-i7>
References: <20201210080240.24529-1-chris@chris-wilson.co.uk>
 <20201210080240.24529-19-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201210080240.24529-19-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 19/21] drm/i915/gt: Use indices for writing
 into relative timelines
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

On Thu, Dec 10, 2020 at 08:02:38AM +0000, Chris Wilson wrote:
> Relative timelines are relative to either the global or per-process
> HWSP, and so we can replace the absolute addressing with store-index
> variants for position invariance.
> 

Can you explain the benifit of relative addressing? Why can't we also
use absolute? If we can always use absolute, I don't see the point
complicating the breadcrumb code.

Matt

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 98 +++++++++++++++++-------
>  drivers/gpu/drm/i915/gt/intel_timeline.h | 12 +++
>  2 files changed, 82 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> index ed88dc4de72c..386da26816d0 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> @@ -502,7 +502,19 @@ gen8_emit_fini_breadcrumb_tail(struct i915_request *rq, u32 *cs)
>  
>  static u32 *emit_xcs_breadcrumb(struct i915_request *rq, u32 *cs)
>  {
> -	return gen8_emit_ggtt_write(cs, rq->fence.seqno, hwsp_offset(rq), 0);
> +	struct intel_timeline *tl = rcu_dereference_protected(rq->timeline, 1);
> +	unsigned int flags = MI_FLUSH_DW_OP_STOREDW;
> +	u32 offset = hwsp_offset(rq);
> +
> +	if (intel_timeline_is_relative(tl)) {
> +		offset = offset_in_page(offset);
> +		flags |= MI_FLUSH_DW_STORE_INDEX;
> +	}
> +	GEM_BUG_ON(offset & 7);
> +	if (intel_timeline_is_global(tl))
> +		offset |= MI_FLUSH_DW_USE_GTT;
> +
> +	return __gen8_emit_flush_dw(cs, rq->fence.seqno, offset, flags);
>  }
>  
>  u32 *gen8_emit_fini_breadcrumb_xcs(struct i915_request *rq, u32 *cs)
> @@ -512,6 +524,18 @@ u32 *gen8_emit_fini_breadcrumb_xcs(struct i915_request *rq, u32 *cs)
>  
>  u32 *gen8_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
>  {
> +	struct intel_timeline *tl = rcu_dereference_protected(rq->timeline, 1);
> +	unsigned int flags = PIPE_CONTROL_FLUSH_ENABLE | PIPE_CONTROL_CS_STALL;
> +	u32 offset = hwsp_offset(rq);
> +
> +	if (intel_timeline_is_relative(tl)) {
> +		offset = offset_in_page(offset);
> +		flags |= PIPE_CONTROL_STORE_DATA_INDEX;
> +	}
> +	GEM_BUG_ON(offset & 7);
> +	if (intel_timeline_is_global(tl))
> +		flags |= PIPE_CONTROL_GLOBAL_GTT_IVB;
> +
>  	cs = gen8_emit_pipe_control(cs,
>  				    PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
>  				    PIPE_CONTROL_DEPTH_CACHE_FLUSH |
> @@ -519,26 +543,33 @@ u32 *gen8_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
>  				    0);
>  
>  	/* XXX flush+write+CS_STALL all in one upsets gem_concurrent_blt:kbl */
> -	cs = gen8_emit_ggtt_write_rcs(cs,
> -				      rq->fence.seqno,
> -				      hwsp_offset(rq),
> -				      PIPE_CONTROL_FLUSH_ENABLE |
> -				      PIPE_CONTROL_CS_STALL);
> +	cs = __gen8_emit_write_rcs(cs, rq->fence.seqno, offset, 0, flags);
>  
>  	return gen8_emit_fini_breadcrumb_tail(rq, cs);
>  }
>  
>  u32 *gen11_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
>  {
> -	cs = gen8_emit_ggtt_write_rcs(cs,
> -				      rq->fence.seqno,
> -				      hwsp_offset(rq),
> -				      PIPE_CONTROL_CS_STALL |
> -				      PIPE_CONTROL_TILE_CACHE_FLUSH |
> -				      PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
> -				      PIPE_CONTROL_DEPTH_CACHE_FLUSH |
> -				      PIPE_CONTROL_DC_FLUSH_ENABLE |
> -				      PIPE_CONTROL_FLUSH_ENABLE);
> +	struct intel_timeline *tl = rcu_dereference_protected(rq->timeline, 1);
> +	u32 offset = hwsp_offset(rq);
> +	unsigned int flags;
> +
> +	flags = (PIPE_CONTROL_CS_STALL |
> +		 PIPE_CONTROL_TILE_CACHE_FLUSH |
> +		 PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
> +		 PIPE_CONTROL_DEPTH_CACHE_FLUSH |
> +		 PIPE_CONTROL_DC_FLUSH_ENABLE |
> +		 PIPE_CONTROL_FLUSH_ENABLE);
> +
> +	if (intel_timeline_is_relative(tl)) {
> +		offset = offset_in_page(offset);
> +		flags |= PIPE_CONTROL_STORE_DATA_INDEX;
> +	}
> +	GEM_BUG_ON(offset & 7);
> +	if (intel_timeline_is_global(tl))
> +		flags |= PIPE_CONTROL_GLOBAL_GTT_IVB;
> +
> +	cs = __gen8_emit_write_rcs(cs, rq->fence.seqno, offset, 0, flags);
>  
>  	return gen8_emit_fini_breadcrumb_tail(rq, cs);
>  }
> @@ -601,19 +632,30 @@ u32 *gen12_emit_fini_breadcrumb_xcs(struct i915_request *rq, u32 *cs)
>  
>  u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
>  {
> -	cs = gen12_emit_ggtt_write_rcs(cs,
> -				       rq->fence.seqno,
> -				       hwsp_offset(rq),
> -				       PIPE_CONTROL0_HDC_PIPELINE_FLUSH,
> -				       PIPE_CONTROL_CS_STALL |
> -				       PIPE_CONTROL_TILE_CACHE_FLUSH |
> -				       PIPE_CONTROL_FLUSH_L3 |
> -				       PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
> -				       PIPE_CONTROL_DEPTH_CACHE_FLUSH |
> -				       /* Wa_1409600907:tgl */
> -				       PIPE_CONTROL_DEPTH_STALL |
> -				       PIPE_CONTROL_DC_FLUSH_ENABLE |
> -				       PIPE_CONTROL_FLUSH_ENABLE);
> +	struct intel_timeline *tl = rcu_dereference_protected(rq->timeline, 1);
> +	u32 offset = hwsp_offset(rq);
> +	unsigned int flags;
> +
> +	flags = (PIPE_CONTROL_CS_STALL |
> +		 PIPE_CONTROL_TILE_CACHE_FLUSH |
> +		 PIPE_CONTROL_FLUSH_L3 |
> +		 PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
> +		 PIPE_CONTROL_DEPTH_CACHE_FLUSH |
> +		 /* Wa_1409600907:tgl */
> +		 PIPE_CONTROL_DEPTH_STALL |
> +		 PIPE_CONTROL_DC_FLUSH_ENABLE |
> +		 PIPE_CONTROL_FLUSH_ENABLE);
> +
> +	if (intel_timeline_is_relative(tl)) {
> +		offset = offset_in_page(offset);
> +		flags |= PIPE_CONTROL_STORE_DATA_INDEX;
> +	}
> +	GEM_BUG_ON(offset & 7);
> +	if (intel_timeline_is_global(tl))
> +		flags |= PIPE_CONTROL_GLOBAL_GTT_IVB;
> +
> +	cs = __gen8_emit_write_rcs(cs, rq->fence.seqno, offset,
> +				   PIPE_CONTROL0_HDC_PIPELINE_FLUSH, flags);
>  
>  	return gen12_emit_fini_breadcrumb_tail(rq, cs);
>  }
> diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.h b/drivers/gpu/drm/i915/gt/intel_timeline.h
> index 69250de3a814..a3bdbff62e96 100644
> --- a/drivers/gpu/drm/i915/gt/intel_timeline.h
> +++ b/drivers/gpu/drm/i915/gt/intel_timeline.h
> @@ -79,6 +79,18 @@ intel_timeline_has_initial_breadcrumb(const struct intel_timeline *tl)
>  	return tl->mode == INTEL_TIMELINE_ABSOLUTE;
>  }
>  
> +static inline bool
> +intel_timeline_is_relative(const struct intel_timeline *tl)
> +{
> +	return tl->mode != INTEL_TIMELINE_ABSOLUTE;
> +}
> +
> +static inline bool
> +intel_timeline_is_global(const struct intel_timeline *tl)
> +{
> +	return tl->mode != INTEL_TIMELINE_CONTEXT;
> +}
> +
>  static inline int __intel_timeline_sync_set(struct intel_timeline *tl,
>  					    u64 context, u32 seqno)
>  {
> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
