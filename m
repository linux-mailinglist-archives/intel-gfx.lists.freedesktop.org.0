Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 876B143119F
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 09:54:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A575E6E980;
	Mon, 18 Oct 2021 07:54:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A0226E980
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Oct 2021 07:54:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10140"; a="228140060"
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="228140060"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 00:54:20 -0700
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="572663135"
Received: from cscleary-mobl.ger.corp.intel.com (HELO [10.252.13.221])
 ([10.252.13.221])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 00:54:18 -0700
To: Oak Zeng <oak.zeng@intel.com>, intel-gfx@lists.freedesktop.org
Cc: srinivasan.s@intel.com, sudeep.dutt@intel.com, cq.tang@intel.com,
 chris@chris-wilson.co.uk
References: <20211018034256.816113-1-oak.zeng@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <f555cc59-d427-f183-5d32-d4dd89405853@intel.com>
Date: Mon, 18 Oct 2021 08:54:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20211018034256.816113-1-oak.zeng@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
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

AFAIK the existing callers only expect that the request will be 
scheduled to run at some point, like in the case of __igt_write_huge(), 
before we read the page contents via the CPU, there is an object_wait(). 
Also in the shrink_thp test I guess we intentionally don't want to wait 
directly in the test, since part of what we are testing is that the 
shrinker ensures the object is idle before unbinding it.

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
>   err_batch:
>   	i915_vma_unpin_and_release(&batch, 0);
>   	return err;
> 
