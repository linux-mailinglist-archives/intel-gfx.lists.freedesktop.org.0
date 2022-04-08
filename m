Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA484F9859
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Apr 2022 16:41:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C2B110E77B;
	Fri,  8 Apr 2022 14:41:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B233010E74E
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Apr 2022 14:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649428860; x=1680964860;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=qi8r17kD2144mRbp+OkXGOZXT7LR+DFaN0vbApZ3piw=;
 b=SqBC92Q5UKoyAzbFy9rdOB94YqYAyPM9a36r/2txmZsoHa0s6XhFSaMd
 Swv5mRB7kKRCA5VsvIayq0k4pinGl/dtGb2e+tN4AideRjUwuQPj7n7OI
 OmfO5hKoLTSY5FRt2RwS/YfqHwbi08R03RXSSgGXE2W/X0WT6ZfthjGUs
 MN4zb0WwAtBeAt8cRv0k4LTmNsEfekjCrRhIXVDLN3BGydRS3CFXi/tG7
 HbukiAyo1DZ8kRSa74tEPJbsao26ZZkH+KuU8j3DltiFexGAHRl7ZQbiJ
 k/wAOit0NrTMV/ebKwaAMnCzr9yHZ3mMFWbGvtyr6s6oCo1yiAGuVH4ju A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="242200594"
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="242200594"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 07:41:00 -0700
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="571508350"
Received: from khupperx-mobl2.ger.corp.intel.com (HELO [10.249.254.37])
 ([10.249.254.37])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 07:40:59 -0700
Message-ID: <f80da3e7-8c66-1637-3fac-44db9bb1e840@linux.intel.com>
Date: Fri, 8 Apr 2022 16:40:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20220314182005.17071-1-ramalingam.c@intel.com>
 <20220314182005.17071-4-ramalingam.c@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <20220314182005.17071-4-ramalingam.c@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/selftest: Clear the output
 buffers before GPU writes
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


On 3/14/22 19:20, Ramalingam C wrote:
> From: Chris Wilson <chris@chris-wilson.co.uk>
>
> When testing whether we can get the GPU to leak information about
> non-privileged state, we first need to ensure that the output buffer is
> set to a known value as the HW may opt to skip the write into memory for
> a non-privileged read of a sensitive register. We chose POISON_INUSE (0x5a)
> so that is both non-zero and distinct from the poison values used during
> the test.
>
> Reported-by: CQ Tang <cq.tang@intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: CQ Tang <cq.tang@intel.com>
> cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Signed-off-by: Ramalingam C <ramalingam.c@intel.com>

Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>



> ---
>   drivers/gpu/drm/i915/gt/selftest_lrc.c | 32 ++++++++++++++++++++++----
>   1 file changed, 28 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 0a8ed4246082..b9cc89de01bf 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -1346,6 +1346,30 @@ static int compare_isolation(struct intel_engine_cs *engine,
>   	return err;
>   }
>   
> +static struct i915_vma *
> +create_result_vma(struct i915_address_space *vm, unsigned long sz)
> +{
> +	struct i915_vma *vma;
> +	void *ptr;
> +
> +	vma = create_user_vma(vm, sz);
> +	if (IS_ERR(vma))
> +		return vma;
> +
> +	/* Set the results to a known value distinct from the poison */
> +	ptr = i915_gem_object_pin_map(vma->obj, I915_MAP_WC);
> +	if (IS_ERR(ptr)) {
> +		i915_vma_put(vma);
> +		return ERR_CAST(ptr);
> +	}
> +
> +	memset(ptr, POISON_INUSE, vma->size);
> +	i915_gem_object_flush_map(vma->obj);
> +	i915_gem_object_unpin_map(vma->obj);
> +
> +	return vma;
> +}
> +
>   static int __lrc_isolation(struct intel_engine_cs *engine, u32 poison)
>   {
>   	u32 *sema = memset32(engine->status_page.addr + 1000, 0, 1);
> @@ -1364,13 +1388,13 @@ static int __lrc_isolation(struct intel_engine_cs *engine, u32 poison)
>   		goto err_A;
>   	}
>   
> -	ref[0] = create_user_vma(A->vm, SZ_64K);
> +	ref[0] = create_result_vma(A->vm, SZ_64K);
>   	if (IS_ERR(ref[0])) {
>   		err = PTR_ERR(ref[0]);
>   		goto err_B;
>   	}
>   
> -	ref[1] = create_user_vma(A->vm, SZ_64K);
> +	ref[1] = create_result_vma(A->vm, SZ_64K);
>   	if (IS_ERR(ref[1])) {
>   		err = PTR_ERR(ref[1]);
>   		goto err_ref0;
> @@ -1392,13 +1416,13 @@ static int __lrc_isolation(struct intel_engine_cs *engine, u32 poison)
>   	}
>   	i915_request_put(rq);
>   
> -	result[0] = create_user_vma(A->vm, SZ_64K);
> +	result[0] = create_result_vma(A->vm, SZ_64K);
>   	if (IS_ERR(result[0])) {
>   		err = PTR_ERR(result[0]);
>   		goto err_ref1;
>   	}
>   
> -	result[1] = create_user_vma(A->vm, SZ_64K);
> +	result[1] = create_result_vma(A->vm, SZ_64K);
>   	if (IS_ERR(result[1])) {
>   		err = PTR_ERR(result[1]);
>   		goto err_result0;
