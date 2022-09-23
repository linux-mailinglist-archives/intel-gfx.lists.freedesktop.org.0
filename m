Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C645E7F47
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 18:07:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6266910E59F;
	Fri, 23 Sep 2022 16:07:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2996F10E59A;
 Fri, 23 Sep 2022 16:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663949273; x=1695485273;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=lpCoHOC+HY7u/tahegELh+GpEr6/xGXSlU37ko+qvfw=;
 b=Q4r7GDBvqs3y8fU3luHG3Rs1+4NepuOTsda1tO83L+bPbOyDZ3j/6fzN
 an/JX+iRNQRAZcK4K3zCxhEfgw4V9fmfKWrIFSB77WbWjvRC/m0J0vS9U
 b9Y+0vl//v9IBDZH3sL2Pi3NA2IXR3DlIqCg18d8j6g52tmKic7v6iiyr
 2aHKJV++88dnhlh0TFfhzIfBGyxhqv7Icrntvmsoao6uVHUsVDjh4tfYr
 4DlhZoD4+cthxli3dIOW32ztV42459mgDslT+ZKkL11+JQrAQJTPf8KGv
 xAEVhr9O+N7UZ4Sgs3bhgO7up8kMXOD71bCFjn45grnyMZTt4q40ctYPj Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10479"; a="301507768"
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="301507768"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 09:06:32 -0700
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="597911847"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.6.20])
 ([10.213.6.20])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 09:06:30 -0700
Message-ID: <b96aed3b-4164-e5ea-5c2b-f975ae5ad1b7@intel.com>
Date: Fri, 23 Sep 2022 18:06:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org
References: <20220922081353.1759082-1-andrzej.hajda@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20220922081353.1759082-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915/gem_ctx_persistence:
 adjust saturated-hostile test timeout
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



On 22.09.2022 10:13, Andrzej Hajda wrote:
> GPU occasionally can hang during saturated-hostile test. Detection of
> such case and reset can take up to 5 seconds. While at it fix typo in
> definition of RESET_TIMEOUT_MS.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1551
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Please ignore the patch, it has been superseded by:
https://patchwork.freedesktop.org/patch/504450/

Regards
Andrzej

> ---
>   tests/i915/gem_ctx_persistence.c | 7 ++++---
>   1 file changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/tests/i915/gem_ctx_persistence.c b/tests/i915/gem_ctx_persistence.c
> index 50196edb19f..603fdd84438 100644
> --- a/tests/i915/gem_ctx_persistence.c
> +++ b/tests/i915/gem_ctx_persistence.c
> @@ -46,7 +46,8 @@
>   #include "intel_allocator.h"
>   #include "sw_sync.h"
>   
> -#define RESET_TIMEOUT_MS 2 * MSEC_PER_SEC; /* default: 640ms */
> +#define RESET_TIMEOUT_MS (2 * MSEC_PER_SEC) /* default: 640ms */
> +#define RESET_TIMEOUT_GPU_HANG_MS (10000 * MSEC_PER_SEC)
>   static unsigned long reset_timeout_ms = RESET_TIMEOUT_MS;
>   #define NSEC_PER_MSEC (1000 * 1000ull)
>   
> @@ -370,7 +371,7 @@ static void test_nohangcheck_hostile(int i915, const intel_ctx_cfg_t *cfg)
>   	igt_require(__enable_hangcheck(dir, false));
>   
>   	for_each_ctx_cfg_engine(i915, cfg, e) {
> -		int64_t timeout = 10000 * NSEC_PER_MSEC;
> +		int64_t timeout = RESET_TIMEOUT_GPU_HANG_MS;
>   		const intel_ctx_t *ctx = intel_ctx_create(i915, cfg);
>   		uint64_t ahnd = get_reloc_ahnd(i915, ctx->id);
>   		igt_spin_t *spin;
> @@ -951,7 +952,7 @@ test_saturated_hostile_all(int i915, const intel_ctx_t *base_ctx,
>   	intel_ctx_destroy(i915, ctx);
>   
>   	/* Hostile request requires a GPU reset to terminate */
> -	igt_assert_eq(wait_for_status(spin->out_fence, reset_timeout_ms), -EIO);
> +	igt_assert_eq(wait_for_status(spin->out_fence, RESET_TIMEOUT_GPU_HANG_MS), -EIO);
>   
>   	/* All other spinners should be left unharmed */
>   	gem_quiescent_gpu(i915);

