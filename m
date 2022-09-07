Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA775B0D95
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 21:58:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD2AE10E861;
	Wed,  7 Sep 2022 19:58:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0658810E861
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 19:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662580687; x=1694116687;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Z/jqgizubVmZ9WYSIdfcF40WGtwN1723fmsCeYZGx3g=;
 b=IoZugA7d14tBv1eG4zLsUnUN02RCdvc1IcPjTaLONTUvClyaNs07tkEd
 NX2YJPiTjkzwV8pg3vfVJ1KBFIY0rjs3THSW9W0j2yc8BdjnC0d3dQBCF
 M2/8wVWf9nb/qJ7oLZ3jH7VYdvrAC7kyakCDs9My7Y1Tt6sXet3XCJEPC
 4sKepV6V9UBVW3slQu0xga1VtlZNZR369Gtplc/s2w7CbghYhVzXT+RQA
 MEF3f0xWgWGOYj6gXd4jD0i0ckSmnADztJaLzgVDIGb5CSzYZLqir3EhO
 7jrEWS832I0rliAeZvpXqxpqiBUZWliLVUcYavUl/DCvuSPW0PLSxGTlj Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="360946225"
X-IronPort-AV: E=Sophos;i="5.93,297,1654585200"; d="scan'208";a="360946225"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 12:58:04 -0700
X-IronPort-AV: E=Sophos;i="5.93,297,1654585200"; d="scan'208";a="676355938"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.5.58])
 ([10.213.5.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 12:57:55 -0700
Message-ID: <87a25fa1-245e-2b2c-aa9c-47a2dcd41995@intel.com>
Date: Wed, 7 Sep 2022 21:57:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.1
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220907172641.12555-1-nirmoy.das@intel.com>
Content-Language: en-US
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20220907172641.12555-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Set correct domains values at
 _i915_vma_move_to_active
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
Cc: matthew.auld@intel.com, chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 07.09.2022 19:26, Nirmoy Das wrote:
> Fix regression introduced by commit:
> "drm/i915: Individualize fences before adding to dma_resv obj"
> which sets obj->read_domains to 0 for both read and write paths.
> Also set obj->write_domain to 0 on read path which was removed by
> the commit.
>
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/6639
> Fixes: 842d9346b2fd ("drm/i915: Individualize fences before adding to dma_resv obj")
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Cc: <stable@vger.kernel.org> # v5.16+
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej
> ---
>   drivers/gpu/drm/i915/i915_vma.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 260371716490..373582cfd8f3 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -1882,12 +1882,13 @@ int _i915_vma_move_to_active(struct i915_vma *vma,
>   		enum dma_resv_usage usage;
>   		int idx;
>   
> -		obj->read_domains = 0;
>   		if (flags & EXEC_OBJECT_WRITE) {
>   			usage = DMA_RESV_USAGE_WRITE;
>   			obj->write_domain = I915_GEM_DOMAIN_RENDER;
> +			obj->read_domains = 0;
>   		} else {
>   			usage = DMA_RESV_USAGE_READ;
> +			obj->write_domain = 0;
>   		}
>   
>   		dma_fence_array_for_each(curr, idx, fence)

