Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8882F939C2F
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2024 10:03:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 513F710E47C;
	Tue, 23 Jul 2024 08:03:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="BuXbvhmW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D06A10E47C
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2024 08:03:28 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id
 5b1f17b1804b1-427d2cc1c4eso36649215e9.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2024 01:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1721721807; x=1722326607;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Dwumg9sA0boBT9f1y3l+ocDrc52hbXSna/PURnFOFoA=;
 b=BuXbvhmW9SMk1dNqI0+EOYSDfrkZmST+d9UOAGaJhK6JT0vqIJ813IRgoEZwk6nkEl
 L7EdB0upRYxTe1UFLnjV5tjQMdYdHNLrytsyX8drEPBRy9cE6httKTKjX8CI1AVwnMJ2
 3Lu4HNLMWNvk7FJ0RDt3nrKSICW0eMprLTssQXnbRBcTp6ATbmQl8rM+gPTi0WNsec3d
 SWiclu4mDafUp/HKmUjXJk0InU1petQJvlbJPV6v9GozXue3wMDr9bwjD+tRhUQ3j4ds
 /tAARkTGnp8qkfl4n7T/ePQnIW8riOLCR+DF6rF/bCyF3kKTzxSVXr5anOJQuv9lYO4Q
 aasg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1721721807; x=1722326607;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Dwumg9sA0boBT9f1y3l+ocDrc52hbXSna/PURnFOFoA=;
 b=L601O9mUESafbIxD01RjDDiojLWoJ2LZ5rpKx9aaef+uXlx/nJVdZEOMqp9a2KjTBO
 fadM/iePb78nQ84iMIsp9dIrtccnjm4XPmTwI9ff8JPhOqnH7Fa9r59XiAULvHATS8/r
 3mNElk/4DLePqxlRlppELJqd9Dy0DZuSQA1bgsrKu2QkfmJ1x0MMfPY9L5wE9HLEwFVW
 PpvYMKSeupEYs3ZvsLi+U/JlGrVy7whDmqWpMSiXL8j8AVYnwfAHkLVtFY3kq7sjo3c0
 BGLRvS/dqV8zbcWG/ircQyCFKLZqvTYX3xOsJzynioLmUb9Y4gcS182SdqDjC+Yixf1J
 TU/A==
X-Forwarded-Encrypted: i=1;
 AJvYcCV4r7ZRg8IcRGDYhR95iQE09L7mRMHx0Y0/G9w/4oPV9TmdGmTp191m0ubQL1Jyqy4oChZ2Uh+ajUaLFIiFG/WWwKJ/2J1AwmxyPKFaqO7l
X-Gm-Message-State: AOJu0YxajfptiZRyOONFBcg+CfKYSOlmFgeWcpcB/ZRtBGbQuTV7l07b
 e/tjJW+7IL032ENnZKUwndPy2+8onByQeOVJrnIYcgNc4k+42b2C7yuO0lr1vUI=
X-Google-Smtp-Source: AGHT+IFd81ca7GfKvPbphmZbXFfNfzwy4ltQarxCc2MSfiPQ4ODrZWwDsqbJzw6O/OEzKQoLvMv3qg==
X-Received: by 2002:a05:600c:a07:b0:426:6416:aa73 with SMTP id
 5b1f17b1804b1-427ecfe03fbmr13274895e9.12.1721721806759; 
 Tue, 23 Jul 2024 01:03:26 -0700 (PDT)
Received: from [192.168.0.101] ([84.69.19.168])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-427d292077dsm190059625e9.0.2024.07.23.01.03.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 23 Jul 2024 01:03:26 -0700 (PDT)
Message-ID: <be3871bd-fc25-482e-b4d4-91afc4d5b5a5@ursulin.net>
Date: Tue, 23 Jul 2024 09:03:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/7] drm/i915/pmu: Lazy unregister
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 intel-gfx@lists.freedesktop.org, linux-perf-users@vger.kernel.org
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>,
 linux-kernel@vger.kernel.org
References: <20240722210648.80892-1-lucas.demarchi@intel.com>
 <20240722210648.80892-7-lucas.demarchi@intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20240722210648.80892-7-lucas.demarchi@intel.com>
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


On 22/07/2024 22:06, Lucas De Marchi wrote:
> Instead of calling perf_pmu_unregister() when unbinding, defer that to
> the destruction of i915 object. Since perf itself holds a reference in
> the event, this only happens when all events are gone, which guarantees
> i915 is not unregistering the pmu with live events.
> 
> Previously, running the following sequence would crash the system after
> ~2 tries:
> 
> 	1) bind device to i915
> 	2) wait events to show up on sysfs
> 	3) start perf  stat -I 1000 -e i915/rcs0-busy/
> 	4) unbind driver
> 	5) kill perf
> 
> Most of the time this crashes in perf_pmu_disable() while accessing the
> percpu pmu_disable_count. This happens because perf_pmu_unregister()
> destroys it with free_percpu(pmu->pmu_disable_count).
> 
> With a lazy unbind, the pmu is only unregistered after (5) as opposed to
> after (4). The downside is that if a new bind operation is attempted for
> the same device/driver without killing the perf process, i915 will fail
> to register the pmu (but still load successfully). This seems better
> than completely crashing the system.

So effectively allows unbind to succeed without fully unbinding the 
driver from the device? That sounds like a significant drawback and if 
so, I wonder if a more complicated solution wouldn't be better after 
all. Or is there precedence for allowing userspace keeping their paws on 
unbound devices in this way?

Regards,

Tvrtko

> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_pmu.c | 24 +++++++++---------------
>   1 file changed, 9 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index 8708f905f4f4..df53a8fe53ec 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -1158,18 +1158,21 @@ static void free_pmu(struct drm_device *dev, void *res)
>   	struct i915_pmu *pmu = res;
>   	struct drm_i915_private *i915 = pmu_to_i915(pmu);
>   
> +	perf_pmu_unregister(&pmu->base);
>   	free_event_attributes(pmu);
>   	kfree(pmu->base.attr_groups);
>   	if (IS_DGFX(i915))
>   		kfree(pmu->name);
> +
> +	/*
> +	 * Make sure all currently running (but shortcut on pmu->closed) are
> +	 * gone before proceeding with free'ing the pmu object embedded in i915.
> +	 */
> +	synchronize_rcu();
>   }
>   
>   static int i915_pmu_cpu_online(unsigned int cpu, struct hlist_node *node)
>   {
> -	struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu), cpuhp.node);
> -
> -	GEM_BUG_ON(!pmu->base.event_init);
> -
>   	/* Select the first online CPU as a designated reader. */
>   	if (cpumask_empty(&i915_pmu_cpumask))
>   		cpumask_set_cpu(cpu, &i915_pmu_cpumask);
> @@ -1182,8 +1185,6 @@ static int i915_pmu_cpu_offline(unsigned int cpu, struct hlist_node *node)
>   	struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu), cpuhp.node);
>   	unsigned int target = i915_pmu_target_cpu;
>   
> -	GEM_BUG_ON(!pmu->base.event_init);
> -
>   	/*
>   	 * Unregistering an instance generates a CPU offline event which we must
>   	 * ignore to avoid incorrectly modifying the shared i915_pmu_cpumask.
> @@ -1337,21 +1338,14 @@ void i915_pmu_unregister(struct drm_i915_private *i915)
>   {
>   	struct i915_pmu *pmu = &i915->pmu;
>   
> -	if (!pmu->base.event_init)
> -		return;
> -
>   	/*
> -	 * "Disconnect" the PMU callbacks - since all are atomic synchronize_rcu
> -	 * ensures all currently executing ones will have exited before we
> -	 * proceed with unregistration.
> +	 * "Disconnect" the PMU callbacks - unregistering the pmu will be done
> +	 * later when all currently open events are gone
>   	 */
>   	pmu->closed = true;
> -	synchronize_rcu();
>   
>   	hrtimer_cancel(&pmu->timer);
> -
>   	i915_pmu_unregister_cpuhp_state(pmu);
> -	perf_pmu_unregister(&pmu->base);
>   
>   	pmu->base.event_init = NULL;
>   }
