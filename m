Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8075251A3D5
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 17:22:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC45710ECE2;
	Wed,  4 May 2022 15:22:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB1DC10ECB1;
 Wed,  4 May 2022 15:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651677730; x=1683213730;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=GPMmemI8mgvUVvPSb5Bm55zufklGAdhZmSWEF3Vmm28=;
 b=M2H5kRt4m1j0WLeTl0V85VF8SPMtKcf0zl6v9Vf44//WV9BWc3dJqI49
 XOlCvWQPErfh50YLrBWsbfw6LneKbIZtMOy7FbP6oip47/9vf2+SmSidy
 RxcbN0f/d9FKfCsEiQcXL9xca7p6T/AhxzJQaE6VqwNjaqVoLU9VH65+m
 6b8/7VzclxVpJuu58Y6/hC/Ofa2HgsAPVIVja3KJKozAzuvjtKKzsh7nc
 3s1Fdgd3juVsNKNxg8eC9GTELk4XZrQwci+vhdBRqisAo3Vd6pUKhxq0W
 oO+IzNcVEsubfnY60+ynGO/vTeI26RdBsqpxQKvBOtPse9NQRaKC3uoCM g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="330783676"
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="330783676"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 08:22:10 -0700
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="562768457"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.61.58])
 ([10.252.61.58])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 08:22:08 -0700
Message-ID: <85639b1a-f85e-cf26-42d5-8ce868a494a4@linux.intel.com>
Date: Wed, 4 May 2022 17:22:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, igt-dev@lists.freedesktop.org
References: <20220504150845.158789-1-matthew.auld@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20220504150845.158789-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/2] tests/i915/gem_caching: handle
 discrete
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

On 5/4/2022 5:08 PM, Matthew Auld wrote:
> Test should still be valid, even if we can't explicitly control the PTE
> caching bits, like on discrete, where the caching should already be
> enabled by default for system memory objects.
>
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/4873
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
> ---
>   tests/i915/gem_caching.c | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/tests/i915/gem_caching.c b/tests/i915/gem_caching.c
> index 4e844952..eb0170ab 100644
> --- a/tests/i915/gem_caching.c
> +++ b/tests/i915/gem_caching.c
> @@ -147,7 +147,8 @@ igt_main
>   
>   		igt_require_gem(data.fd);
>   		gem_require_blitter(data.fd);
> -		gem_require_caching(data.fd);
> +		if (!gem_has_lmem(data.fd))
> +			gem_require_caching(data.fd);
>   
>   		data.devid = intel_get_drm_devid(data.fd);
>   		if (IS_GEN2(data.devid)) /* chipset only handles cached -> uncached */
> @@ -162,7 +163,8 @@ igt_main
>   		scratch_buf = intel_buf_create(data.bops, BO_SIZE/4, 1,
>   					       32, 0, I915_TILING_NONE, 0);
>   
> -		gem_set_caching(data.fd, scratch_buf->handle, 1);
> +		if (!gem_has_lmem(data.fd))
> +			gem_set_caching(data.fd, scratch_buf->handle, 1);
>   
>   		staging_buf = intel_buf_create(data.bops, BO_SIZE/4, 1,
>   					       32, 0, I915_TILING_NONE, 0);
