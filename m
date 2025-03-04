Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45065A4E3ED
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 16:43:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DFE710E621;
	Tue,  4 Mar 2025 15:43:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="AtX/HOv5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0CBD10E63D
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 15:43:48 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id
 ffacd0b85a97d-390ddf037ffso3125312f8f.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Mar 2025 07:43:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1741103027; x=1741707827;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=zYt4PyU5s+H/zXCxrHuY7DJfax6mmFEJMjGdZRrJCDM=;
 b=AtX/HOv5DuYA25YSia1XpT+eoMDjn/LCW5WM2/xqfdR1rzjIroL14TnPPDJmyS0LPd
 MJZWey5i0Yk/8Arx9Okj2nbhZbXWt5KxBuBMHLe+sv43ftXqvYTEa6FBeUJquGu+fio6
 XkjRjheVIlUJsLnW92Vuh1EThUguasrBAQH6YqysWIfBGH0VRTsz3NFKXNP+4v4+dmLz
 rp1dSslq0txhFhgztFaU3hBGdJZMRZDNgsvZ2Y2CoMT1PdiuEXSEzAiJZ6O2AmslgCWu
 5xmR4l02OZO5AZOdOdDMpf5jGY+zu13ZymDPJjbjyaPicRvf6yh6LCM1fdJyUw7/Erm9
 E0iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741103027; x=1741707827;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=zYt4PyU5s+H/zXCxrHuY7DJfax6mmFEJMjGdZRrJCDM=;
 b=crC242wzdM9xKV1nfecisd6fTkN2sBxfxe3FtCp2CpK8VrWlOFqycC4Bqmyu48tLEZ
 xUMLmxFj3ckUGm090ryGotN9lI/bQpVx9EOazHKwXc5/4rqoytAhsfoSjpoVbKS+WNMa
 ajdvs56yCrjxLxXXQwBMWPrMTeNpbHdSnmzEbg7tz6z2XgovaEpeBeBnAh8iMggX+QKI
 OLtLoAFOqpKq74ebj54yBLyXK/5ema5DNgEhujhxqoR4f0P4ZZKf6zHiDNdMMAQfYuQ+
 WctLHvUl1DF/jfmQ+Fnt6OYTvl747cZyWzunfHToWHNpHxA6HeLS05WVMd+zmvBt0EWZ
 q+1w==
X-Forwarded-Encrypted: i=1;
 AJvYcCWOqlqe6Fjdnaii6mlOlj28EszIQVweVciocdfI+S5Jo2aNpcf+GdxQrGunmxypgupVe2hwxyRra4s=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwcvL6eVfe3JrRRTFF03L/x/NSUIhP6on0hj3A/9rRicvnO4KbW
 WAdI2TNisXC5AFoBOWQHL73Ub5T0SYbOX0LwdEdamXnrqIQxX8YP8nGnYCnOjao=
X-Gm-Gg: ASbGncuoGCB8TR6GSpAkdJ1bnHAz/nJIihV4DeuzQfy1QWNPauGhcrZxsjgb5MFDdYf
 SMz0SNEd2z2Ha6WUaF7ncxtv8H+R/kaKe+dinhWjU5ohAE/POuJUUbFP8x8Oc6CNAgttXNDdRzY
 K2YaRFkGWbR8KIpICXRM7oosLnKFnjZNllgwe8mC9VvD2KFmSoVV+Cu4nVjCZvUoYf7KblW2ulr
 GYOraR/yWVsUYen7WKuH69b9QGNaH8DRiG1OT5hWKFDmac3pqpUN8vh0+yY7EzrfpwA/wPC2OLx
 +JlOW7znFoWM5lNVNkO4GMtGcdtTU9hFLoQqP9MYeF3H9xod65i5KoK3oDCe
X-Google-Smtp-Source: AGHT+IFTfC8djRvJ0z48tvdCmgeALVhnazSqvlE+Gjx/E2sPf8ya492MooXSCJ0Ivc71yLiUIOEroQ==
X-Received: by 2002:a5d:64a6:0:b0:390:dfbb:640 with SMTP id
 ffacd0b85a97d-390eca4a04emr16420863f8f.45.1741103026453; 
 Tue, 04 Mar 2025 07:43:46 -0800 (PST)
Received: from [192.168.0.101] ([90.241.98.187])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-390e485d906sm18194531f8f.90.2025.03.04.07.43.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 04 Mar 2025 07:43:45 -0800 (PST)
Message-ID: <3aa4a0a8-1668-40e4-a57d-5bd983af5ba5@ursulin.net>
Date: Tue, 4 Mar 2025 15:43:45 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] i915/gt/selftest_lrc: Remove timestamp test
To: Mikolaj Wasiak <mikolaj.wasiak@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Andi Shyti <andi.shyti@intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>, chris.p.wilson@intel.com
References: <wlnlppj2mmqqv2rrsboy2uddzkxiuxcsevgfkqjvo3f7hdtkxs@arkfgtgqrqyx>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <wlnlppj2mmqqv2rrsboy2uddzkxiuxcsevgfkqjvo3f7hdtkxs@arkfgtgqrqyx>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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


On 04/03/2025 13:09, Mikolaj Wasiak wrote:
> This test exposes bug in tigerlake hardware which prevents it from
> succeeding. Since the tested feature is only available on bugged hardware
> and we won't support any new hardware, this test is obsolete and
> should be removed.

I randomly clicked on one TGL, one DG2, one MTL and one RKL in the CI 
and only saw test passes. Then I looked at the patch below to see if 
there is a skip condition but don't see one. So I end up confused since 
commit message is making it sound like this only exists on Tigerlake and 
it's failing all the time. Is it perhaps a sporadic failure? On all 
platforms or just TGL? What am I missing?

Regards,

Tvrtko

> Signed-off-by: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_lrc.c | 215 -------------------------
>   1 file changed, 215 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 22e750108c5f..aa9b8af61ba6 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -105,32 +105,6 @@ static int emit_semaphore_signal(struct intel_context *ce, void *slot)
>   	return 0;
>   }
>   
> -static int context_flush(struct intel_context *ce, long timeout)
> -{
> -	struct i915_request *rq;
> -	struct dma_fence *fence;
> -	int err = 0;
> -
> -	rq = intel_engine_create_kernel_request(ce->engine);
> -	if (IS_ERR(rq))
> -		return PTR_ERR(rq);
> -
> -	fence = i915_active_fence_get(&ce->timeline->last_request);
> -	if (fence) {
> -		i915_request_await_dma_fence(rq, fence);
> -		dma_fence_put(fence);
> -	}
> -
> -	rq = i915_request_get(rq);
> -	i915_request_add(rq);
> -	if (i915_request_wait(rq, 0, timeout) < 0)
> -		err = -ETIME;
> -	i915_request_put(rq);
> -
> -	rmb(); /* We know the request is written, make sure all state is too! */
> -	return err;
> -}
> -
>   static int get_lri_mask(struct intel_engine_cs *engine, u32 lri)
>   {
>   	if ((lri & MI_LRI_LRM_CS_MMIO) == 0)
> @@ -733,194 +707,6 @@ static int live_lrc_gpr(void *arg)
>   	return err;
>   }
>   
> -static struct i915_request *
> -create_timestamp(struct intel_context *ce, void *slot, int idx)
> -{
> -	const u32 offset =
> -		i915_ggtt_offset(ce->engine->status_page.vma) +
> -		offset_in_page(slot);
> -	struct i915_request *rq;
> -	u32 *cs;
> -	int err;
> -
> -	rq = intel_context_create_request(ce);
> -	if (IS_ERR(rq))
> -		return rq;
> -
> -	cs = intel_ring_begin(rq, 10);
> -	if (IS_ERR(cs)) {
> -		err = PTR_ERR(cs);
> -		goto err;
> -	}
> -
> -	*cs++ = MI_ARB_ON_OFF | MI_ARB_ENABLE;
> -	*cs++ = MI_NOOP;
> -
> -	*cs++ = MI_SEMAPHORE_WAIT |
> -		MI_SEMAPHORE_GLOBAL_GTT |
> -		MI_SEMAPHORE_POLL |
> -		MI_SEMAPHORE_SAD_NEQ_SDD;
> -	*cs++ = 0;
> -	*cs++ = offset;
> -	*cs++ = 0;
> -
> -	*cs++ = MI_STORE_REGISTER_MEM_GEN8 | MI_USE_GGTT;
> -	*cs++ = i915_mmio_reg_offset(RING_CTX_TIMESTAMP(rq->engine->mmio_base));
> -	*cs++ = offset + idx * sizeof(u32);
> -	*cs++ = 0;
> -
> -	intel_ring_advance(rq, cs);
> -
> -	err = 0;
> -err:
> -	i915_request_get(rq);
> -	i915_request_add(rq);
> -	if (err) {
> -		i915_request_put(rq);
> -		return ERR_PTR(err);
> -	}
> -
> -	return rq;
> -}
> -
> -struct lrc_timestamp {
> -	struct intel_engine_cs *engine;
> -	struct intel_context *ce[2];
> -	u32 poison;
> -};
> -
> -static bool timestamp_advanced(u32 start, u32 end)
> -{
> -	return (s32)(end - start) > 0;
> -}
> -
> -static int __lrc_timestamp(const struct lrc_timestamp *arg, bool preempt)
> -{
> -	u32 *slot = memset32(arg->engine->status_page.addr + 1000, 0, 4);
> -	struct i915_request *rq;
> -	u32 timestamp;
> -	int err = 0;
> -
> -	arg->ce[0]->lrc_reg_state[CTX_TIMESTAMP] = arg->poison;
> -	rq = create_timestamp(arg->ce[0], slot, 1);
> -	if (IS_ERR(rq))
> -		return PTR_ERR(rq);
> -
> -	err = wait_for_submit(rq->engine, rq, HZ / 2);
> -	if (err)
> -		goto err;
> -
> -	if (preempt) {
> -		arg->ce[1]->lrc_reg_state[CTX_TIMESTAMP] = 0xdeadbeef;
> -		err = emit_semaphore_signal(arg->ce[1], slot);
> -		if (err)
> -			goto err;
> -	} else {
> -		slot[0] = 1;
> -		wmb();
> -	}
> -
> -	/* And wait for switch to kernel (to save our context to memory) */
> -	err = context_flush(arg->ce[0], HZ / 2);
> -	if (err)
> -		goto err;
> -
> -	if (!timestamp_advanced(arg->poison, slot[1])) {
> -		pr_err("%s(%s): invalid timestamp on restore, context:%x, request:%x\n",
> -		       arg->engine->name, preempt ? "preempt" : "simple",
> -		       arg->poison, slot[1]);
> -		err = -EINVAL;
> -	}
> -
> -	timestamp = READ_ONCE(arg->ce[0]->lrc_reg_state[CTX_TIMESTAMP]);
> -	if (!timestamp_advanced(slot[1], timestamp)) {
> -		pr_err("%s(%s): invalid timestamp on save, request:%x, context:%x\n",
> -		       arg->engine->name, preempt ? "preempt" : "simple",
> -		       slot[1], timestamp);
> -		err = -EINVAL;
> -	}
> -
> -err:
> -	memset32(slot, -1, 4);
> -	i915_request_put(rq);
> -	return err;
> -}
> -
> -static int live_lrc_timestamp(void *arg)
> -{
> -	struct lrc_timestamp data = {};
> -	struct intel_gt *gt = arg;
> -	enum intel_engine_id id;
> -	const u32 poison[] = {
> -		0,
> -		S32_MAX,
> -		(u32)S32_MAX + 1,
> -		U32_MAX,
> -	};
> -
> -	/*
> -	 * We want to verify that the timestamp is saved and restore across
> -	 * context switches and is monotonic.
> -	 *
> -	 * So we do this with a little bit of LRC poisoning to check various
> -	 * boundary conditions, and see what happens if we preempt the context
> -	 * with a second request (carrying more poison into the timestamp).
> -	 */
> -
> -	for_each_engine(data.engine, gt, id) {
> -		int i, err = 0;
> -
> -		st_engine_heartbeat_disable(data.engine);
> -
> -		for (i = 0; i < ARRAY_SIZE(data.ce); i++) {
> -			struct intel_context *tmp;
> -
> -			tmp = intel_context_create(data.engine);
> -			if (IS_ERR(tmp)) {
> -				err = PTR_ERR(tmp);
> -				goto err;
> -			}
> -
> -			err = intel_context_pin(tmp);
> -			if (err) {
> -				intel_context_put(tmp);
> -				goto err;
> -			}
> -
> -			data.ce[i] = tmp;
> -		}
> -
> -		for (i = 0; i < ARRAY_SIZE(poison); i++) {
> -			data.poison = poison[i];
> -
> -			err = __lrc_timestamp(&data, false);
> -			if (err)
> -				break;
> -
> -			err = __lrc_timestamp(&data, true);
> -			if (err)
> -				break;
> -		}
> -
> -err:
> -		st_engine_heartbeat_enable(data.engine);
> -		for (i = 0; i < ARRAY_SIZE(data.ce); i++) {
> -			if (!data.ce[i])
> -				break;
> -
> -			intel_context_unpin(data.ce[i]);
> -			intel_context_put(data.ce[i]);
> -		}
> -
> -		if (igt_flush_test(gt->i915))
> -			err = -EIO;
> -		if (err)
> -			return err;
> -	}
> -
> -	return 0;
> -}
> -
>   static struct i915_vma *
>   create_user_vma(struct i915_address_space *vm, unsigned long size)
>   {
> @@ -1971,7 +1757,6 @@ int intel_lrc_live_selftests(struct drm_i915_private *i915)
>   		SUBTEST(live_lrc_state),
>   		SUBTEST(live_lrc_gpr),
>   		SUBTEST(live_lrc_isolation),
> -		SUBTEST(live_lrc_timestamp),
>   		SUBTEST(live_lrc_garbage),
>   		SUBTEST(live_pphwsp_runtime),
>   		SUBTEST(live_lrc_indirect_ctx_bb),

