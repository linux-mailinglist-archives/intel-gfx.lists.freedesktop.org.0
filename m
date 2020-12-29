Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B872E73F6
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 21:40:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA04889198;
	Tue, 29 Dec 2020 20:40:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5C6A89194;
 Tue, 29 Dec 2020 20:40:37 +0000 (UTC)
IronPort-SDR: B8wY9VrzNoOUtZuM31cnHJrNOyvfosY9Z+b61YxR6LRvPKdOOYbxflawn46piC/e6iBqLQbqg7
 beKJxUJ39IFA==
X-IronPort-AV: E=McAfee;i="6000,8403,9849"; a="175763078"
X-IronPort-AV: E=Sophos;i="5.78,459,1599548400"; d="scan'208";a="175763078"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2020 12:40:35 -0800
IronPort-SDR: Yul4tYr+SkTYhXH6IdqbL8psxx1sJbWOi8yr/sE0ED+/nU5ghhZQNBbWSxXuKO8hdSETbFP7c1
 /ahb6n90sTDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,459,1599548400"; d="scan'208";a="393247924"
Received: from arjun-nuc8i7beh.iind.intel.com (HELO arjun-NUC8i7BEH)
 ([10.145.162.176])
 by fmsmga004.fm.intel.com with ESMTP; 29 Dec 2020 12:40:32 -0800
Date: Wed, 30 Dec 2020 02:05:59 +0530
From: "Melkaveri, Arjun" <arjun.melkaveri@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201229203557.GA17099@arjun-NUC8i7BEH>
References: <20201229200647.629624-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201229200647.629624-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_engine: Check
 idempotency by passing all known engines
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 29, 2020 at 08:06:47PM +0000, Chris Wilson wrote:
> Don't rely on just rcs0 being well defined, check that we return a list
> of each engine when asked.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: "Melkaveri, Arjun" <arjun.melkaveri@intel.com>
> ---
>  tests/i915/gem_ctx_engines.c | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)
> 
> diff --git a/tests/i915/gem_ctx_engines.c b/tests/i915/gem_ctx_engines.c
> index be7d5733f..12c6b84ca 100644
> --- a/tests/i915/gem_ctx_engines.c
> +++ b/tests/i915/gem_ctx_engines.c
> @@ -230,15 +230,21 @@ static void idempotent(int i915)
>  	igt_assert_eq(p.size, base + idx);
>  	igt_assert(!memcmp(&expected, &engines, idx));
>  
> -	memset(&engines, 0, sizeof(engines));
>  	p.size = sizeof(engines);
> -	gem_context_set_param(i915, &p);
> +	__for_each_physical_engine(i915, e) {
> +		memset(&engines, 0, sizeof(engines));
> +		for (int n = 0; n < I915_EXEC_RING_MASK + 1; n++) {
> +			engine_class(&engines, n) = e->class;
> +			engine_instance(&engines, n) = e->instance;
> +		}
> +		gem_context_set_param(i915, &p);
>  
> -	memcpy(&expected, &engines, sizeof(expected));
> +		memcpy(&expected, &engines, sizeof(expected));
>  
> -	gem_context_get_param(i915, &p);
> -	igt_assert_eq(p.size, sizeof(engines));
> -	igt_assert(!memcmp(&expected, &engines, idx));
> +		gem_context_get_param(i915, &p);
> +		igt_assert_eq(p.size, sizeof(engines));
> +		igt_assert(!memcmp(&expected, &engines, p.size));
> +	}
Tested the code change . 

Reviewed-by: Arjun Melkaveri <arjun.melkaveri@intel.com>
>  
>  	gem_context_destroy(i915, p.ctx_id);
>  }
> -- 
> 2.30.0.rc2
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
