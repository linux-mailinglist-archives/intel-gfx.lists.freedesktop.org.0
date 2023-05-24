Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E646C70F4A8
	for <lists+intel-gfx@lfdr.de>; Wed, 24 May 2023 13:01:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5282010E0A9;
	Wed, 24 May 2023 11:01:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B02210E0A9
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 May 2023 11:01:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684926082; x=1716462082;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=regEsQ+kl/G+he8tAyDD9E/qQgF+5tW3LL1Mler8G4E=;
 b=KSSBvRUZfy9IVPQLcSbktLp2DqgTtvSD/DTZyp2eyHhWSfNJSuqBntCM
 oUMxcnO+ylVpBLZeyCJnan7C1OWfWxFlrD97t/gARdNxnH6JZCsD5HTFI
 cjW5NqQ92nQr5tYVL+sVR7+hjCXOEt3tmm5uDBE+/NmuapmhJEnhMZruZ
 +qHgdktwIBFwEWw0xltPUTJYjvSlmFvNe+jA+ISh2m08T0SEDmAEtFas1
 N82BQHTrXsKToRiJ9AVbh+qzj3HlyogxV6P501RFlAq+oxjO7wYAsxuM8
 53qTrKvcFWyNMzskvVEJzemAqNWzIqvhswoZn3pJbgDIvY8IMRrB7RQBC A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="351041081"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="351041081"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 04:01:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="950963533"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="950963533"
Received: from bmhacket-mobl.ger.corp.intel.com (HELO [10.213.218.245])
 ([10.213.218.245])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 04:01:19 -0700
Message-ID: <8881a6f8-246a-1f11-1070-c303a0a1b85a@linux.intel.com>
Date: Wed, 24 May 2023 12:01:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230524090521.596399-1-luciano.coelho@intel.com>
 <20230524090521.596399-4-luciano.coelho@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230524090521.596399-4-luciano.coelho@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915/selftests: add local
 workqueue for SW fence selftest
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
Cc: rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 24/05/2023 10:05, Luca Coelho wrote:
> Instead of using a global workqueue for the SW fence selftest,
> allocate a separate one temporarily only while running the test.
> 
> Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>   drivers/gpu/drm/i915/selftests/i915_sw_fence.c | 16 +++++++++++++---
>   1 file changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/i915_sw_fence.c b/drivers/gpu/drm/i915/selftests/i915_sw_fence.c
> index daa985e5a19b..8f5ce71fa453 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_sw_fence.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_sw_fence.c
> @@ -523,12 +523,19 @@ static void task_ipc(struct work_struct *work)
>   static int test_ipc(void *arg)
>   {
>   	struct task_ipc ipc;
> +	struct workqueue_struct *wq;
>   	int ret = 0;
>   
> +	wq = alloc_workqueue("i1915-selftest", 0, 0);
> +	if (wq == NULL)
> +		return -ENOMEM;
> +
>   	/* Test use of i915_sw_fence as an interprocess signaling mechanism */
>   	ipc.in = alloc_fence();
> -	if (!ipc.in)
> -		return -ENOMEM;
> +	if (!ipc.in) {
> +		ret = -ENOMEM;
> +		goto err_work;
> +	}
>   	ipc.out = alloc_fence();
>   	if (!ipc.out) {
>   		ret = -ENOMEM;
> @@ -540,7 +547,7 @@ static int test_ipc(void *arg)
>   
>   	ipc.value = 0;
>   	INIT_WORK_ONSTACK(&ipc.work, task_ipc);
> -	schedule_work(&ipc.work);
> +	queue_work(wq, &ipc.work);
>   
>   	wait_for_completion(&ipc.started);
>   
> @@ -563,6 +570,9 @@ static int test_ipc(void *arg)
>   	free_fence(ipc.out);
>   err_in:
>   	free_fence(ipc.in);
> +err_work:
> +	destroy_workqueue(wq);
> +
>   	return ret;
>   }
>   

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
