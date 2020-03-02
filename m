Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C89DE175F44
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 17:12:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EEDC6E530;
	Mon,  2 Mar 2020 16:12:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 568836E530
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 16:12:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 08:12:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,507,1574150400"; d="scan'208";a="257994463"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga002.jf.intel.com with ESMTP; 02 Mar 2020 08:12:43 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 0FA545C1DA2; Mon,  2 Mar 2020 18:11:28 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200302085812.4172450-14-chris@chris-wilson.co.uk>
References: <20200302085812.4172450-1-chris@chris-wilson.co.uk>
 <20200302085812.4172450-14-chris@chris-wilson.co.uk>
Date: Mon, 02 Mar 2020 18:11:28 +0200
Message-ID: <87o8te7n4f.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 14/22] dma-buf: Prettify typecasts for
 dma-fence-chain
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

> Inside dma-fence-chain, we use a cmpxchg on an RCU-protected pointer. To
> avoid the sparse warning for using the RCU pointer directly, we have to
> cast away the __rcu annotation. However, we don't need to use void*
> everywhere and can stick to the dma_fence*.

Prolly just my english but
s/everywhere/anywhere.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/dma-buf/dma-fence-chain.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/dma-buf/dma-fence-chain.c b/drivers/dma-buf/dma-fence-chain.c
> index 44a741677d25..3d123502ff12 100644
> --- a/drivers/dma-buf/dma-fence-chain.c
> +++ b/drivers/dma-buf/dma-fence-chain.c
> @@ -62,7 +62,8 @@ struct dma_fence *dma_fence_chain_walk(struct dma_fence *fence)
>  			replacement = NULL;
>  		}
>  
> -		tmp = cmpxchg((void **)&chain->prev, (void *)prev, (void *)replacement);
> +		tmp = cmpxchg((struct dma_fence __force **)&chain->prev,
> +			      prev, replacement);
>  		if (tmp == prev)
>  			dma_fence_put(tmp);
>  		else
> -- 
> 2.25.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
