Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BED6C13551C
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 10:05:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F24689C89;
	Thu,  9 Jan 2020 09:05:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A2EB89C89
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 09:05:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 01:05:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,413,1571727600"; d="scan'208";a="216236911"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga008.jf.intel.com with ESMTP; 09 Jan 2020 01:05:02 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 1E79A5C1DE9; Thu,  9 Jan 2020 11:04:31 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200109085839.873553-11-chris@chris-wilson.co.uk>
References: <20200109085839.873553-1-chris@chris-wilson.co.uk>
 <20200109085839.873553-11-chris@chris-wilson.co.uk>
Date: Thu, 09 Jan 2020 11:04:31 +0200
Message-ID: <87muaxf1b4.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 11/14] drm/i915: Drop the shadow ring state
 from the error capture
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> The shadow ring regs (ring->head, ring->tail) are meaningless in the
> post-mortem dump as they do not related to anything on HW. Remove them
> from the coredump.

We have been dumping these just to check that our bookkeepping matches?
-Mika

>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/i915_gpu_error.c | 5 -----
>  drivers/gpu/drm/i915/i915_gpu_error.h | 4 ----
>  2 files changed, 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index b45c128d0a17..a35aad439281 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -553,8 +553,6 @@ static void error_print_engine(struct drm_i915_error_state_buf *m,
>  				   ee->vm_info.pp_dir_base);
>  		}
>  	}
> -	err_printf(m, "  ring->head: 0x%08x\n", ee->cpu_ring_head);
> -	err_printf(m, "  ring->tail: 0x%08x\n", ee->cpu_ring_tail);
>  	err_printf(m, "  engine reset count: %u\n", ee->reset_count);
>  
>  	for (n = 0; n < ee->num_ports; n++) {
> @@ -1428,9 +1426,6 @@ intel_engine_coredump_add_request(struct intel_engine_coredump *ee,
>  	if (HAS_BROKEN_CS_TLB(rq->i915))
>  		vma = capture_vma(vma, ee->engine->gt->scratch, "WA batch", gfp);
>  
> -	ee->cpu_ring_head = rq->ring->head;
> -	ee->cpu_ring_tail = rq->ring->tail;
> -
>  	ee->rq_head = rq->head;
>  	ee->rq_post = rq->postfix;
>  	ee->rq_tail = rq->tail;
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
> index 0df9d8c32056..8f4579d64d8c 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.h
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.h
> @@ -66,10 +66,6 @@ struct intel_engine_coredump {
>  	/* position of active request inside the ring */
>  	u32 rq_head, rq_post, rq_tail;
>  
> -	/* our own tracking of ring head and tail */
> -	u32 cpu_ring_head;
> -	u32 cpu_ring_tail;
> -
>  	/* Register state */
>  	u32 ccid;
>  	u32 start;
> -- 
> 2.25.0.rc1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
