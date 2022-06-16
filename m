Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9760F54DBE1
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 09:36:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59BDD10E54A;
	Thu, 16 Jun 2022 07:35:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9453210E199;
 Thu, 16 Jun 2022 07:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655364956; x=1686900956;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=tGxxL6Ozay1esf8g8lTKwUO8uO7QkHG2DiuqpgEUeWU=;
 b=U4cdI3dHgkthyxmKLHEGph5pSFUPv+rB9ezfzUvE/4ZAt8B2aJvOD45V
 svCtvNZbSgObJohs0w5f6GbWc8Fy1NagRAbCTyQJwgZ+u89iQ2FqZGSMK
 yDxhgEj+WoVWeQfIM4lSMFJ2MjnahCFEdlz6WQQwIMRI75RnA8Qd7MAvk
 fhvHDA8hjuA1/kS7RulFyApfyqtJIau19IZoYmCdkU7NwFJQB2JdHk0AP
 a+HIITbwhXwuZTfkSoQjdYy9Uq40Bwi7f+gOFF5l+KsCEYxDwp0D/I9c0
 HXcxiROZMlmr1XZpL+/MEIWU3puvnhmGh/spfcFxE+v2k0GG87E3f5WaM Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="340844770"
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="340844770"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 00:35:55 -0700
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="912048645"
Received: from mstokes1-mobl.ger.corp.intel.com (HELO [10.213.198.82])
 ([10.213.198.82])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 00:35:51 -0700
Message-ID: <8b9ae441-a291-fe45-ceac-be8c211a4f73@linux.intel.com>
Date: Thu, 16 Jun 2022 08:35:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Mauro Carvalho Chehab <mchehab@kernel.org>
References: <cover.1655306128.git.mchehab@kernel.org>
 <5ee647f243a774927ec328bfca8212abc4957909.1655306128.git.mchehab@kernel.org>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <5ee647f243a774927ec328bfca8212abc4957909.1655306128.git.mchehab@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/gt: Serialize GRDOM access
 between multiple engine resets
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
Cc: David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Chris Wilson <chris.p.wilson@intel.com>, Dave Airlie <airlied@redhat.com>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 Andi Shyti <andi.shyti@intel.com>, intel-gfx@lists.freedesktop.org,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, mauro.chehab@linux.intel.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 15/06/2022 16:27, Mauro Carvalho Chehab wrote:
> From: Chris Wilson <chris.p.wilson@intel.com>
> 
> Don't allow two engines to be reset in parallel, as they would both
> try to select a reset bit (and send requests to common registers)
> and wait on that register, at the same time. Serialize control of
> the reset requests/acks using the uncore->lock, which will also ensure
> that no other GT state changes at the same time as the actual reset.
> 
> Fixes: 7938d61591d3 ("drm/i915: Flush TLBs before releasing backing store")

Ah okay I get it, the fixes tag was applied indiscriminately to the 
whole series. :) It definitely does not belong in this patch.

Otherwise LGTM:

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

> Reported-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Andi Shyti <andi.shyti@intel.com>
> Cc: stable@vger.kernel.org
> Acked-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
> ---
> 
> See [PATCH 0/6] at: https://lore.kernel.org/all/cover.1655306128.git.mchehab@kernel.org/
> 
>   drivers/gpu/drm/i915/gt/intel_reset.c | 37 ++++++++++++++++++++-------
>   1 file changed, 28 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index a5338c3fde7a..c68d36fb5bbd 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -300,9 +300,9 @@ static int gen6_hw_domain_reset(struct intel_gt *gt, u32 hw_domain_mask)
>   	return err;
>   }
>   
> -static int gen6_reset_engines(struct intel_gt *gt,
> -			      intel_engine_mask_t engine_mask,
> -			      unsigned int retry)
> +static int __gen6_reset_engines(struct intel_gt *gt,
> +				intel_engine_mask_t engine_mask,
> +				unsigned int retry)
>   {
>   	struct intel_engine_cs *engine;
>   	u32 hw_mask;
> @@ -321,6 +321,20 @@ static int gen6_reset_engines(struct intel_gt *gt,
>   	return gen6_hw_domain_reset(gt, hw_mask);
>   }
>   
> +static int gen6_reset_engines(struct intel_gt *gt,
> +			      intel_engine_mask_t engine_mask,
> +			      unsigned int retry)
> +{
> +	unsigned long flags;
> +	int ret;
> +
> +	spin_lock_irqsave(&gt->uncore->lock, flags);
> +	ret = __gen6_reset_engines(gt, engine_mask, retry);
> +	spin_unlock_irqrestore(&gt->uncore->lock, flags);
> +
> +	return ret;
> +}
> +
>   static struct intel_engine_cs *find_sfc_paired_vecs_engine(struct intel_engine_cs *engine)
>   {
>   	int vecs_id;
> @@ -487,9 +501,9 @@ static void gen11_unlock_sfc(struct intel_engine_cs *engine)
>   	rmw_clear_fw(uncore, sfc_lock.lock_reg, sfc_lock.lock_bit);
>   }
>   
> -static int gen11_reset_engines(struct intel_gt *gt,
> -			       intel_engine_mask_t engine_mask,
> -			       unsigned int retry)
> +static int __gen11_reset_engines(struct intel_gt *gt,
> +				 intel_engine_mask_t engine_mask,
> +				 unsigned int retry)
>   {
>   	struct intel_engine_cs *engine;
>   	intel_engine_mask_t tmp;
> @@ -583,8 +597,11 @@ static int gen8_reset_engines(struct intel_gt *gt,
>   	struct intel_engine_cs *engine;
>   	const bool reset_non_ready = retry >= 1;
>   	intel_engine_mask_t tmp;
> +	unsigned long flags;
>   	int ret;
>   
> +	spin_lock_irqsave(&gt->uncore->lock, flags);
> +
>   	for_each_engine_masked(engine, gt, engine_mask, tmp) {
>   		ret = gen8_engine_reset_prepare(engine);
>   		if (ret && !reset_non_ready)
> @@ -612,17 +629,19 @@ static int gen8_reset_engines(struct intel_gt *gt,
>   	 * This is best effort, so ignore any error from the initial reset.
>   	 */
>   	if (IS_DG2(gt->i915) && engine_mask == ALL_ENGINES)
> -		gen11_reset_engines(gt, gt->info.engine_mask, 0);
> +		__gen11_reset_engines(gt, gt->info.engine_mask, 0);
>   
>   	if (GRAPHICS_VER(gt->i915) >= 11)
> -		ret = gen11_reset_engines(gt, engine_mask, retry);
> +		ret = __gen11_reset_engines(gt, engine_mask, retry);
>   	else
> -		ret = gen6_reset_engines(gt, engine_mask, retry);
> +		ret = __gen6_reset_engines(gt, engine_mask, retry);
>   
>   skip_reset:
>   	for_each_engine_masked(engine, gt, engine_mask, tmp)
>   		gen8_engine_reset_cancel(engine);
>   
> +	spin_unlock_irqrestore(&gt->uncore->lock, flags);
> +
>   	return ret;
>   }
>   
