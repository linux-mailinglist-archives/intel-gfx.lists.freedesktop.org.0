Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 302C324173C
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Aug 2020 09:34:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 128C789C37;
	Tue, 11 Aug 2020 07:34:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa1.bahnhof.se (pio-pvt-msa1.bahnhof.se [79.136.2.40])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7147689C37
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Aug 2020 07:34:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa1.bahnhof.se (Postfix) with ESMTP id A086D3F573;
 Tue, 11 Aug 2020 09:34:47 +0200 (CEST)
Authentication-Results: pio-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b="V0VY4WC8";
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -3.554
X-Spam-Level: 
X-Spam-Status: No, score=-3.554 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-1.455,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from pio-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zQvPnuATaCEQ; Tue, 11 Aug 2020 09:34:46 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by pio-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 416CC3F553;
 Tue, 11 Aug 2020 09:34:45 +0200 (CEST)
Received: from localhost.localdomain (jfdmzpr04-ext.jf.intel.com
 [134.134.137.73])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 5E36F360156;
 Tue, 11 Aug 2020 09:34:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1597131285; bh=+S4g5ACYPiojtHFGXnOJef6DTZbXhdN8lD05rN/70IM=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=V0VY4WC8tXIsQ/o7xeVHUuaUHzUiuP2AYnN1yxx+C1icnTb4OEdYOvIdq+xmSeWiR
 pZ7Jww3ki6+vj6vRgjTdkMQfj/bpA7CscNJUU0EurH67IQgE/dgMhIfix1Q2jCVACh
 Y334A2Uv5HGUt54mo1cHCVTTUIhncSavlF4o2kms=
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200810103103.303818-1-maarten.lankhorst@linux.intel.com>
 <20200810103103.303818-10-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <47a24089-9db1-0b57-2dee-7ee8ec887624@shipmail.org>
Date: Tue, 11 Aug 2020 09:34:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200810103103.303818-10-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 09/24] drm/i915: make lockdep slightly
 happier about execbuf.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 8/10/20 12:30 PM, Maarten Lankhorst wrote:
> As soon as we install fences, we should stop allocating memory
> in order to prevent any potential deadlocks.
>
> This is required later on, when we start adding support for
> dma-fence annotations, and also required for userptr.
>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 18 ++++++++++++------
>   drivers/gpu/drm/i915/i915_vma.c                |  8 +++++---
>   drivers/gpu/drm/i915/i915_vma.h                |  3 +++
>   3 files changed, 20 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 5d08ce71f341..12397fbc0971 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -48,11 +48,12 @@ enum {
>   #define DBG_FORCE_RELOC 0 /* choose one of the above! */
>   };
>   
> -#define __EXEC_OBJECT_HAS_PIN		BIT(31)
> -#define __EXEC_OBJECT_HAS_FENCE		BIT(30)
> -#define __EXEC_OBJECT_NEEDS_MAP		BIT(29)
> -#define __EXEC_OBJECT_NEEDS_BIAS	BIT(28)
> -#define __EXEC_OBJECT_INTERNAL_FLAGS	(~0u << 28) /* all of the above */
> +/* __EXEC_OBJECT_NO_RESERVE is BIT(31), defined in i915_vma.h */

Hmm. Could we either move all these flag definitions to a header or add 
an i915_vma_move_to_active()?


> +#define __EXEC_OBJECT_HAS_PIN		BIT(30)
> +#define __EXEC_OBJECT_HAS_FENCE		BIT(29)
> +#define __EXEC_OBJECT_NEEDS_MAP		BIT(28)
> +#define __EXEC_OBJECT_NEEDS_BIAS	BIT(27)
> +#define __EXEC_OBJECT_INTERNAL_FLAGS	(~0u << 27) /* all of the above + */
>   #define __EXEC_OBJECT_RESERVED (__EXEC_OBJECT_HAS_PIN | __EXEC_OBJECT_HAS_FENCE)
>   
>   #define __EXEC_HAS_RELOC	BIT(31)
> @@ -2094,7 +2095,8 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
>   		}
>   
>   		if (err == 0)
> -			err = i915_vma_move_to_active(vma, eb->request, flags);
> +			err = i915_vma_move_to_active(vma, eb->request,
> +						      flags | __EXEC_OBJECT_NO_RESERVE);
>   	}
>   
>   	if (unlikely(err))
> @@ -2291,6 +2293,10 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
>   	if (err)
>   		goto err_commit;
>   
> +	err = dma_resv_reserve_shared(shadow->resv, 1);
> +	if (err)
> +		goto err_commit;
> +
>   	/* Wait for all writes (and relocs) into the batch to complete */
>   	err = i915_sw_fence_await_reservation(&pw->base.chain,
>   					      pw->batch->resv, NULL, false,
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index c6bf04ca2032..8066f167d6b9 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -1227,9 +1227,11 @@ int i915_vma_move_to_active(struct i915_vma *vma,
>   		obj->write_domain = I915_GEM_DOMAIN_RENDER;
>   		obj->read_domains = 0;
>   	} else {
> -		err = dma_resv_reserve_shared(vma->resv, 1);
> -		if (unlikely(err))
> -			return err;
> +		if (!(flags & __EXEC_OBJECT_NO_RESERVE)) {
> +			err = dma_resv_reserve_shared(vma->resv, 1);
> +			if (unlikely(err))
> +				return err;
> +		}
>   
>   		dma_resv_add_shared_fence(vma->resv, &rq->fence);
>   		obj->write_domain = 0;
> diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
> index d0d01f909548..4b325a670a04 100644
> --- a/drivers/gpu/drm/i915/i915_vma.h
> +++ b/drivers/gpu/drm/i915/i915_vma.h
> @@ -52,6 +52,9 @@ static inline bool i915_vma_is_active(const struct i915_vma *vma)
>   	return !i915_active_is_idle(&vma->active);
>   }
>   
> +/* do not reserve memory to prevent deadlocks */
> +#define __EXEC_OBJECT_NO_RESERVE BIT(31)
> +
>   int __must_check __i915_vma_move_to_active(struct i915_vma *vma,
>   					   struct i915_request *rq);
>   int __must_check i915_vma_move_to_active(struct i915_vma *vma,
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
