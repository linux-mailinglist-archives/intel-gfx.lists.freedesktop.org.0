Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8386616AC5
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 18:30:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52EBA10E54B;
	Wed,  2 Nov 2022 17:30:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFC2810E548
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 17:30:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667410230; x=1698946230;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=p64kU0BvBcaPv0wvCzmPQW9y9TBqm+2pfgJ2lmd9tEE=;
 b=mmSM2GBmTpqGVYXxE6yrlwvah9gat2zUCNTkYeEIGjVZ3XwLIs93HE1p
 smNplFONH0dSBskghokc8M4g6nyPnm3YHGd8rY9TTj7rP802gjLe1aTS5
 kTidrlo1epZXrjY1rUIKigbZmfq5xFMKeFYG7YR1gMIJUEZ2DeZz+NCCN
 xZGgq4jbk1JUzAtWv1As9Xq4d5B4ey2JLYeU/pDRvyXY7pSYArXPUmpyX
 cvzezriFlADPSuXfTwW9KEoTEuqTUHYmzRhDxHykF6u6tLyW9Cn9vJXBd
 kwNvutq1I3WeUuXfl4Pv6JpdP4D/IxIoqg0Au1+OM09xOgKkQb7n3Q3S/ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="309472601"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="309472601"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 10:30:30 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="634351981"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="634351981"
Received: from dsloan-mobl.ger.corp.intel.com (HELO [10.213.207.205])
 ([10.213.207.205])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 10:30:29 -0700
Message-ID: <eba4e0fc-9b81-1b1f-d90f-8626b0e7f8a3@linux.intel.com>
Date: Wed, 2 Nov 2022 17:30:27 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Content-Language: en-US
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221102155709.31717-1-nirmoy.das@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20221102155709.31717-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Reduce oversaturation
 of request smoketesting
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 02/11/2022 15:57, Nirmoy Das wrote:
> From: Chris Wilson <chris@chris-wilson.co.uk>
> 
> The goal in launching the request smoketest is to have sufficient tasks
> running across the system such that we are likely to detect concurrency
> issues. We aim to have 2 tasks using the same engine, gt, device (each
> level of locking around submission and signaling) running at the same
> time. While tasks may not be running all the time as they synchronise
> with the gpu, they will be running most of the time, in which case
> having many more tasks than cores available is wasteful (and
> dramatically increases the workload causing excess runtime). Aim to
> limit the number of tasks such that there is at least 2 running per
> engine, spreading surplus cores around the engines (rather than running
> a task per core per engine.)
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/selftests/i915_request.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
> index a46350c37e9d..4380473ceb98 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_request.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_request.c
> @@ -1710,7 +1710,8 @@ static int live_breadcrumbs_smoketest(void *arg)
>   {
>   	struct drm_i915_private *i915 = arg;
>   	const unsigned int nengines = num_uabi_engines(i915);
> -	const unsigned int ncpus = num_online_cpus();
> +	const unsigned int ncpus = /* saturate with nengines * ncpus */
> +		max_t(int, 2, DIV_ROUND_UP(num_online_cpus(), nengines));
>   	unsigned long num_waits, num_fences;
>   	struct intel_engine_cs *engine;
>   	struct smoke_thread *threads;
> @@ -1782,7 +1783,7 @@ static int live_breadcrumbs_smoketest(void *arg)
>   			goto out_flush;
>   		}
>   		/* One ring interleaved between requests from all cpus */
> -		smoke[idx].max_batch /= num_online_cpus() + 1;
> +		smoke[idx].max_batch /= ncpus + 1;
>   		pr_debug("Limiting batches to %d requests on %s\n",
>   			 smoke[idx].max_batch, engine->name);
>   

Makes sense to me.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
