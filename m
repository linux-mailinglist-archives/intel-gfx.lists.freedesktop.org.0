Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3AE4442A6
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Nov 2021 14:50:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D52916EA1E;
	Wed,  3 Nov 2021 13:50:41 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F22A6EA1E;
 Wed,  3 Nov 2021 13:50:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="211549650"
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="211549650"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 06:50:40 -0700
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="489570101"
Received: from murphyjo-mobl1.ger.corp.intel.com (HELO [10.213.220.152])
 ([10.213.220.152])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 06:50:39 -0700
To: John.C.Harrison@Intel.com, IGT-Dev@Lists.FreeDesktop.Org
References: <20211021234044.3071069-1-John.C.Harrison@Intel.com>
 <20211021234044.3071069-2-John.C.Harrison@Intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <426daa00-746e-31d5-d90b-9cf161738b9d@linux.intel.com>
Date: Wed, 3 Nov 2021 13:50:37 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211021234044.3071069-2-John.C.Harrison@Intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/8] tests/i915/gem_exec_capture:
 Remove pointless assert
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
Cc: Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 22/10/2021 00:40, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> The 'many' test ended with an 'assert(count)', presumably meaning to
> ensure that some objects were actually captured. However, 'count' is
> the number of objects created not how many were captured. Plus, there
> is already a 'require(count > 1)' at the start and count is invarient
> so the final assert is basically pointless.
> 
> General concensus appears to be that the test should not fail
> irrespective of how many blobs are captured as low memory situations
> could cause the capture to be abbreviated. So just remove the
> pointless assert completely.

Hm the test appears to be using intel_get_avail_ram_mb() to size the 
working set. Suggesting problems with low memory situations should not 
apply unless bugs. In which case would a better fix be improving the 
sizing logic and changing the assert to igt_assert(blobs)?

Regards,

Tvrtko

> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> ---
>   tests/i915/gem_exec_capture.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/tests/i915/gem_exec_capture.c b/tests/i915/gem_exec_capture.c
> index 7e0a8b8ad..53649cdb2 100644
> --- a/tests/i915/gem_exec_capture.c
> +++ b/tests/i915/gem_exec_capture.c
> @@ -524,7 +524,6 @@ static void many(int fd, int dir, uint64_t size, unsigned int flags)
>   	}
>   	igt_info("Captured %lu %"PRId64"-blobs out of a total of %lu\n",
>   		 blobs, size >> 12, count);
> -	igt_assert(count);
>   
>   	free(error);
>   	free(offsets);
> 
