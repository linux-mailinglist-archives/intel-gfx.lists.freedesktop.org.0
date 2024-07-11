Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E6A92E409
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2024 12:02:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0B7110E9FA;
	Thu, 11 Jul 2024 10:02:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="RFYScRx9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C59110E9FA
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2024 10:02:55 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id
 ffacd0b85a97d-36786081ac8so345523f8f.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2024 03:02:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1720692173; x=1721296973;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=boL5i9jzaSfhn+e79C+qpFuft543zvabd4ejo3BmRUY=;
 b=RFYScRx96wabXFVRWyG0r2m37tYu6hhpf3GqGLsOI2R0h0QbU1cSWne8ZFFy5vXbZ8
 nljR5JrtjHNwvZSkOb90cooRBnQE/XNenyrf8azmnDYZGno/dhcsc+4H8VRefluveiT5
 3SqRmOjd3ntRxnnsWp+UgZ2hLUPtze/SfQ5yT50aCFhQmKrEEtWg4P9HZhk6t86GBZw/
 71mdMZ48oTD/Ac+D4UHbZYi6kP3fOaYJ4O2Ph2Y4Edb/u4n43DEeq0VgkJq9I40hMEyB
 76WkhoLN2dbc/u+panqBMjvx52b0V3YXz8bAV5kvZ7UIYIBy9kXjGfVJu/ycoIHn7T0S
 xbHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1720692173; x=1721296973;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=boL5i9jzaSfhn+e79C+qpFuft543zvabd4ejo3BmRUY=;
 b=kuI1Wjc9KIIASUnTxB/WzPhwLwvvnbyo0/j+xANz2OKs23kH3VCuhMxGJUKzAIBAP+
 fP8DMteeKW+u2TAbi6hcgaWdwdsIAE4O/KAmBJpex+rv7WWKUX+S6SRvTSWGtUTRSvK+
 CRYpN7e5Zip/5mbgEBJd9c3jdQcn1dp/XQEyrXJ+tpFDHZjyej+4KLaE3sVb/lrY8YgT
 nC5S42I4lkos+iMLd3qXIGqqcBxNmKhQUvkuu9H7wesOjtLs+QJ8dqJqn5RUaRUdKSo7
 ycmCU9OaoUlHkmn8BuRYvA6G2AjDuQZ0uRaYXWwwNW83u1riHAyyaG9+8Bf7qTzRyV5A
 in0w==
X-Forwarded-Encrypted: i=1;
 AJvYcCWHrwzby11+YVIcGXtxGTkxA54LFJaoAGd+X0aRWUTmHIhb6Yx6E6wXVcB3z/K1Zdz9pMe4H1mKCgf8OtaWVM+RrEQnyGy724tIUJdvJLPk
X-Gm-Message-State: AOJu0Yz9iLzwWmtSlDWdJhUb02ZVPKzT84l31IsM3DAkWAI+0vCfMSgp
 iRrz+ggGXTtlyb1j5kKkDbKZUSOa2MGZw+tka6PnFNleibwggGCFXyHnzjp3yZY=
X-Google-Smtp-Source: AGHT+IG5OcW90S+EQ49B/6sG+OFx8XqDMkqaKPG9VOzfnAyynEgdVQ3iZF/lUSXhhCqiXx6+cRr6Mg==
X-Received: by 2002:a5d:47a9:0:b0:367:8f84:ee1d with SMTP id
 ffacd0b85a97d-367cea4622cmr7264113f8f.8.1720692173512; 
 Thu, 11 Jul 2024 03:02:53 -0700 (PDT)
Received: from [192.168.0.101] ([84.69.19.168])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-367cdfa0650sm7360031f8f.69.2024.07.11.03.02.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Jul 2024 03:02:53 -0700 (PDT)
Message-ID: <89dd0130-562a-4025-968d-d758a26399ec@ursulin.net>
Date: Thu, 11 Jul 2024 11:02:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/gt: Do not consider preemption during
 execlists_dequeue for gen8
To: Nitin Gote <nitin.r.gote@intel.com>, intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, andi.shyti@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com,
 janusz.krzysztofik@linux.intel.com, stable@vger.kernel.org
References: <20240711051215.1143127-1-nitin.r.gote@intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20240711051215.1143127-1-nitin.r.gote@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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


On 11/07/2024 06:12, Nitin Gote wrote:
> We're seeing a GPU HANG issue on a CHV platform, which was caused by
> bac24f59f454 ("drm/i915/execlists: Enable coarse preemption boundaries for gen8").
> 
> Gen8 platform has only timeslice and doesn't support a preemption mechanism
> as engines do not have a preemption timer and doesn't send an irq if the
> preemption timeout expires. So, add a fix to not consider preemption
> during dequeuing for gen8 platforms.
> 
> Also move can_preemt() above need_preempt() function to resolve implicit
> declaration of function ‘can_preempt' error and make can_preempt()
> function param as const to resolve error: passing argument 1 of
> ‘can_preempt’ discards ‘const’ qualifier from the pointer target type.
> 
> v2: Simplify can_preemt() function (Tvrtko Ursulin)

Yeah sorry for that yesterday when I thought gen8 emit bb was dead code, 
somehow I thought there was a gen9 emit_bb flavour. Looks like I 
confused it with something else.

> 
> Fixes: bac24f59f454 ("drm/i915/execlists: Enable coarse preemption boundaries for gen8")
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11396
> Suggested-by: Andi Shyti <andi.shyti@intel.com>
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
> Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
> CC: <stable@vger.kernel.org> # v5.2+
> ---
>   .../drm/i915/gt/intel_execlists_submission.c    | 17 ++++++++---------
>   1 file changed, 8 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 21829439e686..59885d7721e4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -294,11 +294,19 @@ static int virtual_prio(const struct intel_engine_execlists *el)
>   	return rb ? rb_entry(rb, struct ve_node, rb)->prio : INT_MIN;
>   }
>   
> +static bool can_preempt(const struct intel_engine_cs *engine)
> +{
> +	return GRAPHICS_VER(engine->i915) > 8;
> +}
> +
>   static bool need_preempt(const struct intel_engine_cs *engine,
>   			 const struct i915_request *rq)
>   {
>   	int last_prio;
>   
> +	if (!can_preempt(engine))
> +		return false;
> +
>   	if (!intel_engine_has_semaphores(engine))

Patch looks clean now. Hmmm one new observation is whether the "has 
semaphores" check is now redundant? Looks preemption depends on 
semaphore support in logical_ring_default_vfuncs().

Regards,

Tvrtko

>   		return false;
>   
> @@ -3313,15 +3321,6 @@ static void remove_from_engine(struct i915_request *rq)
>   	i915_request_notify_execute_cb_imm(rq);
>   }
>   
> -static bool can_preempt(struct intel_engine_cs *engine)
> -{
> -	if (GRAPHICS_VER(engine->i915) > 8)
> -		return true;
> -
> -	/* GPGPU on bdw requires extra w/a; not implemented */
> -	return engine->class != RENDER_CLASS;
> -}
> -
>   static void kick_execlists(const struct i915_request *rq, int prio)
>   {
>   	struct intel_engine_cs *engine = rq->engine;
