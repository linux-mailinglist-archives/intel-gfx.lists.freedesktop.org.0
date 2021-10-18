Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1835431191
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 09:49:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 124E06E09F;
	Mon, 18 Oct 2021 07:49:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FA936E09F
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Oct 2021 07:49:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10140"; a="291661776"
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="291661776"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 00:49:38 -0700
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="443958819"
Received: from icdeacon-mobl.ger.corp.intel.com (HELO [10.213.254.147])
 ([10.213.254.147])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 00:49:37 -0700
To: Oak Zeng <oak.zeng@intel.com>, intel-gfx@lists.freedesktop.org
Cc: srinivasan.s@intel.com, sudeep.dutt@intel.com, cq.tang@intel.com,
 chris@chris-wilson.co.uk, matthew.auld@intel.com
References: <20211018034256.816113-1-oak.zeng@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ec2d632d-fc87-08a3-0aaf-f7490ea2d8a1@linux.intel.com>
Date: Mon, 18 Oct 2021 08:49:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211018034256.816113-1-oak.zeng@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Wait request to finish
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


On 18/10/2021 04:42, Oak Zeng wrote:
> Caller of function igt_gpu_fill_dw assumes when this function
> returns, the gpu command to fill dword is already finished.
> Caller usually checks the GPU filling result immediately, see
> the usage in function __igt_write_huge. If there is no wait,
> when function igt_gpu_fill_dw returns, the GPU command is not
> guaranteed to be finished. So wait for request to finish.

There is more than one caller and the first one I looked at already does 
wait so the above is not fully accurate.

I your example of __igt_write_huge you have i915_gem_object_prepare_read 
called before the assert which does object wait, so that too is not a 
missing wait.

I haven't checked the rest. So perhaps say what failure you are trying 
to fix with a link to a CI report or something?

> 
> Signed-off-by: Oak Zeng <oak.zeng@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
> index b35c1219c852..5fa595ed30b1 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
> @@ -157,6 +157,7 @@ int igt_gpu_fill_dw(struct intel_context *ce,
>   	if (err)
>   		i915_request_set_error_once(rq, err);
>   	i915_request_add(rq);
> +	err = i915_request_wait(rq, 0, HZ/5);

For you reference this exploded in CI because as soon as 
i915_request_add() you are giving your rq reference to the backend and 
i915_request_wait can/will therefore ooops. If you used this pattern 
somewhere you'd need to do:

i915_request_get()
i915_request_add()
i915_request_wait()
i915_request_put()

Regards,

Tvrtko

>   err_batch:
>   	i915_vma_unpin_and_release(&batch, 0);
>   	return err;
> 
