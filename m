Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 896E92F1A2F
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jan 2021 16:53:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 343A86E103;
	Mon, 11 Jan 2021 15:53:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAF696E103
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jan 2021 15:53:54 +0000 (UTC)
IronPort-SDR: CYI8tKpRiW967henkPS0PD8q6rLpgsyIWOxuJAhvAkGmeaN6WavhAp5B9DYZko+WXA6T04U1fa
 As8RcU8gs2ag==
X-IronPort-AV: E=McAfee;i="6000,8403,9860"; a="239425932"
X-IronPort-AV: E=Sophos;i="5.79,338,1602572400"; d="scan'208";a="239425932"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 07:53:52 -0800
IronPort-SDR: uIqv9Mc3EbFnUg0ZVBC2dqia5xqZRVp5IUDO1l1Y3een+j0ziJfmtq811ezLvEwhKuUBdlLA+0
 mUj5sXmUNvVA==
X-IronPort-AV: E=Sophos;i="5.79,338,1602572400"; d="scan'208";a="352647971"
Received: from sbrooks8-mobl.ger.corp.intel.com (HELO [10.214.224.70])
 ([10.214.224.70])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 07:53:50 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210111105735.21515-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <01604c77-a371-8afb-3497-e67ce592566f@linux.intel.com>
Date: Mon, 11 Jan 2021 15:53:47 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210111105735.21515-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/gt: Disable arbitration around
 Braswell's pdp updates
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


On 11/01/2021 10:57, Chris Wilson wrote:
> Braswell's pdp workaround is full of dragons, that may be being angered
> when they are interrupted. Let's not take that risk and disable
> arbitrartion during the update.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 11 ++++++++++-
>   1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 52c1fe62bdfe..10e9940cf3f5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -2539,6 +2539,14 @@ static int emit_pdps(struct i915_request *rq)
>   	 * GPU hangs to forcewake errors and machine lockups!
>   	 */
>   
> +	cs = intel_ring_begin(rq, 2);
> +	if (IS_ERR(cs))
> +		return PTR_ERR(cs);
> +
> +	*cs++ = MI_ARB_ON_OFF | MI_ARB_DISABLE;
> +	*cs++ = MI_NOOP;
> +	intel_ring_advance(rq, cs);
> +
>   	/* Flush any residual operations from the context load */
>   	err = engine->emit_flush(rq, EMIT_FLUSH);
>   	if (err)
> @@ -2564,7 +2572,8 @@ static int emit_pdps(struct i915_request *rq)
>   		*cs++ = i915_mmio_reg_offset(GEN8_RING_PDP_LDW(base, i));
>   		*cs++ = lower_32_bits(pd_daddr);
>   	}
> -	*cs++ = MI_NOOP;
> +	*cs++ = MI_ARB_ON_OFF | MI_ARB_ENABLE;
> +	intel_ring_advance(rq, cs);
>   
>   	intel_ring_advance(rq, cs);
>   
> 

I had to remind myself that Gen8LP is indeed the only platform with 
32-bit ppgtt.

I presume you are fixing some sporadic CI failures here, anyway:

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
