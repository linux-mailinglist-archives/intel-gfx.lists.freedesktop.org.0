Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B16B66161DF
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 12:41:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FCA910E485;
	Wed,  2 Nov 2022 11:41:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5414510E47F;
 Wed,  2 Nov 2022 11:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667389271; x=1698925271;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=mRY5K+tcJJLPOx0SFJZ8uJDPLVx2b9pMQcZ1iOxHBjE=;
 b=MCLNBNpGfZzHe97kMV5e9+2XVshAfFz1koyhOOH3VXX2hnkS7To/D9S1
 yQ1z4KmVYk3HtdiR/XOgjzXtABmHpy3Xf1e/CBrEPHWRtGmo/JfoYB0Oo
 LNZO88tKUcPY1jw/qLY8qZnDKWtCgXUzQllB5bIm/prvalATyENXpnzmi
 0H1W+W8a2DdnlLidwnTgXAyzRvosfuFnLFpWRTRXUZkMu9byIBzqcDFLO
 gLQ/yL0Y5st0ntnhX2CwYma0GszJEnswEt95x/4p3Tw1b2edp6xKoOgSt
 25ADffoEF3H/DhjM0RUZ2nemajinc+HYCvd6s96yfNRBYWUcO1VSwGr+S g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="306998771"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="306998771"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 04:41:10 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="697777199"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="697777199"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.41.254])
 ([10.249.41.254])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 04:41:09 -0700
Message-ID: <4bd8e049-f80d-d64f-e19c-96cf9506d6e4@linux.intel.com>
Date: Wed, 2 Nov 2022 12:41:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, igt-dev@lists.freedesktop.org
References: <20221102105204.208634-1-matthew.auld@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20221102105204.208634-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] tests/i915/gem_create: use
 cpu_size in always_clear
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 11/2/2022 11:52 AM, Matthew Auld wrote:
> If the we can't fit the buffer in the CPU visible portion of lmem, then

Need a minor fix of above sentence(unwanted "the")

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

> the kernel will be unable to migrate the pages on fault on small-bar
> systems.  Note that this doesn't restrict where the pages are allocated,
> but should just ensure we don't SIGBUS, if we need to migrate the pages.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6967
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   tests/i915/gem_create.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/tests/i915/gem_create.c b/tests/i915/gem_create.c
> index 9c695fa4..af530ccc 100644
> --- a/tests/i915/gem_create.c
> +++ b/tests/i915/gem_create.c
> @@ -271,7 +271,7 @@ static void always_clear(int i915, const struct gem_memory_region *r, int timeou
>   	struct thread_clear arg = {
>   		.i915 = i915,
>   		.region = r->ci,
> -		.max = r->size / 2 >> 12, /* in pages */
> +		.max = r->cpu_size / 2 >> 12, /* in pages */
>   		.timeout = timeout,
>   	};
>   	const int ncpus = sysconf(_SC_NPROCESSORS_ONLN);
