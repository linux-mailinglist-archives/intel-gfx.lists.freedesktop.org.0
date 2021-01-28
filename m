Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 791AA30722C
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 10:00:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E6BD6E946;
	Thu, 28 Jan 2021 09:00:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3822F6E946
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 09:00:52 +0000 (UTC)
IronPort-SDR: N4/SowwvFO6Fdi9H8IxNFaX9/NwxOnVWiaFoGFXS2lLB6zZYR+mUBHqgaeVw5vtFL89+leeMWt
 5RxkMMb3SzNQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="199033697"
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; d="scan'208";a="199033697"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 01:00:51 -0800
IronPort-SDR: FTZCcSOYzHdD26Owyj04QwlkErjBZcoe0e22sc8cWQmqh0izW7eFYzKnWQ8wYDEoH81QIcqiV3
 frBzc9a3+TPw==
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; d="scan'208";a="362786169"
Received: from nkaspi-mobl.ger.corp.intel.com (HELO [10.214.246.60])
 ([10.214.246.60])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 01:00:50 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210127090608.16925-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <98cfaefe-16b4-4b34-62d8-abf2ff559396@linux.intel.com>
Date: Thu, 28 Jan 2021 09:00:46 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210127090608.16925-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Prefer local execution_mask
 for determing viable engines
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


On 27/01/2021 09:06, Chris Wilson wrote:
> In gen8_emit_flush_xcs, we have to look at all the engines the request
> may execute on, and emit an aux-invalidate for each. Currently, we
> handle the virtual engine by looking at its engine mask, but that is
> copied and refined as the request->execution_mask. If we prefer the
> local mask, this is one fewer rq->engine pointer chasing we have to
> eliminate later when we remove rq->engine.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> index 07ba524da90b..cac80af7ad1c 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> @@ -277,7 +277,7 @@ int gen12_emit_flush_xcs(struct i915_request *rq, u32 mode)
>   	if (mode & EMIT_INVALIDATE)
>   		cmd += 2;
>   	if (mode & EMIT_INVALIDATE)
> -		aux_inv = rq->engine->mask & ~BIT(BCS0);
> +		aux_inv = rq->execution_mask & ~BIT(BCS0);
>   	if (aux_inv)
>   		cmd += 2 * hweight8(aux_inv) + 2;
>   
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
