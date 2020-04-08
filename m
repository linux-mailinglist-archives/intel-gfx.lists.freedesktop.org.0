Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 423031A299A
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 21:46:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 861E06EAC4;
	Wed,  8 Apr 2020 19:46:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A3C86EAC4
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 19:46:45 +0000 (UTC)
IronPort-SDR: mlhyLOv7lACZ0FFVEHKcICkJGj6xXa4LVQxiTtAfNJ1Z7CYFBoS4M1oZu1WOGykPk3RfbbyN3c
 vgUTfwMV5JTg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 12:46:44 -0700
IronPort-SDR: /ssnNYJCmhhl+UKY7pjITYvW3ww3kpnGm3S0Gz2UKnElCgZ0vrjSKUO1vPhNuR528KCqbpgP1X
 snVm8qgDCdtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,359,1580803200"; d="scan'208";a="269853095"
Received: from linux.fm.intel.com (HELO intel.com) ([10.1.27.42])
 by orsmga002.jf.intel.com with ESMTP; 08 Apr 2020 12:46:44 -0700
Date: Wed, 8 Apr 2020 12:46:44 -0700
From: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200408194644.GB22556@intel.com>
References: <20200403091300.14734-1-chris@chris-wilson.co.uk>
 <20200403091300.14734-4-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403091300.14734-4-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 04/10] dma-buf: Report signaled links inside
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 20/04/03 10:12, Chris Wilson wrote:
> Whenever we walk along the dma-fence-chain, we prune signaled links to
> keep the chain nice and tidy. This leads to situations where we can
> prune a link and report the earlier fence as the target seqno --
> violating our own consistency checks that the seqno is not more advanced
> than the last element in a dma-fence-chain.
> 
> Report a NULL fence and success if the seqno has already been signaled.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/dma-buf/dma-fence-chain.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/dma-buf/dma-fence-chain.c b/drivers/dma-buf/dma-fence-chain.c
> index 3d123502ff12..c435bbba851c 100644
> --- a/drivers/dma-buf/dma-fence-chain.c
> +++ b/drivers/dma-buf/dma-fence-chain.c
> @@ -99,6 +99,12 @@ int dma_fence_chain_find_seqno(struct dma_fence **pfence, uint64_t seqno)
>  		return -EINVAL;
>  
>  	dma_fence_chain_for_each(*pfence, &chain->base) {
> +		if ((*pfence)->seqno < seqno) { /* already signaled */
> +			dma_fence_put(*pfence);
> +			*pfence = NULL;
> +			break;
> +		}
> +
Looks good to me.

Tested-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
Reviewed-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>

>  		if ((*pfence)->context != chain->base.context ||
>  		    to_dma_fence_chain(*pfence)->prev_seqno < seqno)
>  			break;
> @@ -222,6 +228,7 @@ EXPORT_SYMBOL(dma_fence_chain_ops);
>   * @chain: the chain node to initialize
>   * @prev: the previous fence
>   * @fence: the current fence
> + * @seqno: the sequence number (syncpt) of the fence within the chain
>   *
>   * Initialize a new chain node and either start a new chain or add the node to
>   * the existing chain of the previous fence.
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
