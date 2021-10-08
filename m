Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D0F426624
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Oct 2021 10:44:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 399E06E862;
	Fri,  8 Oct 2021 08:44:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 028DF6E862
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Oct 2021 08:44:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="226365493"
X-IronPort-AV: E=Sophos;i="5.85,357,1624345200"; d="scan'208";a="226365493"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 01:44:06 -0700
X-IronPort-AV: E=Sophos;i="5.85,357,1624345200"; d="scan'208";a="489376943"
Received: from tocallag-mobl2.ger.corp.intel.com (HELO [10.213.250.80])
 ([10.213.250.80])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 01:44:05 -0700
To: Oak Zeng <oak.zeng@intel.com>, intel-gfx@lists.freedesktop.org
References: <20211007225553.571381-1-oak.zeng@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <fbe9e9d4-fcfe-ecf4-d227-d29ca26375b4@linux.intel.com>
Date: Fri, 8 Oct 2021 09:44:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211007225553.571381-1-oak.zeng@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Check function return in
 live_nop_switch
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


On 07/10/2021 23:55, Oak Zeng wrote:
> Fail this test earlier if i915_request_await_dma_fence
> fails.

Why only this instance and not the other one in the same function?

> Signed-off-by: Oak Zeng <oak.zeng@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 9 ++++++++-
>   1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> index b32f7fed2d9c..c0b85e861014 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> @@ -82,7 +82,14 @@ static int live_nop_switch(void *arg)
>   				goto out_file;
>   			}
>   			if (rq) {
> -				i915_request_await_dma_fence(this, &rq->fence);
> +				if (i915_request_await_dma_fence(this,
> +					&rq->fence)) {

err = i915_request_await_dma_fence...
if (err)

So you get the correct error and don't need to assign one below.

> +					pr_err("Failed to populate %ld contexts\n", n);

Might as well unique error message.

> +					intel_gt_set_wedged(to_gt(i915));

Check your base tree.

> +					i915_request_put(rq);
> +					err = -EIO;
> +					goto out_file;
> +				}
>   				i915_request_put(rq);
>   			}
>   			rq = i915_request_get(this);
> 

Regards,

Tvrtko
