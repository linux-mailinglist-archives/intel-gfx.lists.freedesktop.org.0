Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB505A1609
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 17:46:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20AF910E726;
	Thu, 25 Aug 2022 15:46:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4285C10E726
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Aug 2022 15:46:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661442389; x=1692978389;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Cey0C8P7zw3ogoppQEWJxAh9Ud2jM5IJu6B8JhCw3QI=;
 b=RRyMdx1Hx0evKln+vRiSRkT+tERJe2HpHtBsZPx7KKXn8AcIHQXdWarf
 Fzp3QM1q7KRcVJyfCQjnkATX9s6FCPTRyjj8lye/EDdQmUMFcemRgIDLp
 AXdBu6zNeU4QmHOBhe9+moanQTcY6DP6PhrOf4jMCzYDg4NfBH3c1zkeW
 UD34wuoK8lycdqW09IeFbcsQT3K/bl7Y9DOAmZb0RkK4+4gQ3nEsJ1dbN
 IEkd73qroyt0AWgrMI/rjVrRrUY2DyIN3eZsjpoG8Zy0tZMULOcGLVt/o
 ia3/gRHb1/SLqr0Xqj3WWOdDPTZBYjB0cTgbJ09tChxOpCvTJ9Z9YYAuJ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="294275782"
X-IronPort-AV: E=Sophos;i="5.93,263,1654585200"; d="scan'208";a="294275782"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 08:46:28 -0700
X-IronPort-AV: E=Sophos;i="5.93,263,1654585200"; d="scan'208";a="752529981"
Received: from weijiaxi-mobl.ccr.corp.intel.com (HELO [10.215.145.228])
 ([10.215.145.228])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 08:46:26 -0700
Message-ID: <00b973bf-51b4-e113-48a9-f5e24167884c@intel.com>
Date: Thu, 25 Aug 2022 16:46:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.12.0
Content-Language: en-GB
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220825154239.52343-1-andrzej.hajda@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20220825154239.52343-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: allow misaligned_pin
 test work with unmappable memory
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
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 25/08/2022 16:42, Andrzej Hajda wrote:
> In case of Small BAR configurations stolen local memory can be unmappable.
> Since the test does not touch the memory, passing I915_BO_ALLOC_GPU_ONLY
> flag to i915_gem_object_create_region, will prevent -ENOSPC error from
> _i915_gem_object_stolen_init.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6565
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>

> ---
>   drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> index fb5e6196347925..e050a2de5fd1df 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> @@ -1080,7 +1080,7 @@ static int misaligned_case(struct i915_address_space *vm, struct intel_memory_re
>   	bool is_stolen = mr->type == INTEL_MEMORY_STOLEN_SYSTEM ||
>   			 mr->type == INTEL_MEMORY_STOLEN_LOCAL;
>   
> -	obj = i915_gem_object_create_region(mr, size, 0, 0);
> +	obj = i915_gem_object_create_region(mr, size, 0, I915_BO_ALLOC_GPU_ONLY);
>   	if (IS_ERR(obj)) {
>   		/* if iGVT-g or DMAR is active, stolen mem will be uninitialized */
>   		if (PTR_ERR(obj) == -ENODEV && is_stolen)
