Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 467B3A1AAC4
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2025 20:54:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F84F10E2D1;
	Thu, 23 Jan 2025 19:54:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="PUdF/is5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
 [209.85.128.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 970BB10E2D1
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2025 19:54:19 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id
 5b1f17b1804b1-436345cc17bso9988755e9.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2025 11:54:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1737662058; x=1738266858; darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=YPEjl1vGB5yqT3rNF/JEbJeHzGqFcTZEkJbACfCuJ68=;
 b=PUdF/is5/C5NoxI04LscH/3yBz1fL4Gi0CdXkNe1/FLAYc6NRQSjFC7sJti6w0hr8F
 mNYRN1XpA7WDTF438TAzwGofMkdZ7rlpbw7OJ5QqhTR3HIAoWh7Ccf3pVz3VgjER6Hf1
 TqUROCt2DYgWjqkIvbs4kSyP4H0ZplmFEWZBU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737662058; x=1738266858;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=YPEjl1vGB5yqT3rNF/JEbJeHzGqFcTZEkJbACfCuJ68=;
 b=Qytd16SVYjOyNAf3783nPPv/yYslTm3TyD33stpfHHZNICZxconcOw9x+E9rVFlecn
 zKdtvTQ1dxuOUXYKFWcwnYhtKUhuwBreGe4pUW6RBslzR3Qh102d2YN1rVsjGWIabo6f
 tL+SaAe76hi356ZraZOT4lTVAtQp+DyM1VuazGZn4OgrFK/PCuCbC2I0ayoNb4gP6qXh
 JFF+OSGOWkkTmU+E56a8cLu+kkiEwGJpYQj41eDczIYoDGkjY2gWtOeuyT1gR61OVHO2
 bdOBk8stJcehQwpZWDNWpn0VummB2EIFiD16XVzcOw6SMZ93Gn2YL+rK+aQf5f/JZ8lC
 qbKA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWsPtOWtTGba+bhtVdvn82Kg6Ss4O5wp/bUF0qNhWdcwgfvBLvmtg+Vs3MiYY2QBO3y5eul9T5B8y0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxVCroXzF24rD4rGy+Y6UXk79sDLHeu9lQNLQeOlQcClho/e0/1
 1CPoG4zQVATZOICabi0FqVCP+UhfWxLXayD4cSP8w2L2SXA0NtzsRC1KTDX8/5Y=
X-Gm-Gg: ASbGncspJUG0mEZ3gKc09XjOJVaaBy0mIcRj0RyqE0foeXDBIAFs0Sk+bEpn54Jo4zR
 6urkIRcqG7asgHP9xVJp43JVDCISCmysXzvNhPnKx1LnVj4u0k5X+aoytei2TqPc9eWSJgeVhWE
 J7sYJYmu4gtwSjZcVFRmL266AWbOXlZBfzJVlzwYg/NYzu+9+ERhH4dPmmu+6Av6iXwvaFR97AI
 w0Hqt6RaSpvPTr+xF/k5ae2/uz83O1Z1x4jySeVhffTyxLajfUpqVERnkcV27wS3tobW27H8spp
 e/um2uxoYYx660t0
X-Google-Smtp-Source: AGHT+IF8V2akxtpn+GFAL3Ye6G/m1eRXMD4Qwpnjri1PUaGxw2ybdqgymTDq8VXwyS1d0KnkKyF/gA==
X-Received: by 2002:a05:6000:1287:b0:38a:4184:151c with SMTP id
 ffacd0b85a97d-38bf5675482mr23119174f8f.27.1737662057751; 
 Thu, 23 Jan 2025 11:54:17 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:5485:d4b2:c087:b497])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-38c2a188c28sm582610f8f.54.2025.01.23.11.54.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2025 11:54:17 -0800 (PST)
Date: Thu, 23 Jan 2025 20:54:14 +0100
From: Simona Vetter <simona.vetter@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Matthew Brost <matthew.brost@intel.com>,
 Danilo Krummrich <dakr@kernel.org>, Philipp Stanner <phasta@kernel.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Subject: Re: [PATCH 3/5] drm/sched: stop passing non struct drm_device to
 drm_err() and friends
Message-ID: <Z5KeZnJ4HOxs1wuk@phenom.ffwll.local>
References: <cover.1737644530.git.jani.nikula@intel.com>
 <fe441dd1469d2b03e6b2ff247078bdde2011c6e3.1737644530.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <fe441dd1469d2b03e6b2ff247078bdde2011c6e3.1737644530.git.jani.nikula@intel.com>
X-Operating-System: Linux phenom 6.12.3-amd64 
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

On Thu, Jan 23, 2025 at 05:09:10PM +0200, Jani Nikula wrote:
> The expectation is that the struct drm_device based logging helpers get
> passed an actual struct drm_device pointer rather than some random
> struct pointer where you can dereference the ->dev member.
> 
> Convert drm_err(sched, ...) to dev_err(sched->dev, ...) and
> similar. This matches current usage, as struct drm_device is not
> available, but drops "[drm]" or "[drm] *ERROR*" prefix from logging.
> 
> Unfortunately, there's no dev_WARN_ON(), so the conversion is not
> exactly the same.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

For the two previous patches just dev_ makes sense since they're just
platform drivers, but for drm/sched I wonder whether it wouldn't be better
to switch from struct device * to struct drm_device * instead. I guess
might be best to leave that decision to scheduler folks.

Anyway on the series and with that caveat:

Reviewed-by: Simona Vetter <simona.vetter@ffwll.ch>


> 
> ---
> 
> Cc: Matthew Brost <matthew.brost@intel.com>
> Cc: Danilo Krummrich <dakr@kernel.org>
> Cc: Philipp Stanner <phasta@kernel.org>
> Cc: "Christian K�nig" <ckoenig.leichtzumerken@gmail.com>
> Cc: dri-devel@lists.freedesktop.org
> ---
>  drivers/gpu/drm/scheduler/sched_entity.c |  2 +-
>  drivers/gpu/drm/scheduler/sched_main.c   | 20 +++++++++++---------
>  2 files changed, 12 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/scheduler/sched_entity.c b/drivers/gpu/drm/scheduler/sched_entity.c
> index 69bcf0e99d57..e29af71d4b5c 100644
> --- a/drivers/gpu/drm/scheduler/sched_entity.c
> +++ b/drivers/gpu/drm/scheduler/sched_entity.c
> @@ -92,7 +92,7 @@ int drm_sched_entity_init(struct drm_sched_entity *entity,
>  		 * the lowest priority available.
>  		 */
>  		if (entity->priority >= sched_list[0]->num_rqs) {
> -			drm_err(sched_list[0], "entity with out-of-bounds priority:%u num_rqs:%u\n",
> +			dev_err(sched_list[0]->dev, "entity with out-of-bounds priority:%u num_rqs:%u\n",
>  				entity->priority, sched_list[0]->num_rqs);
>  			entity->priority = max_t(s32, (s32) sched_list[0]->num_rqs - 1,
>  						 (s32) DRM_SCHED_PRIORITY_KERNEL);
> diff --git a/drivers/gpu/drm/scheduler/sched_main.c b/drivers/gpu/drm/scheduler/sched_main.c
> index a48be16ab84f..d1c1f22fd1db 100644
> --- a/drivers/gpu/drm/scheduler/sched_main.c
> +++ b/drivers/gpu/drm/scheduler/sched_main.c
> @@ -103,9 +103,9 @@ static u32 drm_sched_available_credits(struct drm_gpu_scheduler *sched)
>  {
>  	u32 credits;
>  
> -	drm_WARN_ON(sched, check_sub_overflow(sched->credit_limit,
> -					      atomic_read(&sched->credit_count),
> -					      &credits));
> +	WARN_ON(check_sub_overflow(sched->credit_limit,
> +				   atomic_read(&sched->credit_count),
> +				   &credits));
>  
>  	return credits;
>  }
> @@ -130,9 +130,11 @@ static bool drm_sched_can_queue(struct drm_gpu_scheduler *sched,
>  	/* If a job exceeds the credit limit, truncate it to the credit limit
>  	 * itself to guarantee forward progress.
>  	 */
> -	if (drm_WARN(sched, s_job->credits > sched->credit_limit,
> -		     "Jobs may not exceed the credit limit, truncate.\n"))
> +	if (s_job->credits > sched->credit_limit) {
> +		dev_WARN(sched->dev,
> +			 "Jobs may not exceed the credit limit, truncate.\n");
>  		s_job->credits = sched->credit_limit;
> +	}
>  
>  	return drm_sched_available_credits(sched) >= s_job->credits;
>  }
> @@ -790,7 +792,7 @@ int drm_sched_job_init(struct drm_sched_job *job,
>  		 * or worse--a blank screen--leave a trail in the
>  		 * logs, so this can be debugged easier.
>  		 */
> -		drm_err(job->sched, "%s: entity has no rq!\n", __func__);
> +		dev_err(job->sched->dev, "%s: entity has no rq!\n", __func__);
>  		return -ENOENT;
>  	}
>  
> @@ -1280,7 +1282,7 @@ int drm_sched_init(struct drm_gpu_scheduler *sched,
>  	if (num_rqs > DRM_SCHED_PRIORITY_COUNT) {
>  		/* This is a gross violation--tell drivers what the  problem is.
>  		 */
> -		drm_err(sched, "%s: num_rqs cannot be greater than DRM_SCHED_PRIORITY_COUNT\n",
> +		dev_err(sched->dev, "%s: num_rqs cannot be greater than DRM_SCHED_PRIORITY_COUNT\n",
>  			__func__);
>  		return -EINVAL;
>  	} else if (sched->sched_rq) {
> @@ -1288,7 +1290,7 @@ int drm_sched_init(struct drm_gpu_scheduler *sched,
>  		 * fine-tune their DRM calling order, and return all
>  		 * is good.
>  		 */
> -		drm_warn(sched, "%s: scheduler already initialized!\n", __func__);
> +		dev_warn(sched->dev, "%s: scheduler already initialized!\n", __func__);
>  		return 0;
>  	}
>  
> @@ -1343,7 +1345,7 @@ int drm_sched_init(struct drm_gpu_scheduler *sched,
>  Out_check_own:
>  	if (sched->own_submit_wq)
>  		destroy_workqueue(sched->submit_wq);
> -	drm_err(sched, "%s: Failed to setup GPU scheduler--out of memory\n", __func__);
> +	dev_err(sched->dev, "%s: Failed to setup GPU scheduler--out of memory\n", __func__);
>  	return -ENOMEM;
>  }
>  EXPORT_SYMBOL(drm_sched_init);
> -- 
> 2.39.5
> 

-- 
Simona Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
