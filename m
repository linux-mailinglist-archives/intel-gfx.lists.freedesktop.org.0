Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1054E55C026
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jun 2022 12:24:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A73E112B0D;
	Tue, 28 Jun 2022 10:24:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81C5F10F041;
 Tue, 28 Jun 2022 10:24:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656411868; x=1687947868;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=0MtJ8my1Ve/CL/eErW4mJ2RM5VKa5GUNvWql2cEWyqE=;
 b=RvmzQtS1M6CNPhjWZd8kMJnrrBCRfyskwbuUwa59COlSdP0w6/dhm1vK
 ckMiRSexVdNeXCH4emUwDc686/QiqrqAUqNSBLE/xtRVwtVteD0YFaA/E
 BZT7QTYxNQr7cU89eAur9iw5urfoLYuHyzj1PgSpCcsuszBfyjdSMbuwC
 +hN3mQUxPuDStqAp8jx8bnzspRt+Zf+dZzlamIFojNxlM8N0ulb5b1TaC
 H5392fNFR5gX3OgJCvmW6dZVdknn1xGm2mSu74PGDr87YbhC+s6gvOp+C
 D8DUab0Mcdx3k2KyTCoXFiIEYA7+uEWl154FhRWIpYEXMC548OqLhIRi9 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="282437776"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="282437776"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 03:24:28 -0700
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="646856182"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.251.217.119])
 ([10.251.217.119])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 03:24:26 -0700
Message-ID: <c2087eac-b2ae-e26a-4431-19212e078e9e@linux.intel.com>
Date: Tue, 28 Jun 2022 12:24:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, igt-dev@lists.freedesktop.org
References: <20220627161004.70153-1-matthew.auld@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20220627161004.70153-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/3] tests/i915/gem_eio: fix
 uaf
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The series is Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

On 6/27/2022 6:10 PM, Matthew Auld wrote:
> ../tests/i915/gem_eio.c:277:20: warning: pointer ‘ctx’ used after ‘free’ [-Wuse-after-free]
>    277 |         igt_assert(igt_sysfs_printf(ctx->debugfs, "i915_drop_caches",
> ../lib/igt_core.h:667:20: note: in definition of macro ‘igt_assert’
>    667 |         do { if (!(expr)) \
>        |                    ^~~~
> ../tests/i915/gem_eio.c:274:9: note: call to ‘free’ here
>    274 |         free(ctx);
>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> ---
>   tests/i915/gem_eio.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/tests/i915/gem_eio.c b/tests/i915/gem_eio.c
> index 913a21f9..6cbae6eb 100644
> --- a/tests/i915/gem_eio.c
> +++ b/tests/i915/gem_eio.c
> @@ -270,11 +270,11 @@ static void hang_handler(union sigval arg)
>   		  igt_nsec_elapsed(&ctx->delay) / 1000.0);
>   
>   	igt_assert_eq(timer_delete(ctx->timer), 0);
> -	free(ctx);
>   
>   	/* flush any excess work before we start timing our reset */
>   	igt_assert(igt_sysfs_printf(ctx->debugfs, "i915_drop_caches",
>   				    "%d", DROP_RCU));
> +	free(ctx);
>   
>   	igt_nsec_elapsed(ts);
>   	igt_assert(igt_sysfs_printf(dir, "i915_wedged", "%llu", -1ull));
