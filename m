Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 435B6596ED4
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 14:56:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F7E4915E8;
	Wed, 17 Aug 2022 12:56:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC9FA113C17;
 Wed, 17 Aug 2022 12:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660740959; x=1692276959;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Oed4OqgXRbvluJiXJCEwiGakWzlyuYeUOAkF4YKiJlI=;
 b=Mgwol4x1WagQYaKY9W9d4vTqieYJuuaETkxOopOCDi1svV8831ZmOPm8
 KWFNISHdxsM+qT0WMEm4vZNhtGb4MSd0iXGVrlDhC2yPRa+w7QhCVNt97
 GkBi6xOJQTU9ibwHAk4XLaRCt3btz75MVy4uBWIwFNCxcmCAvTdXJdNpp
 YbLxvQsUpzMhqffG3UBC4e+ZQk42JOvCYsTXMTgKWgg4uI9vlGfHpzrOO
 /wtA3j+HYJH/kng8f+53toYbh8Oz9PhEE54UqmvCKFBLH3ENYtocNChAs
 jbyHEOlHSHRupG4m0yqYrxJocCNBcoMvpscULbXvuxe45vLTCZiyGnOX+ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10442"; a="378775122"
X-IronPort-AV: E=Sophos;i="5.93,243,1654585200"; d="scan'208";a="378775122"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 05:55:58 -0700
X-IronPort-AV: E=Sophos;i="5.93,243,1654585200"; d="scan'208";a="667603689"
Received: from maurocar-mobl2.ger.corp.intel.com (HELO maurocar-mobl2)
 ([10.252.50.167])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 05:55:57 -0700
Date: Wed, 17 Aug 2022 14:55:54 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20220817145554.2602f9d7@maurocar-mobl2>
In-Reply-To: <20220812095346.45379-2-janusz.krzysztofik@linux.intel.com>
References: <20220812095346.45379-1-janusz.krzysztofik@linux.intel.com>
 <20220812095346.45379-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t v2 2/3] tests/gem_exec_fence: Exclude
 0 from use in store batches
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Mauro Carvalho Chehab <mauro.carvalho.chehab@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 12 Aug 2022 11:53:45 +0200
Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:

> When i = 0, condition out[i] == i will be true even if a batch supposed
> to store i in out[i] fails.  Don't use i = 0 in batches that store values
> in out[i].
> 
> v2: still check for out[0] == 0 (Chris)
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>


LGTM.

Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>

> ---
>  tests/i915/gem_exec_fence.c | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/tests/i915/gem_exec_fence.c b/tests/i915/gem_exec_fence.c
> index 048870053a..78d83460f7 100644
> --- a/tests/i915/gem_exec_fence.c
> +++ b/tests/i915/gem_exec_fence.c
> @@ -334,6 +334,8 @@ static void test_fence_await(int fd, const intel_ctx_t *ctx,
>  		if (!gem_class_can_store_dword(fd, e2->class))
>  			continue;
>  
> +		i++;
> +
>  		if (flags & NONBLOCK) {
>  			igt_store_word(fd, ahnd, ctx, e2, spin->out_fence,
>  				       scratch, scratch_offset, i, i);
> @@ -345,8 +347,6 @@ static void test_fence_await(int fd, const intel_ctx_t *ctx,
>  				put_ahnd(ahnd);
>  			}
>  		}
> -
> -		i++;
>  	}
>  
>  	igt_spin_busywait_until_started(spin);
> @@ -356,7 +356,7 @@ static void test_fence_await(int fd, const intel_ctx_t *ctx,
>  	if ((flags & HANG) == 0) {
>  		/* Check for invalidly completing the task early */
>  		igt_assert(fence_busy(spin->out_fence));
> -		for (int n = 0; n < i; n++)
> +		for (int n = 0; n <= i; n++)
>  			igt_assert_eq_u32(out[n], 0);
>  
>  		igt_spin_end(spin);
> @@ -366,8 +366,11 @@ static void test_fence_await(int fd, const intel_ctx_t *ctx,
>  
>  	gem_set_domain(fd, scratch, I915_GEM_DOMAIN_GTT, 0);
>  	igt_assert(!fence_busy(spin->out_fence));
> -	while ((flags & HANG) == 0 && i--)
> -		igt_assert_eq_u32(out[i], i);
> +	if ((flags & HANG) == 0) {
> +		do
> +			igt_assert_eq_u32(out[i], i);
> +		while (i--);
> +	}
>  	munmap(out, 4096);
>  
>  	igt_spin_free(fd, spin);
