Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 946B690E856
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 12:28:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBC9110EC1F;
	Wed, 19 Jun 2024 10:28:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="f+hwavdf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55E6910EC1E
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 10:28:44 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id
 5b1f17b1804b1-4217990f997so46389685e9.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 03:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1718792922; x=1719397722;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=cP9U9cAEESd9Gge2UJBtGjXdmnCNDDOh1lsPLCHcpjw=;
 b=f+hwavdfLOOQnwOWTBQQvI0F1+2F2jqiyVIb4Q81aMIfGejCXBJWw4/UKST/qf34cy
 a0rmK7lNXzt+VXMPOJ4n5nHzm6mAZaCZKQ+guMaxYepZuwYCX0Bp/MGCAQA6HBQsPyzi
 BqNy07r0Im3er/pLn+JIhgt66WD5OSMRcExD+67rvAEv02goyo+eys4XNfGDdhJbzDjo
 MiEsjEas0m6co1mO/C8Wh2GL4R0Uwpudnnu9dJYDxA/oYkjd2oyoSqC2CGqQCGkQLo9y
 WjYafQ1FYMjycX2CTawSqS2rSju4AWuu5GAWwYQtjujIy5AcBvp28MC8rr4PhZHHV3oR
 aY5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718792922; x=1719397722;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=cP9U9cAEESd9Gge2UJBtGjXdmnCNDDOh1lsPLCHcpjw=;
 b=REWp0MQMAa7LOUkw6O/rGZiGVOaTsq8qH0r6uJbv9DNf48sUo+6Y6vY596u62N4PTZ
 dZK8INZEKgqQkCiyayTKiKnr7PwdZuP5DU6whTbOPonTEYWWlXyRbsoARYWiCkrzeBI7
 7/eWHbC0YxJSJNcayfcqFxzFyCxl9pbwUok2/sbD/Dn9S5qHvTWQKvImDuKfn96NXWWw
 bkqd6SutUEwbt444IOEZFo3FLeLd2XAHFweX5/DqwqovTrn2EcRA+gpbu98lggCOCyey
 X/nTWOnpzw7vRWV/6zJBsLSrKuQ+odcNw3Zu3NZv1zLgIFzZdJOLZw/DpTUsyNhBPQKv
 2ipQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCW5GEoirqm3H9NXVDJk3uIj7OpdUnCd3cgZlocUk+JH4QLklOLjL2gmyt0mptpygq7luGWFVzgrQpZrAsnvrisjyHCSH8oZ3oNBa4Pe2qB9
X-Gm-Message-State: AOJu0Ywj4bEqgHYuEArYyRXDxuNqGouRLD36OyVjKRF1BqmQG59HaUD0
 ValKQf7nHjF97HPXmDC5rRD0wES/OLrNq2aPKepqaCVxcMisaqX1gRWG9GDtuTc=
X-Google-Smtp-Source: AGHT+IHRo/2yoGOWG8mFsmODDfB63LXvrmYqwqs5DTCIUi0wXPtf6w56dvhvRe5J1oq8MLB4UTGu6Q==
X-Received: by 2002:a05:600c:2d49:b0:421:cc89:dd5d with SMTP id
 5b1f17b1804b1-4247517615cmr13793635e9.9.1718792922440; 
 Wed, 19 Jun 2024 03:28:42 -0700 (PDT)
Received: from [192.168.0.101] ([84.69.19.168])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-422f5f33bdasm227220795e9.8.2024.06.19.03.28.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Jun 2024 03:28:42 -0700 (PDT)
Message-ID: <773519fb-3dd9-4c80-87f5-da2cd075deb5@ursulin.net>
Date: Wed, 19 Jun 2024 11:28:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/8] drm/i915: Drop the irqs_disabled() check
Content-Language: en-GB
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
References: <20240613102818.4056866-1-bigeasy@linutronix.de>
 <20240613102818.4056866-7-bigeasy@linutronix.de>
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20240613102818.4056866-7-bigeasy@linutronix.de>
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


On 13/06/2024 11:20, Sebastian Andrzej Siewior wrote:
> The !irqs_disabled() check triggers on PREEMPT_RT even with
> i915_sched_engine::lock acquired. The reason is the lock is transformed
> into a sleeping lock on PREEMPT_RT and does not disable interrupts.
> 
> There is no need to check for disabled interrupts. The lockdep
> annotation below already check if the lock has been acquired by the
> caller and will yell if the interrupts are not disabled.
> 
> Remove the !irqs_disabled() check.
> 
> Reported-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> ---
>   drivers/gpu/drm/i915/i915_request.c | 2 --
>   1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 519e096c607cd..466b5ee8ed6d2 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -608,7 +608,6 @@ bool __i915_request_submit(struct i915_request *request)
>   
>   	RQ_TRACE(request, "\n");
>   
> -	GEM_BUG_ON(!irqs_disabled());
>   	lockdep_assert_held(&engine->sched_engine->lock);
>   
>   	/*
> @@ -717,7 +716,6 @@ void __i915_request_unsubmit(struct i915_request *request)
>   	 */
>   	RQ_TRACE(request, "\n");
>   
> -	GEM_BUG_ON(!irqs_disabled());
>   	lockdep_assert_held(&engine->sched_engine->lock);
>   
>   	/*

Maarten can you r-b since it seems this one originated from your 
testing? Otherwise:

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>

Regards,

Tvrtko
